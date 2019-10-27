	.text
.L08049700:
	subl      $28, %esp
	testl     %eax, %eax
	je        .L08049720
.L08049707:
	cmpb      $0, (%eax)
	je        .L08049720
.L0804970C:
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $.LC0805A8A6, (%esp)
	call      .L0804B000
.L08049720:
	movl      %edx, 4(%esp)
	movl      $.LC08059DB5, (%esp)
	call      .L0804B000
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	andl      $-16, %esp
	subl      $192, %esp
	call      __errno_location
.L08049742:
	movl      $0, 188(%esp)
	movl      %eax, .LBSS08063754
	leal      20(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L0804975E:
	testl     %eax, %eax
	jne       .L08049861
.L08049766:
	leal      20(%esp), %eax
	movl      %eax, .LBSS080616AC
	call      getpid
.L08049774:
	movl      %eax, .LBSS0806375C
	call      .L08058F50
.L0804977E:
	leal      176(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F10
.L0804978D:
	movl      12(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      8(%ebp), %eax
	movl      %eax, (%esp)
	call      .L08053260
.L0804979F:
	testl     %eax, %eax
	jne       .L08049832
.L080497A7:
	cmpb      $0, .LBSS08063967
	movl      $3, 188(%esp)
	jne       .L08049811
.L080497BB:
	leal      176(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F50
.L080497CA:
	movl      .LBSS08063998, %eax
	movl      $4, 188(%esp)
	testl     %eax, %eax
	je        .L080497EE
.L080497DE:
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804BB80
.L080497EE:
	cmpb      $0, .LBSS0806396A
	je        .L08049806
.L080497F7:
	movl      $1, %eax
	call      .L08051A80
.L08049801:
	call      .L080565C0
.L08049806:
	cmpl      $0, .LBSS08063998
	jne       .L08049801
.L0804980F:
	jmp       .L080497F7
.L08049811:
	movl      $.LC0805A084, (%esp)
	call      .L08058530
.L0804981D:
	testl     %eax, %eax
	je        .L080497BB
.L08049821:
	cmpb      $0, (%eax)
	je        .L080497BB
.L08049826:
	call      .L08051BE0
.L0804982B:
	nop       
	leal      (%esi), %esi
	jmp       .L080497BB
.L08049832:
	movl      $.LC0805A068, %eax
	movl      $1, 188(%esp)
	call      .L08051BE0
.L08049847:
	movl      $.LC0805A075, %eax
	movl      $2, 188(%esp)
	call      .L08051BE0
.L0804985C:
	jmp       .L080497A7
.L08049861:
	call      .L08059090
.L08049866:
	movl      188(%esp), %ebx
	movl      .LBSS080616B8, %eax
	testl     %ebx, %ebx
	je        .L08049801
.L08049876:
	cmpl      $4, %eax
	je        .L08049801
.L0804987B:
	cmpb      $0, .LBSS08063967
	je        .L08049801
.L08049888:
	cmpl      $0, .LBSS08063758
	jne       .L08049801
.L08049895:
	testl     %eax, %eax
	je        .L080498D7
.L08049899:
	leal      176(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F50
.L080498A8:
	movl      .LBSS080616B0, %eax
	movl      $0, .LBSS080616A8
	testl     %eax, %eax
	jne       .L080498EE
.L080498BB:
	cmpl      $1, %ebx
	je        .L08049847
.L080498C0:
	cmpl      $2, %ebx
	je        .L080497A7
.L080498C9:
	cmpl      $3, %ebx
	jne       .L080497F7
.L080498D2:
	jmp       .L080497CA
.L080498D7:
	movl      .LD080611B0, %eax
	movl      $10, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C60
.L080498EC:
	jmp       .L08049899
.L080498EE:
	call      .L0804AFA0
.L080499B0:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $16, %esp
	movzbl    (%eax), %eax
	movl      %eax, %ecx
	sall      $4, %ecx
	testl     %eax, %eax
	je        .L080499D4
.L080499C4:
	movl      %ebx, %edx
	nop       
.L080499C8:
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	testl     %eax, %eax
	jne       .L080499C8
.L080499D4:
	movl      %ecx, %eax
	movl      $-1541783131, %edx
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	subl      %edx, %ecx
	movl      .LBSS08061600(,%ecx,4), %esi
	leal      .LBSS08061600(,%ecx,4), %edi
	testl     %esi, %esi
	jne       .L08049A10
.L080499FF:
	jmp       .L08049A23
	.size	main, .-main
# ----------------------
.L08049A01:
	.ascii	"\215\264&\000\000\000\000"
.L08049A08:
	movl      %esi, %edi
	movl      (%esi), %esi
	testl     %esi, %esi
	je        .L08049A23
.L08049A10:
	movl      4(%esi), %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      strcmp
.L08049A1F:
	testl     %eax, %eax
	jne       .L08049A08
.L08049A23:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08049A2C:
	.long	2520205
.L08049A30:
	subl      $44, %esp
	movl      48(%esp), %eax
	movl      %esi, 36(%esp)
	movl      %ebx, 32(%esp)
	movl      %edi, 40(%esp)
	call      .L080499B0
.L08049A48:
	movl      %eax, %esi
	movl      $1, %eax
	movl      (%esi), %edx
	testl     %edx, %edx
	je        .L08049A8C
.L08049A55:
	addl      $1, .LBSS080616A8
	movl      (%esi), %ebx
	movl      12(%ebx), %eax
	testb     $1, %al
	je        .L08049AC0
.L08049A65:
	orl       $2, %eax
	movl      %eax, 12(%ebx)
.L08049A6B:
	movl      %ebx, (%esi)
	movl      .LBSS080616A8, %edx
	xorl      %eax, %eax
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L08049A8C
.L08049A82:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L08049AA0
.L08049A8C:
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	addl      $44, %esp
	ret       
# ----------------------
.L08049A9C:
	.long	2520205
.L08049AA0:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08049AA9:
	.ascii	"\213D$\034\213\\$ \213t$$\213|$(\203\304,\303\215v\000"
.L08049AC0:
	movl      4(%ebx), %eax
	movl      (%ebx), %edi
	movl      %eax, (%esp)
	call      free
.L08049ACD:
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      free
.L08049AD8:
	movl      %ebx, (%esp)
	movl      %edi, %ebx
	call      free
.L08049AE2:
	jmp       .L08049A6B
# ----------------------
.L08049AE4:
	.long	46733
	.long	-1081278464
	.long	0
.L08049AF0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	addl      $1, .LBSS080616A8
	xorl      %ebp, %ebp
.L08049B00:
	movl      .LBSS08061600(,%ebp,4), %ebx
	leal      .LBSS08061600(,%ebp,4), %esi
	testl     %ebx, %ebx
	movl      %ebx, %eax
	jne       .L08049B2C
.L08049B14:
	jmp       .L08049B68
# ----------------------
.L08049B16:
	.value	36966
.L08049B18:
	orl       $2, %edx
	cmpl      %eax, %ebx
	movl      %edx, 12(%ebx)
	movl      %eax, (%esi)
	je        .L08049B5C
.L08049B24:
	movl      %eax, %ebx
	testl     %ebx, %ebx
	je        .L08049B68
.L08049B2A:
	movl      %ebx, %eax
.L08049B2C:
	movl      12(%ebx), %edx
	testb     $1, %dl
	jne       .L08049B18
.L08049B34:
	movl      4(%ebx), %eax
	movl      (%ebx), %edi
	movl      %eax, (%esp)
	call      free
.L08049B41:
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      free
.L08049B4C:
	movl      %ebx, (%esp)
	call      free
.L08049B54:
	movl      %edi, %eax
	cmpl      %eax, %ebx
	movl      %eax, (%esi)
	jne       .L08049B24
.L08049B5C:
	movl      %ebx, %esi
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08049B2A
.L08049B64:
	leal      (%esi), %esi
.L08049B68:
	addl      $1, %ebp
	cmpl      $39, %ebp
	jne       .L08049B00
.L08049B70:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08049B8A
.L08049B81:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08049B92
.L08049B8A:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049B92:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L0804AFA0
# ----------------------
.L08049B9E:
	.value	36966
.L08049BA0:
	subl      $12, %esp
	movl      16(%esp), %eax
	call      .L080499B0
.L08049BAC:
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L08049BC6
.L08049BB2:
	movl      20(%esp), %ecx
	testl     %ecx, %ecx
	je        .L08049BC6
.L08049BBA:
	testb     $1, 12(%eax)
	movl      $0, %edx
	cmovne    %edx, %eax
.L08049BC6:
	addl      $12, %esp
	ret       
# ----------------------
.L08049BCA:
	.ascii	"\215\266\000\000\000\000"
.L08049BD0:
	pushl     %ebx
	subl      $24, %esp
	leal      (%esi), %esi
.L08049BD8:
	movl      $.LC0805AC92, (%esp)
	call      .L080539E0
.L08049BE4:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L08049C00
.L08049BEA:
	cmpl      $97, %ebx
	jne       .L08049BD8
.L08049BEF:
	call      .L08049AF0
.L08049BF4:
	xorb      %bl, %bl
.L08049BF6:
	addl      $24, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
# ----------------------
.L08049BFD:
	.ascii	"\215v\000"
.L08049C00:
	movl      .LBSS08063978, %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L08049C25
.L08049C0B:
	jmp       .L08049BF6
# ----------------------
.L08049C0D:
	.ascii	"\215v\000"
.L08049C10:
	movl      .LBSS08063978, %eax
	leal      4(%eax), %edx
	movl      4(%eax), %eax
	movl      %edx, .LBSS08063978
	testl     %eax, %eax
	je        .L08049BF6
.L08049C25:
	movl      %eax, (%esp)
	call      .L08049A30
.L08049C2D:
	testl     %eax, %eax
	je        .L08049C10
.L08049C31:
	movl      .LBSS08063978, %eax
	movl      $1, %ebx
	movl      (%eax), %eax
	movl      $.LC080595C8, 8(%esp)
	movl      $.LC080595D0, 4(%esp)
	movl      %eax, 12(%esp)
	movl      .LD080611B0, %eax
	movl      %eax, (%esp)
	call      .L08056C30
.L08049C5E:
	jmp       .L08049C10
.L08049C60:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      .L08052D20
.L08049C73:
	movl      %eax, 8(%esp)
	movl      4(%ebx), %eax
	movl      $.LC080595E2, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08049C8A:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08049C8F:
	.byte	144
.L08049C90:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	cmpl      $1, 64(%esp)
	movl      68(%esp), %edi
	movl      $0, 28(%esp)
	je        .L08049DA8
.L08049CAE:
	nop       
.L08049CB0:
	addl      $4, %edi
	movl      (%edi), %esi
	testl     %esi, %esi
	je        .L08049D31
.L08049CB9:
	leal      1(%esi), %eax
	movl      $61, 4(%esp)
	movl      %eax, (%esp)
	call      strchr
.L08049CCC:
	testl     %eax, %eax
	je        .L08049D4D
.L08049CD0:
	movb      $0, (%eax)
	addl      $1, %eax
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	call      .L080499B0
.L08049CE1:
	movl      (%eax), %ebx
	movl      %eax, %ebp
	addl      $1, .LBSS080616A8
	testl     %ebx, %ebx
	je        .L08049D6B
.L08049CF0:
	testb     $1, 12(%ebx)
	je        .L08049D40
.L08049CF6:
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051DD0
.L08049D02:
	andl      $-3, 12(%ebx)
	movl      %eax, 8(%ebx)
.L08049D09:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08049CB0
.L08049D1A:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L08049CB0
.L08049D23:
	addl      $4, %edi
	call      .L0804AFA0
# ----------------------
.L08049D2B:
	.ascii	"\2137\205\366u\210"
.L08049D31:
	movl      28(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08049D3D:
	.ascii	"\215v\000"
.L08049D40:
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      free
.L08049D4B:
	jmp       .L08049CF6
.L08049D4D:
	movl      %esi, %eax
	call      .L080499B0
.L08049D54:
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L08049DEA
.L08049D5E:
	movl      %eax, (%esp)
	call      .L08049C60
.L08049D66:
	jmp       .L08049CB0
.L08049D6B:
	movl      $16, (%esp)
	call      .L08051D70
.L08049D77:
	movl      %esi, (%esp)
	movl      %eax, %ebx
	call      .L08051DD0
.L08049D81:
	movl      %eax, 4(%ebx)
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051DD0
.L08049D90:
	movl      $0, 12(%ebx)
	movl      $0, (%ebx)
	movl      %eax, 8(%ebx)
	movl      %ebx, (%ebp)
	jmp       .L08049D09
.L08049DA8:
	xorl      %esi, %esi
	leal      (%esi), %esi
.L08049DB0:
	movl      .LBSS08061600(,%esi,4), %ebx
	testl     %ebx, %ebx
	je        .L08049DCE
.L08049DBB:
	nop       
	leal      (%esi), %esi
.L08049DC0:
	movl      %ebx, (%esp)
	call      .L08049C60
.L08049DC8:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08049DC0
.L08049DCE:
	addl      $1, %esi
	cmpl      $39, %esi
	jne       .L08049DB0
.L08049DD6:
	movl      $0, 28(%esp)
	movl      28(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049DEA:
	movl      .LD080611B0, %eax
	movl      %esi, 12(%esp)
	movl      $.LC080595CA, 8(%esp)
	movl      $.LC080595D0, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C30
.L08049E0B:
	movl      $1, 28(%esp)
	jmp       .L08049CB0
# ----------------------
.L08049E18:
	.long	-1869574000
	.long	-1869574000
.L08049E20:
	subl      $28, %esp
	movl      .LBSS080612AC, %edx
	movl      %eax, 4(%esp)
	movl      $.LC080595EC, (%esp)
	movl      %edx, 8(%esp)
	call      .L0804B000
# ----------------------
.L08049E3D:
	.ascii	"\215v\000"
.L08049E40:
	subl      $76, %esp
	movl      %ebx, 64(%esp)
	movl      %eax, %ebx
	movl      80(%esp), %eax
	movl      %esi, 68(%esp)
	movl      %edx, %esi
	movl      84(%esp), %edx
	movl      %edi, 72(%esp)
	movl      %ecx, %edi
	movl      %eax, 40(%esp)
	leal      -8(%ebx), %eax
	cmpl      $15, %eax
	movl      %edx, 44(%esp)
	jbe       .L08049ED8
.L08049E6D:
	movl      44(%esp), %edx
	orl       40(%esp), %edx
	je        .L0804A11D
.L08049E7B:
	movl      40(%esp), %edx
	leal      48(%esp), %eax
	movl      44(%esp), %ecx
	movl      %eax, (%esp)
	movl      %esi, 4(%esp)
	movl      %edx, 12(%esp)
	movl      %ecx, 16(%esp)
	movl      %edi, 8(%esp)
	call      imaxdiv
.L08049E9F:
	subl      $4, %esp
	cmpl      $13, %ebx
	movl      48(%esp), %eax
	movl      52(%esp), %edx
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	je        .L0804A108
.L08049EBB:
	nop       
	leal      (%esi), %esi
.L08049EC0:
	movl      32(%esp), %eax
	movl      36(%esp), %edx
	movl      64(%esp), %ebx
	movl      68(%esp), %esi
	movl      72(%esp), %edi
	addl      $76, %esp
	ret       
.L08049ED8:
	jmp       *.LC0805965C(,%eax,4)
# ----------------------
.L08049EDF:
	.byte	144
.L08049EE0:
	cmpl      44(%esp), %ecx
	movl      $1, 32(%esp)
	movl      $0, 36(%esp)
	jl        .L08049EC0
.L08049EF6:
	jg        .L08049F80
.L08049EFC:
	cmpl      40(%esp), %esi
	jbe       .L08049EC0
.L08049F02:
	jmp       .L08049F80
# ----------------------
.L08049F04:
	.long	2520205
.L08049F08:
	cmpl      44(%esp), %ecx
	movl      $1, 32(%esp)
	movl      $0, 36(%esp)
	jg        .L08049EC0
.L08049F1E:
	jl        .L08049F80
.L08049F20:
	cmpl      40(%esp), %esi
	jae       .L08049EC0
.L08049F26:
	jmp       .L08049F80
.L08049F28:
	cmpl      44(%esp), %ecx
	movl      $1, 32(%esp)
	movl      $0, 36(%esp)
	jl        .L08049EC0
.L08049F3E:
	jg        .L08049F80
.L08049F40:
	cmpl      40(%esp), %esi
	jb        .L08049EC0
.L08049F4A:
	leal      (%esi), %esi
	jmp       .L08049F80
# ----------------------
.L08049F52:
	.ascii	"\215\266\000\000\000\000"
.L08049F58:
	cmpl      44(%esp), %ecx
	movl      $1, 32(%esp)
	movl      $0, 36(%esp)
	jg        .L08049EC0
.L08049F72:
	jl        .L08049F80
.L08049F74:
	cmpl      40(%esp), %esi
	ja        .L08049EC0
.L08049F7E:
	nop       
.L08049F80:
	movl      $0, 32(%esp)
	movl      $0, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L08049F95:
	.ascii	"\215v\000"
.L08049F98:
	movl      40(%esp), %edx
	movl      44(%esp), %eax
	movl      $0, 36(%esp)
	xorl      %esi, %edx
	xorl      %ecx, %eax
	orl       %eax, %edx
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 32(%esp)
	jmp       .L08049EC0
# ----------------------
.L08049FBD:
	.ascii	"\215v\000"
.L08049FC0:
	movl      40(%esp), %edx
	movl      44(%esp), %ecx
	andl      %esi, %edx
	andl      %edi, %ecx
	movl      %edx, 32(%esp)
	movl      %ecx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L08049FD9:
	.ascii	"\215\264&\000\000\000\000"
.L08049FE0:
	movzbl    40(%esp), %ecx
	movl      %esi, %eax
	movl      %edi, %edx
	shldl     %cl, %esi, %edx
	xorl      %esi, %esi
	sall      %cl, %eax
	testb     $32, %cl
	cmovne    %eax, %edx
	cmovne    %esi, %eax
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A006:
	.value	36966
.L0804A008:
	movzbl    40(%esp), %ecx
	movl      %edi, %edx
	movl      %esi, %eax
	sarl      %cl, %edx
	movl      %edx, %ebx
	shrdl     %cl, %edi, %eax
	sarl      $31, %ebx
	testb     $32, %cl
	cmovne    %edx, %eax
	cmovne    %ebx, %edx
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A031:
	.ascii	"\215\264&\000\000\000\000"
.L0804A038:
	movl      40(%esp), %eax
	imull     %ecx, %eax
	movl      44(%esp), %ecx
	imull     %esi, %ecx
	addl      %eax, %ecx
	movl      40(%esp), %eax
	mull      %esi
	addl      %ecx, %edx
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A05D:
	.ascii	"\215v\000"
.L0804A060:
	movl      40(%esp), %edx
	movl      44(%esp), %ecx
	addl      %esi, %edx
	adcl      %edi, %ecx
	movl      %edx, 32(%esp)
	movl      %ecx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A079:
	.ascii	"\215\264&\000\000\000\000"
.L0804A080:
	movl      40(%esp), %ecx
	movl      44(%esp), %eax
	orl       %esi, %ecx
	orl       %edi, %eax
	movl      %ecx, 32(%esp)
	movl      %eax, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A099:
	.ascii	"\215\264&\000\000\000\000"
.L0804A0A0:
	movl      %esi, %eax
	movl      %ecx, %edx
	subl      40(%esp), %eax
	sbbl      44(%esp), %edx
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A0B9:
	.ascii	"\215\264&\000\000\000\000"
.L0804A0C0:
	movl      40(%esp), %eax
	movl      44(%esp), %edx
	xorl      %esi, %eax
	xorl      %ecx, %edx
	movl      %eax, 32(%esp)
	movl      %edx, 36(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A0D9:
	.ascii	"\215\264&\000\000\000\000"
.L0804A0E0:
	movl      40(%esp), %edx
	movl      44(%esp), %eax
	movl      $0, 36(%esp)
	xorl      %esi, %edx
	xorl      %ecx, %eax
	orl       %eax, %edx
	setne     %al
	movzbl    %al, %eax
	movl      %eax, 32(%esp)
	jmp       .L08049EC0
# ----------------------
.L0804A105:
	.ascii	"\215v\000"
.L0804A108:
	movl      56(%esp), %edx
	movl      60(%esp), %ecx
	movl      %edx, 32(%esp)
	movl      %ecx, 36(%esp)
	jmp       .L08049EC0
.L0804A11D:
	movl      $.LC0805960C, %eax
	call      .L08049E20
# ----------------------
.L0804A127:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L0804A130:
	subl      $44, %esp
	movl      %ebx, 28(%esp)
	movl      %ecx, %ebx
	movl      %esi, 32(%esp)
	movl      %edx, %esi
	movl      %edi, 36(%esp)
	movl      $1, %edi
	movl      %ebp, 40(%esp)
	xorl      %ebp, %ebp
.L0804A14E:
	subl      $5, %eax
	cmpl      $31, %eax
	jbe       .L0804A160
.L0804A156:
	movl      $.LC0805962B, %eax
	call      .L08049E20
.L0804A160:
	jmp       *.LC0805969C(,%eax,4)
# ----------------------
.L0804A167:
	.byte	144
.L0804A168:
	movl      .LBSS080616A4, %edx
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%esi)
	movl      %eax, (%esi)
	call      .L0804A750
.L0804A17D:
	movl      48(%esp), %edx
	movl      %edx, (%esp)
	movl      %esi, %edx
	movl      %eax, %ecx
	movl      %ebx, %eax
	call      .L0804A130
.L0804A18F:
	movl      %eax, %ebx
	movl      %edx, %esi
	notl      %ebx
	notl      %esi
.L0804A197:
	movl      %ebp, %ecx
	movl      %edi, %eax
	movl      40(%esp), %ebp
	mull      %ebx
	imull     %edi, %esi
	movl      36(%esp), %edi
	imull     %ebx, %ecx
	movl      28(%esp), %ebx
	addl      %esi, %ecx
	movl      %edx, %esi
	addl      %ecx, %esi
	movl      %esi, %edx
	movl      32(%esp), %esi
	addl      $44, %esp
	ret       
# ----------------------
.L0804A1BF:
	.byte	144
.L0804A1C0:
	movl      %ebx, .LBSS080612B0
	movl      (%esi), %ebx
	movl      4(%esi), %esi
	jmp       .L0804A197
# ----------------------
.L0804A1CD:
	.ascii	"\215v\000"
.L0804A1D0:
	movl      48(%esp), %eax
	movl      %ebx, .LBSS080612B0
	testl     %eax, %eax
	je        .L0804A298
.L0804A1E2:
	movl      (%esi), %ebx
	movl      4(%esi), %esi
	jmp       .L0804A197
# ----------------------
.L0804A1E9:
	.ascii	"\215\264&\000\000\000\000"
.L0804A1F0:
	movl      .LBSS080616A4, %edx
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%esi)
	movl      %eax, (%esi)
	call      .L0804A750
.L0804A205:
	movl      48(%esp), %edx
	movl      %edx, (%esp)
	movl      %esi, %edx
	movl      %eax, %ecx
	movl      %ebx, %eax
	call      .L0804A130
.L0804A217:
	orl       %edx, %eax
	sete      %bl
	xorl      %esi, %esi
	movzbl    %bl, %ebx
	jmp       .L0804A197
# ----------------------
.L0804A226:
	.value	36966
.L0804A228:
	movl      .LBSS080616A4, %edx
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%esi)
	movl      %eax, (%esi)
	call      .L0804A750
.L0804A23D:
	movl      %eax, %edx
	movl      %ebx, %eax
	movl      %edx, %ebx
	jmp       .L0804A14E
.L0804A248:
	movl      .LBSS080616A4, %edx
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%esi)
	movl      %eax, (%esi)
	call      .L0804A750
.L0804A25D:
	negl      %edi
	adcl      $0, %ebp
	negl      %ebp
	movl      %eax, %edx
	movl      %ebx, %eax
	movl      %edx, %ebx
	jmp       .L0804A14E
# ----------------------
.L0804A26F:
	.byte	144
.L0804A270:
	movl      48(%esp), %edx
	movl      %ebx, %eax
	call      .L0804A600
.L0804A27B:
	cmpl      $35, .LBSS080612B0
	movl      %eax, %ebx
	movl      %edx, %esi
	jne       .L0804A2AB
.L0804A288:
	call      .L0804A750
.L0804A28D:
	movl      %eax, .LBSS080612B0
	jmp       .L0804A197
# ----------------------
.L0804A297:
	.byte	144
.L0804A298:
	movl      (%esi), %eax
	movl      %eax, (%esp)
	call      .L080585C0
.L0804A2A2:
	movl      %eax, %ebx
	movl      %edx, %esi
	jmp       .L0804A197
.L0804A2AB:
	movl      $.LC0805961D, %eax
	call      .L08049E20
# ----------------------
.L0804A2B5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804A2C0:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $60, %esp
	movl      %ecx, 28(%esp)
	jmp       .L0804A2FA
# ----------------------
.L0804A2D1:
	.ascii	"\215\264&\000\000\000\000"
.L0804A2D8:
	cmpl      $15, %ebp
	movl      %eax, %esi
	movl      %edx, %edi
	ja        .L0804A380
.L0804A2E5:
	movsbl    .LC08059714(%ebx), %eax
	cmpl      %eax, 80(%esp)
	jle       .L0804A380
.L0804A2F6:
	movl      %ebx, 28(%esp)
.L0804A2FA:
	call      .L0804A750
.L0804A2FF:
	movl      .LBSS080616A4, %edx
	movl      %edx, 44(%esp)
	movl      %eax, %ebx
	movl      .LBSS080616A0, %eax
	movl      %eax, 40(%esp)
	call      .L0804A750
.L0804A319:
	movl      84(%esp), %edx
	movl      %edx, (%esp)
	leal      40(%esp), %edx
	movl      %eax, %ecx
	movl      %ebx, %eax
	call      .L0804A130
.L0804A32D:
	movl      .LBSS080612B0, %ebx
	leal      -8(%ebx), %ebp
	cmpl      $15, %ebp
	ja        .L0804A352
.L0804A33B:
	movl      28(%esp), %ecx
	movzbl    .LC08059714(%ecx), %ecx
	cmpb      %cl, .LC08059714(%ebx)
	movb      %cl, 27(%esp)
	jl        .L0804A390
.L0804A352:
	movl      84(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0804A2D8
.L0804A35E:
	movl      %eax, (%esp)
	movl      28(%esp), %eax
	movl      %edi, %ecx
	movl      %edx, 4(%esp)
	movl      %esi, %edx
	call      .L08049E40
.L0804A372:
	cmpl      $15, %ebp
	movl      %eax, %esi
	movl      %edx, %edi
	jbe       .L0804A2E5
.L0804A37F:
	nop       
.L0804A380:
	addl      $60, %esp
	movl      %esi, %eax
	popl      %ebx
	movl      %edi, %edx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804A38C:
	.long	2520205
.L0804A390:
	movl      84(%esp), %ecx
	movl      %ecx, 4(%esp)
	movsbl    27(%esp), %ecx
	movl      %ecx, (%esp)
	movl      %ebx, %ecx
	call      .L0804A2C0
.L0804A3A7:
	movl      .LBSS080612B0, %ebx
	leal      -8(%ebx), %ebp
	jmp       .L0804A352
# ----------------------
.L0804A3B2:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L0804A3C0:
	subl      $60, %esp
	movl      %ebp, 56(%esp)
	movl      64(%esp), %ebp
	movl      %ebx, 44(%esp)
	movl      %edx, %ebx
	movl      %esi, 48(%esp)
	movl      %edi, 52(%esp)
	movl      %ebp, (%esp)
	call      .L0804A130
.L0804A3E1:
	movl      .LBSS080612B0, %ecx
	movl      %eax, %esi
	movl      %edx, %edi
	leal      -8(%ecx), %eax
	cmpl      $15, %eax
	jbe       .L0804A410
.L0804A3F3:
	cmpl      $3, %ecx
	je        .L0804A431
.L0804A3F8:
	movl      %esi, %eax
	movl      %edi, %edx
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
.L0804A410:
	movl      %esi, %eax
	movl      %ebp, 4(%esp)
	movl      $8, (%esp)
	call      .L0804A2C0
.L0804A422:
	movl      .LBSS080612B0, %ecx
	cmpl      $3, %ecx
	movl      %eax, %esi
	movl      %edx, %edi
	jne       .L0804A3F8
.L0804A431:
	call      .L0804A750
.L0804A436:
	movl      .LBSS080616A4, %edx
	orl       %edi, %esi
	movl      %eax, 28(%esp)
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%ebx)
	movl      %eax, (%ebx)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, %edi
	call      .L0804A750
.L0804A459:
	orl       %ebp, %edi
	movl      %ebx, %edx
	movl      %edi, (%esp)
	movl      %eax, %ecx
	movl      28(%esp), %eax
	call      .L0804A3C0
.L0804A46B:
	orl       %edx, %eax
	setne     %al
	xorl      %edx, %edx
	testl     %esi, %esi
	movzbl    %al, %eax
	setne     %dl
	andl      %edx, %eax
	movl      %eax, %edi
	movl      %eax, %esi
	sarl      $31, %edi
	jmp       .L0804A3F8
# ----------------------
.L0804A488:
	.long	649366928
	.long	0
.L0804A490:
	subl      $60, %esp
	movl      %ebp, 56(%esp)
	movl      64(%esp), %ebp
	movl      %ebx, 44(%esp)
	movl      %esi, 48(%esp)
	movl      %edi, 52(%esp)
	movl      %edx, %edi
	movl      %ebp, (%esp)
	call      .L0804A3C0
.L0804A4B1:
	cmpl      $2, .LBSS080612B0
	movl      %eax, %ebx
	movl      %edx, %esi
	je        .L0804A4D8
.L0804A4BE:
	movl      %ebx, %eax
	movl      %esi, %edx
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L0804A4D6:
	.value	36966
.L0804A4D8:
	call      .L0804A750
.L0804A4DD:
	movl      .LBSS080616A4, %edx
	movl      %eax, 28(%esp)
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%edi)
	movl      %eax, (%edi)
	movl      %ebx, %eax
	orl       %esi, %eax
	setne     %dl
	movzbl    %dl, %edx
	orl       %ebp, %edx
	movl      %edx, 24(%esp)
	call      .L0804A750
.L0804A506:
	movl      24(%esp), %edx
	movl      %edx, (%esp)
	movl      %edi, %edx
	movl      %eax, %ecx
	movl      28(%esp), %eax
	call      .L0804A490
.L0804A51A:
	orl       %ebx, %eax
	orl       %esi, %edx
	orl       %edx, %eax
	setne     %bl
	xorl      %esi, %esi
	movzbl    %bl, %ebx
	jmp       .L0804A4BE
# ----------------------
.L0804A52A:
	.ascii	"\215\266\000\000\000\000"
.L0804A530:
	subl      $60, %esp
	movl      %esi, 48(%esp)
	movl      64(%esp), %esi
	movl      %ebx, 44(%esp)
	movl      %edx, %ebx
	movl      %edi, 52(%esp)
	movl      %ebp, 56(%esp)
	movl      %esi, (%esp)
	call      .L0804A490
.L0804A551:
	cmpl      $37, .LBSS080612B0
	je        .L0804A570
.L0804A55A:
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L0804A56E:
	.value	36966
.L0804A570:
	movl      %eax, %edi
	orl       %edx, %edi
	sete      %al
	movzbl    %al, %eax
	movl      %eax, %ebp
	call      .L0804A750
.L0804A581:
	orl       %esi, %ebp
	movl      %ebp, %edx
	call      .L0804A600
.L0804A58A:
	cmpl      $38, .LBSS080612B0
	movl      %eax, 24(%esp)
	movl      %edx, 28(%esp)
	jne       .L0804A5E7
.L0804A59B:
	call      .L0804A750
.L0804A5A0:
	movl      .LBSS080616A4, %edx
	movl      %eax, %ebp
	movl      .LBSS080616A0, %eax
	movl      %edx, 4(%ebx)
	xorl      %edx, %edx
	testl     %edi, %edi
	setne     %dl
	orl       %esi, %edx
	movl      %eax, (%ebx)
	movl      %edx, 20(%esp)
	call      .L0804A750
.L0804A5C4:
	movl      20(%esp), %edx
	movl      %edx, (%esp)
	movl      %ebx, %edx
	movl      %eax, %ecx
	movl      %ebp, %eax
	call      .L0804A530
.L0804A5D6:
	testl     %edi, %edi
	je        .L0804A55A
.L0804A5DA:
	movl      24(%esp), %eax
	movl      28(%esp), %edx
	jmp       .L0804A55A
.L0804A5E7:
	movl      $.LC0805963D, %eax
	call      .L08049E20
# ----------------------
.L0804A5F1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804A600:
	subl      $76, %esp
	movl      %ebx, 60(%esp)
	movl      %edx, %ebx
	movl      .LBSS080616A4, %edx
	movl      %esi, 64(%esp)
	movl      %eax, %esi
	movl      .LBSS080616A0, %eax
	movl      %ebp, 72(%esp)
	movl      %edi, 68(%esp)
	movl      %edx, 44(%esp)
	movl      %eax, 40(%esp)
	call      .L0804A750
.L0804A62F:
	cmpl      $6, %esi
	movl      %eax, %ebp
	jne       .L0804A6F8
.L0804A63A:
	cmpl      $1, %eax
	leal      -24(%eax), %eax
	setne     %cl
	cmpl      $9, %eax
	ja        .L0804A6D0
.L0804A64C:
	movb      %cl, 28(%esp)
	call      .L0804A750
.L0804A655:
	movl      %ebx, %edx
	call      .L0804A600
.L0804A65C:
	testl     %ebx, %ebx
	movzbl    28(%esp), %ecx
	movl      %eax, %esi
	movl      %edx, %edi
	jne       .L0804A6B2
.L0804A669:
	testb     %cl, %cl
	je        .L0804A692
.L0804A66D:
	movl      40(%esp), %eax
	subl      $11, %ebp
	movl      %eax, (%esp)
	call      .L080585C0
.L0804A67C:
	movl      %esi, (%esp)
	movl      %edi, 4(%esp)
	movl      %edx, %ecx
	movl      %eax, %edx
	movl      %ebp, %eax
	call      .L08049E40
.L0804A68E:
	movl      %eax, %esi
	movl      %edx, %edi
.L0804A692:
	movl      40(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %edi, 8(%esp)
	movl      $0, 12(%esp)
	movl      %eax, (%esp)
	call      .L08058BB0
.L0804A6AE:
	movl      %eax, %esi
	movl      %edx, %edi
.L0804A6B2:
	movl      %esi, %eax
	movl      %edi, %edx
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
# ----------------------
.L0804A6CA:
	.ascii	"\215\266\000\000\000\000"
.L0804A6D0:
	testb     %cl, %cl
	je        .L0804A64C
.L0804A6D8:
	movl      %ebp, %ecx
	movl      $6, %eax
	leal      40(%esp), %edx
	movl      %ebx, (%esp)
	call      .L0804A530
.L0804A6EB:
	movl      %eax, %esi
	movl      %edx, %edi
	jmp       .L0804A6B2
# ----------------------
.L0804A6F1:
	.ascii	"\215\264&\000\000\000\000"
.L0804A6F8:
	movl      %eax, %ecx
	movl      %esi, %eax
	leal      40(%esp), %edx
	movl      %ebx, (%esp)
	call      .L0804A530
.L0804A708:
	movl      %eax, %esi
	movl      %edx, %edi
	jmp       .L0804A6B2
# ----------------------
.L0804A70E:
	.value	36966
.L0804A710:
	subl      $12, %esp
	movl      16(%esp), %eax
	movl      %eax, .LBSS080612AC
	movl      %eax, .LBSS0806169C
	call      .L0804A750
.L0804A726:
	xorl      %edx, %edx
	call      .L0804A600
.L0804A72D:
	movl      .LBSS080612B0, %ecx
	testl     %ecx, %ecx
	jne       .L0804A73B
.L0804A737:
	addl      $12, %esp
	ret       
.L0804A73B:
	movl      $.LC0805964B, %eax
	call      .L08049E20
# ----------------------
.L0804A745:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220"
.L0804A750:
	subl      $28, %esp
	movl      %ebx, 16(%esp)
	movl      .LBSS0806169C, %ebx
	movl      %esi, 20(%esp)
	movl      %edi, 24(%esp)
.L0804A765:
	movzbl    (%ebx), %edx
	cmpb      $126, %dl
	movsbl    %dl, %eax
	jbe       .L0804A788
.L0804A770:
	movl      $4, %eax
.L0804A775:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L0804A785:
	.ascii	"\215v\000"
.L0804A788:
	movzbl    %dl, %edx
	jmp       *.LC0805972C(,%edx,4)
# ----------------------
.L0804A792:
	.ascii	"\215\266\000\000\000\000"
.L0804A798:
	subl      $25, %eax
.L0804A79B:
	movzbl    1(%ebx), %edx
	leal      1(%ebx), %esi
.L0804A7A2:
	cmpb      $61, %dl
	je        .L0804A7C8
.L0804A7A7:
	movl      %esi, .LBSS0806169C
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L0804A7BD:
	.ascii	"\215v\000"
.L0804A7C0:
	subl      $6, %eax
.L0804A7C3:
	leal      1(%ebx), %esi
	jmp       .L0804A7A7
.L0804A7C8:
	addl      $11, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
# ----------------------
.L0804A7CF:
	.byte	144
.L0804A7D0:
	call      __ctype_b_loc
.L0804A7D5:
	movl      %ebx, %esi
	movl      (%eax), %edx
	leal      (%esi), %esi
.L0804A7E0:
	addl      $1, %esi
	movzbl    (%esi), %eax
	cmpb      $95, %al
	je        .L0804A7E0
.L0804A7EA:
	movzbl    %al, %eax
	testb     $8, (%edx,%eax,2)
	jne       .L0804A7E0
.L0804A7F3:
	movl      %esi, %edi
	subl      %ebx, %edi
	leal      1(%edi), %eax
	movl      %eax, (%esp)
	call      .L08051E00
.L0804A802:
	movl      %edi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, .LBSS080616A0
	movl      %eax, (%esp)
	call      mempcpy
.L0804A817:
	movb      $0, (%eax)
	movl      $6, %eax
	jmp       .L0804A7A7
# ----------------------
.L0804A821:
	.ascii	"\215\264&\000\000\000\000"
.L0804A828:
	subl      $90, %eax
	jmp       .L0804A7C3
# ----------------------
.L0804A82D:
	.ascii	"\215v\000"
.L0804A830:
	subl      $73, %eax
	jmp       .L0804A79B
.L0804A838:
	movzbl    1(%ebx), %edx
	leal      1(%ebx), %esi
	cmpb      $124, %dl
	je        .L0804A978
.L0804A848:
	subl      $105, %eax
	jmp       .L0804A7A2
.L0804A850:
	movzbl    1(%ebx), %edx
	leal      1(%ebx), %esi
	cmpb      $38, %dl
	je        .L0804A988
.L0804A860:
	subl      $24, %eax
	jmp       .L0804A7A2
.L0804A868:
	subl      $24, %eax
	jmp       .L0804A79B
.L0804A870:
	cmpb      $61, 1(%ebx)
	leal      1(%ebx), %esi
	je        .L0804A968
.L0804A87D:
	subl      $26, %eax
	jmp       .L0804A7A7
# ----------------------
.L0804A885:
	.ascii	"\215v\000"
.L0804A888:
	addl      $1, %ebx
	jmp       .L0804A765
.L0804A890:
	subl      $60, %eax
	jmp       .L0804A79B
.L0804A898:
	movzbl    1(%ebx), %edx
	leal      1(%ebx), %esi
	cmpb      $60, %dl
	je        .L0804A958
.L0804A8A8:
	cmpb      $61, %dl
	je        .L0804A94A
.L0804A8B1:
	subl      $50, %eax
	jmp       .L0804A7A7
# ----------------------
.L0804A8B9:
	.ascii	"\215\264&\000\000\000\000"
.L0804A8C0:
	subl      $20, %eax
	jmp       .L0804A7C3
.L0804A8C8:
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      $.LBSS0806169C, 4(%esp)
	movl      %ebx, (%esp)
	call      __strtoll_internal
.L0804A8E8:
	movl      %eax, .LBSS080616A0
	movl      $5, %eax
	movl      %edx, .LBSS080616A4
	jmp       .L0804A775
# ----------------------
.L0804A8FD:
	.ascii	"\215v\000"
.L0804A900:
	subl      $26, %eax
	jmp       .L0804A7C3
.L0804A908:
	movzbl    1(%ebx), %edx
	leal      1(%ebx), %esi
	cmpb      $61, %dl
	je        .L0804A940
.L0804A914:
	cmpb      $62, %dl
	je        .L0804A92F
.L0804A919:
	subl      $51, %eax
	jmp       .L0804A7A7
# ----------------------
.L0804A921:
	.ascii	"\215\264&\000\000\000\000"
.L0804A928:
	movl      %ebx, %esi
	jmp       .L0804A7A7
.L0804A92F:
	subl      $46, %eax
	movl      %esi, %ebx
	jmp       .L0804A79B
# ----------------------
.L0804A939:
	.ascii	"\215\264&\000\000\000\000"
.L0804A940:
	subl      $53, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
.L0804A94A:
	subl      $52, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
# ----------------------
.L0804A954:
	.long	2520205
.L0804A958:
	subl      $45, %eax
	movl      %esi, %ebx
	jmp       .L0804A79B
# ----------------------
.L0804A962:
	.ascii	"\215\266\000\000\000\000"
.L0804A968:
	subl      $10, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
# ----------------------
.L0804A972:
	.ascii	"\215\266\000\000\000\000"
.L0804A978:
	subl      $122, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
# ----------------------
.L0804A982:
	.ascii	"\215\266\000\000\000\000"
.L0804A988:
	subl      $35, %eax
	movl      %esi, %ebx
	jmp       .L0804A7C3
# ----------------------
.L0804A992:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804A9A0:
	pushl     %esi
	xorl      %esi, %esi
	pushl     %ebx
	movl      $76, %ebx
	subl      $20, %esp
.L0804A9AC:
	movl      $.LC08059928, (%esp)
	call      .L080539E0
.L0804A9B8:
	testl     %eax, %eax
	je        .L0804A9D5
.L0804A9BC:
	cmpl      %ebx, %eax
	je        .L0804A9AC
.L0804A9C0:
	movl      %eax, %ebx
	xorl      $1, %esi
	movl      $.LC08059928, (%esp)
	call      .L080539E0
.L0804A9D1:
	testl     %eax, %eax
	jne       .L0804A9BC
.L0804A9D5:
	addl      $20, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0804A9DD:
	.ascii	"\215v\000"
.L0804A9E0:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      .LD08061188, %ebx
	movl      36(%esp), %eax
	movl      32(%esp), %esi
	testl     %eax, %eax
	jne       .L0804AAC8
.L0804A9FC:
	addl      $1, .LBSS080616A8
	movl      .LD0806118C, %eax
	cmpl      $.LBSS0806395C, %eax
	je        .L0804AA25
.L0804AA0F:
	cmpl      %eax, %ebx
	je        .L0804AA1B
.L0804AA13:
	movl      %eax, (%esp)
	call      free
.L0804AA1B:
	movl      $.LBSS0806395C, .LD0806118C
.L0804AA25:
	testl     %esi, %esi
	sete      %al
	movl      %eax, %edi
	je        .L0804AA90
.L0804AA2E:
	cmpl      %esi, %ebx
	je        .L0804AA90
.L0804AA32:
	movl      %esi, (%esp)
	call      .L08051DD0
.L0804AA3A:
	movl      %eax, %esi
.L0804AA3C:
	cmpl      %ebx, %esi
	je        .L0804AA50
.L0804AA40:
	cmpl      $.LBSS0806395C, %ebx
	je        .L0804AA50
.L0804AA48:
	movl      %ebx, (%esp)
	call      free
.L0804AA50:
	movl      %esi, .LD08061188
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804AA70
.L0804AA67:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804AAC0
.L0804AA70:
	movl      %esi, 4(%esp)
	movl      $1, 8(%esp)
	movl      $.LC0805992E, (%esp)
	call      .L08058810
.L0804AA88:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804AA8F:
	.byte	144
.L0804AA90:
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      getcwd
.L0804AAA4:
	testl     %eax, %eax
	je        .L0804AAE8
.L0804AAA8:
	movl      %edi, %edx
	movl      %ebx, %esi
	testb     %dl, %dl
	movl      %eax, .LD0806118C
	je        .L0804AA50
.L0804AAB5:
	movl      %eax, %esi
	jmp       .L0804AA3C
# ----------------------
.L0804AAB9:
	.ascii	"\215\264&\000\000\000\000"
.L0804AAC0:
	call      .L0804AFA0
# ----------------------
.L0804AAC5:
	.ascii	"\353\251\220"
.L0804AAC8:
	movl      $1, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $.LC0805992B, (%esp)
	call      .L08058810
.L0804AAE0:
	jmp       .L0804A9FC
# ----------------------
.L0804AAE5:
	.ascii	"\215v\000"
.L0804AAE8:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      strerror
.L0804AAF7:
	movl      $.LC08059932, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B060
.L0804AB07:
	movl      $.LBSS0806395C, %eax
	jmp       .L0804AAA8
# ----------------------
.L0804AB0E:
	.value	36966
.L0804AB10:
	pushl     %ebx
	subl      $24, %esp
	movl      .LD08061188, %ebx
	call      .L0804A9A0
.L0804AB1F:
	testl     %eax, %eax
	je        .L0804AB31
.L0804AB23:
	movl      .LD0806118C, %eax
	cmpl      $.LBSS0806395C, %eax
	je        .L0804AB48
.L0804AB2F:
	movl      %eax, %ebx
.L0804AB31:
	movl      %ebx, 4(%esp)
	movl      $.LC0805A362, (%esp)
	call      .L08056C00
.L0804AB41:
	addl      $24, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L0804AB48:
	movl      $0, 4(%esp)
	movl      %ebx, (%esp)
	call      .L0804A9E0
.L0804AB58:
	movl      .LD0806118C, %eax
	jmp       .L0804AB2F
# ----------------------
.L0804AB5F:
	.byte	144
.L0804AB60:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	call      .L0804A9A0
.L0804AB6F:
	movl      %eax, 28(%esp)
	movl      .LBSS08063978, %eax
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L0804AE78
.L0804AB82:
	movzbl    (%esi), %eax
	cmpb      $45, %al
	je        .L0804ADA8
.L0804AB8D:
	cmpb      $47, %al
	movl      %esi, %ebx
	je        .L0804AC0B
.L0804AB93:
	cmpb      $46, %al
	je        .L0804AE10
.L0804AB9B:
	testb     %al, %al
	movl      $.LC08059D3A, %eax
	cmove     %eax, %esi
.L0804ABA5:
	movl      $.LC08059946, (%esp)
	leal      124(%esp), %ebp
	call      .L08058530
.L0804ABB5:
	leal      36(%esp), %edi
	movl      %eax, 124(%esp)
	jmp       .L0804AC05
# ----------------------
.L0804ABBF:
	.byte	144
.L0804ABC0:
	movzbl    (%eax), %eax
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	movb      %al, 24(%esp)
	call      .L0804C870
.L0804ABD3:
	movl      %edi, 8(%esp)
	movl      $3, (%esp)
	movl      %eax, %ebx
	movl      %eax, 4(%esp)
	call      __xstat
.L0804ABE9:
	testl     %eax, %eax
	js        .L0804AC01
.L0804ABED:
	movl      52(%esp), %eax
	andl      $61440, %eax
	cmpl      $16384, %eax
	je        .L0804ADE0
.L0804AC01:
	movl      124(%esp), %eax
.L0804AC05:
	testl     %eax, %eax
	jne       .L0804ABC0
.L0804AC09:
	movl      %esi, %ebx
.L0804AC0B:
	addl      $1, .LBSS080616A8
	xorl      %edi, %edi
	testb     $1, 28(%esp)
	je        .L0804AC90
.L0804AC1B:
	movl      %ebx, (%esp)
	call      chdir
.L0804AC23:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L0804AC78
.L0804AC29:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804AC47
.L0804AC3A:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804AE30
.L0804AC47:
	testl     %ebx, %ebx
	jne       .L0804AEB4
.L0804AC4F:
	testb     $2, 28(%esp)
	je        .L0804AC6B
.L0804AC56:
	movl      .LD08061188, %eax
	movl      $.LC0805A362, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L0804AC6B:
	addl      $140, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804AC78:
	movl      $1, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804A9E0
.L0804AC88:
	call      .L0804D3C0
.L0804AC8D:
	jmp       .L0804AC29
# ----------------------
.L0804AC8F:
	.byte	144
.L0804AC90:
	movl      %ebx, (%esp)
	call      .L08052DE0
.L0804AC98:
	movl      .LD080611A8, %edi
	cmpb      $47, (%ebx)
	movl      %eax, 24(%esp)
	je        .L0804ACC5
.L0804ACA7:
	movl      .LD08061188, %eax
	cmpl      $.LBSS0806395C, %eax
	je        .L0804AE8B
.L0804ACB7:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052170
.L0804ACC3:
	movl      %eax, %edi
.L0804ACC5:
	movl      %ebx, (%esp)
	call      strlen
.L0804ACCD:
	movl      %edi, 4(%esp)
	addl      $2, %eax
	movl      %eax, (%esp)
	call      .L080520F0
.L0804ACDC:
	movl      .LD080611A8, %edx
	cmpb      $47, (%ebx)
	leal      1(%edx), %ebp
	je        .L0804AE5C
.L0804ACEE:
	cmpb      $47, -1(%eax)
	movl      %eax, %edi
	je        .L0804ACFC
.L0804ACF6:
	movb      $47, (%eax)
	addl      $1, %edi
.L0804ACFC:
	cmpl      %edi, %ebp
	jb        .L0804AE40
.L0804AD04:
	movl      24(%esp), %eax
	movl      $.LC0805994D, 4(%esp)
	movl      %eax, (%esp)
	call      strtok
.L0804AD18:
	testl     %eax, %eax
	jne       .L0804AD4A
.L0804AD1C:
	jmp       .L0804AD88
# ----------------------
.L0804AD1E:
	.value	36966
.L0804AD20:
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052170
.L0804AD2C:
	movb      $47, (%eax)
	leal      1(%eax), %edi
.L0804AD32:
	movl      $.LC0805994D, 4(%esp)
	movl      $0, (%esp)
	call      strtok
.L0804AD46:
	testl     %eax, %eax
	je        .L0804AD88
.L0804AD4A:
	cmpb      $46, (%eax)
	jne       .L0804AD20
.L0804AD4F:
	movzbl    1(%eax), %edx
	cmpb      $46, %dl
	je        .L0804AD60
.L0804AD58:
	testb     %dl, %dl
	je        .L0804AD32
.L0804AD5C:
	jmp       .L0804AD20
# ----------------------
.L0804AD5E:
	.value	36966
.L0804AD60:
	cmpb      $0, 2(%eax)
	jne       .L0804AD20
.L0804AD66:
	cmpl      %edi, %ebp
	jae       .L0804AD32
.L0804AD6A:
	cmpb      $47, -2(%edi)
	leal      -1(%edi), %eax
	movl      %eax, %edi
	jne       .L0804AD81
.L0804AD75:
	jmp       .L0804AD32
# ----------------------
.L0804AD77:
	.byte	144
.L0804AD78:
	subl      $1, %edi
	cmpb      $47, -1(%edi)
	je        .L0804AD32
.L0804AD81:
	cmpl      %ebp, %edi
	jne       .L0804AD78
.L0804AD85:
	jmp       .L0804AD32
# ----------------------
.L0804AD87:
	.byte	144
.L0804AD88:
	cmpl      %edi, %ebp
	sbbl      $0, %edi
	movb      $0, (%edi)
	movl      .LD080611A8, %edi
	testl     %edi, %edi
	je        .L0804AE8B
.L0804AD9E:
	movl      %edi, %ebx
	jmp       .L0804AC1B
# ----------------------
.L0804ADA5:
	.ascii	"\215v\000"
.L0804ADA8:
	cmpb      $0, 1(%esi)
	jne       .L0804ABA5
.L0804ADB2:
	movl      $.LC0805992B, (%esp)
	call      .L08058530
.L0804ADBE:
	orl       $2, 28(%esp)
	movl      %eax, %esi
.L0804ADC5:
	testl     %esi, %esi
	jne       .L0804AEAC
.L0804ADCD:
	movzbl    .LBSS0806395C, %eax
	movl      $.LBSS0806395C, %esi
	jmp       .L0804AB8D
# ----------------------
.L0804ADDE:
	.value	36966
.L0804ADE0:
	cmpb      $58, 24(%esp)
	je        .L0804AC0B
.L0804ADEB:
	cmpb      $0, 24(%esp)
	movl      28(%esp), %eax
	setne     %dl
	orl       $2, %eax
	testb     %dl, %dl
	cmove     28(%esp), %eax
	movl      %eax, 28(%esp)
	jmp       .L0804AC0B
# ----------------------
.L0804AE0A:
	.ascii	"\215\266\000\000\000\000"
.L0804AE10:
	movzbl    1(%esi), %eax
	cmpb      $46, %al
	je        .L0804AE4F
.L0804AE18:
	cmpb      $47, %al
	je        .L0804AC09
.L0804AE20:
	testb     %al, %al
	jne       .L0804ABA5
.L0804AE28:
	movl      %esi, %ebx
	jmp       .L0804AC0B
# ----------------------
.L0804AE2F:
	.byte	144
.L0804AE30:
	call      .L0804AFA0
# ----------------------
.L0804AE35:
	.ascii	"\351\r\376\377\377\215\266\000\000\000\000"
.L0804AE40:
	cmpb      $47, 1(%edx)
	leal      2(%edx), %eax
	cmove     %eax, %ebp
	jmp       .L0804AD04
.L0804AE4F:
	movzbl    2(%esi), %eax
	cmpb      $46, %al
	jne       .L0804AE18
.L0804AE57:
	jmp       .L0804ABA5
.L0804AE5C:
	movl      24(%esp), %ecx
	leal      1(%eax), %edi
	movb      $47, (%eax)
	addl      $1, %ecx
	cmpb      $47, 1(%ebx)
	je        .L0804AE92
.L0804AE6F:
	movl      %ecx, 24(%esp)
	jmp       .L0804AD04
.L0804AE78:
	movl      $.LC0805A340, (%esp)
	call      .L08058530
.L0804AE84:
	movl      %eax, %esi
	jmp       .L0804ADC5
.L0804AE8B:
	xorl      %edi, %edi
	jmp       .L0804AC1B
.L0804AE92:
	cmpb      $47, 2(%ebx)
	je        .L0804AE6F
.L0804AE98:
	movb      $47, 1(%eax)
	leal      2(%eax), %edi
	addl      $2, 24(%esp)
	leal      2(%edx), %ebp
	jmp       .L0804AD04
.L0804AEAC:
	movzbl    (%esi), %eax
	jmp       .L0804AB8D
.L0804AEB4:
	movl      %esi, 4(%esp)
	movl      $.LC0805994F, (%esp)
	call      .L0804B000
# ----------------------
.L0804AEC4:
	.long	-1869574000
	.long	-1869574000
	.long	-1869574000
.L0804AED0:
	subl      $60, %esp
	movl      $.LC0805995E, %ecx
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	movl      .LBSS0806397C, %eax
	movl      %edi, 52(%esp)
	movl      .LBSS080616CC, %edi
	movl      %ebp, 56(%esp)
	movl      %edx, %ebp
	movl      $.LC080599F8, %edx
	movl      %esi, 48(%esp)
	movl      .LD080611B0, %esi
	testl     %eax, %eax
	cmove     %edx, %eax
	testl     %edi, %edi
	movl      $.LC08059967, %edx
	cmovne    %edx, %ecx
	movl      .LBSS080616B4, %edx
	movl      %eax, 8(%esp)
	movl      %ecx, 4(%esp)
	movl      %edi, 16(%esp)
	movl      %edx, 12(%esp)
	movl      %esi, (%esp)
	call      .L08056C30
.L0804AF2F:
	movl      %ebp, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      .L08056B50
.L0804AF3F:
	movl      %esi, 4(%esp)
	movl      $10, (%esp)
	call      .L08056C60
.L0804AF4F:
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L0804AF63:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804AF70:
	subl      $28, %esp
	addl      $1, .LBSS080616A8
	movl      32(%esp), %eax
	movl      $1, 4(%esp)
	movl      %eax, .LBSS080616B8
	movl      .LBSS080616AC, %eax
	movl      %eax, (%esp)
	call      __longjmp_chk
# ----------------------
.L0804AF98:
	.long	649366928
	.long	0
.L0804AFA0:
	subl      $28, %esp
	movl      $0, (%esp)
	movl      $0, .LBSS080616B0
	call      sigsetmask
.L0804AFB9:
	movl      .LBSS08063758, %eax
	testl     %eax, %eax
	jne       .L0804AFCB
.L0804AFC2:
	cmpb      $0, .LBSS08063967
	jne       .L0804AFEB
.L0804AFCB:
	movl      $0, 4(%esp)
	movl      $2, (%esp)
	call      signal
.L0804AFDF:
	movl      $2, (%esp)
	call      raise
.L0804AFEB:
	movl      $0, (%esp)
	call      .L0804AF70
# ----------------------
.L0804AFF7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L0804B000:
	subl      $28, %esp
	movl      32(%esp), %eax
	leal      36(%esp), %edx
	movl      $2, .LBSS080616C4
	call      .L0804AED0
.L0804B01A:
	call      .L080569E0
.L0804B01F:
	movl      $1, (%esp)
	call      .L0804AF70
# ----------------------
.L0804B02B:
	.ascii	"\220\215t&\000"
.L0804B030:
	subl      $28, %esp
	movl      36(%esp), %eax
	leal      40(%esp), %edx
	call      .L0804AED0
.L0804B040:
	call      .L080569E0
.L0804B045:
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804AF70
# ----------------------
.L0804B051:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804B060:
	subl      $12, %esp
	movl      16(%esp), %eax
	leal      20(%esp), %edx
	call      .L0804AED0
.L0804B070:
	addl      $12, %esp
	ret       
# ----------------------
.L0804B074:
	.long	46733
	.long	-1081278464
	.long	0
.L0804B080:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	cmpl      $20, %eax
	jne       .L0804B0B0
.L0804B08D:
	testb     $1, %dl
	movl      $.LC08059974, %eax
	jne       .L0804B0A7
.L0804B097:
	andl      $2, %edx
	movl      $.LC08059981, %eax
	movl      $.LC0805A08C, %edx
	cmove     %edx, %eax
.L0804B0A7:
	rep; ret       
# ----------------------
.L0804B0A9:
	.ascii	"\215\264&\000\000\000\000"
.L0804B0B0:
	cmpl      $2, %eax
	je        .L0804B08D
.L0804B0B5:
	jmp       strerror
# ----------------------
.L0804B0BA:
	.ascii	"\220\220\220\220\220\220"
.L0804B0C0:
	movl      .LBSS080616C0, %eax
	ret       
# ----------------------
.L0804B0C6:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L0804B0D0:
	pushl     %esi
	pushl     %ebx
	subl      $36, %esp
	testl     %eax, %eax
	je        .L0804B162
.L0804B0DD:
	movl      %eax, %ebx
	leal      24(%esp), %esi
	jmp       .L0804B12A
# ----------------------
.L0804B0E5:
	.ascii	"\215v\000"
.L0804B0E8:
	cmpl      $22, %eax
	jg        .L0804B123
.L0804B0ED:
	movl      16(%ebx), %eax
	testl     %eax, %eax
	je        .L0804B123
.L0804B0F4:
	movl      %eax, (%esp)
	movl      $3, 8(%esp)
	movl      %esi, 4(%esp)
	call      .L0804F400
.L0804B108:
	movl      24(%esp), %eax
	movl      $1, 8(%esp)
	movl      4(%eax), %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      .L08053BE0
.L0804B123:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0804B162
.L0804B12A:
	movl      %esi, 28(%esp)
	movl      (%ebx), %eax
	cmpl      $16, %eax
	jl        .L0804B123
.L0804B135:
	cmpl      $20, %eax
	jg        .L0804B0E8
.L0804B13A:
	movl      $10, 8(%esp)
	movl      %esi, 4(%esp)
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804F400
.L0804B151:
	movl      24(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, 16(%ebx)
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L0804B12A
.L0804B162:
	addl      $36, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0804B168:
	.long	649366928
	.long	0
.L0804B170:
	subl      $28, %esp
	movl      %ebx, 16(%esp)
	movl      32(%esp), %ebx
	movl      %esi, 20(%esp)
	movl      36(%esp), %esi
	movl      %edi, 24(%esp)
	testl     %ebx, %ebx
	je        .L0804B1BA
.L0804B18B:
	movl      (%ebx), %eax
	cmpl      $14, %eax
	jbe       .L0804B1D8
.L0804B192:
	movl      $2, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B1A5:
	movl      .LBSS080616C4, %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	sete      %al
	movl      %eax, %edi
.L0804B1B4:
	movl      %edi, .LBSS080616C4
.L0804B1BA:
	movl      .LBSS08063A40, %eax
	testl     %eax, %eax
	jne       .L0804B1E0
.L0804B1C3:
	andl      $1, %esi
	jne       .L0804B211
.L0804B1C8:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
.L0804B1D8:
	jmp       *.LC08059998(,%eax,4)
# ----------------------
.L0804B1DF:
	.byte	144
.L0804B1E0:
	call      .L08056500
.L0804B1E5:
	jmp       .L0804B1C3
# ----------------------
.L0804B1E7:
	.byte	144
.L0804B1E8:
	movl      %ebx, (%esp)
	xorl      %edi, %edi
	call      .L0804D530
.L0804B1F2:
	jmp       .L0804B1B4
# ----------------------
.L0804B1F4:
	.long	2520205
.L0804B1F8:
	movl      $.L0804B450, %eax
	xorl      %edi, %edi
	nop       
.L0804B200:
	movl      %esi, 4(%esp)
	movl      %ebx, (%esp)
	call      *%eax
.L0804B209:
	testl     %edi, .LBSS080616C4
	je        .L0804B1BA
.L0804B211:
	movl      $4, (%esp)
	call      .L0804AF70
# ----------------------
.L0804B21D:
	.ascii	"\215v\000"
.L0804B220:
	movl      $.L0804B860, %eax
	xorl      %edi, %edi
	jmp       .L0804B200
# ----------------------
.L0804B229:
	.ascii	"\215\264&\000\000\000\000"
.L0804B230:
	movl      $.L0804B380, %eax
	xorl      %edi, %edi
	jmp       .L0804B200
# ----------------------
.L0804B239:
	.ascii	"\215\264&\000\000\000\000"
.L0804B240:
	movl      $2, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B253:
	movl      .LBSS080616C8, %edx
	testl     %edx, %edx
	jne       .L0804B1BA
.L0804B261:
	movl      .LBSS080616C4, %eax
	testl     %eax, %eax
	je        .L0804B2C1
.L0804B26A:
	movl      12(%ebx), %ebx
	xorl      %edi, %edi
	movl      $.L0804B170, %eax
	testl     %ebx, %ebx
	jne       .L0804B200
.L0804B278:
	jmp       .L0804B1B4
# ----------------------
.L0804B27D:
	.ascii	"\215v\000"
.L0804B280:
	leal      -5(%eax), %edi
	movl      %edi, %edx
	shrl      $1, %edx
	subl      $1, %edx
	orl       %esi, %edx
	andl      $2, %edx
	movl      %edx, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B29E:
	movl      .LBSS080616C4, %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	sete      %al
	cmpl      %edi, %eax
	je        .L0804B1BA
.L0804B2B3:
	movl      .LBSS080616C8, %ecx
	testl     %ecx, %ecx
	jne       .L0804B1BA
.L0804B2C1:
	movl      8(%ebx), %ebx
	movl      $.L0804B170, %eax
	xorl      %edi, %edi
	jmp       .L0804B200
.L0804B2D0:
	movl      $.L0804B720, %eax
.L0804B2D5:
	xorl      %edi, %edi
	cmpb      $0, .LBSS08063964
	je        .L0804B200
.L0804B2E4:
	movl      %esi, %edx
	andl      $2, %edx
	cmpl      $1, %edx
	sbbl      %edi, %edi
	jmp       .L0804B200
# ----------------------
.L0804B2F3:
	.ascii	"\220\215t&\000"
.L0804B2F8:
	movl      4(%ebx), %eax
	movl      %eax, .LBSS080616B4
	movl      12(%ebx), %eax
	call      .L0804B0D0
.L0804B308:
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      .L080561E0
.L0804B313:
	movl      $1, 4(%esp)
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      .L080560E0
.L0804B326:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L0804B360
.L0804B32C:
	movl      12(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804B1B4
.L0804B337:
	movl      $0, (%esp)
	call      .L08055AD0
.L0804B343:
	jmp       .L0804B1B4
.L0804B348:
	movl      $.L0804B520, %eax
	jmp       .L0804B2D5
# ----------------------
.L0804B34F:
	.byte	144
.L0804B350:
	movl      $.L0804BDA0, %eax
	jmp       .L0804B2D5
# ----------------------
.L0804B35A:
	.ascii	"\215\266\000\000\000\000"
.L0804B360:
	movl      %esi, %eax
	andl      $2, %eax
	movl      %eax, 4(%esp)
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B374:
	movl      .LBSS080616C4, %edi
	jmp       .L0804B32C
# ----------------------
.L0804B37C:
	.long	2520205
.L0804B380:
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      36(%esp), %esi
	movl      32(%esp), %ebx
	addl      $1, .LBSS080616BC
	andl      $2, %esi
.L0804B39A:
	movl      $2, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B3AD:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	jne       .L0804B3EA
.L0804B3B6:
	cmpl      $9, (%ebx)
	movl      .LBSS080616C4, %eax
	je        .L0804B3C8
.L0804B3C0:
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
.L0804B3C8:
	testl     %eax, %eax
	jne       .L0804B400
.L0804B3CC:
	movl      %esi, 4(%esp)
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B3DB:
	movl      .LBSS080616C8, %eax
	movl      .LBSS080616C4, %edi
	testl     %eax, %eax
	je        .L0804B39A
.L0804B3EA:
	cmpl      $2, %eax
	jne       .L0804B428
.L0804B3EF:
	movl      .LBSS080612B4, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080612B4
	jle       .L0804B418
.L0804B400:
	movl      %edi, .LBSS080616C4
	subl      $1, .LBSS080616BC
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804B414:
	.long	2520205
.L0804B418:
	movl      $0, .LBSS080616C8
	jmp       .L0804B39A
# ----------------------
.L0804B427:
	.byte	144
.L0804B428:
	cmpl      $1, %eax
	jne       .L0804B400
.L0804B42D:
	movl      .LBSS080612B4, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080612B4
	jg        .L0804B400
.L0804B43E:
	movl      $0, .LBSS080616C8
	jmp       .L0804B400
# ----------------------
.L0804B44A:
	.ascii	"\215\266\000\000\000\000"
.L0804B450:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $48, %esp
	movl      64(%esp), %ebx
	leal      28(%esp), %edi
	movl      4(%ebx), %eax
	movl      %edi, (%esp)
	movl      %eax, .LBSS080616B4
	call      .L08051F10
.L0804B46E:
	leal      40(%esp), %eax
	movl      %eax, 44(%esp)
	movl      $2, 8(%esp)
	movl      %eax, 4(%esp)
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804F400
.L0804B48D:
	movl      12(%ebx), %esi
	movl      $0, .LBSS080616C4
	testl     %esi, %esi
	je        .L0804B4D7
.L0804B49E:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	jne       .L0804B4D7
.L0804B4A7:
	movl      8(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L0804B4B7
.L0804B4AE:
	jmp       .L0804B4E8
.L0804B4B0:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0804B4E8
.L0804B4B7:
	movl      40(%esp), %eax
	movl      4(%eax), %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804F640
.L0804B4CA:
	testl     %eax, %eax
	je        .L0804B4B0
.L0804B4CE:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	je        .L0804B4F8
.L0804B4D7:
	movl      %edi, (%esp)
	call      .L08051F50
.L0804B4DF:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804B4E6:
	.value	36966
.L0804B4E8:
	movl      4(%esi), %esi
	testl     %esi, %esi
	jne       .L0804B49E
.L0804B4EF:
	jmp       .L0804B4D7
# ----------------------
.L0804B4F1:
	.ascii	"\215\264&\000\000\000\000"
.L0804B4F8:
	movl      68(%esp), %eax
	movl      %eax, 4(%esp)
	movl      12(%esi), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B50B:
	movl      %edi, (%esp)
	call      .L08051F50
.L0804B513:
	addl      $48, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804B51A:
	.ascii	"\215\266\000\000\000\000"
.L0804B520:
	pushl     %ebp
	xorl      %edx, %edx
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0804B541
.L0804B534:
	leal      (%esi), %esi
.L0804B538:
	movl      (%eax), %eax
	addl      $1, %edx
	testl     %eax, %eax
	jne       .L0804B538
.L0804B541:
	addl      $1, .LBSS080616A8
	movl      %edx, 4(%esp)
	movl      %ebp, (%esp)
	call      .L08051240
.L0804B554:
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	movl      %eax, 28(%esp)
	je        .L0804B634
.L0804B563:
	movl      %ebp, 24(%esp)
	movl      $-1, %edi
	movl      %eax, %ebp
	jmp       .L0804B5D6
.L0804B570:
	movl      (%ebx), %eax
	movl      $-1, 36(%esp)
	testl     %eax, %eax
	je        .L0804B592
.L0804B57E:
	leal      32(%esp), %edx
	movl      %edx, (%esp)
	call      pipe
.L0804B58A:
	testl     %eax, %eax
	js        .L0804B70C
.L0804B592:
	movl      24(%esp), %edx
	movl      4(%edx), %eax
	movl      %eax, 8(%esp)
	movl      4(%ebx), %eax
	movl      %ebp, (%esp)
	movl      %eax, 4(%esp)
	call      .L080513F0
.L0804B5AC:
	testl     %eax, %eax
	je        .L0804B67D
.L0804B5B4:
	testl     %edi, %edi
	js        .L0804B5C0
.L0804B5B8:
	movl      %edi, (%esp)
	call      close
.L0804B5C0:
	movl      36(%esp), %eax
	movl      32(%esp), %edi
	movl      %eax, (%esp)
	call      close
.L0804B5D0:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0804B630
.L0804B5D6:
	movl      4(%ebx), %esi
	movl      (%esi), %eax
	testl     %eax, %eax
	jne       .L0804B570
.L0804B5DF:
	movl      12(%esi), %eax
	testl     %eax, %eax
	je        .L0804B570
.L0804B5E6:
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      .L08053C70
.L0804B5F1:
	cmpb      $0, (%eax)
	jne       .L0804B570
.L0804B5FA:
	movl      .LD08061238, %eax
	movl      $0, 8(%esp)
	addl      $5, %eax
	movl      %eax, 12(%esp)
	leal      40(%esp), %eax
	movl      %eax, 4(%esp)
	movl      12(%esi), %eax
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      .L0804CB10
.L0804B624:
	jmp       .L0804B570
# ----------------------
.L0804B629:
	.ascii	"\215\264&\000\000\000\000"
.L0804B630:
	movl      24(%esp), %ebp
.L0804B634:
	movl      4(%ebp), %eax
	testl     %eax, %eax
	je        .L0804B66A
.L0804B63B:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804B655
.L0804B64C:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804B65D
.L0804B655:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B65D:
	call      .L0804AFA0
# ----------------------
.L0804B662:
	.long	1530709123
	.long	-1017290914
.L0804B66A:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      .L080516D0
.L0804B676:
	movl      %eax, .LBSS080616C4
	jmp       .L0804B63B
.L0804B67D:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804B69C
.L0804B68E:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804B69C
.L0804B697:
	call      .L0804AFA0
.L0804B69C:
	movl      36(%esp), %eax
	testl     %eax, %eax
	js        .L0804B6B0
.L0804B6A4:
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0804B6B0:
	testl     %edi, %edi
	jle       .L0804B6CC
.L0804B6B4:
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      dup2
.L0804B6C4:
	movl      %edi, (%esp)
	call      close
.L0804B6CC:
	movl      36(%esp), %eax
	cmpl      $1, %eax
	jle       .L0804B6F1
.L0804B6D5:
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      dup2
.L0804B6E5:
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0804B6F1:
	movl      84(%esp), %eax
	orl       $1, %eax
	movl      %eax, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B707:
	call      abort
.L0804B70C:
	movl      %edi, (%esp)
	call      close
.L0804B714:
	movl      $.LC080599E0, (%esp)
	call      .L0804B000
.L0804B720:
	subl      $44, %esp
	xorl      %eax, %eax
	movl      %ebx, 28(%esp)
	movl      48(%esp), %ebx
	movl      %esi, 32(%esp)
	movl      %ebp, 40(%esp)
	movl      52(%esp), %ebp
	movl      %edi, 36(%esp)
	cmpl      $3, (%ebx)
	sete      %al
	movl      %eax, %esi
	movl      4(%ebx), %eax
	movl      %eax, .LBSS080616B4
	movl      12(%ebx), %eax
	call      .L0804B0D0
.L0804B755:
	testl     %esi, %esi
	jne       .L0804B761
.L0804B759:
	testl     $1, %ebp
	jne       .L0804B7D0
.L0804B761:
	addl      $1, .LBSS080616A8
	movl      $1, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08051240
.L0804B778:
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, %edi
	movl      %eax, (%esp)
	call      .L080513F0
.L0804B78A:
	testl     %eax, %eax
	je        .L0804B82D
.L0804B792:
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L0804B820
.L0804B79C:
	movl      %eax, .LBSS080616C4
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804B7BB
.L0804B7B2:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804B808
.L0804B7BB:
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
# ----------------------
.L0804B7CF:
	.byte	144
.L0804B7D0:
	movl      .LBSS08063A44, %edx
	testl     %edx, %edx
	jne       .L0804B761
.L0804B7DA:
	movl      $0, 4(%esp)
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      .L08055C40
.L0804B7ED:
	movl      %ebp, 4(%esp)
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B7FC:
	call      abort
# ----------------------
.L0804B801:
	.ascii	"\215\264&\000\000\000\000"
.L0804B808:
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	jmp       .L0804AFA0
.L0804B820:
	movl      %edi, (%esp)
	call      .L080516D0
.L0804B828:
	jmp       .L0804B79C
.L0804B82D:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804B84C
.L0804B83E:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804B84C
.L0804B847:
	call      .L0804AFA0
.L0804B84C:
	orl       $1, %ebp
	movl      %ebp, %eax
	andl      $-3, %eax
	testl     %esi, %esi
	cmovne    %eax, %ebp
	jmp       .L0804B7DA
# ----------------------
.L0804B85E:
	.value	36966
.L0804B860:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebx
	leal      28(%esp), %edi
	leal      40(%esp), %ebp
	movl      4(%ebx), %eax
	movl      %edi, (%esp)
	movl      %eax, .LBSS080616B4
	call      .L08051F10
.L0804B883:
	movl      8(%ebx), %esi
	movl      %ebp, 44(%esp)
	testl     %esi, %esi
	jne       .L0804B897
.L0804B88E:
	jmp       .L0804B8CC
.L0804B890:
	movl      4(%esi), %esi
	testl     %esi, %esi
	je        .L0804B8C8
.L0804B897:
	movl      $3, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %esi, (%esp)
	call      .L0804F400
.L0804B8AB:
	movl      .LBSS080616C8, %ecx
	testl     %ecx, %ecx
	je        .L0804B890
.L0804B8B5:
	movl      %edi, (%esp)
	call      .L08051F50
.L0804B8BD:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804B8C5:
	.ascii	"\215v\000"
.L0804B8C8:
	movl      44(%esp), %ebp
.L0804B8CC:
	movl      $0, (%ebp)
	movl      .LBSS080616BC, %eax
	movl      84(%esp), %ebp
	movl      40(%esp), %esi
	movl      $0, .LBSS080616C4
	addl      $1, %eax
	andl      $2, %ebp
	testl     %esi, %esi
	movl      %eax, .LBSS080616BC
	je        .L0804B946
.L0804B8F9:
	movl      $0, 8(%esp)
	movl      4(%esi), %eax
	movl      %eax, 4(%esp)
	movl      16(%ebx), %eax
	movl      %eax, (%esp)
	call      .L08058810
.L0804B913:
	movl      %ebp, 4(%esp)
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804B922:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	je        .L0804B96A
.L0804B92B:
	cmpl      $2, %eax
	jne       .L0804B972
.L0804B930:
	movl      .LBSS080612B4, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080612B4
	jle       .L0804B960
.L0804B941:
	movl      .LBSS080616BC, %eax
.L0804B946:
	subl      $1, %eax
	movl      %edi, (%esp)
	movl      %eax, .LBSS080616BC
	call      .L08051F50
.L0804B956:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804B95E:
	.value	36966
.L0804B960:
	movl      $0, .LBSS080616C8
.L0804B96A:
	movl      (%esi), %esi
	testl     %esi, %esi
	jne       .L0804B8F9
.L0804B970:
	jmp       .L0804B941
.L0804B972:
	cmpl      $1, %eax
	jne       .L0804B941
.L0804B977:
	movl      .LBSS080612B4, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080612B4
	jg        .L0804B941
.L0804B988:
	movl      $0, .LBSS080616C8
	movl      .LBSS080616BC, %eax
	jmp       .L0804B946
# ----------------------
.L0804B999:
	.ascii	"\215\264&\000\000\000\000"
.L0804B9A0:
	pushl     %ebx
	subl      $232, %esp
	movl      %eax, 16(%esp)
	movl      .LBSS08063984, %eax
	movl      %edx, 24(%esp)
	movl      %ecx, 28(%esp)
	movl      %eax, 200(%esp)
	movl      .LBSS08063988, %eax
	movl      %eax, 204(%esp)
	movl      .LBSS0806398C, %eax
	movl      %eax, 208(%esp)
	movl      .LBSS08063990, %eax
	movl      %eax, 212(%esp)
	movl      .LBSS08063994, %eax
	movl      %eax, 216(%esp)
	movl      .LBSS080612B8, %eax
	movl      %eax, 20(%esp)
	movl      .LBSS080616AC, %eax
	movl      %eax, 220(%esp)
	leal      44(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L0804BA10:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L0804BAAF
.L0804BA1A:
	addl      $1, .LBSS080616A8
	leal      44(%esp), %eax
	movl      %eax, .LBSS080616AC
	movl      16(%esp), %eax
	movb      $0, .LBSS08063988
	addl      $1, (%eax)
	movl      8(%eax), %eax
	movl      %eax, .LBSS080612B8
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	je        .L0804BB50
.L0804BA55:
	movl      24(%esp), %eax
	movl      $1, .LBSS08063990
	movl      $-1, .LBSS08063994
	subl      $1, %eax
	movl      %eax, .LBSS08063984
	movl      28(%esp), %eax
	addl      $4, %eax
	movl      %eax, .LBSS0806398C
	call      .L08058410
.L0804BA86:
	movl      240(%esp), %eax
	movl      16(%esp), %edx
	andl      $2, %eax
	movl      %eax, 4(%esp)
	movl      16(%edx), %eax
	movl      %eax, (%esp)
	call      .L0804B170
.L0804BAA3:
	movl      $0, (%esp)
	call      .L080589C0
.L0804BAAF:
	addl      $1, .LBSS080616A8
	movl      20(%esp), %eax
	movl      %eax, .LBSS080612B8
	movl      16(%esp), %eax
	movl      %eax, (%esp)
	call      .L080594C0
.L0804BACB:
	movl      $.LBSS08063984, (%esp)
	call      .L08052E90
.L0804BAD7:
	movl      200(%esp), %eax
	movl      %eax, .LBSS08063984
	movl      204(%esp), %eax
	movl      %eax, .LBSS08063988
	movl      208(%esp), %eax
	movl      %eax, .LBSS0806398C
	movl      212(%esp), %eax
	movl      %eax, .LBSS08063990
	movl      216(%esp), %eax
	movl      %eax, .LBSS08063994
	movl      220(%esp), %eax
	movl      %eax, .LBSS080616AC
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804BB39
.L0804BB30:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804BB68
.L0804BB39:
	andl      $-5, .LBSS080616C8
	addl      $232, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
# ----------------------
.L0804BB4A:
	.ascii	"\215\266\000\000\000\000"
.L0804BB50:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804BA55
.L0804BB5D:
	call      .L0804AFA0
# ----------------------
.L0804BB62:
	.ascii	"\351\356\376\377\377\220"
.L0804BB68:
	nop       
	leal      (%esi), %esi
	call      .L0804AFA0
# ----------------------
.L0804BB75:
	.ascii	"\353\302\211\366\215\274'\000\000\000\000"
.L0804BB80:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $32, %esp
	movl      48(%esp), %eax
	leal      20(%esp), %esi
	movl      52(%esp), %edi
	movl      %eax, (%esp)
	call      .L0804FC90
.L0804BB9C:
	movl      %esi, (%esp)
	call      .L08051F10
.L0804BBA4:
	jmp       .L0804BBE8
# ----------------------
.L0804BBA6:
	.value	36966
.L0804BBA8:
	movl      .LBSS0806399C, %ecx
	movl      $-2, %edx
	testl     %ecx, %ecx
	je        .L0804BBC3
.L0804BBB7:
	cmpl      $1, .LBSS080639C0
	sbbl      %edx, %edx
	orl       $-2, %edx
.L0804BBC3:
	andl      %edi, %edx
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      .L0804B170
.L0804BBD1:
	movl      .LBSS080616C4, %ebx
	movl      %esi, (%esp)
	call      .L08051F50
.L0804BBDF:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	jne       .L0804BBFB
.L0804BBE8:
	movl      $0, (%esp)
	call      .L08055A60
.L0804BBF4:
	cmpl      $.LBSS0806399C, %eax
	jne       .L0804BBA8
.L0804BBFB:
	call      .L0804FD00
.L0804BC00:
	addl      $32, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804BC09:
	.ascii	"\215\264&\000\000\000\000"
.L0804BC10:
	subl      $220, %esp
	movl      %eax, 24(%esp)
	movl      .LBSS080616CC, %eax
	movl      %ebx, 208(%esp)
	movl      %esi, 212(%esp)
	movl      %edi, 216(%esp)
	movl      %eax, 200(%esp)
	movl      .LBSS080616AC, %eax
	movl      %edx, 28(%esp)
	movl      %ecx, 20(%esp)
	movl      %eax, 204(%esp)
	leal      44(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L0804BC5B:
	testl     %eax, %eax
	movl      %eax, %ebx
	jne       .L0804BCBE
.L0804BC61:
	movl      20(%esp), %edx
	leal      44(%esp), %eax
	movl      %eax, .LBSS080616AC
	movl      (%edx), %eax
	movl      $0, .LBSS08063960
	movl      %eax, .LBSS080616CC
	movl      %edx, %eax
	addl      $4, %eax
	cmpl      $.LC0805B124, 24(%esp)
	movl      %eax, .LBSS08063978
	je        .L0804BD08
.L0804BC93:
	movl      28(%esp), %edx
	movl      20(%esp), %eax
	movl      %edx, (%esp)
	movl      24(%esp), %edx
	movl      %eax, 4(%esp)
	call      *4(%edx)
.L0804BCA9:
	movl      %eax, %esi
.L0804BCAB:
	call      .L080569E0
.L0804BCB0:
	movl      .LD080611B4, %eax
	orl       20(%eax), %esi
	movl      %esi, .LBSS080616C4
.L0804BCBE:
	movl      .LD080611D8, %eax
	movl      $0, .LD080611E4
	movl      212(%esp), %esi
	movl      216(%esp), %edi
	movl      %eax, .LD080611D0
	movl      200(%esp), %eax
	movl      %eax, .LBSS080616CC
	movl      204(%esp), %eax
	movl      %eax, .LBSS080616AC
	movl      %ebx, %eax
	movl      208(%esp), %ebx
	addl      $220, %esp
	ret       
.L0804BD08:
	xorl      %esi, %esi
	cmpl      $1, 28(%esp)
	jle       .L0804BCAB
.L0804BD11:
	cmpl      $2, 28(%esp)
	movl      4(%edx), %esi
	je        .L0804BD69
.L0804BD1B:
	movl      %edx, %edi
	movl      .LD080611A8, %eax
	addl      $8, %edi
	jmp       .L0804BD36
# ----------------------
.L0804BD27:
	.byte	144
.L0804BD28:
	cmpl      .LD080611A0, %eax
	je        .L0804BD88
.L0804BD30:
	movb      $32, (%eax)
	addl      $1, %eax
.L0804BD36:
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      .L08052170
.L0804BD42:
	movl      (%edi), %esi
	addl      $4, %edi
	testl     %esi, %esi
	jne       .L0804BD28
.L0804BD4B:
	cmpl      .LD080611A0, %eax
	je        .L0804BD92
.L0804BD53:
	movb      $0, (%eax)
	addl      $1, %eax
	subl      .LD080611A8, %eax
	movl      %eax, (%esp)
	call      .L08051E00
.L0804BD67:
	movl      %eax, %esi
.L0804BD69:
	movl      224(%esp), %eax
	movl      %esi, (%esp)
	andl      $2, %eax
	movl      %eax, 4(%esp)
	call      .L0804BB80
.L0804BD7F:
	movl      %eax, %esi
	jmp       .L0804BCAB
# ----------------------
.L0804BD86:
	.value	36966
.L0804BD88:
	call      .L080520D0
.L0804BD8D:
	leal      (%esi), %esi
	jmp       .L0804BD30
.L0804BD92:
	call      .L080520D0
.L0804BD97:
	jmp       .L0804BD53
# ----------------------
.L0804BD99:
	.ascii	"\215\264&\000\000\000\000"
.L0804BDA0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $108, %esp
	movl      128(%esp), %edx
	leal      72(%esp), %edi
	movl      4(%edx), %eax
	movl      %eax, .LBSS080616B4
	leal      60(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F10
.L0804BDC8:
	call      .L08058410
.L0804BDCD:
	leal      80(%esp), %edx
	movl      $0, .LBSS080616C0
	movl      $2, 88(%esp)
	movl      $.LC080599D4, 92(%esp)
	movl      %edx, 84(%esp)
	movl      $0, 80(%esp)
	movl      %eax, 40(%esp)
	movl      128(%esp), %eax
	movl      %edi, 76(%esp)
	movl      $0, 72(%esp)
	movl      12(%eax), %esi
	movl      $8, %eax
	testl     %esi, %esi
	je        .L0804BE5D
.L0804BE1A:
	movl      %edi, %ebp
	leal      (%esi), %esi
.L0804BE20:
	movl      $3, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      .L0804F400
.L0804BE34:
	movl      (%ebp), %eax
	testl     %eax, %eax
	je        .L0804BE49
.L0804BE3B:
	nop       
	leal      (%esi), %esi
.L0804BE40:
	movl      (%eax), %eax
	addl      $1, %ebx
	testl     %eax, %eax
	jne       .L0804BE40
.L0804BE49:
	movl      4(%esi), %esi
	testl     %esi, %esi
	je        .L0804BE56
.L0804BE50:
	movl      76(%esp), %ebp
	jmp       .L0804BE20
.L0804BE56:
	leal      8(,%ebx,4), %eax
.L0804BE5D:
	movl      %eax, (%esp)
	call      .L08051E00
.L0804BE65:
	addl      $4, %eax
	movl      %eax, 24(%esp)
	movl      72(%esp), %eax
	movl      24(%esp), %edx
	testl     %eax, %eax
	je        .L0804BE86
.L0804BE78:
	movl      4(%eax), %ecx
	movl      %ecx, (%edx)
	movl      (%eax), %eax
	addl      $4, %edx
	testl     %eax, %eax
	jne       .L0804BE78
.L0804BE86:
	movl      $0, (%edx)
	cmpb      $0, .LBSS08063967
	movl      $0, 32(%esp)
	je        .L0804BEAD
.L0804BE9D:
	testl     %ebx, %ebx
	jg        .L0804C1E3
.L0804BEA5:
	movl      $0, 32(%esp)
.L0804BEAD:
	movl      128(%esp), %edx
	movl      $2, .LBSS08063A58
	movl      16(%edx), %eax
	call      .L0804B0D0
.L0804BEC6:
	movl      128(%esp), %edx
	movl      16(%edx), %eax
	movl      %eax, (%esp)
	call      .L080561E0
.L0804BED8:
	movl      128(%esp), %edx
	movl      $3, 4(%esp)
	movl      %eax, 44(%esp)
	movl      16(%edx), %eax
	movl      %eax, (%esp)
	call      .L080560E0
.L0804BEF6:
	movl      .LD08061238, %esi
	movl      %eax, 36(%esp)
	movl      128(%esp), %eax
	movl      8(%eax), %edi
	testl     %edi, %edi
	je        .L0804BF58
.L0804BF0E:
	nop       
.L0804BF10:
	movl      84(%esp), %ebp
	leal      80(%esp), %edx
	movl      %edx, 4(%esp)
	movl      %edi, (%esp)
	movl      $4, 8(%esp)
	call      .L0804F400
.L0804BF2C:
	movl      (%ebp), %eax
	movl      4(%eax), %eax
	movl      %eax, (%esp)
	call      .L08058C40
.L0804BF3A:
	movl      (%ebp), %eax
	movl      4(%eax), %ebp
	movl      %esi, 4(%esp)
	movl      %ebp, (%esp)
	call      .L08058480
.L0804BF4C:
	movl      4(%edi), %edi
	testl     %eax, %eax
	cmove     %ebp, %esi
	testl     %edi, %edi
	jne       .L0804BF10
.L0804BF58:
	cmpb      $0, .LBSS0806396B
	jne       .L0804C1FC
.L0804BF65:
	testl     %ebx, %ebx
	je        .L0804C1D0
.L0804BF6D:
	addl      $5, %esi
	movl      24(%esp), %edi
	movl      $1, %eax
	movl      %esi, 28(%esp)
	movl      $-1, 24(%esp)
	leal      (%esi), %esi
.L0804BF88:
	movl      %eax, 8(%esp)
	leal      88(%esp), %eax
	movl      %esi, 12(%esp)
	movl      %eax, 4(%esp)
	movl      (%edi), %eax
	movl      %eax, (%esp)
	call      .L0804CB10
.L0804BFA2:
	movl      88(%esp), %eax
	cmpl      $-1, %eax
	je        .L0804C368
.L0804BFAF:
	cmpl      $2, %eax
	jne       .L0804C012
.L0804BFB4:
	cmpl      $-1, 24(%esp)
	movl      92(%esp), %eax
	je        .L0804C100
.L0804BFC3:
	cmpl      $.LC0805B130, %eax
	je        .L0804C115
.L0804BFCE:
	cmpl      $.LC0805B100, %eax
	jne       .L0804C012
.L0804BFD5:
	movl      28(%esp), %esi
	movl      %edi, %ecx
	nop       
	leal      (%esi), %esi
.L0804BFE0:
	movl      4(%ecx), %edx
	testl     %edx, %edx
	je        .L0804C012
.L0804BFE7:
	cmpb      $45, (%edx)
	leal      4(%ecx), %ebp
	jne       .L0804C0E0
.L0804BFF3:
	movzbl    1(%edx), %eax
	testb     %al, %al
	je        .L0804C0E0
.L0804BFFF:
	cmpb      $45, %al
	je        .L0804C0C8
.L0804C007:
	addl      $2, %edx
.L0804C00A:
	cmpb      $112, %al
	je        .L0804C0A0
.L0804C012:
	xorl      %ebp, %ebp
.L0804C014:
	movl      36(%esp), %eax
	testl     %eax, %eax
	je        .L0804C126
.L0804C020:
	movl      36(%esp), %eax
	movl      %eax, .LBSS080616C4
	movl      24(%esp), %eax
	testl     %eax, %eax
	jg        .L0804C3ED
.L0804C035:
	movl      128(%esp), %eax
	movl      16(%eax), %esi
	testl     %esi, %esi
	je        .L0804C04B
.L0804C043:
	movl      %ebp, (%esp)
	call      .L08055AD0
.L0804C04B:
	movl      44(%esp), %eax
	movl      %eax, (%esp)
	call      .L080561B0
.L0804C057:
	movl      40(%esp), %eax
	movl      %eax, (%esp)
	call      .L08058B80
.L0804C063:
	movl      32(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804C087
.L0804C06B:
	movl      32(%esp), %edx
	movl      $0, 8(%esp)
	movl      $.LC080599F1, (%esp)
	movl      %edx, 4(%esp)
	call      .L08058810
.L0804C087:
	leal      60(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F50
.L0804C093:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804C09B:
	.ascii	"\220\215t&\000"
.L0804C0A0:
	movzbl    (%edx), %eax
	addl      $1, %edx
	testb     %al, %al
	jne       .L0804C0B8
.L0804C0AA:
	movl      %ebp, %ecx
	movl      $.LC0805AFA5, %esi
	jmp       .L0804BFE0
# ----------------------
.L0804C0B6:
	.value	36966
.L0804C0B8:
	movl      $.LC0805AFA5, %esi
	jmp       .L0804C00A
# ----------------------
.L0804C0C2:
	.ascii	"\215\266\000\000\000\000"
.L0804C0C8:
	cmpb      $0, 2(%edx)
	jne       .L0804C007
.L0804C0D2:
	movl      8(%ecx), %eax
	testl     %eax, %eax
	je        .L0804C012
.L0804C0DD:
	leal      8(%ecx), %ebp
.L0804C0E0:
	testl     %ebp, %ebp
	je        .L0804C012
.L0804C0E8:
	movl      %ebp, %eax
	subl      %edi, %eax
	movl      %ebp, %edi
	sarl      $2, %eax
	subl      %eax, %ebx
	movl      $5, %eax
	jmp       .L0804BF88
# ----------------------
.L0804C0FD:
	.ascii	"\215v\000"
.L0804C100:
	movl      8(%eax), %edx
	andl      $1, %edx
	cmpl      $.LC0805B130, %eax
	movl      %edx, 24(%esp)
	jne       .L0804BFCE
.L0804C115:
	movl      36(%esp), %eax
	movl      $1, %ebp
	testl     %eax, %eax
	jne       .L0804C020
.L0804C126:
	movl      88(%esp), %eax
	cmpl      $1, %eax
	je        .L0804C326
.L0804C133:
	cmpl      $2, %eax
	je        .L0804C2B6
.L0804C13C:
	testb     $1, 132(%esp)
	je        .L0804C153
.L0804C146:
	movl      .LBSS08063A44, %eax
	testl     %eax, %eax
	je        .L0804C3C5
.L0804C153:
	addl      $1, .LBSS080616A8
	movl      128(%esp), %edx
	movl      $1, 4(%esp)
	movl      %edx, (%esp)
	call      .L08051240
.L0804C171:
	movl      $0, 8(%esp)
	movl      %eax, %ebx
	movl      128(%esp), %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      .L080513F0
.L0804C18E:
	testl     %eax, %eax
	je        .L0804C3AD
.L0804C196:
	movl      %ebx, (%esp)
	call      .L080516D0
.L0804C19E:
	movl      %eax, .LBSS080616C4
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804C035
.L0804C1B8:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804C035
.L0804C1C5:
	call      .L0804AFA0
# ----------------------
.L0804C1CA:
	.ascii	"\351f\376\377\377\220"
.L0804C1D0:
	movl      24(%esp), %edi
	xorl      %ebp, %ebp
	movl      $-1, 24(%esp)
	jmp       .L0804C014
.L0804C1E3:
	movl      .LBSS080612B8, %eax
	testl     %eax, %eax
	jne       .L0804BEA5
.L0804C1F0:
	movl      -4(%edx), %edx
	movl      %edx, 32(%esp)
	jmp       .L0804BEAD
.L0804C1FC:
	movl      .LD08061268, %eax
	movl      $1, %ebp
	addl      $4, %eax
	movl      %eax, (%esp)
	call      .L080555D0
.L0804C211:
	movl      $.LBSS08063A48, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C90
.L0804C221:
	movl      80(%esp), %edi
	xorl      %eax, %eax
	xorl      %edx, %edx
	testl     %edi, %edi
	jne       .L0804C235
.L0804C22D:
	jmp       .L0804C260
# ----------------------
.L0804C22F:
	.byte	144
.L0804C230:
	movl      $1, %edx
.L0804C235:
	movl      4(%edi), %eax
	movl      $.LBSS08063A48, (%esp)
	movl      %eax, 8(%esp)
	movl      %ebp, %eax
	subl      %edx, %eax
	addl      $.LC08059DB4, %eax
	movl      %eax, 4(%esp)
	call      .L08056C30
.L0804C255:
	movl      (%edi), %edi
	testl     %edi, %edi
	jne       .L0804C230
.L0804C25B:
	movl      $1, %eax
.L0804C260:
	movl      72(%esp), %edi
	movl      $1, %ebp
	testl     %edi, %edi
	jne       .L0804C275
.L0804C26D:
	jmp       .L0804C29D
# ----------------------
.L0804C26F:
	.byte	144
.L0804C270:
	movl      $1, %eax
.L0804C275:
	movl      4(%edi), %edx
	movl      $.LBSS08063A48, (%esp)
	movl      %edx, 8(%esp)
	movl      %ebp, %edx
	subl      %eax, %edx
	movl      %edx, %eax
	addl      $.LC08059DB4, %eax
	movl      %eax, 4(%esp)
	call      .L08056C30
.L0804C297:
	movl      (%edi), %edi
	testl     %edi, %edi
	jne       .L0804C270
.L0804C29D:
	movl      $.LBSS08063A48, 4(%esp)
	movl      $10, (%esp)
	call      .L08056C60
.L0804C2B1:
	jmp       .L0804BF65
.L0804C2B6:
	movl      24(%esp), %eax
	testl     %eax, %eax
	setg      %dl
	testl     %ebx, %ebx
	movl      %edx, %esi
	je        .L0804C377
.L0804C2C9:
	testb     %dl, %dl
	jne       .L0804C377
.L0804C2D1:
	movl      132(%esp), %edx
	movl      %edi, %ecx
	movl      92(%esp), %eax
	movl      %edx, (%esp)
	movl      %ebx, %edx
	call      .L0804BC10
.L0804C2E8:
	testl     %eax, %eax
	je        .L0804C035
.L0804C2F0:
	movl      .LBSS080616B8, %edx
	cmpl      $4, %edx
	je        .L0804C351
.L0804C2FB:
	cmpl      $1, %edx
	sbbl      %eax, %eax
	andl      $128, %eax
	addl      $2, %eax
	movl      %eax, .LBSS080616C4
	movl      %esi, %eax
	testb     %al, %al
	jne       .L0804C351
.L0804C313:
	testl     %edx, %edx
	je        .L0804C351
.L0804C317:
	movl      $0, .LBSS080616A8
	jmp       .L0804C1B8
.L0804C326:
	movl      $1, (%esp)
	call      .L080589C0
.L0804C332:
	movl      132(%esp), %edx
	movl      %edi, %ecx
	movl      92(%esp), %eax
	movl      %edx, (%esp)
	movl      %ebx, %edx
	call      .L0804B9A0
.L0804C349:
	testl     %eax, %eax
	je        .L0804C035
.L0804C351:
	movl      .LBSS080616AC, %eax
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      __longjmp_chk
# ----------------------
.L0804C366:
	.value	36966
.L0804C368:
	movl      $127, 36(%esp)
	xorl      %ebp, %ebp
	jmp       .L0804C020
.L0804C377:
	movl      $1, (%esp)
	call      .L080589C0
.L0804C383:
	cmpl      $1, %ebx
	jle       .L0804C2D1
.L0804C38C:
	testl     %ebp, %ebp
	je        .L0804C2D1
.L0804C394:
	movl      80(%esp), %eax
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      .L080587B0
.L0804C3A8:
	jmp       .L0804C2D1
.L0804C3AD:
	movl      .LBSS080616B0, %eax
	movl      $0, .LBSS080616A8
	testl     %eax, %eax
	je        .L0804C3C5
.L0804C3C0:
	call      .L0804AFA0
.L0804C3C5:
	movl      80(%esp), %eax
	movl      $17, 4(%esp)
	movl      %eax, (%esp)
	call      .L080587B0
.L0804C3D9:
	movl      92(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804C9B0
.L0804C3ED:
	movl      $1, (%esp)
	call      .L0804AF70
# ----------------------
.L0804C3F9:
	.ascii	"\215\264&\000\000\000\000"
.L0804C400:
	subl      $44, %esp
	movl      %esi, 36(%esp)
	movl      48(%esp), %esi
	movl      %ebx, 32(%esp)
	movl      52(%esp), %ebx
	movl      %edi, 40(%esp)
	testl     %esi, %esi
	movl      $-1, (%ebx)
	movl      $0, 4(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	je        .L0804C485
.L0804C436:
	leal      24(%esp), %eax
	movl      %eax, (%esp)
	call      pipe
.L0804C442:
	testl     %eax, %eax
	js        .L0804C495
.L0804C446:
	movl      $1, 4(%esp)
	movl      %esi, (%esp)
	call      .L08051240
.L0804C456:
	movl      $2, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, %edi
	movl      %eax, (%esp)
	call      .L080513F0
.L0804C46C:
	testl     %eax, %eax
	je        .L0804C4A1
.L0804C470:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0804C47C:
	movl      24(%esp), %eax
	movl      %edi, 12(%ebx)
	movl      %eax, (%ebx)
.L0804C485:
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	addl      $44, %esp
	ret       
.L0804C495:
	movl      $.LC080599E0, (%esp)
	call      .L0804B000
.L0804C4A1:
	movl      .LBSS080616B0, %eax
	movl      $0, .LBSS080616A8
	testl     %eax, %eax
	je        .L0804C4B9
.L0804C4B4:
	call      .L0804AFA0
.L0804C4B9:
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0804C4C5:
	movl      28(%esp), %eax
	cmpl      $1, %eax
	je        .L0804C4EA
.L0804C4CE:
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      dup2
.L0804C4DE:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0804C4EA:
	call      .L0804E430
.L0804C4EF:
	movl      $1, 4(%esp)
	movl      %esi, (%esp)
	call      .L0804B170
.L0804C4FF:
	call      abort
# ----------------------
.L0804C504:
	.long	46733
	.long	-1081278464
	.long	0
.L0804C510:
	pushl     %ebx
	subl      $24, %esp
	cmpl      $1, 32(%esp)
	movl      36(%esp), %ebx
	jle       .L0804C560
.L0804C51F:
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L08052CC0
.L0804C52A:
	testl     %eax, %eax
	jle       .L0804C567
.L0804C52E:
	movl      .LBSS080616BC, %edx
	cmpl      %eax, %edx
	jge       .L0804C53E
.L0804C538:
	testl     %edx, %edx
	jle       .L0804C557
.L0804C53C:
	movl      %edx, %eax
.L0804C53E:
	movl      (%ebx), %edx
	movl      %eax, .LBSS080612B4
	cmpb      $99, (%edx)
	sete      %dl
	movzbl    %dl, %edx
	addl      $1, %edx
	movl      %edx, .LBSS080616C8
.L0804C557:
	addl      $24, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
# ----------------------
.L0804C55E:
	.value	36966
.L0804C560:
	movl      $1, %eax
	jmp       .L0804C52E
.L0804C567:
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L08052BE0
# ----------------------
.L0804C572:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L0804C580:
	cmpl      $1, .LBSS080612B8
	sbbl      %eax, %eax
	andl      $4, %eax
	addl      $4, %eax
	movl      %eax, .LBSS080616C8
	movl      8(%esp), %eax
	movl      4(%eax), %eax
	testl     %eax, %eax
	je        .L0804C5A8
.L0804C59F:
	movl      %eax, 4(%esp)
	jmp       .L08052CC0
.L0804C5A8:
	movl      .LBSS080616C4, %eax
	ret       
# ----------------------
.L0804C5AE:
	.value	36966
.L0804C5B0:
	movl      $1, %eax
	ret       
# ----------------------
.L0804C5B6:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L0804C5C0:
	xorl      %eax, %eax
	ret       
# ----------------------
.L0804C5C3:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804C5D0:
	subl      $28, %esp
	cmpl      $1, 32(%esp)
	jg        .L0804C5E0
.L0804C5DA:
	xorl      %eax, %eax
	addl      $28, %esp
	ret       
.L0804C5E0:
	movb      $0, .LBSS08063967
	movb      $0, .LBSS08063968
	call      .L08052E60
.L0804C5F3:
	movl      .LD08061238, %eax
	movl      $0, 8(%esp)
	addl      $5, %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	addl      $4, %eax
	movl      %eax, (%esp)
	call      .L0804C9B0
# ----------------------
.L0804C616:
	.ascii	"\220\220\220\220\220\220\220\220\220\220"
.L0804C620:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $28, %esp
	movzbl    (%eax), %eax
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L0804C64F
.L0804C638:
	movl      %ebx, %edx
	leal      (%esi), %esi
.L0804C640:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	testb     %al, %al
	jne       .L0804C640
.L0804C64F:
	andl      $32767, %ecx
	movl      $138547333, %edx
	movl      %ecx, %eax
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $4, %edx
	movl      %edx, %eax
	sall      $5, %eax
	subl      %edx, %eax
	movl      %ecx, %edx
	subl      %eax, %edx
	movl      .LBSS080612C0(,%edx,4), %edi
	leal      .LBSS080612C0(,%edx,4), %ebp
	testl     %edi, %edi
	jne       .L0804C690
.L0804C686:
	jmp       .L0804C6B8
.L0804C688:
	movl      %edi, %ebp
	movl      (%edi), %edi
	testl     %edi, %edi
	je        .L0804C6B8
.L0804C690:
	leal      11(%edi), %eax
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      strcmp
.L0804C69F:
	testl     %eax, %eax
	jne       .L0804C688
.L0804C6A3:
	testl     %edi, %edi
	je        .L0804C6B8
.L0804C6A7:
	movl      %ebp, .LBSS080616D0
	addl      $28, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804C6B7:
	.byte	144
.L0804C6B8:
	testl     %esi, %esi
	je        .L0804C6A7
.L0804C6BC:
	movl      %ebx, (%esp)
	call      strlen
.L0804C6C4:
	addl      $12, %eax
	movl      %eax, (%esp)
	call      .L08051D70
.L0804C6CF:
	movl      %eax, (%ebp)
	movl      %eax, %edi
	movl      $0, (%eax)
	movw      $65535, 8(%eax)
	leal      11(%eax), %eax
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      strcpy
.L0804C6EF:
	movl      %edi, %eax
	movl      %ebp, .LBSS080616D0
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804C6FF:
	.byte	144
.L0804C700:
	pushl     %edi
	movl      %ecx, %edi
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $16, %esp
	movl      %ecx, 8(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      execve
.L0804C71C:
	cmpl      $.LC080599F3, %ebx
	je        .L0804C74E
.L0804C724:
	movl      .LBSS08063754, %eax
	cmpl      $8, (%eax)
	jne       .L0804C74E
.L0804C72E:
	movl      %ebx, (%esi)
	movl      $.LC080599F3, -4(%esi)
	subl      $4, %esi
	movl      %edi, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $.LC080599F3, (%esp)
	call      execve
.L0804C74E:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804C755:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804C760:
	pushl     %ebx
	subl      $24, %esp
	addl      $1, .LBSS080616A8
	movl      .LBSS080616D0, %eax
	movl      (%eax), %ebx
	movl      (%ebx), %edx
	cmpw      $1, 8(%ebx)
	movl      %edx, (%eax)
	je        .L0804C7B8
.L0804C77D:
	movl      %ebx, (%esp)
	call      free
.L0804C785:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804C79F
.L0804C796:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804C7A8
.L0804C79F:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L0804C7A4:
	.long	2520205
.L0804C7A8:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L0804C7B1:
	.ascii	"\215\264&\000\000\000\000"
.L0804C7B8:
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L080594C0
.L0804C7C3:
	jmp       .L0804C77D
# ----------------------
.L0804C7C5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804C7D0:
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $16, %esp
	addl      $1, .LBSS080616A8
	movl      $.LBSS080612C0, %edi
	leal      (%esi), %esi
.L0804C7E8:
	movl      %edi, %ebx
	leal      (%esi), %esi
.L0804C7F0:
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L0804C816
.L0804C7F6:
	movzwl    8(%edx), %ecx
	testw     %cx, %cx
	jne       .L0804C848
.L0804C7FF:
	cmpl      %esi, 4(%edx)
	jl        .L0804C858
.L0804C804:
	movl      (%edx), %eax
	movl      %eax, (%ebx)
	movl      %edx, (%esp)
	call      free
.L0804C810:
	movl      (%ebx), %edx
	testl     %edx, %edx
	jne       .L0804C7F6
.L0804C816:
	addl      $4, %edi
	cmpl      $.LBSS0806133C, %edi
	jb        .L0804C7E8
.L0804C821:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804C83B
.L0804C832:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804C85C
.L0804C83B:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804C842:
	.ascii	"\215\266\000\000\000\000"
.L0804C848:
	cmpw      $2, %cx
	jne       .L0804C858
.L0804C84E:
	cmpl      .LD08061190, %esi
	jle       .L0804C804
.L0804C856:
	nop       
.L0804C858:
	movl      %edx, %ebx
	jmp       .L0804C7F0
.L0804C85C:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       .L0804AFA0
# ----------------------
.L0804C867:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L0804C870:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %eax
	movl      %eax, 24(%esp)
	movl      68(%esp), %eax
	movl      %eax, 28(%esp)
	movl      24(%esp), %eax
	movl      (%eax), %edi
	testl     %edi, %edi
	je        .L0804C99B
.L0804C895:
	movzbl    (%edi), %eax
	xorl      %ebp, %ebp
	movl      %edi, %ebx
	testb     %al, %al
	je        .L0804C8C6
.L0804C8A0:
	cmpb      $58, %al
	je        .L0804C8C6
.L0804C8A4:
	cmpb      $37, %al
	jne       .L0804C8B8
.L0804C8A8:
	jmp       .L0804C8C6
# ----------------------
.L0804C8AA:
	.ascii	"\215\266\000\000\000\000"
.L0804C8B0:
	testb     %al, %al
	je        .L0804C8C2
.L0804C8B4:
	cmpb      $37, %al
	je        .L0804C8C2
.L0804C8B8:
	addl      $1, %ebx
	movzbl    (%ebx), %eax
	cmpb      $58, %al
	jne       .L0804C8B0
.L0804C8C2:
	movl      %ebx, %ebp
	subl      %edi, %ebp
.L0804C8C6:
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      strlen
.L0804C8D2:
	leal      2(%ebp,%eax), %esi
	cmpl      .LD080611A4, %esi
	jbe       .L0804C8ED
.L0804C8DE:
	nop       
.L0804C8E0:
	call      .L08051FD0
.L0804C8E5:
	cmpl      .LD080611A4, %esi
	ja        .L0804C8E0
.L0804C8ED:
	cmpl      %edi, %ebx
	movl      .LD080611A8, %edx
	je        .L0804C917
.L0804C8F7:
	movl      %edx, (%esp)
	movl      %edx, 20(%esp)
	movl      %ebp, 8(%esp)
	movl      %edi, 4(%esp)
	call      memcpy
.L0804C90B:
	movl      20(%esp), %edx
	addl      %ebp, %edx
	movb      $47, (%edx)
	addl      $1, %edx
.L0804C917:
	movl      28(%esp), %eax
	movl      %edx, (%esp)
	movl      %eax, 4(%esp)
	call      strcpy
.L0804C927:
	movl      $0, .LBSS080616D4
	movzbl    (%ebx), %eax
	cmpb      $37, %al
	je        .L0804C958
.L0804C938:
	cmpb      $58, %al
	je        .L0804C982
.L0804C93C:
	movl      24(%esp), %eax
	movl      $0, (%eax)
	movl      %esi, 64(%esp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L08051E00
# ----------------------
.L0804C956:
	.value	36966
.L0804C958:
	leal      1(%ebx), %edx
	movl      %edx, .LBSS080616D4
	movzbl    1(%ebx), %eax
	movl      %edx, %ebx
	cmpb      $58, %al
	jne       .L0804C97A
.L0804C96B:
	jmp       .L0804C938
# ----------------------
.L0804C96D:
	.ascii	"\215v\000"
.L0804C970:
	addl      $1, %ebx
	movzbl    (%ebx), %eax
	cmpb      $58, %al
	je        .L0804C938
.L0804C97A:
	testb     %al, %al
	jne       .L0804C970
.L0804C97E:
	cmpb      $58, %al
	jne       .L0804C93C
.L0804C982:
	movl      24(%esp), %eax
	addl      $1, %ebx
	movl      %ebx, (%eax)
	movl      %esi, 64(%esp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L08051E00
.L0804C99B:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804C9A5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804C9B0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      72(%esp), %edi
	movl      $0, 8(%esp)
	movl      $32, 4(%esp)
	movl      $1, (%esp)
	call      .L08058270
.L0804C9DB:
	movl      (%esi), %ebx
	movl      $47, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 28(%esp)
	call      strchr
.L0804C9F1:
	testl     %eax, %eax
	je        .L0804CA5C
.L0804C9F5:
	movl      28(%esp), %ecx
	movl      %ebx, %eax
	movl      %esi, %edx
	call      .L0804C700
.L0804CA02:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
.L0804CA0D:
	movl      24(%esp), %edx
	movl      $2, %eax
	subl      $2, %edx
	cmpl      $11, %edx
	ja        .L0804CA25
.L0804CA1E:
	movl      .LC08059AC0(,%edx,4), %eax
.L0804CA25:
	movl      %eax, .LBSS080616C4
	movl      24(%esp), %eax
	movl      $4, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804B080
.L0804CA3E:
	movl      %eax, 12(%esp)
	movl      (%esi), %eax
	movl      $.LC0805A8A6, 4(%esp)
	movl      $4, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B030
.L0804CA5C:
	movl      $2, 24(%esp)
	leal      68(%esp), %ebp
	jmp       .L0804CA7A
# ----------------------
.L0804CA6A:
	.ascii	"\215\266\000\000\000\000"
.L0804CA70:
	movl      %ebx, (%esp)
	call      .L08051EC0
.L0804CA78:
	movl      (%esi), %ebx
.L0804CA7A:
	movl      %ebx, 4(%esp)
	movl      %ebp, (%esp)
	call      .L0804C870
.L0804CA86:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L0804CA0D
.L0804CA8C:
	subl      $1, %edi
	jns       .L0804CA70
.L0804CA91:
	movl      .LBSS080616D4, %eax
	testl     %eax, %eax
	jne       .L0804CA70
.L0804CA9A:
	movl      28(%esp), %ecx
	movl      %ebx, %eax
	movl      %esi, %edx
	call      .L0804C700
.L0804CAA7:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	cmpl      $20, %eax
	je        .L0804CA70
.L0804CAB3:
	cmpl      $2, %eax
	cmove     24(%esp), %eax
	movl      %eax, 24(%esp)
	jmp       .L0804CA70
# ----------------------
.L0804CAC1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804CAD0:
	subl      $44, %esp
	leal      48(%esp), %eax
	movl      $.L08052B90, 16(%esp)
	movl      $12, 12(%esp)
	movl      $39, 8(%esp)
	movl      $.LC0805B0A0, 4(%esp)
	movl      %eax, (%esp)
	call      bsearch
.L0804CAFF:
	addl      $44, %esp
	ret       
# ----------------------
.L0804CB03:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804CB10:
	subl      $172, %esp
	movl      %esi, 160(%esp)
	movl      176(%esp), %esi
	movl      $47, 4(%esp)
	movl      %ebx, 156(%esp)
	movl      180(%esp), %ebx
	movl      %edi, 164(%esp)
	movl      184(%esp), %edi
	movl      %esi, (%esp)
	movl      %ebp, 168(%esp)
	call      strchr
.L0804CB57:
	testl     %eax, %eax
	je        .L0804CBB8
.L0804CB5B:
	andl      $2, %edi
	movl      $-1, 4(%ebx)
	jne       .L0804CB90
.L0804CB67:
	movl      $0, (%ebx)
.L0804CB6D:
	movl      156(%esp), %ebx
	movl      160(%esp), %esi
	movl      164(%esp), %edi
	movl      168(%esp), %ebp
	addl      $172, %esp
	ret       
.L0804CB90:
	leal      48(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $3, (%esp)
	call      __xstat64
.L0804CBA8:
	testl     %eax, %eax
	jns       .L0804CB67
.L0804CBAC:
	movl      $-1, (%ebx)
	jmp       .L0804CB6D
# ----------------------
.L0804CBB4:
	.long	2520205
.L0804CBB8:
	movl      .LD08061238, %edx
	movl      188(%esp), %eax
	addl      $5, %edx
	cmpl      %edx, %eax
	sete      %dl
	movzbl    %dl, %edx
	movl      %edx, 20(%esp)
	je        .L0804CBF3
.L0804CBD6:
	movl      $.LC080599FB, 4(%esp)
	orl       $8, %edi
	movl      %eax, (%esp)
	call      strstr
.L0804CBE9:
	movl      %edi, %edx
	orl       $32, %edx
	testl     %eax, %eax
	cmovne    %edx, %edi
.L0804CBF3:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      .L0804C620
.L0804CBFC:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0804CC2A
.L0804CC02:
	movzwl    8(%eax), %eax
	movl      $8, %ecx
	leal      -1(%eax), %ebp
	cmpw      $1, %bp
	jbe       .L0804CDE0
.L0804CC18:
	testl     %edi, %ecx
	jne       .L0804CD88
.L0804CC20:
	cmpb      $0, 10(%edx)
	je        .L0804CD70
.L0804CC2A:
	movl      %edx, 16(%esp)
	movl      %esi, (%esp)
	call      .L0804CAD0
.L0804CC36:
	movl      16(%esp), %edx
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L0804CC62
.L0804CC40:
	testb     $2, 8(%eax)
	jne       .L0804CCFA
.L0804CC4A:
	testl     $8, %edi
	je        .L0804CDF0
.L0804CC56:
	testl     $32, %edi
	je        .L0804CCFA
.L0804CC62:
	testl     %edx, %edx
	movl      $-1, 28(%esp)
	je        .L0804CC86
.L0804CC6E:
	cmpb      $0, 10(%edx)
	je        .L0804CC86
.L0804CC74:
	cmpw      $2, 8(%edx)
	je        .L0804CEA7
.L0804CC7F:
	movl      4(%edx), %eax
	movl      %eax, 28(%esp)
.L0804CC86:
	movl      %edi, %eax
	andl      $4, %eax
	movl      $2, 40(%esp)
	movl      $-1, 24(%esp)
	movl      %eax, 36(%esp)
	movl      %edx, 32(%esp)
	movl      %edi, 44(%esp)
.L0804CCA7:
	leal      188(%esp), %edx
	movl      %esi, 4(%esp)
	movl      %edx, (%esp)
	call      .L0804C870
.L0804CCBA:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L0804CED6
.L0804CCC4:
	movl      %edi, (%esp)
	call      .L08051EC0
.L0804CCCC:
	movl      .LBSS080616D4, %eax
	addl      $1, 24(%esp)
	testl     %eax, %eax
	je        .L0804CE30
.L0804CCDE:
	movl      $.LC08059A97, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052BB0
.L0804CCEE:
	testl     %eax, %eax
	je        .L0804CE02
.L0804CCF6:
	testl     %ebp, %ebp
	je        .L0804CCA7
.L0804CCFA:
	movl      20(%esp), %edx
	testl     %edx, %edx
	jne       .L0804CD98
.L0804CD06:
	movl      $2, (%ebx)
	movl      %ebp, 4(%ebx)
	jmp       .L0804CB6D
.L0804CD14:
	movl      .LBSS080616D4, %ebp
	testl     %ebp, %ebp
	je        .L0804CF27
.L0804CD22:
	movl      %edi, (%esp)
	call      strlen
.L0804CD2A:
	addl      $1, %eax
	movl      %eax, (%esp)
	call      .L08051E00
.L0804CD35:
	movl      %edi, (%esp)
	call      .L08051C20
.L0804CD3D:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      .L0804C620
.L0804CD46:
	testl     %eax, %eax
	je        .L0804CF9A
.L0804CD4E:
	cmpw      $1, 8(%eax)
	jne       .L0804CF9A
.L0804CD59:
	movl      %eax, 16(%esp)
	movl      %edi, (%esp)
	call      .L08051EC0
.L0804CD65:
	movl      16(%esp), %edx
	movzwl    8(%edx), %eax
	leal      (%esi), %esi
.L0804CD70:
	cwtl      
	movb      $0, 10(%edx)
	movl      %eax, (%ebx)
	movl      4(%edx), %eax
	movl      %eax, 4(%ebx)
	jmp       .L0804CB6D
# ----------------------
.L0804CD82:
	.ascii	"\215\266\000\000\000\000"
.L0804CD88:
	movl      $0, 20(%esp)
	xorl      %edx, %edx
	jmp       .L0804CC2A
# ----------------------
.L0804CD97:
	.byte	144
.L0804CD98:
	addl      $1, .LBSS080616A8
	movl      $1, %edx
	movl      %esi, %eax
	call      .L0804C620
.L0804CDAB:
	movl      %eax, %edx
	movw      $2, 8(%eax)
	movl      %ebp, 4(%eax)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804CDD4
.L0804CDC7:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804CE95
.L0804CDD4:
	movzwl    8(%edx), %eax
	jmp       .L0804CD70
# ----------------------
.L0804CDDA:
	.ascii	"\215\266\000\000\000\000"
.L0804CDE0:
	movzwl    %bp, %ebp
	movl      .LC08059AF0(,%ebp,4), %ecx
	jmp       .L0804CC18
# ----------------------
.L0804CDEF:
	.byte	144
.L0804CDF0:
	movl      .LD08061190, %eax
	testl     %eax, %eax
	jg        .L0804CC62
.L0804CDFD:
	jmp       .L0804CCFA
.L0804CE02:
	movl      36(%esp), %eax
	testl     %eax, %eax
	jne       .L0804CCA7
.L0804CE0E:
	movl      .LBSS080616D4, %eax
	movl      $.LC08059A04, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052BB0
.L0804CE23:
	testl     %eax, %eax
	je        .L0804CCA7
.L0804CE2B:
	nop       
	leal      (%esi), %esi
.L0804CE30:
	movl      28(%esp), %edx
	cmpl      %edx, 24(%esp)
	jg        .L0804CE58
.L0804CE3A:
	cmpb      $47, (%edi)
	jne       .L0804CE58
.L0804CE3F:
	movl      24(%esp), %eax
	cmpl      %eax, %edx
	jg        .L0804CCA7
.L0804CE4B:
	movl      32(%esp), %edx
	movzwl    8(%edx), %eax
	jmp       .L0804CD70
.L0804CE58:
	leal      48(%esp), %edx
	movl      %edx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      $3, (%esp)
	call      __xstat64
.L0804CE70:
	testl     %eax, %eax
	js        .L0804CEB5
.L0804CE74:
	movl      64(%esp), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	je        .L0804CD14
.L0804CE88:
	movl      $13, 40(%esp)
	jmp       .L0804CCA7
.L0804CE95:
	movl      %edx, 16(%esp)
	call      .L0804AFA0
# ----------------------
.L0804CE9E:
	.ascii	"\213T$\020\351-\377\377\377"
.L0804CEA7:
	movl      .LD08061190, %eax
	movl      %eax, 28(%esp)
	jmp       .L0804CC86
.L0804CEB5:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	cmpl      $20, %eax
	je        .L0804CCA7
.L0804CEC5:
	cmpl      $2, %eax
	cmove     40(%esp), %eax
	movl      %eax, 40(%esp)
	jmp       .L0804CCA7
.L0804CED6:
	movl      20(%esp), %ecx
	movl      32(%esp), %edx
	movl      44(%esp), %edi
	testl     %ecx, %ecx
	jne       .L0804CF1C
.L0804CEE6:
	andl      $1, %edi
	je        .L0804CBAC
.L0804CEEF:
	movl      40(%esp), %edx
	movl      $4, 4(%esp)
	movl      %edx, (%esp)
	call      .L0804B080
.L0804CF03:
	movl      %esi, 4(%esp)
	movl      $.LC0805A8A6, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B060
.L0804CF17:
	jmp       .L0804CBAC
.L0804CF1C:
	testl     %edx, %edx
	je        .L0804CEE6
.L0804CF20:
	call      .L0804C760
.L0804CF25:
	jmp       .L0804CEE6
.L0804CF27:
	cmpl      $0, 20(%esp)
	jne       .L0804CF40
.L0804CF2E:
	movl      24(%esp), %eax
	movl      $0, (%ebx)
	movl      %eax, 4(%ebx)
	jmp       .L0804CB6D
.L0804CF40:
	addl      $1, .LBSS080616A8
	movl      $1, %edx
	movl      %esi, %eax
	call      .L0804C620
.L0804CF53:
	movl      %eax, %edx
	movw      $0, 8(%eax)
	movl      24(%esp), %eax
	movl      %eax, 4(%edx)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804CDD4
.L0804CF77:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804CDD4
.L0804CF84:
	movl      %edx, 16(%esp)
	call      .L0804AFA0
# ----------------------
.L0804CF8D:
	.ascii	"\213T$\020\017\267B\010\351\326\375\377\377"
.L0804CF9A:
	movl      %edi, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $.LC08059A09, (%esp)
	call      .L0804B000
# ----------------------
.L0804CFAE:
	.value	36966
.L0804CFB0:
	subl      $76, %esp
	movl      %ebx, 60(%esp)
	movl      %eax, %ebx
	movl      .LD08061238, %eax
	movl      %esi, 64(%esp)
	movl      %edx, %esi
	movl      %edi, 68(%esp)
	movl      %ecx, %edi
	movl      %ebp, 72(%esp)
	addl      $5, %eax
	testl     %ecx, %ecx
	movl      %eax, 44(%esp)
	jne       .L0804D028
.L0804CFD9:
	movl      %esi, (%esp)
	call      .L08053CC0
.L0804CFE1:
	testl     %eax, %eax
	je        .L0804D038
.L0804CFE5:
	testl     %edi, %edi
	movl      $.LC08059A1E, %eax
	cmovne    %eax, %esi
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      .L08056C90
.L0804CFFB:
	movl      (%ebx), %eax
	cmpl      4(%ebx), %eax
	je        .L0804D098
.L0804D006:
	movb      $10, (%eax)
	xorl      %eax, %eax
	addl      $1, (%ebx)
.L0804D00E:
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
# ----------------------
.L0804D022:
	.ascii	"\215\266\000\000\000\000"
.L0804D028:
	movl      %ebx, 4(%esp)
	movl      %edx, (%esp)
	call      .L08056C90
.L0804D034:
	jmp       .L0804CFD9
# ----------------------
.L0804D036:
	.value	36966
.L0804D038:
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      .L08049BA0
.L0804D048:
	testl     %eax, %eax
	je        .L0804D0AF
.L0804D04C:
	testl     %edi, %edi
	je        .L0804D070
.L0804D050:
	movl      8(%eax), %eax
	movl      $.LC08059A50, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 8(%esp)
	call      .L08056C30
.L0804D067:
	jmp       .L0804CFFB
# ----------------------
.L0804D069:
	.ascii	"\215\264&\000\000\000\000"
.L0804D070:
	movl      %eax, 24(%esp)
	movl      %ebx, 4(%esp)
	movl      $.LC08059A64, (%esp)
	call      .L08056C90
.L0804D084:
	movl      24(%esp), %eax
	movl      %eax, (%esp)
	call      .L08049C60
.L0804D090:
	xorl      %eax, %eax
	jmp       .L0804D00E
# ----------------------
.L0804D097:
	.byte	144
.L0804D098:
	movl      %ebx, 4(%esp)
	movl      $10, (%esp)
	call      .L08056C60
.L0804D0A8:
	xorl      %eax, %eax
	jmp       .L0804D00E
.L0804D0AF:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      .L0804C620
.L0804D0B8:
	testl     %eax, %eax
	movl      %eax, %ebp
	je        .L0804D1D9
.L0804D0C2:
	movswl    8(%eax), %eax
	movl      4(%ebp), %edx
	movl      %eax, 36(%esp)
	movl      %edx, 40(%esp)
.L0804D0D1:
	cmpl      $1, %eax
	je        .L0804D17D
.L0804D0DA:
	cmpl      $2, %eax
	je        .L0804D196
.L0804D0E3:
	testl     %eax, %eax
	jne       .L0804D153
.L0804D0E7:
	movl      40(%esp), %eax
	movl      %eax, 28(%esp)
	movl      %esi, %eax
	cmpl      $-1, 28(%esp)
	je        .L0804D11F
.L0804D0F8:
	leal      44(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804C870
.L0804D108:
	movl      %eax, (%esp)
	movl      %eax, 24(%esp)
	call      .L08051EC0
.L0804D114:
	movl      24(%esp), %eax
	subl      $1, 28(%esp)
	jns       .L0804D0F8
.L0804D11F:
	testl     %edi, %edi
	je        .L0804D202
.L0804D127:
	testl     %ebp, %ebp
	movl      $.LBSS0806395C, %ecx
	movl      $.LC08059A32, %edx
	cmove     %ecx, %edx
	movl      %eax, 12(%esp)
	movl      %edx, 8(%esp)
	movl      $.LC08059A6B, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056C30
.L0804D14E:
	jmp       .L0804CFFB
.L0804D153:
	testl     %edi, %edi
	movl      $127, %eax
	je        .L0804D00E
.L0804D160:
	movl      %eax, 24(%esp)
	movl      %ebx, 4(%esp)
	movl      $.LC08059A9F, (%esp)
	call      .L08056C90
.L0804D174:
	movl      24(%esp), %eax
	jmp       .L0804D00E
.L0804D17D:
	testl     %edi, %edi
	movl      %ebx, 4(%esp)
	je        .L0804D1CC
.L0804D185:
	movl      $.LC08059A74, (%esp)
	call      .L08056C90
.L0804D191:
	jmp       .L0804CFFB
.L0804D196:
	testl     %edi, %edi
	je        .L0804D1C8
.L0804D19A:
	movl      40(%esp), %edx
	movl      $.LC08059A47, %eax
	testb     $1, 8(%edx)
	movl      $.LBSS0806395C, %edx
	movl      $.LC08059A89, 4(%esp)
	movl      %ebx, (%esp)
	cmove     %edx, %eax
	movl      %eax, 8(%esp)
	call      .L08056C30
.L0804D1C3:
	jmp       .L0804CFFB
.L0804D1C8:
	movl      %ebx, 4(%esp)
.L0804D1CC:
	movl      %esi, (%esp)
	call      .L08056C90
.L0804D1D4:
	jmp       .L0804CFFB
.L0804D1D9:
	movl      44(%esp), %eax
	movl      $2, 8(%esp)
	movl      %esi, (%esp)
	movl      %eax, 12(%esp)
	leal      36(%esp), %eax
	movl      %eax, 4(%esp)
	call      .L0804CB10
.L0804D1F9:
	movl      36(%esp), %eax
	jmp       .L0804D0D1
.L0804D202:
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C90
.L0804D20E:
	jmp       .L0804CFFB
# ----------------------
.L0804D213:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804D220:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      $.LC0805ABE5, (%esp)
	call      .L080539E0
.L0804D233:
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	jne       .L0804D2DD
.L0804D23F:
	movl      .LBSS08063978, %eax
	leal      36(%esp), %esi
	movl      28(%esp), %edi
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0804D2A0
.L0804D252:
	jmp       .L0804D2F8
# ----------------------
.L0804D257:
	.byte	144
.L0804D258:
	cmpw      $2, %ax
	je        .L0804D2BD
.L0804D25E:
	movl      .LD08061238, %eax
	movl      %ebx, (%esp)
	movl      $1, 8(%esp)
	movl      %esi, 4(%esp)
	addl      $5, %eax
	movl      %eax, 12(%esp)
	call      .L0804CB10
.L0804D27E:
	movl      $1, %eax
	cmpl      $-1, 36(%esp)
	cmove     %eax, %edi
	movl      .LBSS08063978, %eax
	movl      4(%eax), %ebx
	leal      4(%eax), %edx
	movl      %edx, .LBSS08063978
	testl     %ebx, %ebx
	je        .L0804D2CD
.L0804D2A0:
	xorl      %edx, %edx
	movl      %ebx, %eax
	call      .L0804C620
.L0804D2A9:
	testl     %eax, %eax
	je        .L0804D25E
.L0804D2AD:
	movzwl    8(%eax), %eax
	testw     %ax, %ax
	jne       .L0804D258
.L0804D2B6:
	call      .L0804C760
.L0804D2BB:
	jmp       .L0804D25E
.L0804D2BD:
	movl      .LD08061190, %eax
	testl     %eax, %eax
	js        .L0804D25E
.L0804D2C6:
	call      .L0804C760
.L0804D2CB:
	jmp       .L0804D25E
.L0804D2CD:
	movl      %edi, 28(%esp)
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D2DD:
	xorl      %eax, %eax
	call      .L0804C7D0
.L0804D2E4:
	movl      $0, 28(%esp)
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D2F8:
	movl      $.LBSS080612C0, 24(%esp)
	leal      44(%esp), %ebp
	leal      (%esi), %esi
.L0804D308:
	movl      24(%esp), %edx
	movl      (%edx), %esi
	testl     %esi, %esi
	je        .L0804D392
.L0804D316:
	nop       
.L0804D318:
	cmpw      $0, 8(%esi)
	jne       .L0804D38C
.L0804D31F:
	movl      .LD08061238, %eax
	leal      11(%esi), %edi
	movl      4(%esi), %ebx
	addl      $5, %eax
	movl      %eax, 44(%esp)
	leal      (%esi), %esi
.L0804D338:
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      .L0804C870
.L0804D344:
	movl      %eax, (%esp)
	movl      %eax, 20(%esp)
	call      .L08051EC0
.L0804D350:
	subl      $1, %ebx
	movl      20(%esp), %eax
	jns       .L0804D338
.L0804D359:
	movl      .LD080611B4, %edx
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      .L08056C90
.L0804D36B:
	movl      $.LC08059AAC, %eax
	movl      $.LBSS0806395C, %edx
	cmpb      $0, 10(%esi)
	movl      $.LC0805A362, (%esp)
	cmove     %edx, %eax
	movl      %eax, 4(%esp)
	call      .L08056C00
.L0804D38C:
	movl      (%esi), %esi
	testl     %esi, %esi
	jne       .L0804D318
.L0804D392:
	addl      $4, 24(%esp)
	cmpl      $.LBSS0806133C, 24(%esp)
	jb        .L0804D308
.L0804D3A5:
	movl      28(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804D3B1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804D3C0:
	pushl     %ebx
	movl      .LD08061190, %ebx
	movl      $.LBSS080612C0, %ecx
	leal      (%esi), %esi
.L0804D3D0:
	movl      (%ecx), %eax
	testl     %eax, %eax
	jne       .L0804D3E4
.L0804D3D6:
	jmp       .L0804D3F7
.L0804D3D8:
	cmpw      $2, %dx
	je        .L0804D408
.L0804D3DE:
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L0804D3F7
.L0804D3E4:
	movzwl    8(%eax), %edx
	testw     %dx, %dx
	jne       .L0804D3D8
.L0804D3ED:
	movb      $1, 10(%eax)
.L0804D3F1:
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L0804D3E4
.L0804D3F7:
	addl      $4, %ecx
	cmpl      $.LBSS0806133C, %ecx
	jb        .L0804D3D0
.L0804D402:
	popl      %ebx
	ret       
# ----------------------
.L0804D404:
	.long	2520205
.L0804D408:
	movl      4(%eax), %edx
	testb     $2, 8(%edx)
	jne       .L0804D3DE
.L0804D411:
	testl     %ebx, %ebx
	jle       .L0804D3DE
.L0804D415:
	movb      $1, 10(%eax)
	jmp       .L0804D3F1
# ----------------------
.L0804D41B:
	.ascii	"\220\215t&\000"
.L0804D420:
	pushl     %ebp
	movl      $9999, %ebp
	pushl     %edi
	pushl     %esi
	xorl      %esi, %esi
	pushl     %ebx
	subl      $44, %esp
	movl      .LD08061238, %ecx
	movl      64(%esp), %ebx
	movl      $-1, 28(%esp)
	addl      $5, %ecx
	addl      $1, %ebx
	jmp       .L0804D46A
.L0804D448:
	cmpb      $58, %al
	movl      %esi, %ebp
	je        .L0804D487
.L0804D44E:
	testb     %al, %al
	je        .L0804D48E
.L0804D452:
	cmpb      $37, %al
	je        .L0804D4E0
.L0804D45A:
	cmpb      $58, %al
	sete      %al
	addl      $1, %ebx
	movzbl    %al, %eax
	addl      %eax, %esi
	leal      1(%edi), %ecx
.L0804D46A:
	movzbl    (%ecx), %edx
	leal      -1(%ebx), %edi
	movzbl    -1(%ebx), %eax
	cmpb      %al, %dl
	je        .L0804D4D8
.L0804D478:
	testb     %dl, %dl
	je        .L0804D448
.L0804D47C:
	cmpb      $58, %dl
	movl      %esi, %ebp
	jne       .L0804D44E
.L0804D483:
	testb     %al, %al
	jne       .L0804D452
.L0804D487:
	testb     %al, %al
	leal      1(%esi), %ebp
	jne       .L0804D452
.L0804D48E:
	movl      28(%esp), %edx
	movl      .LD08061190, %eax
	testl     %edx, %edx
	js        .L0804D510
.L0804D49B:
	movl      %eax, %edx
	shrl      $31, %edx
	testb     %dl, %dl
	je        .L0804D510
.L0804D4A4:
	movl      28(%esp), %eax
	movl      %eax, .LD08061190
.L0804D4AD:
	movl      28(%esp), %eax
	shrl      $31, %eax
	testb     %al, %al
	movl      $0, %eax
	cmovne    %eax, %ebp
.L0804D4BE:
	movl      %ebp, %eax
	call      .L0804C7D0
.L0804D4C5:
	movl      28(%esp), %eax
	movl      %eax, .LD08061190
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804D4D6:
	.value	36966
.L0804D4D8:
	movl      %ecx, %edi
	jmp       .L0804D44E
# ----------------------
.L0804D4DF:
	.byte	144
.L0804D4E0:
	movl      28(%esp), %edx
	shrl      $31, %edx
	testb     %dl, %dl
	je        .L0804D45A
.L0804D4EF:
	movl      $.LC08059A97, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08052BB0
.L0804D4FF:
	testl     %eax, %eax
	movzbl    -1(%ebx), %eax
	je        .L0804D518
.L0804D507:
	movl      %esi, 28(%esp)
	jmp       .L0804D45A
.L0804D510:
	testl     %eax, %eax
	jns       .L0804D4AD
.L0804D514:
	jmp       .L0804D4BE
# ----------------------
.L0804D516:
	.value	36966
.L0804D518:
	movl      $-1, 28(%esp)
	jmp       .L0804D45A
# ----------------------
.L0804D525:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804D530:
	pushl     %esi
	pushl     %ebx
	subl      $36, %esp
	movl      48(%esp), %esi
	addl      $1, .LBSS080616A8
	movl      %esi, (%esp)
	call      .L08059440
.L0804D548:
	movl      $1, %edx
	movl      %eax, %ebx
	movl      8(%esi), %eax
	call      .L0804C620
.L0804D557:
	cmpw      $1, 8(%eax)
	je        .L0804D5A0
.L0804D55E:
	movw      $1, 8(%eax)
	movl      %ebx, 4(%eax)
	movb      $0, 10(%eax)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804D585
.L0804D57C:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804D590
.L0804D585:
	addl      $36, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0804D58B:
	.ascii	"\220\215t&\000"
.L0804D590:
	addl      $36, %esp
	popl      %ebx
	popl      %esi
	jmp       .L0804AFA0
# ----------------------
.L0804D59A:
	.ascii	"\215\266\000\000\000\000"
.L0804D5A0:
	movl      4(%eax), %edx
	movl      %eax, 28(%esp)
	movl      %edx, (%esp)
	call      .L080594C0
.L0804D5AF:
	movl      28(%esp), %eax
	jmp       .L0804D55E
# ----------------------
.L0804D5B5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804D5C0:
	subl      $12, %esp
	xorl      %edx, %edx
	movl      16(%esp), %eax
	call      .L0804C620
.L0804D5CE:
	testl     %eax, %eax
	je        .L0804D5D9
.L0804D5D2:
	cmpw      $1, 8(%eax)
	je        .L0804D5E0
.L0804D5D9:
	addl      $12, %esp
	ret       
# ----------------------
.L0804D5DD:
	.ascii	"\215v\000"
.L0804D5E0:
	addl      $12, %esp
	jmp       .L0804C760
# ----------------------
.L0804D5E8:
	.long	649366928
	.long	0
.L0804D5F0:
	pushl     %ebp
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %ebp
	movl      36(%esp), %esi
	cmpl      $1, %ebp
	jle       .L0804D62B
.L0804D606:
	movl      $1, %ebx
	nop       
	leal      (%esi), %esi
.L0804D610:
	movl      (%esi,%ebx,4), %edx
	movl      $1, %ecx
	addl      $1, %ebx
	movl      .LD080611B4, %eax
	call      .L0804CFB0
.L0804D625:
	orl       %eax, %edi
	cmpl      %ebp, %ebx
	jne       .L0804D610
.L0804D62B:
	addl      $12, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804D635:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804D640:
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $24, %esp
.L0804D646:
	movl      $.LC08059AAE, (%esp)
	call      .L080539E0
.L0804D652:
	testl     %eax, %eax
	je        .L0804D676
.L0804D656:
	cmpl      $86, %eax
	je        .L0804D688
.L0804D65B:
	movl      %ebx, %edx
	orl       $1, %edx
	cmpl      $118, %eax
	cmove     %edx, %ebx
	movl      $.LC08059AAE, (%esp)
	call      .L080539E0
.L0804D672:
	testl     %eax, %eax
	jne       .L0804D656
.L0804D676:
	movl      .LBSS08063978, %eax
	testl     %ebx, %ebx
	movl      (%eax), %edx
	jne       .L0804D690
.L0804D681:
	addl      $24, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L0804D688:
	orl       $2, %ebx
	jmp       .L0804D646
# ----------------------
.L0804D68D:
	.ascii	"\215v\000"
.L0804D690:
	testl     %edx, %edx
	je        .L0804D681
.L0804D694:
	movl      .LD080611B4, %eax
	addl      $24, %esp
	leal      -1(%ebx), %ecx
	popl      %ebx
	jmp       .L0804CFB0
# ----------------------
.L0804D6A5:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220"
.L0804D6B0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $60, %esp
	testl     %esi, %esi
	movl      %ecx, 40(%esp)
	movl      80(%esp), %edx
	je        .L0804D759
.L0804D6CB:
	movl      .LBSS08061340, %eax
	movl      %edx, 36(%esp)
	movl      %eax, 4(%esp)
	leal      (%esi,%esi), %eax
	movl      %eax, (%esp)
	call      .L080520F0
.L0804D6E3:
	movl      36(%esp), %edx
	movl      %edx, %edi
	movl      %edx, %ebp
	andl      $49, %edi
	andl      $1, %edx
	andl      $2, %ebp
	movl      %edx, 44(%esp)
	movl      %edi, 28(%esp)
	jmp       .L0804D73A
# ----------------------
.L0804D6FE:
	.value	36966
.L0804D700:
	movl      28(%esp), %edi
	testl     %edi, %edi
	je        .L0804D730
.L0804D708:
	movl      40(%esp), %edi
	movzbl    (%edi,%ecx), %ecx
	cmpb      $12, %cl
	movb      %cl, 32(%esp)
	je        .L0804D768
.L0804D719:
	movl      44(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0804D729
.L0804D721:
	cmpl      $.LC0805BB62, %edi
	je        .L0804D730
.L0804D729:
	cmpb      $2, 32(%esp)
	je        .L0804D768
.L0804D730:
	movb      %dl, (%eax)
	addl      $1, %eax
	subl      $1, %esi
	je        .L0804D754
.L0804D73A:
	movzbl    (%ebx), %edx
	addl      $1, %ebx
	movsbl    %dl, %ecx
	testl     %ecx, %ecx
	movl      %ecx, 32(%esp)
	jne       .L0804D700
.L0804D74B:
	testl     %ebp, %ebp
	jne       .L0804D730
.L0804D74F:
	subl      $1, %esi
	jne       .L0804D73A
.L0804D754:
	movl      %eax, .LBSS08061340
.L0804D759:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804D761:
	.ascii	"\215\264&\000\000\000\000"
.L0804D768:
	movb      $129, (%eax)
	addl      $1, %eax
	jmp       .L0804D730
.L0804D770:
	pushl     %esi
	movl      $.LBSS0806395C, %esi
	pushl     %ebx
	movl      $.LC08059AF8, %ebx
	subl      $36, %esp
	testl     %ecx, %ecx
	je        .L0804D78A
.L0804D783:
	cmpb      $131, (%eax)
	movl      %ecx, %ebx
	je        .L0804D7AB
.L0804D78A:
	subl      %edx, %eax
	subl      $1, %eax
	movl      %esi, 16(%esp)
	movl      %ebx, 12(%esp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $.LC08059B13, (%esp)
	call      .L0804B000
.L0804D7AB:
	testb     $16, 48(%esp)
	movl      $.LC08059B0A, %ecx
	movl      $.LC08059AF8, %ebx
	cmovne    %ecx, %esi
	jmp       .L0804D78A
# ----------------------
.L0804D7BF:
	.byte	144
.L0804D7C0:
	subl      $44, %esp
	movl      %esi, 36(%esp)
	movl      %eax, %esi
	movl      .LBSS08061340, %eax
	movl      %edi, 40(%esp)
	movl      %edx, %edi
	movl      $32, (%esp)
	movl      %eax, 4(%esp)
	call      .L080520F0
.L0804D7E4:
	movl      %esi, 12(%esp)
	movl      %edi, 16(%esp)
	movl      $.LC08059B1E, 8(%esp)
	movl      $32, 4(%esp)
	movl      %eax, (%esp)
	movl      %eax, .LBSS08061340
	call      .L08056910
.L0804D809:
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	addl      %eax, .LBSS08061340
	addl      $44, %esp
	ret       
# ----------------------
.L0804D81B:
	.ascii	"\220\215t&\000"
.L0804D820:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
.L0804D829:
	movzbl    (%edi), %eax
	leal      1(%edi), %esi
	movl      %esi, %ebp
	cmpb      $63, %al
	je        .L0804D860
.L0804D835:
	jg        .L0804D870
.L0804D837:
	testb     %al, %al
	je        .L0804D9C8
.L0804D83F:
	cmpb      $42, %al
	je        .L0804DA00
.L0804D847:
	cmpb      (%edx), %al
	jne       .L0804D968
.L0804D84F:
	addl      $1, %edx
.L0804D852:
	movl      %ebp, %edi
	movzbl    (%edi), %eax
	leal      1(%edi), %esi
	movl      %esi, %ebp
	cmpb      $63, %al
	jne       .L0804D835
.L0804D860:
	cmpb      $0, (%edx)
	je        .L0804D968
.L0804D869:
	addl      $1, %edx
	movl      %esi, %edi
	jmp       .L0804D829
.L0804D870:
	cmpb      $91, %al
	je        .L0804D888
.L0804D874:
	cmpb      $92, %al
	jne       .L0804D847
.L0804D878:
	movzbl    1(%edi), %ecx
	testb     %cl, %cl
	je        .L0804D847
.L0804D880:
	leal      2(%edi), %ebp
	movl      %ecx, %eax
	jmp       .L0804D847
# ----------------------
.L0804D887:
	.byte	144
.L0804D888:
	movzbl    1(%edi), %eax
	movl      $0, 32(%esp)
	cmpb      $33, %al
	je        .L0804DA90
.L0804D89C:
	movzbl    (%edx), %ecx
	testb     %cl, %cl
	movb      %cl, 23(%esp)
	je        .L0804D968
.L0804D8AB:
	movzbl    (%ebp), %ebx
	addl      $1, %edx
	testb     %bl, %bl
	je        .L0804DAB0
.L0804D8BA:
	movsbl    23(%esp), %ecx
	addl      $1, %ebp
	movl      $0, 24(%esp)
	movl      %edi, 40(%esp)
	movl      %edx, 36(%esp)
	movl      %ecx, 28(%esp)
	movl      %esi, 44(%esp)
	jmp       .L0804D911
# ----------------------
.L0804D8DC:
	.long	2520205
.L0804D8E0:
	cmpb      $92, %bl
	je        .L0804D9B8
.L0804D8E9:
	movzbl    (%ebp), %eax
	cmpb      $45, %al
	je        .L0804D978
.L0804D8F5:
	cmpb      %bl, 23(%esp)
	movl      %eax, %ebx
	je        .L0804D9D8
.L0804D901:
	addl      $1, %ebp
	cmpb      $93, %bl
	je        .L0804D954
.L0804D909:
	testb     %bl, %bl
	je        .L0804DAA0
.L0804D911:
	cmpb      $91, %bl
	jne       .L0804D8E0
.L0804D916:
	movl      $.LC08059C00, %edi
.L0804D91B:
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      .L08052BB0
.L0804D927:
	testl     %eax, %eax
	je        .L0804D9E8
.L0804D92F:
	movl      28(%esp), %edx
	movl      %eax, %esi
	movl      %esi, %ebp
	movl      %edx, (%esp)
	call      *12(%edi)
.L0804D93D:
	movzbl    (%esi), %ebx
	testl     %eax, %eax
	setne     %al
	addl      $1, %ebp
	movzbl    %al, %eax
	orl       %eax, 24(%esp)
	cmpb      $93, %bl
	jne       .L0804D909
.L0804D954:
	movl      24(%esp), %ecx
	cmpl      %ecx, 32(%esp)
	movl      36(%esp), %edx
	jne       .L0804D852
.L0804D966:
	nop       
.L0804D968:
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804D972:
	.ascii	"\215\266\000\000\000\000"
.L0804D978:
	movzbl    1(%ebp), %edx
	cmpb      $93, %dl
	je        .L0804D8F5
.L0804D985:
	leal      1(%ebp), %eax
	addl      $2, %ebp
	cmpb      $92, %dl
	cmove     %ebp, %eax
	cmpb      23(%esp), %bl
	jg        .L0804D9AC
.L0804D997:
	movzbl    23(%esp), %ecx
	movl      $1, %edx
	cmpb      (%eax), %cl
	cmovg     24(%esp), %edx
	movl      %edx, 24(%esp)
.L0804D9AC:
	leal      1(%eax), %ebp
	movzbl    1(%eax), %ebx
	jmp       .L0804D901
.L0804D9B8:
	movzbl    (%ebp), %ebx
	addl      $1, %ebp
	jmp       .L0804D8E9
# ----------------------
.L0804D9C4:
	.long	2520205
.L0804D9C8:
	xorl      %eax, %eax
	cmpb      $0, (%edx)
	sete      %al
.L0804D9D0:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D9D8:
	movl      $1, 24(%esp)
	jmp       .L0804D901
# ----------------------
.L0804D9E5:
	.ascii	"\215v\000"
.L0804D9E8:
	addl      $16, %edi
	cmpl      $.LC08059CC0, %edi
	jb        .L0804D91B
.L0804D9F7:
	jmp       .L0804D8E9
# ----------------------
.L0804D9FC:
	.long	2520205
.L0804DA00:
	movl      %esi, %ebx
	movl      %edx, %esi
	movzbl    1(%edi), %edx
	cmpb      $42, %dl
	jne       .L0804DA1B
.L0804DA0D:
	leal      (%esi), %esi
.L0804DA10:
	addl      $1, %ebx
	movzbl    (%ebx), %edx
	cmpb      $42, %dl
	je        .L0804DA10
.L0804DA1B:
	cmpb      $63, %dl
	je        .L0804DA58
.L0804DA20:
	cmpb      $92, %dl
	je        .L0804DA58
.L0804DA25:
	cmpb      $91, %dl
	je        .L0804DA58
.L0804DA2A:
	movzbl    (%esi), %ecx
	cmpb      %dl, %cl
	je        .L0804DA58
.L0804DA31:
	xorl      %eax, %eax
	testb     %cl, %cl
	jne       .L0804DA48
.L0804DA37:
	jmp       .L0804D9D0
# ----------------------
.L0804DA39:
	.ascii	"\215\264&\000\000\000\000"
.L0804DA40:
	testb     %al, %al
	je        .L0804D968
.L0804DA48:
	addl      $1, %esi
	movzbl    (%esi), %eax
	cmpb      %dl, %al
	jne       .L0804DA40
.L0804DA52:
	leal      (%esi), %esi
.L0804DA58:
	movl      %esi, %edx
	movl      %ebx, %eax
	call      .L0804D820
.L0804DA61:
	testl     %eax, %eax
	jne       .L0804DA83
.L0804DA65:
	leal      (%esi), %esi
.L0804DA68:
	movzbl    (%esi), %eax
	addl      $1, %esi
	testb     %al, %al
	je        .L0804D968
.L0804DA76:
	movl      %esi, %edx
	movl      %ebx, %eax
	call      .L0804D820
.L0804DA7F:
	testl     %eax, %eax
	je        .L0804DA68
.L0804DA83:
	addl      $60, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804DA90:
	leal      2(%edi), %ebp
	movl      $1, 32(%esp)
	jmp       .L0804D89C
.L0804DAA0:
	movl      40(%esp), %edi
	movl      36(%esp), %edx
	movl      44(%esp), %esi
	movzbl    1(%edi), %eax
.L0804DAB0:
	movl      %esi, %ebp
	jmp       .L0804D847
# ----------------------
.L0804DAB7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L0804DAC0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      60(%esp), %esi
	movl      48(%esp), %ebp
	subl      $1, %esi
	cmpl      %ebp, %esi
	jb        .L0804DB42
.L0804DAD6:
	movl      56(%esp), %ebx
	movl      $0, 12(%esp)
	jmp       .L0804DB09
# ----------------------
.L0804DAE4:
	.long	2520205
.L0804DAE8:
	subl      $1, 12(%esp)
	js        .L0804DB50
.L0804DAEF:
	movl      12(%esp), %eax
	andl      $1, %eax
.L0804DAF6:
	testl     %eax, %eax
	je        .L0804DB39
.L0804DAFA:
	subl      $2, %esi
	subl      $1, %ebx
	subl      $1, 12(%esp)
	cmpl      %ebp, %esi
	jb        .L0804DB42
.L0804DB09:
	movl      68(%esp), %eax
	movl      %ebx, %edx
	movzbl    (%ebx), %edi
	testl     %eax, %eax
	je        .L0804DB1D
.L0804DB16:
	movl      52(%esp), %edx
	movb      $0, (%ebx)
.L0804DB1D:
	movl      60(%esp), %eax
	call      .L0804D820
.L0804DB26:
	movl      %edi, %edx
	movb      %dl, (%ebx)
	testl     %eax, %eax
	jne       .L0804DB44
.L0804DB2E:
	movl      64(%esp), %eax
	leal      -1(%esi), %edx
	testl     %eax, %eax
	jne       .L0804DAE8
.L0804DB39:
	movl      %edx, %esi
.L0804DB3B:
	subl      $1, %ebx
	cmpl      %ebp, %esi
	jae       .L0804DB09
.L0804DB42:
	xorl      %esi, %esi
.L0804DB44:
	addl      $28, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804DB4E:
	.value	36966
.L0804DB50:
	cmpl      %edx, %ebp
	jae       .L0804DB85
.L0804DB54:
	cmpb      $129, -2(%esi)
	jne       .L0804DB85
.L0804DB5A:
	leal      -2(%esi), %eax
	xorl      %ecx, %ecx
	jmp       .L0804DB70
# ----------------------
.L0804DB61:
	.ascii	"\215\264&\000\000\000\000"
.L0804DB68:
	subl      $1, %eax
	cmpb      $129, (%eax)
	jne       .L0804DB77
.L0804DB70:
	addl      $1, %ecx
	cmpl      %eax, %ebp
	jb        .L0804DB68
.L0804DB77:
	movl      %ecx, %eax
	movl      %ecx, 12(%esp)
	andl      $1, %eax
	jmp       .L0804DAF6
.L0804DB85:
	movl      $0, 12(%esp)
	movl      %edx, %esi
	jmp       .L0804DB3B
# ----------------------
.L0804DB91:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L0804DBA0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      52(%esp), %ebp
	movl      36(%esp), %ebx
	movl      32(%esp), %esi
	nop       
	leal      (%esi), %esi
.L0804DBB8:
	testl     %ebp, %ebp
	movzbl    (%ebx), %edi
	movl      %ebx, %edx
	je        .L0804DBC8
.L0804DBC1:
	movl      36(%esp), %edx
	movb      $0, (%ebx)
.L0804DBC8:
	movl      44(%esp), %eax
	call      .L0804D820
.L0804DBD1:
	movl      %edi, %edx
	movb      %dl, (%ebx)
	testl     %eax, %eax
	jne       .L0804DBF9
.L0804DBD9:
	movl      48(%esp), %eax
	testl     %eax, %eax
	je        .L0804DBEB
.L0804DBE1:
	xorl      %eax, %eax
	cmpb      $129, (%esi)
	sete      %al
	addl      %eax, %esi
.L0804DBEB:
	movl      %edi, %eax
	addl      $1, %esi
	addl      $1, %ebx
	testb     %al, %al
	jne       .L0804DBB8
.L0804DBF7:
	xorl      %esi, %esi
.L0804DBF9:
	addl      $12, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804DC03:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804DC10:
	subl      $28, %esp
	movl      %ebx, 20(%esp)
	movl      %esi, 24(%esp)
	movl      %eax, %esi
	movl      $8, (%esp)
	call      .L08051E00
.L0804DC29:
	movl      %esi, (%esp)
	movl      %eax, %ebx
	call      .L08052DE0
.L0804DC33:
	movl      24(%esp), %esi
	movl      %eax, 4(%ebx)
	movl      .LBSS08061348, %eax
	movl      %ebx, (%eax)
	movl      %ebx, .LBSS08061348
	movl      20(%esp), %ebx
	addl      $28, %esp
	ret       
# ----------------------
.L0804DC4F:
	.byte	144
.L0804DC50:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	movzbl    (%edx), %esi
	movl      %eax, 24(%esp)
	movl      %edx, 20(%esp)
	movl      %esi, %eax
	testb     %al, %al
	je        .L0804DCBC
.L0804DC6B:
	movl      %edx, 16(%esp)
	movl      %edx, %edi
	xorl      %ebp, %ebp
	jmp       .L0804DC88
# ----------------------
.L0804DC75:
	.ascii	"\215v\000"
.L0804DC78:
	movzbl    1(%edi), %eax
	movl      $1, %ebp
	addl      $1, %edi
.L0804DC84:
	testb     %al, %al
	je        .L0804DCB4
.L0804DC88:
	cmpb      $63, %al
	je        .L0804DC78
.L0804DC8C:
	cmpb      $42, %al
	je        .L0804DC78
.L0804DC90:
	cmpb      $91, %al
	je        .L0804DD28
.L0804DC98:
	xorl      %ebx, %ebx
	cmpb      $92, %al
	sete      %bl
	cmpb      $47, (%edi,%ebx)
	je        .L0804DD80
.L0804DCA9:
	leal      1(%edi,%ebx), %edi
	movzbl    (%edi), %eax
	testb     %al, %al
	jne       .L0804DC88
.L0804DCB4:
	testl     %ebp, %ebp
	jne       .L0804DDA0
.L0804DCBC:
	movl      .LBSS0806134C, %ebx
	movl      %esi, %ecx
	movl      20(%esp), %eax
	movl      24(%esp), %edx
	jmp       .L0804DCE1
# ----------------------
.L0804DCCE:
	.value	36966
.L0804DCD0:
	movb      %cl, (%edx)
	cmpb      $0, (%eax)
	je        .L0804DCF4
.L0804DCD7:
	movzbl    1(%eax), %ecx
	addl      $1, %edx
	addl      $1, %eax
.L0804DCE1:
	cmpb      $92, %cl
	jne       .L0804DCD0
.L0804DCE6:
	movzbl    1(%eax), %ecx
	addl      $1, %eax
	movb      %cl, (%edx)
	cmpb      $0, (%eax)
	jne       .L0804DCD7
.L0804DCF4:
	cmpl      24(%esp), %ebx
	je        .L0804DD16
.L0804DCFA:
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __lxstat64
.L0804DD12:
	testl     %eax, %eax
	js        .L0804DD1D
.L0804DD16:
	movl      %ebx, %eax
	call      .L0804DC10
.L0804DD1D:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804DD28:
	movzbl    1(%edi), %eax
	leal      1(%edi), %ebx
	movl      %ebx, %ecx
	cmpb      $33, %al
	movl      %eax, %edx
	jne       .L0804DD55
.L0804DD37:
	jmp       .L0804DD96
# ----------------------
.L0804DD39:
	.ascii	"\215\264&\000\000\000\000"
.L0804DD40:
	testb     %dl, %dl
	je        .L0804DD68
.L0804DD44:
	cmpb      $47, %dl
	je        .L0804DD68
.L0804DD49:
	movzbl    1(%edi), %edx
	leal      1(%edi), %ecx
	cmpb      $93, %dl
	je        .L0804DD70
.L0804DD55:
	cmpb      $92, %dl
	movl      %ecx, %edi
	jne       .L0804DD40
.L0804DD5C:
	movzbl    1(%ecx), %edx
	addl      $1, %edi
	testb     %dl, %dl
	jne       .L0804DD44
.L0804DD67:
	nop       
.L0804DD68:
	movl      %ebx, %edi
	jmp       .L0804DC84
# ----------------------
.L0804DD6F:
	.byte	144
.L0804DD70:
	movl      %ebx, %edi
	movl      $1, %ebp
	jmp       .L0804DC84
# ----------------------
.L0804DD7C:
	.long	2520205
.L0804DD80:
	testl     %ebp, %ebp
	jne       .L0804DDA2
.L0804DD84:
	leal      1(%edi,%ebx), %ebx
	movl      %ebx, 16(%esp)
	movzbl    (%ebx), %eax
	movl      %ebx, %edi
	jmp       .L0804DC84
.L0804DD96:
	leal      2(%edi), %ecx
	movzbl    2(%edi), %edx
	jmp       .L0804DD55
# ----------------------
.L0804DD9F:
	.byte	144
.L0804DDA0:
	xorl      %ebx, %ebx
.L0804DDA2:
	movl      16(%esp), %ecx
	cmpl      %ecx, 20(%esp)
	jae       .L0804DDEE
.L0804DDAC:
	movl      %ecx, %ebp
	movl      20(%esp), %eax
	movl      %esi, %edx
	movl      24(%esp), %ecx
	jmp       .L0804DDD2
# ----------------------
.L0804DDBA:
	.ascii	"\215\266\000\000\000\000"
.L0804DDC0:
	leal      1(%eax), %esi
	movb      %dl, (%ecx)
	addl      $1, %ecx
	cmpl      %ebp, %esi
	jae       .L0804DDEA
.L0804DDCC:
	movzbl    1(%eax), %edx
	movl      %esi, %eax
.L0804DDD2:
	cmpb      $92, %dl
	jne       .L0804DDC0
.L0804DDD7:
	movzbl    1(%eax), %edx
	addl      $1, %eax
	leal      1(%eax), %esi
	movb      %dl, (%ecx)
	addl      $1, %ecx
	cmpl      %ebp, %esi
	jb        .L0804DDCC
.L0804DDEA:
	movl      %ecx, 24(%esp)
.L0804DDEE:
	movl      .LBSS0806134C, %eax
	cmpl      %eax, 24(%esp)
	je        .L0804DF14
.L0804DDFD:
	leal      1(%eax), %edx
	cmpl      %edx, 24(%esp)
	je        .L0804DF44
.L0804DE0A:
	movl      24(%esp), %edx
	movb      $0, -1(%edx)
.L0804DE12:
	movl      %eax, (%esp)
	call      opendir
.L0804DE1A:
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L0804DD1D
.L0804DE24:
	movl      24(%esp), %eax
	cmpl      .LBSS0806134C, %eax
	je        .L0804DE34
.L0804DE30:
	movb      $47, -1(%eax)
.L0804DE34:
	cmpb      $0, (%edi)
	movl      %edi, 20(%esp)
	movl      $1, 28(%esp)
	je        .L0804DE58
.L0804DE45:
	leal      1(%edi,%ebx), %ecx
	movb      $0, (%edi)
	movl      %ecx, 20(%esp)
	movl      $0, 28(%esp)
.L0804DE58:
	movl      16(%esp), %ecx
	movzbl    (%ecx), %ebp
	movl      %ebp, %eax
	cmpb      $92, %al
	je        .L0804DF3B
.L0804DE69:
	leal      (%esi), %esi
.L0804DE70:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804DED8
.L0804DE79:
	movl      %esi, (%esp)
	call      readdir
.L0804DE81:
	testl     %eax, %eax
	je        .L0804DED8
.L0804DE85:
	movl      %ebp, %edx
	cmpb      $46, %dl
	je        .L0804DE92
.L0804DE8C:
	cmpb      $46, 11(%eax)
	je        .L0804DE70
.L0804DE92:
	leal      11(%eax), %edi
	movl      16(%esp), %eax
	movl      %edi, %edx
	call      .L0804D820
.L0804DEA0:
	testl     %eax, %eax
	je        .L0804DE70
.L0804DEA4:
	movl      28(%esp), %eax
	movl      24(%esp), %edx
	testl     %eax, %eax
	jne       .L0804DF20
.L0804DEB0:
	movzbl    (%edi), %ecx
	addl      $1, %edi
	leal      1(%edx), %eax
	testb     %cl, %cl
	movb      %cl, (%edx)
	jne       .L0804DF10
.L0804DEBF:
	movb      $47, (%edx)
	movl      20(%esp), %edx
	call      .L0804DC50
.L0804DECB:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804DE79
.L0804DED4:
	leal      (%esi), %esi
.L0804DED8:
	movl      %esi, (%esp)
	call      closedir
.L0804DEE0:
	movl      28(%esp), %eax
	testl     %eax, %eax
	jne       .L0804DD1D
.L0804DEEC:
	cmpl      $1, %ebx
	movl      20(%esp), %ecx
	movl      %ebx, %edx
	sbbl      %eax, %eax
	notl      %edx
	andl      $-45, %eax
	addl      $92, %eax
	movb      %al, (%ecx,%edx)
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804DF0D:
	.ascii	"\215v\000"
.L0804DF10:
	movl      %eax, %edx
	jmp       .L0804DEB0
.L0804DF14:
	movl      $.LC08059D3A, %eax
	jmp       .L0804DE12
# ----------------------
.L0804DF1E:
	.value	36966
.L0804DF20:
	movl      %edi, 4(%esp)
	movl      %edx, (%esp)
	call      strcpy
.L0804DF2C:
	movl      .LBSS0806134C, %eax
	call      .L0804DC10
.L0804DF36:
	jmp       .L0804DE70
.L0804DF3B:
	movzbl    1(%ecx), %ebp
	jmp       .L0804DE70
.L0804DF44:
	cmpb      $47, (%eax)
	jne       .L0804DE0A
.L0804DF4D:
	movl      $.LC0805994D, %eax
	jmp       .L0804DE12
# ----------------------
.L0804DF57:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L0804DF60:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	cmpl      $1, %edx
	movl      %eax, 28(%esp)
	jle       .L0804DFF6
.L0804DF76:
	movl      28(%esp), %eax
	movl      %edx, %ebp
	sarl      $1, %ebp
	leal      -1(%ebp), %edx
	movl      %eax, %ecx
	jmp       .L0804DF8A
# ----------------------
.L0804DF85:
	.ascii	"\215v\000"
.L0804DF88:
	movl      %esi, %ecx
.L0804DF8A:
	subl      $1, %edx
	movl      (%ecx), %esi
	cmpl      $-1, %edx
	jne       .L0804DF88
.L0804DF94:
	movl      $0, (%ecx)
	movl      %ebp, %edx
	call      .L0804DF60
.L0804DFA1:
	movl      %edi, %edx
	subl      %ebp, %edx
	leal      28(%esp), %edi
	movl      %eax, %ebx
	movl      %esi, %eax
	call      .L0804DF60
.L0804DFB2:
	movl      %eax, %esi
	leal      (%esi), %esi
.L0804DFB8:
	movl      4(%ebx), %eax
	movl      %eax, 4(%esp)
	movl      4(%esi), %eax
	movl      %eax, (%esp)
	call      strcmp
.L0804DFCA:
	testl     %eax, %eax
	js        .L0804DFE0
.L0804DFCE:
	movl      %ebx, (%edi)
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L0804DFF0
.L0804DFD6:
	movl      %ebx, %edi
	movl      %eax, %ebx
	jmp       .L0804DFB8
# ----------------------
.L0804DFDC:
	.long	2520205
.L0804DFE0:
	movl      %esi, (%edi)
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L0804E000
.L0804DFE8:
	movl      %esi, %edi
	movl      %eax, %esi
	jmp       .L0804DFB8
# ----------------------
.L0804DFEE:
	.value	36966
.L0804DFF0:
	movl      %esi, (%ebx)
.L0804DFF2:
	movl      28(%esp), %eax
.L0804DFF6:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804DFFE:
	.value	36966
.L0804E000:
	movl      %ebx, (%esi)
	jmp       .L0804DFF2
# ----------------------
.L0804E004:
	.long	46733
	.long	-1081278464
	.long	0
.L0804E010:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      .LBSS08061350, %edx
	movl      32(%esp), %esi
	testl     %edx, %edx
	je        .L0804E132
.L0804E028:
	cmpl      %esi, .LBSS0806135C
	jg        .L0804E0D8
.L0804E034:
	movl      .LBSS08061354, %edx
	movl      $.LBSS08061354, .LBSS08061350
	testl     %edx, %edx
	je        .L0804E167
.L0804E04C:
	cmpl      4(%edx), %esi
	jg        .L0804E064
.L0804E051:
	jmp       .L0804E173
# ----------------------
.L0804E056:
	.value	36966
.L0804E058:
	cmpl      4(%eax), %esi
	nop       
	leal      (%esi), %esi
	jle       .L0804E06A
.L0804E062:
	movl      %eax, %edx
.L0804E064:
	movl      (%edx), %eax
	testl     %eax, %eax
	jne       .L0804E058
.L0804E06A:
	movl      %edx, .LBSS08061350
	jmp       .L0804E080
# ----------------------
.L0804E072:
	.ascii	"\215\266\000\000\000\000"
.L0804E078:
	movl      .LBSS08061350, %edx
	movl      (%edx), %eax
.L0804E080:
	testl     %eax, %eax
	je        .L0804E140
.L0804E088:
	addl      $1, .LBSS080616A8
	movl      .LBSS08061350, %ebx
	movl      (%ebx), %eax
	movl      (%eax), %edi
	movl      %eax, (%esp)
	call      free
.L0804E0A1:
	movl      %edi, (%ebx)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804E078
.L0804E0B4:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0804E078
.L0804E0BD:
	call      .L0804AFA0
# ----------------------
.L0804E0C2:
	.ascii	"\353\264\215t&\000"
.L0804E0C8:
	nop       
	leal      (%esi), %esi
	call      .L0804AFA0
# ----------------------
.L0804E0D5:
	.ascii	"\215v\000"
.L0804E0D8:
	movl      .LBSS08061354, %eax
	testl     %eax, %eax
	je        .L0804E120
.L0804E0E1:
	addl      $1, .LBSS080616A8
	movl      .LBSS08061354, %eax
	movl      (%eax), %ebx
	movl      %eax, (%esp)
	call      free
.L0804E0F7:
	movl      %ebx, .LBSS08061354
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804E0D8
.L0804E10E:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804E0C8
.L0804E117:
	movl      .LBSS08061354, %eax
	testl     %eax, %eax
	jne       .L0804E0E1
.L0804E120:
	cmpl      .LBSS08061358, %esi
	jge       .L0804E150
.L0804E128:
	movl      $0, .LBSS08061350
.L0804E132:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804E139:
	.ascii	"\215\264&\000\000\000\000"
.L0804E140:
	cmpl      8(%edx), %esi
	jge       .L0804E132
.L0804E145:
	movl      %esi, 8(%edx)
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0804E14F:
	.byte	144
.L0804E150:
	movl      %esi, .LBSS0806135C
	movl      $.LBSS08061354, .LBSS08061350
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0804E167:
	xorl      %eax, %eax
	movl      $.LBSS08061354, %edx
	jmp       .L0804E080
.L0804E173:
	movl      %edx, %eax
	movl      $.LBSS08061354, %edx
	jmp       .L0804E080
# ----------------------
.L0804E17F:
	.byte	144
.L0804E180:
	subl      $44, %esp
	movl      .LBSS08061350, %ecx
	movl      $.LBSS08061354, %eax
	testl     %ecx, %ecx
	je        .L0804E1D0
.L0804E192:
	addl      $1, .LBSS080616A8
	movl      $16, (%esp)
	call      .L08051D70
.L0804E1A5:
	movl      .LBSS08061350, %edx
	movl      $0, (%eax)
	movl      %eax, (%edx)
	movl      .LBSS080616A8, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L0804E1D0
.L0804E1C6:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L0804E1F0
.L0804E1D0:
	movl      48(%esp), %edx
	movl      %eax, .LBSS08061350
	movl      %edx, 4(%eax)
	movl      52(%esp), %edx
	movl      %edx, 8(%eax)
	movl      56(%esp), %edx
	movl      %edx, 12(%eax)
	addl      $44, %esp
	ret       
# ----------------------
.L0804E1EE:
	.value	36966
.L0804E1F0:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L0804E1F9:
	.ascii	"\213D$\034\353\321\220"
.L0804E200:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      .LBSS08061350, %eax
	testl     %eax, %eax
	je        .L0804E324
.L0804E214:
	testb     $32, .LD08061204
	movl      $.LC0805AF94, 44(%esp)
	je        .L0804E419
.L0804E229:
	movl      80(%esp), %edx
	movl      $.LBSS08061354, 40(%esp)
	movl      %edx, 32(%esp)
	leal      (%esi), %esi
.L0804E240:
	movl      40(%esp), %ecx
	movl      80(%esp), %ebx
	movl      80(%esp), %edi
	movl      12(%ecx), %edx
	addl      4(%ecx), %ebx
	movl      $.LBSS0806395C, %ecx
	testl     %edx, %edx
	movl      %edx, 36(%esp)
	movl      40(%esp), %edx
	cmove     44(%esp), %ecx
	xorl      %ebp, %ebp
	addl      8(%edx), %edi
	movl      %ecx, 28(%esp)
	nop       
.L0804E270:
	cmpl      %edi, %ebx
	jae       .L0804E2E3
.L0804E274:
	movzbl    (%ebx), %eax
	movl      %ebx, %esi
	cmpb      $129, %al
	movsbl    %al, %edx
	je        .L0804E348
.L0804E284:
	movl      28(%esp), %ecx
	movl      %edx, 4(%esp)
	movl      %ecx, (%esp)
	call      strchr
.L0804E294:
	testl     %eax, %eax
	je        .L0804E340
.L0804E29C:
	movl      36(%esp), %eax
	testl     %eax, %eax
	jne       .L0804E2C1
.L0804E2A4:
	movsbl    (%esi), %eax
	movl      $.LC0805AF94, (%esp)
	movl      %eax, 4(%esp)
	call      strchr
.L0804E2B7:
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	movl      %eax, %ebp
.L0804E2C1:
	testl     %ebp, %ebp
	je        .L0804E358
.L0804E2C9:
	cmpl      %ebx, 32(%esp)
	jne       .L0804E358
.L0804E2D3:
	leal      1(%esi), %ebx
	movl      $1, %ebp
	cmpl      %edi, %ebx
	movl      %ebx, 32(%esp)
	jb        .L0804E274
.L0804E2E3:
	movl      40(%esp), %ecx
	movl      (%ecx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, 40(%esp)
	jne       .L0804E240
.L0804E2F5:
	movl      36(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804E32C
.L0804E2FD:
	movl      $8, (%esp)
	call      .L08051E00
.L0804E309:
	movl      32(%esp), %edx
	movl      84(%esp), %ecx
	movl      %edx, 4(%eax)
	movl      4(%ecx), %edx
	movl      %eax, (%edx)
	movl      %eax, 4(%ecx)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E324:
	movl      80(%esp), %edx
	movl      %edx, 32(%esp)
.L0804E32C:
	movl      32(%esp), %ecx
	cmpb      $0, (%ecx)
	jne       .L0804E2FD
.L0804E335:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804E33D:
	.ascii	"\215v\000"
.L0804E340:
	leal      1(%esi), %ebx
	jmp       .L0804E270
.L0804E348:
	leal      1(%ebx), %esi
	movsbl    1(%ebx), %edx
	jmp       .L0804E284
# ----------------------
.L0804E354:
	.long	2520205
.L0804E358:
	movb      $0, (%ebx)
	leal      1(%esi), %ebx
	movl      $8, (%esp)
	call      .L08051E00
.L0804E36A:
	movl      32(%esp), %edx
	movl      84(%esp), %ecx
	movl      36(%esp), %esi
	movl      %edx, 4(%eax)
	movl      4(%ecx), %edx
	testl     %esi, %esi
	movl      %eax, (%edx)
	movl      %eax, 4(%ecx)
	je        .L0804E3A0
.L0804E385:
	movl      40(%esp), %edx
	movl      80(%esp), %edi
	movl      %ebx, 32(%esp)
	addl      8(%edx), %edi
	jmp       .L0804E270
# ----------------------
.L0804E399:
	.ascii	"\215\264&\000\000\000\000"
.L0804E3A0:
	movl      40(%esp), %ecx
	movl      80(%esp), %edi
	addl      8(%ecx), %edi
	nop       
	leal      (%esi), %esi
.L0804E3B0:
	cmpl      %edi, %ebx
	jae       .L0804E3F8
.L0804E3B4:
	movzbl    (%ebx), %eax
	movl      %ebx, %esi
	cmpb      $129, %al
	movsbl    %al, %edx
	je        .L0804E410
.L0804E3C0:
	movl      %edx, 4(%esp)
	movl      28(%esp), %edx
	movl      %edx, (%esp)
	call      strchr
.L0804E3D0:
	testl     %eax, %eax
	je        .L0804E3F8
.L0804E3D4:
	movsbl    (%esi), %eax
	movl      $.LC0805AF94, (%esp)
	movl      %eax, 4(%esp)
	call      strchr
.L0804E3E7:
	testl     %eax, %eax
	jne       .L0804E408
.L0804E3EB:
	testl     %ebp, %ebp
	je        .L0804E3F8
.L0804E3EF:
	leal      1(%esi), %ebx
	xorl      %ebp, %ebp
	cmpl      %edi, %ebx
	jb        .L0804E3B4
.L0804E3F8:
	movl      %ebx, 32(%esp)
	jmp       .L0804E270
# ----------------------
.L0804E401:
	.ascii	"\215\264&\000\000\000\000"
.L0804E408:
	leal      1(%esi), %ebx
	jmp       .L0804E3B0
# ----------------------
.L0804E40D:
	.ascii	"\215v\000"
.L0804E410:
	leal      1(%ebx), %esi
	movsbl    1(%ebx), %edx
	jmp       .L0804E3C0
.L0804E419:
	movl      .LD08061208, %eax
	addl      $4, %eax
	movl      %eax, 44(%esp)
	jmp       .L0804E229
# ----------------------
.L0804E42A:
	.ascii	"\215\266\000\000\000\000"
.L0804E430:
	pushl     %ebx
	subl      $24, %esp
	movl      .LBSS08061354, %eax
	testl     %eax, %eax
	je        .L0804E47C
.L0804E43D:
	addl      $1, .LBSS080616A8
	jmp       .L0804E44A
# ----------------------
.L0804E446:
	.value	36966
.L0804E448:
	movl      %ebx, %eax
.L0804E44A:
	movl      (%eax), %ebx
	movl      %eax, (%esp)
	call      free
.L0804E454:
	testl     %ebx, %ebx
	jne       .L0804E448
.L0804E458:
	movl      $0, .LBSS08061354
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804E47C
.L0804E473:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804E490
.L0804E47C:
	movl      $0, .LBSS08061350
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L0804E48B:
	.ascii	"\220\215t&\000"
.L0804E490:
	call      .L0804AFA0
# ----------------------
.L0804E495:
	.ascii	"\307\005P\023\006\010\000\000\000\000\203\304\030[\303\215\266\000\000\000\000\215\277\000\000\000\000"
.L0804E4B0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movl      $.LC0805A358, 4(%esp)
	movl      68(%esp), %edi
	movl      %esi, (%esp)
	call      strpbrk
.L0804E4CF:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L0804E53D
.L0804E4D5:
	testl     $1, %edi
	jne       .L0804E548
.L0804E4DD:
	movl      %edi, %edx
	andl      $8, %edx
	movl      %edx, 28(%esp)
	movl      %esi, 24(%esp)
.L0804E4EA:
	andl      $2, %edi
	xorl      %esi, %esi
	movl      %edi, %ecx
.L0804E4F1:
	movzbl    (%ebx), %edx
	testb     %dl, %dl
	je        .L0804E526
.L0804E4F8:
	cmpb      $136, %dl
	je        .L0804E598
.L0804E501:
	cmpb      $129, %dl
	je        .L0804E5A8
.L0804E50A:
	cmpb      $92, %dl
	jne       .L0804E515
.L0804E50F:
	xorl      %ecx, %ecx
	testl     %esi, %esi
	je        .L0804E517
.L0804E515:
	movl      %edi, %ecx
.L0804E517:
	movb      %dl, (%eax)
	addl      $1, %ebx
	addl      $1, %eax
.L0804E51F:
	movzbl    (%ebx), %edx
	testb     %dl, %dl
	jne       .L0804E4F8
.L0804E526:
	movl      28(%esp), %edx
	movb      $0, (%eax)
	movl      24(%esp), %esi
	testl     %edx, %edx
	je        .L0804E53D
.L0804E535:
	addl      $1, %eax
	movl      %eax, .LBSS08061340
.L0804E53D:
	addl      $44, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804E547:
	.byte	144
.L0804E548:
	movl      %eax, (%esp)
	movl      %eax, %ebp
	call      strlen
.L0804E552:
	movl      %edi, %edx
	subl      %esi, %ebp
	andl      $8, %edx
	movl      %edx, 28(%esp)
	leal      1(%ebp,%eax), %eax
	jne       .L0804E5E0
.L0804E563:
	testl     $16, %edi
	movl      %eax, (%esp)
	jne       .L0804E5D0
.L0804E56E:
	call      .L08051E00
.L0804E573:
	movl      %eax, 24(%esp)
.L0804E577:
	testl     %ebp, %ebp
	movl      24(%esp), %eax
	je        .L0804E4EA
.L0804E583:
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      mempcpy
.L0804E593:
	jmp       .L0804E4EA
.L0804E598:
	notl      %esi
	addl      $1, %ebx
	movl      %edi, %ecx
	jmp       .L0804E4F1
# ----------------------
.L0804E5A4:
	.long	2520205
.L0804E5A8:
	testl     %ecx, %ecx
	leal      1(%ebx), %ebp
	je        .L0804E5B5
.L0804E5AF:
	movb      $92, (%eax)
	addl      $1, %eax
.L0804E5B5:
	movzbl    1(%ebx), %edx
	movl      %ebp, %ebx
	movl      %edi, %ecx
	addl      $1, %ebx
	movb      %dl, (%eax)
	addl      $1, %eax
	jmp       .L0804E51F
# ----------------------
.L0804E5CA:
	.ascii	"\215\266\000\000\000\000"
.L0804E5D0:
	call      .L08051D70
.L0804E5D5:
	movl      %eax, 24(%esp)
	jmp       .L0804E577
# ----------------------
.L0804E5DB:
	.ascii	"\220\215t&\000"
.L0804E5E0:
	movl      .LBSS08061340, %edx
	subl      .LD080611A8, %esi
	movl      %eax, (%esp)
	movl      %edx, 4(%esp)
	call      .L080520F0
.L0804E5F8:
	addl      .LD080611A8, %esi
	leal      (%esi,%ebp), %ebx
	movl      %eax, 24(%esp)
	jmp       .L0804E577
# ----------------------
.L0804E60A:
	.ascii	"\215\266\000\000\000\000"
.L0804E610:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      .LBSS08061340, %ebp
	movl      .LD080611A8, %ebx
	leal      36(%esp), %esi
	movl      80(%esp), %edi
	movl      %esi, (%esp)
	movl      %ebp, %eax
	subl      %ebx, %eax
	movl      %eax, 4(%esp)
	call      .L08051EE0
.L0804E63B:
	movb      $0, -1(%ebp)
	subl      $2, %ebp
	leal      (%esi), %esi
.L0804E648:
	cmpb      $134, (%ebp)
	je        .L0804E657
.L0804E64E:
	subl      $1, %ebp
	cmpb      $134, (%ebp)
	jne       .L0804E64E
.L0804E657:
	cmpl      %ebx, %ebp
	jbe       .L0804E682
.L0804E65B:
	cmpb      $129, -1(%ebp)
	jne       .L0804E682
.L0804E661:
	leal      -1(%ebp), %eax
	xorl      %edx, %edx
	jmp       .L0804E670
.L0804E668:
	subl      $1, %eax
	cmpb      $129, (%eax)
	jne       .L0804E677
.L0804E670:
	addl      $1, %edx
	cmpl      %ebx, %eax
	jne       .L0804E668
.L0804E677:
	testb     $1, %dl
	je        .L0804E682
.L0804E67C:
	notl      %edx
	addl      %edx, %ebp
	jmp       .L0804E648
.L0804E682:
	movl      %ebp, %eax
	subl      %ebx, %eax
	movl      %eax, %ebx
	movl      %eax, (%esp)
	call      .L0804E010
.L0804E690:
	movl      %ebp, .LBSS08061340
	addl      $1, %ebp
	testl     $49, %edi
	je        .L0804E6B1
.L0804E6A1:
	movl      $0, 4(%esp)
	movl      %ebp, (%esp)
	call      .L0804E4B0
.L0804E6B1:
	movl      %ebp, (%esp)
	call      .L0804A710
.L0804E6B9:
	movl      %esi, (%esp)
	movl      %eax, 28(%esp)
	movl      %edx, 24(%esp)
	call      .L08051F50
.L0804E6C9:
	movl      28(%esp), %eax
	movl      24(%esp), %edx
	call      .L0804D7C0
.L0804E6D6:
	andl      $256, %edi
	jne       .L0804E6F4
.L0804E6DE:
	addl      %ebx, %eax
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      .L0804E180
.L0804E6F4:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804E6FC:
	.long	2520205
.L0804E700:
	subl      $76, %esp
	movl      %esi, 64(%esp)
	movl      80(%esp), %esi
	movl      %ebx, 60(%esp)
	movl      %eax, %ebx
	movl      %edi, 68(%esp)
	movl      .LBSS0806133C, %edi
	movl      %ebp, 72(%esp)
	movl      %edx, %ebp
	movl      $2, %edx
	leal      -4(%esi), %eax
	cmpl      $1, %eax
	movl      %ecx, 40(%esp)
	jbe       .L0804E746
.L0804E732:
	movl      92(%esp), %eax
	andl      $256, %eax
	cmpl      $1, %eax
	sbbl      %edx, %edx
	andl      $-16, %edx
	addl      $34, %edx
.L0804E746:
	movl      %ebx, %eax
	call      .L0804EE80
.L0804E74D:
	movl      .LBSS08061340, %eax
	cmpl      .LD080611A0, %eax
	je        .L0804E8C8
.L0804E75E:
	movb      $0, (%eax)
	addl      $1, %eax
	movl      %eax, .LBSS08061340
	movl      .LD080611A8, %eax
	movl      %edi, .LBSS0806133C
	movl      84(%esp), %edi
	addl      %eax, %edi
	cmpl      $4, %esi
	je        .L0804E858
.L0804E783:
	cmpl      $5, %esi
	je        .L0804E838
.L0804E78C:
	subl      $6, %esi
	movl      %edi, %ebp
	movl      %esi, 44(%esp)
	movl      40(%esp), %esi
	addl      %eax, %esi
	movl      92(%esp), %eax
	movl      %esi, %ebx
	andl      $49, %eax
	movl      %eax, 32(%esp)
	jne       .L0804E870
.L0804E7AE:
	subl      $1, %esi
	movl      %esi, 36(%esp)
	movl      $2, 4(%esp)
	movl      %ebx, (%esp)
	call      .L0804E4B0
.L0804E7C5:
	movl      44(%esp), %esi
	movl      $.L0804DBA0, %eax
	movl      44(%esp), %edx
	movl      %ebx, 12(%esp)
	movl      %ebp, 4(%esp)
	sarl      $1, %esi
	andl      $1, %edx
	cmpl      %esi, %edx
	movl      $.L0804DAC0, %edx
	cmove     %edx, %eax
	movl      32(%esp), %edx
	movl      %esi, 20(%esp)
	movl      %edi, (%esp)
	movl      %edx, 16(%esp)
	movl      36(%esp), %edx
	movl      %edx, 8(%esp)
	call      *%eax
.L0804E802:
	testl     %eax, %eax
	je        .L0804E8D8
.L0804E80A:
	testl     %esi, %esi
	jne       .L0804E8A8
.L0804E812:
	movb      $0, (%eax)
	movl      %eax, %edi
	movl      %eax, .LBSS08061340
.L0804E81C:
	movl      %edi, %eax
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
# ----------------------
.L0804E832:
	.ascii	"\215\266\000\000\000\000"
.L0804E838:
	movl      $0, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      .L08058810
.L0804E84C:
	movl      %edi, .LBSS08061340
	jmp       .L0804E81C
# ----------------------
.L0804E854:
	.long	2520205
.L0804E858:
	movl      88(%esp), %eax
	movl      %edi, %ecx
	movl      %ebp, %edx
	movl      %eax, (%esp)
	movl      %ebx, %eax
	call      .L0804D770
# ----------------------
.L0804E86A:
	.ascii	"\215\266\000\000\000\000"
.L0804E870:
	movl      $9, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804E4B0
.L0804E880:
	cmpl      %edi, %eax
	movl      %eax, %ebp
	je        .L0804E8E8
.L0804E886:
	movl      .LD080611A8, %ebx
	movl      84(%esp), %edi
	movl      .LBSS08061340, %esi
	addl      %ebx, %edi
	addl      40(%esp), %ebx
	jmp       .L0804E7AE
# ----------------------
.L0804E8A1:
	.ascii	"\215\264&\000\000\000\000"
.L0804E8A8:
	subl      %eax, %ebx
	movl      %ebx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %edi, (%esp)
	call      memmove
.L0804E8BA:
	leal      -1(%edi,%ebx), %eax
	jmp       .L0804E812
# ----------------------
.L0804E8C3:
	.ascii	"\220\215t&\000"
.L0804E8C8:
	call      .L080520D0
.L0804E8CD:
	leal      (%esi), %esi
	jmp       .L0804E75E
# ----------------------
.L0804E8D5:
	.ascii	"\215v\000"
.L0804E8D8:
	xorl      %edi, %edi
	leal      (%esi), %esi
	jmp       .L0804E81C
# ----------------------
.L0804E8E5:
	.ascii	"\215v\000"
.L0804E8E8:
	movl      40(%esp), %ebx
	movl      %eax, %edi
	addl      .LD080611A8, %ebx
	jmp       .L0804E7AE
# ----------------------
.L0804E8F9:
	.ascii	"\215\264&\000\000\000\000"
.L0804E900:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      %eax, 52(%esp)
	movsbl    (%eax), %eax
	movl      %edx, 44(%esp)
	movl      %eax, 24(%esp)
	andl      $15, %eax
	movl      %eax, 32(%esp)
	je        .L0804EE74
.L0804E923:
	movl      44(%esp), %eax
	andl      $256, %eax
	movl      %eax, 60(%esp)
	movl      52(%esp), %eax
	movzbl    1(%eax), %edx
	jne       .L0804EC6A
.L0804E93E:
	movl      $1, 76(%esp)
.L0804E946:
	movl      52(%esp), %eax
	movl      $61, 4(%esp)
	movb      %dl, 16(%esp)
	addl      $1, %eax
	movl      %eax, 48(%esp)
	movl      .LBSS08061340, %eax
	movl      %eax, 36(%esp)
	movl      .LD080611A8, %eax
	subl      %eax, 36(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      strchr
.L0804E97B:
	movl      60(%esp), %edx
	movl      $0, 72(%esp)
	leal      1(%eax), %ebx
	movl      44(%esp), %eax
	movl      %ebx, 64(%esp)
	andl      $1, %eax
	sall      $8, %eax
	testl     %edx, %edx
	movzbl    16(%esp), %edx
	cmove     72(%esp), %eax
	movl      %eax, 72(%esp)
	movl      44(%esp), %eax
	andl      $49, %eax
	orl       $2, %eax
	movl      %eax, 68(%esp)
	jmp       .L0804EA8F
# ----------------------
.L0804E9BB:
	.ascii	"\220\215t&\000"
.L0804E9C0:
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      .L08058530
.L0804E9CC:
	movl      %eax, %ebx
.L0804E9CE:
	testl     %ebx, %ebx
	je        .L0804EE10
.L0804E9D6:
	movl      %ebx, (%esp)
	call      strlen
.L0804E9DE:
	movl      20(%esp), %ecx
	movl      %eax, %edi
	movl      28(%esp), %eax
	movl      %edi, %edx
	movl      %eax, (%esp)
	movl      %ebx, %eax
	call      .L0804D6B0
.L0804E9F4:
	movl      40(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0804EA02
.L0804E9FC:
	subl      %edi, .LBSS08061340
.L0804EA02:
	movl      24(%esp), %eax
	andl      $16, %eax
	cmpl      $1, %eax
	adcl      $-1, %edi
	cmpl      $3, 32(%esp)
	je        .L0804ED3F
.L0804EA1A:
	cmpl      $2, 32(%esp)
	je        .L0804EC91
.L0804EA25:
	movl      32(%esp), %eax
	subl      $4, %eax
	cmpl      $1, %eax
	ja        .L0804ED5C
.L0804EA35:
	testl     %edi, %edi
	jns       .L0804ED53
.L0804EA3D:
	movl      44(%esp), %eax
	xorl      %ecx, %ecx
	movl      48(%esp), %edx
	andl      $-50, %eax
	movl      %eax, 12(%esp)
	movl      24(%esp), %eax
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	movl      64(%esp), %eax
	call      .L0804E700
.L0804EA6E:
	testl     %eax, %eax
	je        .L0804ED4A
.L0804EA76:
	movl      36(%esp), %eax
	andl      $-17, 24(%esp)
	movl      %eax, (%esp)
	call      .L0804E010
.L0804EA87:
	movl      52(%esp), %eax
	movzbl    1(%eax), %edx
.L0804EA8F:
	movl      24(%esp), %eax
	xorl      %ecx, %ecx
	movl      $2, 28(%esp)
	andl      $15, %eax
	cmpl      $10, %eax
	sete      %cl
	cmpl      $3, %eax
	sete      %al
	movzbl    %al, %eax
	orl       %eax, %ecx
	movl      %ecx, 40(%esp)
	jne       .L0804EABF
.L0804EAB7:
	movl      68(%esp), %eax
	movl      %eax, 28(%esp)
.L0804EABF:
	movl      60(%esp), %eax
	movl      $.LC0805BA42, 20(%esp)
	testl     %eax, %eax
	movl      $.LC0805BB62, %eax
	cmovne    20(%esp), %eax
	subl      $33, %edx
	cmpb      $31, %dl
	movl      %eax, 20(%esp)
	ja        .L0804E9C0
.L0804EAE7:
	movzbl    %dl, %edx
	jmp       *.LC08059B40(,%edx,4)
.L0804EAF1:
	movl      72(%esp), %eax
	testl     %eax, %eax
	movl      %eax, 56(%esp)
	jne       .L0804EB1B
.L0804EAFD:
	testb     $32, .LD08061204
	movl      $32, 56(%esp)
	jne       .L0804EB1B
.L0804EB0E:
	movl      .LD08061208, %eax
	movsbl    4(%eax), %eax
	movl      %eax, 56(%esp)
.L0804EB1B:
	movl      .LBSS0806398C, %esi
	testl     %esi, %esi
	je        .L0804EE10
.L0804EB29:
	movzbl    56(%esp), %eax
	xorl      %edi, %edi
	movb      %al, 95(%esp)
	leal      (%esi), %esi
.L0804EB38:
	movl      (%esi), %ebx
	addl      $4, %esi
	testl     %ebx, %ebx
	je        .L0804E9F4
.L0804EB45:
	movl      %ebx, (%esp)
	call      strlen
.L0804EB4D:
	movl      20(%esp), %ecx
	movl      %eax, %ebp
	movl      28(%esp), %eax
	movl      %ebp, %edx
	addl      %ebp, %edi
	movl      %eax, (%esp)
	movl      %ebx, %eax
	call      .L0804D6B0
.L0804EB65:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L0804EB38
.L0804EB6B:
	movl      56(%esp), %eax
	testl     %eax, %eax
	je        .L0804EB38
.L0804EB73:
	movl      28(%esp), %eax
	movl      $1, %edx
	addl      $1, %edi
	movl      20(%esp), %ecx
	movl      %eax, (%esp)
	leal      95(%esp), %eax
	call      .L0804D6B0
.L0804EB8F:
	jmp       .L0804EB38
.L0804EB91:
	movl      .LBSS0806375C, %eax
.L0804EB96:
	movl      %eax, %edx
	sarl      $31, %edx
	call      .L0804D7C0
.L0804EBA0:
	movl      %eax, %edi
	jmp       .L0804E9F4
.L0804EBA7:
	movl      .LBSS08063984, %eax
	jmp       .L0804EB96
.L0804EBAE:
	movl      .LBSS08063750, %eax
	movl      $-1, %edi
	testl     %eax, %eax
	jne       .L0804EB96
.L0804EBBC:
	jmp       .L0804EA02
# ----------------------
.L0804EBC1:
	.ascii	"\215\264&\000\000\000\000"
.L0804EBC8:
	movl      .LBSS080616C4, %eax
	jmp       .L0804EB96
.L0804EBCF:
	movl      48(%esp), %eax
	movl      $-1, %edi
	movl      $10, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      strtol
.L0804EBF0:
	testl     %eax, %eax
	movl      %eax, %edx
	js        .L0804EA02
.L0804EBFA:
	cmpl      .LBSS08063984, %eax
	jg        .L0804EA02
.L0804EC06:
	testl     %eax, %eax
	movl      .LBSS0806397C, %ebx
	je        .L0804E9CE
.L0804EC14:
	movl      .LBSS0806398C, %eax
	movl      -4(%eax,%edx,4), %ebx
	jmp       .L0804E9CE
.L0804EC22:
	movl      .LBSS08061340, %eax
	xorl      %edi, %edi
	movl      $17, (%esp)
	movl      %eax, 4(%esp)
	call      .L080520F0
.L0804EC39:
	movl      $16, %edx
	nop       
.L0804EC40:
	cmpb      $0, .LBSS08063964(%edx)
	je        .L0804EC58
.L0804EC49:
	movzbl    .LC0805A500(%edx), %ecx
	addl      $1, %edi
	movb      %cl, (%eax)
	addl      $1, %eax
.L0804EC58:
	subl      $1, %edx
	cmpl      $-1, %edx
	jne       .L0804EC40
.L0804EC60:
	movl      %eax, .LBSS08061340
	jmp       .L0804E9F4
.L0804EC6A:
	cmpb      $64, %dl
	movl      $0, 76(%esp)
	jne       .L0804E946
.L0804EC7B:
	movl      .LBSS08063984, %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	setne     %al
	movl      %eax, 76(%esp)
	jmp       .L0804E946
.L0804EC91:
	movl      64(%esp), %ebx
.L0804EC95:
	testl     %edi, %edi
	js        .L0804EE1A
.L0804EC9D:
	movl      76(%esp), %esi
	testl     %esi, %esi
	je        .L0804ECC8
.L0804ECA5:
	movl      60(%esp), %eax
	movl      %eax, 8(%esp)
	movl      .LBSS08061340, %eax
	subl      .LD080611A8, %eax
	movl      %eax, 4(%esp)
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804E180
.L0804ECC8:
	cmpl      $1, 32(%esp)
	movl      %ebx, %eax
	je        .L0804ED07
.L0804ECD1:
	movl      .LBSS0806133C, %esi
	movl      $1, %ecx
	leal      (%esi), %esi
.L0804ECE0:
	movsbl    (%ebx), %edx
	leal      1(%ebx), %eax
	cmpl      $-127, %edx
	je        .L0804ED10
.L0804ECEB:
	cmpl      $-124, %edx
	je        .L0804ED18
.L0804ECF0:
	cmpl      $-126, %edx
	je        .L0804ED28
.L0804ECF5:
	cmpl      $-125, %edx
	movl      %eax, %ebx
	jne       .L0804ECE0
.L0804ECFC:
	subl      $1, %ecx
	jne       .L0804ECE0
.L0804ED01:
	movl      %esi, .LBSS0806133C
.L0804ED07:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804ED0F:
	.byte	144
.L0804ED10:
	addl      $2, %ebx
	jmp       .L0804ECE0
# ----------------------
.L0804ED15:
	.ascii	"\215v\000"
.L0804ED18:
	testl     %edi, %edi
	movl      %eax, %ebx
	js        .L0804ECE0
.L0804ED1E:
	movl      (%esi), %esi
	jmp       .L0804ECE0
# ----------------------
.L0804ED22:
	.ascii	"\215\266\000\000\000\000"
.L0804ED28:
	movsbl    1(%ebx), %eax
	addl      $2, %ebx
	andl      $15, %eax
	cmpl      $1, %eax
	setne     %al
	movzbl    %al, %eax
	addl      %eax, %ecx
	jmp       .L0804ECE0
.L0804ED3F:
	movl      64(%esp), %ebx
	notl      %edi
	jmp       .L0804EC95
.L0804ED4A:
	movl      64(%esp), %ebx
	jmp       .L0804ECC8
.L0804ED53:
	movl      64(%esp), %ebx
	jmp       .L0804EC9D
.L0804ED5C:
	testl     %edi, %edi
	movl      64(%esp), %ebx
	js        .L0804EDE9
.L0804ED68:
	cmpl      $10, 32(%esp)
	je        .L0804EE40
.L0804ED73:
	cmpl      $1, 32(%esp)
	je        .L0804EE2D
.L0804ED7E:
	testl     %edi, %edi
	js        .L0804ECD1
.L0804ED86:
	movl      .LBSS08061340, %eax
	cmpl      .LD080611A0, %eax
	je        .L0804EE6A
.L0804ED97:
	movb      $0, (%eax)
	addl      $1, %eax
	xorl      %edx, %edx
	movl      %eax, .LBSS08061340
	movl      %eax, %esi
	movl      44(%esp), %eax
	subl      .LD080611A8, %esi
	movl      %eax, 12(%esp)
	movl      24(%esp), %eax
	movl      %esi, %ecx
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	movl      %ebx, %eax
	call      .L0804E700
.L0804EDD4:
	testl     %eax, %eax
	je        .L0804EE56
.L0804EDD8:
	movl      36(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804E010
.L0804EDE4:
	jmp       .L0804ECA5
.L0804EDE9:
	cmpb      $0, .LBSS08063972
	je        .L0804ED68
.L0804EDF6:
	movl      48(%esp), %edx
	xorl      %ecx, %ecx
	movl      %ebx, %eax
	movl      $0, (%esp)
	call      .L0804D770
# ----------------------
.L0804EE0A:
	.ascii	"\215\266\000\000\000\000"
.L0804EE10:
	movl      $-1, %edi
	jmp       .L0804EA02
.L0804EE1A:
	movl      44(%esp), %edx
	movl      %ebx, %eax
	orb       $130, %dl
	call      .L0804EE80
.L0804EE28:
	jmp       .L0804ECC8
.L0804EE2D:
	movl      76(%esp), %ecx
	movl      %ebx, %eax
	testl     %ecx, %ecx
	je        .L0804ED07
.L0804EE3B:
	jmp       .L0804ECA5
.L0804EE40:
	xorl      %eax, %eax
	testl     %edi, %edi
	cmovns    %edi, %eax
	movl      %eax, %edx
	sarl      $31, %edx
	call      .L0804D7C0
.L0804EE51:
	jmp       .L0804ECA5
.L0804EE56:
	subl      $1, %esi
	addl      .LD080611A8, %esi
	movl      %esi, .LBSS08061340
	jmp       .L0804EDD8
.L0804EE6A:
	call      .L080520D0
.L0804EE6F:
	jmp       .L0804ED97
.L0804EE74:
	movl      $.LC08059B23, (%esp)
	call      .L0804B000
.L0804EE80:
	pushl     %ebp
	movl      %edx, %ecx
	pushl     %edi
	andl      $384, %ecx
	pushl     %esi
	movl      %eax, %edi
	pushl     %ebx
	movl      $.LC08059BE2, %esi
	subl      $220, %esp
	movl      %edx, %ebx
	movl      %gs:20, %eax
	movl      %eax, 204(%esp)
	xorl      %eax, %eax
	testb     $4, %dl
	movl      %ecx, 32(%esp)
	je        .L0804EEC3
.L0804EEB3:
	movl      $.LC08059BE1, %esi
	testb     $64, %dl
	movl      $.LC08059BE0, %eax
	cmove     %eax, %esi
.L0804EEC3:
	testb     $2, %bl
	movl      $0, 28(%esp)
	je        .L0804EEDC
.L0804EED0:
	andl      $-3, %ebx
	cmpb      $126, (%edi)
	je        .L0804EFA4
.L0804EEDC:
	movl      .LBSS08061340, %eax
	movl      %ebx, %ebp
	movl      .LD080611A8, %edx
.L0804EEE9:
	subl      %edx, %eax
	xorl      %edx, %edx
	movl      %eax, 24(%esp)
	movl      %edx, %ebx
.L0804EEF3:
	leal      (%edi,%ebx), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      strcspn
.L0804EF02:
	addl      %eax, %ebx
	movzbl    (%edi,%ebx), %edx
	movsbl    %dl, %eax
	testl     %eax, %eax
	je        .L0804EF18
.L0804EF0F:
	testl     %eax, %eax
	jns       .L0804EF50
.L0804EF13:
	cmpl      $-121, %eax
	je        .L0804EF50
.L0804EF18:
	testl     %ebx, %ebx
	jne       .L0804EF57
.L0804EF1C:
	cmpb      $58, %dl
	leal      1(%edi,%ebx), %ecx
	je        .L0804EF99
.L0804EF25:
	cmpb      $61, %dl
	je        .L0804F008
.L0804EF2E:
	testb     %dl, %dl
	je        .L0804EFE8
.L0804EF36:
	addl      $127, %edx
	cmpb      $7, %dl
	jbe       .L0804F080
.L0804EF42:
	movl      %ecx, %edi
	leal      (%esi), %esi
.L0804EF48:
	xorl      %ebx, %ebx
	jmp       .L0804EEF3
# ----------------------
.L0804EF4C:
	.long	2520205
.L0804EF50:
	addl      $1, %ebx
	testl     %ebx, %ebx
	je        .L0804EF1C
.L0804EF57:
	movl      .LBSS08061340, %eax
	movb      %dl, 16(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	movl      %eax, 8(%esp)
	call      .L08052130
.L0804EF70:
	movl      28(%esp), %edx
	movl      %eax, .LBSS08061340
	subl      .LD080611A8, %eax
	testl     %edx, %edx
	movzbl    16(%esp), %edx
	je        .L0804F038
.L0804EF8C:
	cmpb      $58, %dl
	movl      %eax, 24(%esp)
	leal      1(%edi,%ebx), %ecx
	jne       .L0804EF25
.L0804EF99:
	cmpb      $126, -1(%ecx)
	leal      -1(%ecx), %edi
	jne       .L0804EF48
.L0804EFA2:
	movl      %ebp, %ebx
.L0804EFA4:
	movl      %ebx, %eax
	movl      %edi, %ebp
	andl      $4, %eax
.L0804EFAB:
	movzbl    1(%ebp), %edx
	leal      1(%ebp), %ecx
	testb     %dl, %dl
	je        .L0804F348
.L0804EFBA:
	cmpb      $136, %dl
	je        .L0804EEDC
.L0804EFC3:
	jle       .L0804F320
.L0804EFC9:
	cmpb      $47, %dl
	leal      (%esi), %esi
	je        .L0804F348
.L0804EFD6:
	cmpb      $58, %dl
	je        .L0804F339
.L0804EFDF:
	movl      %ecx, %ebp
	jmp       .L0804EFAB
# ----------------------
.L0804EFE3:
	.ascii	"\220\215t&\000"
.L0804EFE8:
	movl      204(%esp), %eax
	xorl      %gs:20, %eax
	jne       .L0804F3EF
.L0804EFFC:
	addl      $220, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L0804F007:
	.byte	144
.L0804F008:
	xorl      %ebx, %ebx
	testl     $64, %ebp
	leal      -1(%ecx), %edi
	jne       .L0804EEF3
.L0804F019:
	orl       $64, %ebp
	addl      $1, %esi
	cmpb      $126, -1(%ecx)
	leal      -1(%ecx), %edi
	jne       .L0804EF48
.L0804F02C:
	jmp       .L0804EFA2
# ----------------------
.L0804F031:
	.ascii	"\215\264&\000\000\000\000"
.L0804F038:
	cmpl      $128, 32(%esp)
	jne       .L0804EF8C
.L0804F046:
	cmpl      %eax, 24(%esp)
	jge       .L0804EF8C
.L0804F050:
	movl      24(%esp), %ecx
	movl      %eax, 4(%esp)
	movl      %eax, 20(%esp)
	movl      $0, 8(%esp)
	movl      %ecx, (%esp)
	call      .L0804E180
.L0804F06C:
	movl      20(%esp), %eax
	movzbl    16(%esp), %edx
	movl      %eax, 24(%esp)
	jmp       .L0804EF1C
# ----------------------
.L0804F07E:
	.value	36966
.L0804F080:
	movzbl    %dl, %edx
	jmp       *.LC08059BC0(,%edx,4)
# ----------------------
.L0804F08A:
	.ascii	"\215\266\000\000\000\000"
.L0804F090:
	movl      28(%esp), %eax
	movl      $1, %ebx
	addl      $1, 24(%esp)
	orl       %ebp, %eax
	andl      $288, %eax
	cmpl      $32, %eax
	je        .L0804F388
.L0804F0AE:
	testl     $49, %ebp
	movl      %ecx, %edi
	je        .L0804EEF3
.L0804F0BC:
	subl      $1, %edi
	addl      $1, %ebx
	addl      $1, 24(%esp)
	jmp       .L0804EEF3
# ----------------------
.L0804F0CC:
	.long	2520205
.L0804F0D0:
	xorl      %ebx, %ebx
	xorl      $256, 28(%esp)
	je        .L0804F0AE
.L0804F0DC:
	movl      %ecx, (%esp)
	movl      $5, 8(%esp)
	movl      $.LC0805A35C, 4(%esp)
	movl      %ecx, 20(%esp)
	call      memcmp
.L0804F0F8:
	movl      20(%esp), %ecx
	testl     %eax, %eax
	jne       .L0804F0AE
.L0804F100:
	movl      28(%esp), %edx
	leal      1(%ecx), %eax
	orl       %ebp, %edx
	call      .L0804E900
.L0804F10E:
	movl      .LD080611A8, %edx
	leal      1(%eax), %edi
	movl      .LBSS08061340, %eax
	jmp       .L0804EEE9
# ----------------------
.L0804F121:
	.ascii	"\215\264&\000\000\000\000"
.L0804F128:
	movl      28(%esp), %eax
	leal      -1(%ecx), %edi
	orl       %ebp, %eax
	movl      %eax, (%esp)
	call      .L0804E610
.L0804F139:
	movl      .LBSS08061340, %eax
	movl      .LD080611A8, %edx
	jmp       .L0804EEE9
# ----------------------
.L0804F149:
	.ascii	"\215\264&\000\000\000\000"
.L0804F150:
	movl      28(%esp), %eax
	movl      %ecx, %ebx
	movl      $.LC0805BA42, 40(%esp)
	orl       %ebp, %eax
	movl      %eax, 36(%esp)
	movl      .LBSS0806133C, %eax
	movl      36(%esp), %ecx
	movl      4(%eax), %edi
	movl      $.LC0805BB62, %eax
	andl      $256, %ecx
	cmovne    40(%esp), %eax
	movl      %ecx, 44(%esp)
	addl      $1, .LBSS080616A8
	movl      %eax, 40(%esp)
	movl      .LD080611A8, %ecx
	movl      .LBSS08061340, %eax
	subl      %ecx, %eax
	movl      %eax, 24(%esp)
	movl      %eax, 4(%esp)
	leal      64(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051EE0
.L0804F1B0:
	leal      48(%esp), %ecx
	movl      %ecx, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804C400
.L0804F1C0:
	leal      64(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051F50
.L0804F1CC:
	movl      56(%esp), %eax
	movl      52(%esp), %edi
	testl     %eax, %eax
	jne       .L0804F2FD
.L0804F1DC:
	movl      48(%esp), %eax
	testl     %eax, %eax
	js        .L0804F21B
.L0804F1E4:
	leal      76(%esp), %edi
	jmp       .L0804F1F4
# ----------------------
.L0804F1EA:
	.ascii	"\215\266\000\000\000\000"
.L0804F1F0:
	movl      48(%esp), %eax
.L0804F1F4:
	movl      $128, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      read
.L0804F208:
	cmpl      $0, %eax
	jge       .L0804F2F7
.L0804F211:
	movl      .LBSS08063754, %eax
	cmpl      $4, (%eax)
	je        .L0804F1F0
.L0804F21B:
	movl      52(%esp), %eax
	testl     %eax, %eax
	je        .L0804F22B
.L0804F223:
	movl      %eax, (%esp)
	call      free
.L0804F22B:
	movl      48(%esp), %eax
	testl     %eax, %eax
	js        .L0804F24C
.L0804F233:
	movl      %eax, (%esp)
	call      close
.L0804F23B:
	movl      60(%esp), %eax
	movl      %eax, (%esp)
	call      .L080516D0
.L0804F247:
	movl      %eax, .LBSS080616C0
.L0804F24C:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804F26A
.L0804F25D:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804F3E5
.L0804F26A:
	movl      .LBSS08061340, %eax
	movl      .LD080611A8, %edx
	cmpl      %eax, %edx
	jb        .L0804F287
.L0804F279:
	jmp       .L0804F28D
# ----------------------
.L0804F27B:
	.ascii	"\220\215t&\000"
.L0804F280:
	subl      $1, %eax
	cmpl      %edx, %eax
	je        .L0804F28D
.L0804F287:
	cmpb      $10, -1(%eax)
	je        .L0804F280
.L0804F28D:
	movl      44(%esp), %edi
	movl      %eax, .LBSS08061340
	testl     %edi, %edi
	jne       .L0804F2BF
.L0804F29A:
	movl      24(%esp), %ecx
	subl      %edx, %eax
	movl      %eax, 4(%esp)
	movl      $0, 8(%esp)
	movl      %ecx, (%esp)
	call      .L0804E180
.L0804F2B4:
	movl      .LBSS08061340, %eax
	movl      .LD080611A8, %edx
.L0804F2BF:
	movl      .LBSS0806133C, %ecx
	movl      %ebx, %edi
	movl      (%ecx), %ecx
	movl      %ecx, .LBSS0806133C
	jmp       .L0804EEE9
# ----------------------
.L0804F2D4:
	.long	2520205
.L0804F2D8:
	movl      28(%esp), %edx
	movl      %ecx, %eax
	orl       %ebp, %edx
	call      .L0804E900
.L0804F2E5:
	movl      .LD080611A8, %edx
	movl      %eax, %edi
	movl      .LBSS08061340, %eax
	jmp       .L0804EEE9
.L0804F2F7:
	je        .L0804F21B
.L0804F2FD:
	movl      36(%esp), %edx
	movl      40(%esp), %ecx
	andl      $49, %edx
	movl      %edx, (%esp)
	movl      %eax, %edx
	movl      %edi, %eax
	call      .L0804D6B0
.L0804F314:
	jmp       .L0804F1DC
# ----------------------
.L0804F319:
	.ascii	"\215\264&\000\000\000\000"
.L0804F320:
	cmpb      $129, %dl
	je        .L0804EEDC
.L0804F329:
	cmpb      $131, %dl
	leal      (%esi), %esi
	je        .L0804F348
.L0804F332:
	movl      %ecx, %ebp
	jmp       .L0804EFAB
.L0804F339:
	testl     %eax, %eax
	je        .L0804EFDF
.L0804F341:
	leal      (%esi), %esi
.L0804F348:
	movb      $0, 1(%ebp)
	cmpb      $0, 1(%edi)
	movl      %ecx, 36(%esp)
	jne       .L0804F398
.L0804F356:
	movb      %dl, 16(%esp)
	movl      $.LC0805A340, (%esp)
	call      .L08058530
.L0804F366:
	movzbl    16(%esp), %edx
	movl      %eax, 24(%esp)
.L0804F36F:
	movl      24(%esp), %ecx
	testl     %ecx, %ecx
	je        .L0804F380
.L0804F377:
	movl      24(%esp), %eax
	cmpb      $0, (%eax)
	jne       .L0804F3B9
.L0804F380:
	movb      %dl, 1(%ebp)
	jmp       .L0804EEDC
.L0804F388:
	cmpb      $92, (%ecx)
	movl      %ecx, %edi
	jne       .L0804EEF3
.L0804F393:
	jmp       .L0804F0AE
.L0804F398:
	leal      1(%edi), %eax
	movb      %dl, 16(%esp)
	movl      %eax, (%esp)
	call      getpwnam
.L0804F3A7:
	movzbl    16(%esp), %edx
	testl     %eax, %eax
	je        .L0804F380
.L0804F3B0:
	movl      20(%eax), %eax
	movl      %eax, 24(%esp)
	jmp       .L0804F36F
.L0804F3B9:
	movb      %dl, 1(%ebp)
	movl      %eax, (%esp)
	call      strlen
.L0804F3C4:
	movl      %ebx, %edx
	movl      $.LC0805B922, %ecx
	andl      $49, %edx
	movl      %edx, (%esp)
	movl      %eax, %edx
	movl      24(%esp), %eax
	call      .L0804D6B0
.L0804F3DC:
	movl      36(%esp), %edi
	jmp       .L0804EEDC
.L0804F3E5:
	call      .L0804AFA0
# ----------------------
.L0804F3EA:
	.ascii	"\351{\376\377\377"
.L0804F3EF:
	nop       
	call      __stack_chk_fail
# ----------------------
.L0804F3F5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804F400:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	movl      56(%esp), %ebx
	movl      52(%esp), %ebp
	movl      12(%eax), %edx
	movl      8(%eax), %eax
	movl      %edx, .LBSS0806133C
	movl      .LD080611A8, %edx
	movl      %edx, .LBSS08061340
	movl      %ebx, %edx
	call      .L0804EE80
.L0804F432:
	movl      .LBSS08061340, %eax
	cmpl      .LD080611A0, %eax
	je        .L0804F62A
.L0804F443:
	testl     %ebp, %ebp
	movb      $0, (%eax)
	movl      %eax, .LBSS08061340
	je        .L0804F612
.L0804F453:
	addl      $1, %eax
	subl      .LD080611A8, %eax
	movl      %eax, (%esp)
	call      .L08051E00
.L0804F464:
	andl      $1, %ebx
	movl      $.LBSS08061344, .LBSS08061348
	movl      %eax, %edi
	je        .L0804F5D8
.L0804F479:
	movl      %eax, (%esp)
	movl      $.LBSS08061344, %esi
	movl      $.LBSS08061344, 4(%esp)
	call      .L0804E200
.L0804F48E:
	movl      .LBSS08061348, %eax
	movl      $0, (%eax)
	movl      .LBSS08061344, %ebx
	movl      $.LBSS08061344, .LBSS08061348
	testl     %ebx, %ebx
	je        .L0804F5F6
.L0804F4B1:
	cmpb      $0, .LBSS08063965
	jne       .L0804F5B2
.L0804F4BE:
	nop       
.L0804F4C0:
	movl      $.LC08059CC0, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      strpbrk
.L0804F4D3:
	testl     %eax, %eax
	je        .L0804F5B2
.L0804F4DB:
	addl      $1, .LBSS080616A8
	movl      $19, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804E4B0
.L0804F4F5:
	movl      %eax, %edi
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      strlen
.L0804F502:
	movl      $2048, %edx
	cmpl      $2048, %eax
	cmovl     %edx, %eax
	movl      %eax, (%esp)
	call      .L08051D70
.L0804F517:
	movl      %edi, %edx
	movl      %eax, .LBSS0806134C
	call      .L0804DC50
.L0804F523:
	movl      .LBSS0806134C, %eax
	movl      %eax, (%esp)
	call      free
.L0804F530:
	cmpl      4(%ebx), %edi
	je        .L0804F53D
.L0804F535:
	movl      %edi, (%esp)
	call      free
.L0804F53D:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804F55B
.L0804F54E:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804F620
.L0804F55B:
	movl      .LBSS08061348, %eax
	cmpl      %esi, %eax
	je        .L0804F5B2
.L0804F564:
	movl      $0, (%eax)
	movl      (%esi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L0804F581
.L0804F572:
	movl      %eax, %ecx
	leal      (%esi), %esi
.L0804F578:
	movl      (%ecx), %ecx
	addl      $1, %edx
	testl     %ecx, %ecx
	jne       .L0804F578
.L0804F581:
	call      .L0804DF60
.L0804F586:
	movl      %eax, (%esi)
	jmp       .L0804F592
# ----------------------
.L0804F58A:
	.ascii	"\215\266\000\000\000\000"
.L0804F590:
	movl      %edx, %eax
.L0804F592:
	movl      (%eax), %edx
	testl     %edx, %edx
	jne       .L0804F590
.L0804F598:
	movl      %eax, %esi
	movl      %eax, .LBSS08061348
.L0804F59F:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0804F5F6
.L0804F5A5:
	cmpb      $0, .LBSS08063965
	je        .L0804F4C0
.L0804F5B2:
	movl      %ebx, (%esi)
	movl      %ebx, %esi
	movl      $0, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L0804E4B0
.L0804F5C9:
	movl      %ebx, .LBSS08061348
	jmp       .L0804F59F
# ----------------------
.L0804F5D1:
	.ascii	"\215\264&\000\000\000\000"
.L0804F5D8:
	movl      $8, (%esp)
	call      .L08051E00
.L0804F5E4:
	movl      .LBSS08061348, %edx
	movl      %edi, 4(%eax)
	movl      %eax, %esi
	movl      %eax, (%edx)
	movl      %eax, .LBSS08061348
.L0804F5F6:
	movl      $0, (%esi)
	movl      .LBSS08061344, %eax
	testl     %eax, %eax
	je        .L0804F612
.L0804F605:
	movl      4(%ebp), %edx
	movl      %eax, (%edx)
	movl      .LBSS08061348, %eax
	movl      %eax, 4(%ebp)
.L0804F612:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L0804E430
# ----------------------
.L0804F61E:
	.value	36966
.L0804F620:
	call      .L0804AFA0
# ----------------------
.L0804F625:
	.ascii	"\3511\377\377\377"
.L0804F62A:
	leal      (%esi), %esi
	call      .L080520D0
.L0804F635:
	jmp       .L0804F443
# ----------------------
.L0804F63A:
	.ascii	"\215\266\000\000\000\000"
.L0804F640:
	pushl     %esi
	pushl     %ebx
	subl      $36, %esp
	movl      48(%esp), %esi
	leal      20(%esp), %ebx
	movl      %ebx, (%esp)
	call      .L08051F10
.L0804F655:
	movl      $18, %edx
	movl      12(%esi), %eax
	movl      %eax, .LBSS0806133C
	movl      .LD080611A8, %eax
	movl      %eax, .LBSS08061340
	movl      8(%esi), %eax
	call      .L0804EE80
.L0804F674:
	movl      .LBSS08061340, %eax
	cmpl      .LD080611A0, %eax
	je        .L0804F6C0
.L0804F681:
	movb      $0, (%eax)
.L0804F684:
	call      .L0804E430
.L0804F689:
	movl      .LD080611A8, %eax
	movl      $2, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804E4B0
.L0804F69E:
	movl      52(%esp), %edx
	call      .L0804D820
.L0804F6A7:
	movl      %ebx, (%esp)
	movl      %eax, %esi
	call      .L08051F50
.L0804F6B1:
	addl      $36, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0804F6B9:
	.ascii	"\215\264&\000\000\000\000"
.L0804F6C0:
	call      .L080520D0
.L0804F6C5:
	movl      %eax, .LBSS08061340
	movb      $0, (%eax)
	jmp       .L0804F684
# ----------------------
.L0804F6CF:
	.byte	144
.L0804F6D0:
	subl      $28, %esp
	movl      .LD08061194, %eax
	movl      .LBSS080616E0, %edx
	movl      %edx, 12(%eax)
	movl      .LBSS08063744, %edx
	movl      %edx, 16(%eax)
	movl      .LBSS080616E8, %edx
	movl      %edx, 20(%eax)
	movl      .LD08061198, %edx
	movl      %edx, 4(%eax)
	movl      $52, (%esp)
	call      .L08051D70
.L0804F708:
	movl      .LD08061194, %edx
	movl      $-1, 8(%eax)
	movl      %edx, (%eax)
	movl      $0, 28(%eax)
	movl      $0, 32(%eax)
	movl      %eax, .LD08061194
	addl      $28, %esp
	ret       
# ----------------------
.L0804F72E:
	.value	36966
.L0804F730:
	addl      $1, .LBSS080616E0
	subl      $1, .LBSS080616E8
	ret       
# ----------------------
.L0804F73F:
	.byte	144
.L0804F740:
	subl      $28, %esp
	movl      %esi, 20(%esp)
	movl      32(%esp), %esi
	movl      %ebx, 16(%esp)
	movl      36(%esp), %ebx
	movl      %edi, 24(%esp)
	movl      %esi, (%esp)
	call      strlen
.L0804F75F:
	addl      $1, .LBSS080616A8
	movl      %eax, %edi
	movl      .LD08061194, %edx
	movl      28(%edx), %eax
	testl     %eax, %eax
	je        .L0804F808
.L0804F779:
	movl      $20, (%esp)
	call      .L08051D70
.L0804F785:
	movl      .LD08061194, %edx
	movl      28(%edx), %ecx
	movl      %ecx, (%eax)
	movl      %eax, 28(%edx)
.L0804F793:
	movl      .LBSS080616E8, %edx
	testl     %ebx, %ebx
	movl      %ebx, 12(%eax)
	movl      %edx, 4(%eax)
	movl      .LBSS080616E0, %edx
	movl      %edx, 8(%eax)
	je        .L0804F7B3
.L0804F7AC:
	orl       $1, 12(%ebx)
	movl      %esi, 16(%eax)
.L0804F7B3:
	movl      %esi, .LBSS080616E8
	movl      %edi, .LBSS080616E0
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804F7D9
.L0804F7D0:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804F7F0
.L0804F7D9:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L0804F7E9:
	.ascii	"\215\264&\000\000\000\000"
.L0804F7F0:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	jmp       .L0804AFA0
# ----------------------
.L0804F804:
	.long	2520205
.L0804F808:
	leal      32(%edx), %eax
	movl      %eax, 28(%edx)
	jmp       .L0804F793
.L0804F810:
	pushl     %ebx
	subl      $24, %esp
	movl      .LD08061194, %eax
	addl      $1, .LBSS080616A8
	movl      28(%eax), %ebx
	movl      12(%ebx), %eax
	testl     %eax, %eax
	je        .L0804F873
.L0804F82A:
	movl      .LBSS080616E8, %edx
	movzbl    -1(%edx), %edx
	cmpb      $9, %dl
	je        .L0804F83E
.L0804F839:
	cmpb      $32, %dl
	jne       .L0804F845
.L0804F83E:
	orl       $1, .LBSS080639A0
.L0804F845:
	movl      16(%ebx), %edx
	cmpl      8(%eax), %edx
	je        .L0804F858
.L0804F84D:
	movl      %edx, (%esp)
	call      free
.L0804F855:
	movl      12(%ebx), %eax
.L0804F858:
	movl      12(%eax), %edx
	movl      %edx, %ecx
	andl      $-2, %ecx
	andl      $2, %edx
	movl      %ecx, 12(%eax)
	je        .L0804F873
.L0804F868:
	movl      4(%eax), %eax
	movl      %eax, (%esp)
	call      .L08049A30
.L0804F873:
	movl      4(%ebx), %eax
	movl      (%ebx), %edx
	movl      %eax, .LBSS080616E8
	movl      8(%ebx), %eax
	movl      %eax, .LBSS080616E0
	movl      .LD08061194, %eax
	movl      %edx, 28(%eax)
	addl      $32, %eax
	cmpl      %eax, %ebx
	je        .L0804F89C
.L0804F894:
	movl      %ebx, (%esp)
	call      free
.L0804F89C:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804F8B6
.L0804F8AD:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804F8C0
.L0804F8B6:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L0804F8BB:
	.ascii	"\220\215t&\000"
.L0804F8C0:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L0804F8C9:
	.ascii	"\215\264&\000\000\000\000"
.L0804F8D0:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      .LBSS080616E0, %edx
.L0804F8DB:
	movl      .LD08061194, %eax
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0804FAB6
.L0804F8EB:
	cmpl      $-99, %edx
	je        .L0804FAAC
.L0804F8F4:
	movl      24(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0804FAAC
.L0804F8FF:
	movl      $.LD080611D0, (%esp)
	call      .L080569A0
.L0804F90B:
	movl      .LBSS08063744, %ebx
	testl     %ebx, %ebx
	jle       .L0804F9B8
.L0804F919:
	movl      .LBSS080616E8, %esi
	jmp       .L0804F938
# ----------------------
.L0804F921:
	.ascii	"\215\264&\000\000\000\000"
.L0804F928:
	addl      $1, %esi
	cmpl      $10, %eax
	je        .L0804FA20
.L0804F934:
	testl     %ebx, %ebx
	jle       .L0804F959
.L0804F938:
	movsbl    (%esi), %eax
	subl      $1, %ebx
	testl     %eax, %eax
	jne       .L0804F928
.L0804F942:
	leal      1(%esi), %eax
	movl      %ebx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      memmove
.L0804F955:
	testl     %ebx, %ebx
	jg        .L0804F938
.L0804F959:
	movl      %esi, %eax
	subl      .LBSS080616E8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616E0
	js        .L0804F9B8
.L0804F96D:
	movl      %ebx, .LBSS08063744
	movzbl    (%esi), %ebx
	movb      $0, (%esi)
	cmpb      $0, .LBSS0806396C
	jne       .L0804F9A0
.L0804F982:
	movb      %bl, (%esi)
.L0804F984:
	movl      .LBSS080616E8, %edx
	movsbl    (%edx), %eax
	addl      $1, %edx
	movl      %edx, .LBSS080616E8
.L0804F996:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0804F99C:
	.long	2520205
.L0804F9A0:
	movl      .LD080611B0, %eax
	movl      %eax, 4(%esp)
	movl      .LBSS080616E8, %eax
	movl      %eax, (%esp)
	call      .L08056C90
.L0804F9B6:
	jmp       .L0804F982
.L0804F9B8:
	movl      .LD08061194, %eax
	movl      24(%eax), %esi
	movl      %esi, .LBSS080616E8
	jmp       .L0804F9D9
.L0804F9C8:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	cmpl      $4, %eax
	jne       .L0804FA38
.L0804F9D4:
	movl      .LD08061194, %eax
.L0804F9D9:
	movl      $8192, 8(%esp)
	movl      %esi, 4(%esp)
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      read
.L0804F9F0:
	cmpl      $0, %eax
	movl      %eax, %ebx
	jl        .L0804F9C8
.L0804F9F7:
	jne       .L0804F919
.L0804F9FD:
	movl      $-99, .LBSS080616E0
	movl      $-130, %eax
	movl      $-99, .LBSS08063744
	jmp       .L0804F996
# ----------------------
.L0804FA1B:
	.ascii	"\220\215t&\000"
.L0804FA20:
	movl      %esi, %eax
	subl      .LBSS080616E8, %eax
	subl      $1, %eax
	movl      %eax, .LBSS080616E0
	jmp       .L0804F96D
# ----------------------
.L0804FA35:
	.ascii	"\215v\000"
.L0804FA38:
	movl      .LD08061194, %edx
	movl      8(%edx), %edx
	testl     %edx, %edx
	jne       .L0804F9FD
.L0804FA45:
	cmpl      $11, %eax
	jne       .L0804F9FD
.L0804FA4A:
	movl      $0, 8(%esp)
	movl      $3, 4(%esp)
	movl      $0, (%esp)
	call      fcntl
.L0804FA66:
	testl     %eax, %eax
	js        .L0804F9FD
.L0804FA6A:
	testb     $8, %ah
	je        .L0804F9FD
.L0804FA6F:
	andb      $247, %ah
	movl      %eax, 8(%esp)
	movl      $4, 4(%esp)
	movl      $0, (%esp)
	call      fcntl
.L0804FA8A:
	testl     %eax, %eax
	js        .L0804F9FD
.L0804FA92:
	movl      .LD080611B0, %eax
	movl      $.LC08059CC4, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C90
.L0804FAA7:
	jmp       .L0804F9D4
.L0804FAAC:
	movl      $-130, %eax
	jmp       .L0804F996
.L0804FAB6:
	cmpl      $-1, %edx
	jne       .L0804FAD2
.L0804FABB:
	cmpl      $0, 12(%ecx)
	je        .L0804FAD2
.L0804FAC1:
	movl      .LBSS080616E8, %eax
	movzbl    -1(%eax), %eax
	cmpb      $32, %al
	je        .L0804FAD2
.L0804FACE:
	cmpb      $9, %al
	jne       .L0804FAF3
.L0804FAD2:
	call      .L0804F810
.L0804FAD7:
	movl      .LBSS080616E0, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616E0
	js        .L0804F8DB
.L0804FAEE:
	jmp       .L0804F984
.L0804FAF3:
	movl      $-129, %eax
	jmp       .L0804F996
# ----------------------
.L0804FAFD:
	.ascii	"\215v\000"
.L0804FB00:
	subl      $12, %esp
.L0804FB03:
	movl      .LBSS080616E0, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616E0
	js        .L0804FB30
.L0804FB14:
	movl      .LBSS080616E8, %edx
	movsbl    (%edx), %eax
	addl      $1, %edx
	movl      %edx, .LBSS080616E8
.L0804FB26:
	addl      $12, %esp
	ret       
# ----------------------
.L0804FB2A:
	.ascii	"\215\266\000\000\000\000"
.L0804FB30:
	call      .L0804F8D0
.L0804FB35:
	cmpl      $-129, %eax
	je        .L0804FB03
.L0804FB3C:
	jmp       .L0804FB26
# ----------------------
.L0804FB3E:
	.value	36966
.L0804FB40:
	movl      .LBSS080616E0, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616E0
	js        .L0804FB68
.L0804FB51:
	movl      .LBSS080616E8, %edx
	movsbl    (%edx), %eax
	addl      $1, %edx
	movl      %edx, .LBSS080616E8
	ret       
# ----------------------
.L0804FB64:
	.long	2520205
.L0804FB68:
	jmp       .L0804F8D0
# ----------------------
.L0804FB6D:
	.ascii	"\215v\000"
.L0804FB70:
	subl      $28, %esp
	movl      %esi, 20(%esp)
	movl      32(%esp), %esi
	movl      %edi, 24(%esp)
	movl      36(%esp), %edi
	movl      %ebx, 16(%esp)
	addl      $1, .LBSS080616A8
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      open
.L0804FB9E:
	testl     %eax, %eax
	movl      %eax, %ebx
	js        .L0804FC20
.L0804FBA4:
	cmpl      $9, %eax
	jle       .L0804FC48
.L0804FBAD:
	andl      $1, %edi
	jne       .L0804FC5F
.L0804FBB6:
	movl      .LD08061194, %esi
	movl      24(%esi), %eax
	movl      %ebx, 8(%esi)
	testl     %eax, %eax
	je        .L0804FC74
.L0804FBCA:
	movl      $0, .LBSS080616E0
	movl      $0, .LBSS08063744
	movl      $1, .LD08061198
.L0804FBE8:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804FC02
.L0804FBF9:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804FC18
.L0804FC02:
	movl      %ebx, %eax
	movl      20(%esp), %esi
	movl      16(%esp), %ebx
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L0804FC14:
	.long	2520205
.L0804FC18:
	call      .L0804AFA0
# ----------------------
.L0804FC1D:
	.ascii	"\353\343\220"
.L0804FC20:
	andl      $2, %edi
	jne       .L0804FBE8
.L0804FC25:
	movl      $127, .LBSS080616C4
	movl      %esi, 8(%esp)
	movl      $.LC08059CE1, 4(%esp)
	movl      $1, (%esp)
	call      .L0804B030
# ----------------------
.L0804FC47:
	.byte	144
.L0804FC48:
	movl      %eax, 4(%esp)
	movl      %eax, (%esp)
	call      .L08055B90
.L0804FC54:
	andl      $1, %edi
	movl      %eax, %ebx
	je        .L0804FBB6
.L0804FC5F:
	call      .L0804F6D0
.L0804FC64:
	movl      .LD08061194, %esi
	movl      $0, 24(%esi)
	movl      %ebx, 8(%esi)
.L0804FC74:
	movl      $8193, (%esp)
	call      .L08051D70
.L0804FC80:
	movl      %eax, 24(%esi)
	jmp       .L0804FBCA
# ----------------------
.L0804FC88:
	.long	649366928
	.long	0
.L0804FC90:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	addl      $1, .LBSS080616A8
	call      .L0804F6D0
.L0804FCA4:
	movl      %ebx, (%esp)
	movl      %ebx, .LBSS080616E8
	call      strlen
.L0804FCB2:
	movl      $1, .LD08061198
	movl      %eax, .LBSS080616E0
	movl      .LD08061194, %eax
	movl      $0, 24(%eax)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804FCE7
.L0804FCDE:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804FCF0
.L0804FCE7:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L0804FCEC:
	.long	2520205
.L0804FCF0:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L0804FCF9:
	.ascii	"\215\264&\000\000\000\000"
.L0804FD00:
	pushl     %ebx
	subl      $24, %esp
	movl      .LD08061194, %ebx
	addl      $1, .LBSS080616A8
	movl      8(%ebx), %eax
	testl     %eax, %eax
	js        .L0804FD20
.L0804FD18:
	movl      %eax, (%esp)
	call      close
.L0804FD20:
	movl      24(%ebx), %eax
	testl     %eax, %eax
	je        .L0804FD3D
.L0804FD27:
	movl      %eax, (%esp)
	call      free
.L0804FD2F:
	jmp       .L0804FD3D
# ----------------------
.L0804FD31:
	.ascii	"\215\264&\000\000\000\000"
.L0804FD38:
	call      .L0804F810
.L0804FD3D:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804FD38
.L0804FD44:
	movl      (%ebx), %eax
	movl      %ebx, (%esp)
	movl      %eax, .LD08061194
	call      free
.L0804FD53:
	movl      .LD08061194, %eax
	movl      12(%eax), %edx
	movl      %edx, .LBSS080616E0
	movl      16(%eax), %edx
	movl      %edx, .LBSS08063744
	movl      20(%eax), %edx
	movl      4(%eax), %eax
	movl      %edx, .LBSS080616E8
	movl      %eax, .LD08061198
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0804FD95
.L0804FD8C:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0804FDA0
.L0804FD95:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L0804FD9A:
	.ascii	"\215\266\000\000\000\000"
.L0804FDA0:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L0804FDA9:
	.ascii	"\215\264&\000\000\000\000"
.L0804FDB0:
	subl      $12, %esp
	cmpl      $.LBSS08061700, .LD08061194
	je        .L0804FDD1
.L0804FDBF:
	nop       
.L0804FDC0:
	call      .L0804FD00
.L0804FDC5:
	cmpl      $.LBSS08061700, .LD08061194
	jne       .L0804FDC0
.L0804FDD1:
	addl      $12, %esp
	ret       
# ----------------------
.L0804FDD5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L0804FDE0:
	subl      $28, %esp
	call      .L0804FDB0
.L0804FDE8:
	movl      .LD08061194, %eax
	movl      8(%eax), %eax
	testl     %eax, %eax
	jle       .L0804FE08
.L0804FDF4:
	movl      %eax, (%esp)
	call      close
.L0804FDFC:
	movl      .LD08061194, %eax
	movl      $0, 8(%eax)
.L0804FE08:
	addl      $28, %esp
	ret       
# ----------------------
.L0804FE0C:
	.long	-1869574000
.L0804FE10:
	movl      .LBSS08061368, %ecx
	pushl     %ebx
	movl      $.LBSS08061368, %ebx
	cmpl      %ecx, %eax
	je        .L0804FE2A
.L0804FE20:
	leal      24(%ecx), %ebx
	movl      24(%ecx), %ecx
	cmpl      %ecx, %eax
	jne       .L0804FE20
.L0804FE2A:
	movl      24(%ecx), %ecx
	testl     %edx, %edx
	movl      %ecx, (%ebx)
	movl      $.LBSS08061368, %ebx
	movl      .LBSS08061368, %ecx
	je        .L0804FE5C
.L0804FE3E:
	cmpl      $1, %edx
	je        .L0804FE58
.L0804FE43:
	popl      %ebx
	ret       
# ----------------------
.L0804FE45:
	.ascii	"\215v\000"
.L0804FE48:
	cmpb      $1, 22(%ecx)
	leal      (%esi), %esi
	jne       .L0804FE5C
.L0804FE52:
	leal      24(%ecx), %ebx
	movl      24(%ecx), %ecx
.L0804FE58:
	testl     %ecx, %ecx
	jne       .L0804FE48
.L0804FE5C:
	movl      %ecx, 24(%eax)
	movl      %eax, (%ebx)
	popl      %ebx
	ret       
# ----------------------
.L0804FE63:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L0804FE70:
	pushl     %ebp
	xorl      %ebp, %ebp
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $44, %esp
	movl      %eax, (%esp)
	movw      $32, 30(%esp)
	call      strlen
.L0804FE8C:
	movl      .LBSS08061378, %edx
	movl      %edx, 4(%esp)
	leal      8(,%eax,8), %eax
	movl      %eax, (%esp)
	call      .L080520F0
.L0804FEA5:
	movl      %eax, %edx
	movl      %ebx, %eax
.L0804FEA9:
	movzbl    (%eax), %ecx
	testb     %cl, %cl
	je        .L0804FF0E
.L0804FEB0:
	cmpb      $135, %cl
	leal      1(%eax), %esi
	je        .L08050008
.L0804FEBC:
	jg        .L0804FF48
.L0804FEC2:
	cmpb      $131, %cl
	je        .L0804FFD6
.L0804FECB:
	nop       
	leal      (%esi), %esi
	jg        .L0804FFB0
.L0804FED6:
	cmpb      $129, %cl
	je        .L08050014
.L0804FEDF:
	cmpb      $130, %cl
	je        .L0804FF2A
.L0804FEE4:
	xorl      %ebx, %ebx
.L0804FEE6:
	movb      %cl, (%edx)
	addl      $1, %edx
.L0804FEEB:
	testl     %ebx, %ebx
	movl      %esi, %eax
	jne       .L0804FEFD
.L0804FEF1:
	jmp       .L0804FEA9
# ----------------------
.L0804FEF3:
	.ascii	"\220\215t&\000"
.L0804FEF8:
	movb      %cl, (%edx)
	addl      $1, %edx
.L0804FEFD:
	movzbl    (%ebx), %ecx
	addl      $1, %ebx
	testb     %cl, %cl
	jne       .L0804FEF8
.L0804FF07:
	movzbl    (%eax), %ecx
	testb     %cl, %cl
	jne       .L0804FEB0
.L0804FF0E:
	andl      $1, %edi
	je        .L0804FF19
.L0804FF13:
	movb      $34, (%edx)
	addl      $1, %edx
.L0804FF19:
	movb      $0, (%edx)
	movl      %edx, .LBSS08061378
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FF2A:
	movsbl    1(%eax), %ebp
	movl      $.LC08059CFC, %ebx
	addl      $2, %eax
	movl      %ebp, %ecx
	andl      $15, %ecx
	cmpl      $10, %ecx
	movl      $.LC08059CF9, %ecx
	cmovne    %ecx, %ebx
	jmp       .L0804FEFD
.L0804FF48:
	cmpb      $36, %cl
	je        .L0804FF68
.L0804FF4D:
	jg        .L0804FF80
.L0804FF4F:
	cmpb      $136, %cl
	je        .L0804FFF4
.L0804FF58:
	cmpb      $34, %cl
	nop       
	leal      (%esi), %esi
	jne       .L0804FEE4
.L0804FF62:
	leal      (%esi), %esi
.L0804FF68:
	movb      %cl, 30(%esp)
	leal      30(%esp), %ebx
	movl      $92, %ecx
	jmp       .L0804FEE6
# ----------------------
.L0804FF7A:
	.ascii	"\215\266\000\000\000\000"
.L0804FF80:
	cmpb      $61, %cl
	je        .L08050022
.L0804FF89:
	cmpb      $92, %cl
	je        .L0804FF68
.L0804FF8E:
	cmpb      $39, %cl
	jne       .L0804FEE4
.L0804FF97:
	movb      %cl, 30(%esp)
	leal      30(%esp), %ebx
	movl      $92, %ecx
	jmp       .L0804FEE6
# ----------------------
.L0804FFA9:
	.ascii	"\215\264&\000\000\000\000"
.L0804FFB0:
	cmpb      $132, %cl
	je        .L0804FFCA
.L0804FFB5:
	cmpb      $134, %cl
	jne       .L0804FEE4
.L0804FFBE:
	movl      %esi, %eax
	movl      $.LC08059D03, %ebx
	jmp       .L0804FEFD
.L0804FFCA:
	movl      %esi, %eax
	movl      $.LC08059CF2, %ebx
	jmp       .L0804FEFD
.L0804FFD6:
	testl     $1, %edi
	movl      $.LC08059CF0, %eax
	movl      $.LC08059CEF, %ebx
	cmove     %eax, %ebx
	movl      %esi, %eax
	sarl      $1, %edi
	xorl      %ebp, %ebp
	jmp       .L0804FEFD
.L0804FFF4:
	xorl      $1, %edi
	movl      $34, %ecx
	xorl      %ebx, %ebx
	jmp       .L0804FEE6
# ----------------------
.L08050003:
	.ascii	"\220\215t&\000"
.L08050008:
	movl      %esi, %eax
	movl      $.LC08059D00, %ebx
	jmp       .L0804FEFD
.L08050014:
	movzbl    1(%eax), %ecx
	leal      2(%eax), %esi
	xorl      %ebx, %ebx
	jmp       .L0804FEE6
.L08050022:
	xorl      %ebx, %ebx
	testl     %ebp, %ebp
	je        .L0804FEE6
.L0805002C:
	movl      %ebp, %eax
	andl      $15, %eax
	leal      (%edi,%edi), %ecx
	cmpl      $1, %eax
	cmovne    %ecx, %edi
	testl     $16, %ebp
	leal      .LC08059EE0(,%eax,4), %ebx
	movl      $58, %ecx
	jne       .L0804FEE6
.L08050052:
	jmp       .L0804FEEB
# ----------------------
.L08050057:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08050060:
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $20, %esp
	testl     %eax, %eax
	je        .L08050090
.L0805006B:
	cmpl      $25, (%eax)
	jbe       .L08050098
.L08050070:
	movl      8(%ebx), %ebx
	jmp       .L08050082
# ----------------------
.L08050075:
	.ascii	"\215v\000"
.L08050078:
	movl      $.LC08059D52, %eax
	call      .L0804FE70
.L08050082:
	movl      4(%ebx), %eax
	call      .L08050060
.L0805008A:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08050078
.L08050090:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08050096:
	.value	36966
.L08050098:
	movl      (%eax), %eax
	jmp       *.LC08059E60(,%eax,4)
# ----------------------
.L080500A1:
	.ascii	"\215\264&\000\000\000\000"
.L080500A8:
	movl      12(%ebx), %eax
	movl      $1, %edx
	call      .L08050320
.L080500B5:
	movl      16(%ebx), %eax
	xorl      %edx, %edx
	call      .L08050320
.L080500BF:
	jmp       .L08050090
# ----------------------
.L080500C1:
	.ascii	"\215\264&\000\000\000\000"
.L080500C8:
	movl      8(%ebx), %eax
	nop       
	leal      (%esi), %esi
.L080500D0:
	call      .L08050060
.L080500D5:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080500DB:
	.ascii	"\220\215t&\000"
.L080500E0:
	movl      $.LC08059D05, %eax
	movl      $.LC08059D01, %esi
	call      .L0804FE70
.L080500EF:
	movl      8(%ebx), %ebx
.L080500F2:
	movl      %ebx, %eax
	call      .L08050060
.L080500F9:
	movl      %esi, %eax
	call      .L0804FE70
.L08050100:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08050106:
	.value	36966
.L08050108:
	movl      $.LC08059D07, %esi
.L0805010D:
	movl      4(%ebx), %eax
	call      .L08050060
.L08050115:
	movl      %esi, %eax
	call      .L0804FE70
.L0805011C:
	movl      8(%ebx), %eax
	jmp       .L080500D0
# ----------------------
.L08050121:
	.ascii	"\215\264&\000\000\000\000"
.L08050128:
	movl      $.LC08059D0C, %esi
	jmp       .L0805010D
# ----------------------
.L0805012F:
	.byte	144
.L08050130:
	movl      $.LC08059D86, %esi
	jmp       .L0805010D
# ----------------------
.L08050137:
	.byte	144
.L08050138:
	movl      $.LC08059D58, %eax
	call      .L0804FE70
.L08050142:
	movl      4(%ebx), %eax
	call      .L08050060
.L0805014A:
	movl      $.LC08059D5C, %eax
	call      .L0804FE70
.L08050154:
	movl      12(%ebx), %eax
	testl     %eax, %eax
	je        .L08050310
.L0805015F:
	movl      8(%ebx), %eax
	movl      $.LC08059D1F, %esi
	call      .L08050060
.L0805016C:
	movl      $.LC08059D64, %eax
	call      .L0804FE70
.L08050176:
	movl      12(%ebx), %ebx
	jmp       .L080500F2
# ----------------------
.L0805017E:
	.value	36966
.L08050180:
	movl      $.LC08059D11, %eax
.L08050185:
	call      .L0804FE70
.L0805018A:
	movl      4(%ebx), %eax
	call      .L08050060
.L08050192:
	movl      8(%ebx), %ebx
.L08050195:
	movl      $.LC08059D6C, %eax
	movl      $.LC08059D24, %esi
	call      .L0804FE70
.L080501A4:
	jmp       .L080500F2
# ----------------------
.L080501A9:
	.ascii	"\215\264&\000\000\000\000"
.L080501B0:
	movl      $.LC08059D18, %eax
	jmp       .L08050185
# ----------------------
.L080501B7:
	.byte	144
.L080501B8:
	movl      $.LC08059D72, %eax
	call      .L0804FE70
.L080501C2:
	movl      16(%ebx), %eax
	call      .L0804FE70
.L080501CA:
	movl      $.LC08059D77, %eax
	call      .L0804FE70
.L080501D4:
	movl      8(%ebx), %eax
	movl      $1, %edx
	call      .L08050320
.L080501E1:
	movl      12(%ebx), %ebx
	jmp       .L08050195
# ----------------------
.L080501E6:
	.value	36966
.L080501E8:
	movl      $.LC08059D7C, %eax
	movl      $.LC08059D3C, %esi
	call      .L0804FE70
.L080501F7:
	movl      8(%ebx), %eax
	movl      8(%eax), %eax
	call      .L0804FE70
.L08050202:
	movl      $.LC08059D77, %eax
	call      .L0804FE70
.L0805020C:
	movl      12(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L080500F9
.L08050217:
	nop       
.L08050218:
	movl      8(%ebx), %eax
	call      .L08050060
.L08050220:
	movl      $.LC08059D82, %eax
	call      .L0804FE70
.L0805022A:
	movl      12(%ebx), %eax
	call      .L08050060
.L08050232:
	movl      $.LC08059D85, %eax
	call      .L0804FE70
.L0805023C:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08050218
.L08050243:
	movl      $.LC08059D3C, %esi
	jmp       .L080500F9
# ----------------------
.L0805024D:
	.ascii	"\215v\000"
.L08050250:
	movl      8(%ebx), %eax
	movl      $.LC08059D2B, %esi
	call      .L0804FE70
.L0805025D:
	jmp       .L080500F9
# ----------------------
.L08050262:
	.ascii	"\215\266\000\000\000\000"
.L08050268:
	movl      8(%ebx), %esi
	jmp       .L080500F9
.L08050270:
	movl      $.LC08059D50, %esi
	leal      (%esi), %esi
.L08050278:
	movl      8(%ebx), %eax
	movb      $0, 15(%esp)
	addl      $48, %eax
	movb      %al, 14(%esp)
	leal      14(%esp), %eax
	call      .L0804FE70
.L08050290:
	movl      %esi, %eax
	call      .L0804FE70
.L08050297:
	movl      (%ebx), %eax
	subl      $21, %eax
	cmpl      $1, %eax
	movl      12(%ebx), %eax
	ja        .L080500D0
.L080502A8:
	addl      $48, %eax
	movb      %al, 14(%esp)
	leal      14(%esp), %esi
	jmp       .L080500F9
.L080502B8:
	movl      $.LC08059D41, %esi
	jmp       .L08050278
# ----------------------
.L080502BF:
	.byte	144
.L080502C0:
	movl      $.LC08059D4A, %esi
	jmp       .L08050278
# ----------------------
.L080502C7:
	.byte	144
.L080502C8:
	movl      $.LC08059D4F, %esi
	jmp       .L08050278
# ----------------------
.L080502CF:
	.byte	144
.L080502D0:
	movl      $.LC08059D44, %esi
	jmp       .L08050278
# ----------------------
.L080502D7:
	.byte	144
.L080502D8:
	movl      $.LC08059D47, %esi
	jmp       .L08050278
# ----------------------
.L080502DF:
	.byte	144
.L080502E0:
	movl      $.LC08059D4C, %esi
	jmp       .L08050278
# ----------------------
.L080502E7:
	.byte	144
.L080502E8:
	movl      $.LC08059D36, %esi
	jmp       .L080500F9
# ----------------------
.L080502F2:
	.ascii	"\215\266\000\000\000\000"
.L080502F8:
	movl      $.LC08059D56, %eax
	call      .L0804FE70
.L08050302:
	movl      4(%ebx), %eax
	jmp       .L080500D0
# ----------------------
.L0805030A:
	.ascii	"\215\266\000\000\000\000"
.L08050310:
	movl      8(%ebx), %ebx
	movl      $.LC08059D1F, %esi
	jmp       .L080500F2
# ----------------------
.L0805031D:
	.ascii	"\215v\000"
.L08050320:
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $4, %esp
	testl     %eax, %eax
	je        .L08050358
.L0805032D:
	leal      (%esi), %esi
.L08050330:
	testl     %esi, %esi
	je        .L08050360
.L08050334:
	movl      %ebx, %eax
	call      .L08050060
.L0805033B:
	movl      4(%ebx), %edx
	testl     %edx, %edx
	je        .L08050358
.L08050342:
	movl      $.LC0805A366, %eax
	call      .L0804FE70
.L0805034C:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08050330
.L08050353:
	nop       
	leal      (%esi), %esi
.L08050358:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0805035E:
	.value	36966
.L08050360:
	movl      $.LC0805A366, %eax
	call      .L0804FE70
.L0805036A:
	movl      %ebx, %eax
	call      .L08050060
.L08050371:
	jmp       .L0805034C
# ----------------------
.L08050373:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08050380:
	subl      $60, %esp
	testl     %eax, %eax
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	movl      %esi, 48(%esp)
	movl      .LBSS08061368, %esi
	movl      %edi, 52(%esp)
	movl      %ebp, 56(%esp)
	je        .L08050460
.L080503A3:
	cmpb      $37, (%eax)
	jne       .L0805044A
.L080503AC:
	movsbl    1(%eax), %eax
	movl      $.LC08059D89, %edi
	testl     %eax, %eax
	jne       .L080503E8
.L080503B9:
	testl     %esi, %esi
	je        .L0805044F
.L080503C1:
	testl     %edx, %edx
	je        .L080503CF
.L080503C5:
	testb     $2, 23(%esi)
	je        .L08050488
.L080503CF:
	movl      %esi, %eax
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L080503E5:
	.ascii	"\215v\000"
.L080503E8:
	cmpb      $0, 2(%ebx)
	jne       .L080503FD
.L080503EE:
	cmpl      $37, %eax
	je        .L08050460
.L080503F3:
	cmpl      $43, %eax
	je        .L08050460
.L080503F8:
	cmpl      $45, %eax
	je        .L08050470
.L080503FD:
	leal      1(%ebx), %ebp
	movl      %ebp, (%esp)
	movl      %edx, 20(%esp)
	call      .L08052CF0
.L0805040C:
	testl     %eax, %eax
	je        .L0805048F
.L08050410:
	movl      $10, 8(%esp)
	movl      $0, 4(%esp)
	movl      %ebp, (%esp)
	call      strtol
.L08050428:
	movl      20(%esp), %edx
	cmpl      .LBSS0806136C, %eax
	jae       .L0805048F
.L08050434:
	leal      -1(%eax), %esi
	imull     $28, %esi, %esi
	addl      .LBSS08061370, %esi
	testb     $8, 23(%esi)
	jne       .L080503C1
.L0805044A:
	movl      $.LC08059DA8, %edi
.L0805044F:
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804B000
# ----------------------
.L0805045B:
	.ascii	"\220\215t&\000"
.L08050460:
	movl      $.LC08059D89, %edi
	jmp       .L080503B9
# ----------------------
.L0805046A:
	.ascii	"\215\266\000\000\000\000"
.L08050470:
	testl     %esi, %esi
	je        .L08050481
.L08050474:
	movl      24(%esi), %esi
	movl      $.LC08059D98, %edi
	jmp       .L080503B9
.L08050481:
	movl      $.LC08059D98, %edi
	jmp       .L0805044F
.L08050488:
	movl      $.LC08059F20, %edi
	jmp       .L0805044F
.L0805048F:
	cmpb      $63, 1(%ebx)
	movl      $.L08052BB0, 24(%esp)
	jne       .L080504A8
.L0805049D:
	leal      2(%ebx), %ebp
	movl      $strstr, 24(%esp)
.L080504A8:
	testl     %esi, %esi
	movl      $.LC08059DA8, %edi
	je        .L0805044F
.L080504B1:
	movl      $0, 28(%esp)
	jmp       .L080504CB
.L080504BB:
	movl      %esi, 28(%esp)
	movl      $.LC08059DB8, %edi
.L080504C4:
	movl      24(%esi), %esi
	testl     %esi, %esi
	je        .L0805044F
.L080504CB:
	movl      %ebp, 4(%esp)
	movl      12(%esi), %eax
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      *24(%esp)
.L080504DC:
	testl     %eax, %eax
	je        .L080504C4
.L080504E0:
	movl      28(%esp), %ecx
	testl     %ecx, %ecx
	je        .L080504BB
.L080504E8:
	jmp       .L0805044F
# ----------------------
.L080504ED:
	.ascii	"\215v\000"
.L080504F0:
	pushl     %edi
	pushl     %esi
	movl      %edx, %esi
	pushl     %ebx
	subl      $16, %esp
	movl      12(%eax), %ebx
	movzwl    20(%eax), %eax
	leal      (%eax,%eax,2), %eax
	leal      (%ebx,%eax,4), %edi
	addl      $12, %ebx
	cmpl      %ebx, %edi
	jbe       .L0805052E
.L0805050C:
	leal      (%esi), %esi
.L08050510:
	movl      8(%ebx), %eax
	addl      $12, %ebx
	movl      $.LC08059DC6, 4(%esp)
	movl      %esi, (%esp)
	movl      %eax, 8(%esp)
	call      .L08056C30
.L0805052A:
	cmpl      %ebx, %edi
	ja        .L08050510
.L0805052E:
	movl      %esi, 4(%esp)
	movl      $10, (%esp)
	call      .L08056C60
.L0805053E:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       .L080569E0
# ----------------------
.L08050549:
	.ascii	"\215\264&\000\000\000\000"
.L08050550:
	subl      $60, %esp
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	movl      %edx, %eax
	andl      $127, %eax
	movl      %edi, 52(%esp)
	movzbl    %dh, %edi
	movl      %esi, 48(%esp)
	movl      %ebp, 56(%esp)
	je        .L080505D8
.L0805056F:
	movzbl    %dl, %ebp
	cmpl      $127, %ebp
	cmove     %edi, %eax
	testl     %ecx, %ecx
	je        .L0805058D
.L0805057C:
	xorl      %esi, %esi
	cmpl      $13, %eax
	je        .L080505BB
.L08050583:
	cmpl      $2, %eax
	je        .L080505BB
.L08050588:
	cmpl      $127, %ebp
	je        .L080505BB
.L0805058D:
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      strsignal
.L08050599:
	movl      $32, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 8(%esp)
	call      .L08056910
.L080505AD:
	movl      28(%esp), %edx
	andl      $128, %edx
	movl      %eax, %esi
	jne       .L08050620
.L080505BB:
	movl      %esi, %eax
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L080505D1:
	.ascii	"\215\264&\000\000\000\000"
.L080505D8:
	xorl      %esi, %esi
	testl     %ecx, %ecx
	jne       .L080505BB
.L080505DE:
	testl     %edi, %edi
	jne       .L08050600
.L080505E2:
	movl      $.LC08059DE4, 8(%esp)
	movl      $16, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056910
.L080505FA:
	movl      %eax, %esi
	jmp       .L080505BB
# ----------------------
.L080505FE:
	.value	36966
.L08050600:
	movl      %edi, 12(%esp)
	movl      $.LC08059DDB, 8(%esp)
	movl      $16, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056910
.L0805061C:
	movl      %eax, %esi
	jmp       .L080505BB
.L08050620:
	addl      %eax, %ebx
	movl      $.LC08059DCC, 8(%esp)
	movl      $16, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056910
.L0805063A:
	addl      %eax, %esi
	jmp       .L080505BB
# ----------------------
.L08050641:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08050650:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $364, %esp
	movl      %edx, 28(%esp)
	movl      %gs:20, %eax
	movl      %eax, 348(%esp)
	xorl      %eax, %eax
	addl      $1, .LBSS080616A8
	movl      .LBSS0806374C, %edx
	xorl      %ebx, %ebx
	cmpl      $1, %esi
	setne     %bl
	movl      %ebx, %eax
	orl       $2, %eax
	testl     %edx, %edx
	cmovne    %eax, %ebx
	leal      36(%esp), %ebp
	leal      164(%esp), %edi
	leal      (%esi), %esi
.L080506A0:
	leal      292(%esp), %edx
	movl      $0, .LBSS080639E0
	movl      $0, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edx, (%esp)
	call      wait3
.L080506C5:
	testl     %esi, %esi
	je        .L080507C5
.L080506CD:
	testl     %eax, %eax
	jne       .L080507C5
.L080506D5:
	movl      %ebp, (%esp)
	call      sigfillset
.L080506DD:
	movl      %edi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      $2, (%esp)
	call      sigprocmask
.L080506F1:
	movl      .LBSS080639E0, %eax
	testl     %eax, %eax
	je        .L08050711
.L080506FA:
	jmp       .L0805071A
# ----------------------
.L080506FC:
	.long	2520205
.L08050700:
	movl      %edi, (%esp)
	call      sigsuspend
.L08050708:
	movl      .LBSS080639E0, %eax
	testl     %eax, %eax
	jne       .L0805071A
.L08050711:
	movl      .LBSS08063A40, %eax
	testl     %eax, %eax
	je        .L08050700
.L0805071A:
	movl      $0, (%esp)
	call      sigsetmask
.L08050726:
	movl      .LBSS080639E0, %esi
	testl     %esi, %esi
	je        .L08050738
.L08050730:
	xorl      %esi, %esi
	jmp       .L080506A0
# ----------------------
.L08050737:
	.byte	144
.L08050738:
	xorl      %edx, %edx
	xorl      %ebx, %ebx
.L0805073C:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L0805075A
.L0805074D:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L0805089D
.L0805075A:
	testb     %dl, %dl
	jne       .L0805077F
.L0805075E:
	movl      348(%esp), %edx
	xorl      %gs:20, %edx
	movl      %ebx, %eax
	jne       .L080508BB
.L08050774:
	addl      $364, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805077F:
	movl      292(%esp), %edx
	movl      $1, %ecx
	leal      299(%esp), %eax
	call      .L08050550
.L08050797:
	testl     %eax, %eax
	je        .L0805075E
.L0805079B:
	movb      $10, 299(%esp,%eax)
	movb      $0, 300(%esp,%eax)
	movl      .LD080611B0, %eax
	movl      %eax, 4(%esp)
	leal      299(%esp), %eax
	movl      %eax, (%esp)
	call      .L08056C90
.L080507C3:
	jmp       .L0805075E
.L080507C5:
	testl     %eax, %eax
	movl      %eax, %ebx
	jle       .L080508C0
.L080507CF:
	movl      .LBSS08061368, %ecx
	movl      292(%esp), %ebp
	testl     %ecx, %ecx
	je        .L0805084A
.L080507E0:
	movl      %ebp, 24(%esp)
	leal      (%esi), %esi
.L080507E8:
	cmpb      $2, 22(%ecx)
	je        .L0805083F
.L080507EE:
	movzwl    20(%ecx), %edx
	movl      $2, %esi
	xorl      %ebp, %ebp
	movl      12(%ecx), %eax
	leal      (%edx,%edx,2), %edx
	leal      (%eax,%edx,4), %edi
	jmp       .L08050820
# ----------------------
.L08050804:
	.long	2520205
.L08050808:
	movl      4(%eax), %edx
	cmpl      $-1, %edx
	je        .L08050832
.L08050810:
	testl     %esi, %esi
	je        .L08050819
.L08050814:
	cmpb      $127, %dl
	je        .L08050890
.L08050819:
	addl      $12, %eax
	cmpl      %eax, %edi
	jbe       .L0805083B
.L08050820:
	cmpl      %ebx, (%eax)
	jne       .L08050808
.L08050824:
	movl      24(%esp), %edx
	movl      %ecx, %ebp
	cmpl      $-1, %edx
	movl      %edx, 4(%eax)
	jne       .L08050810
.L08050832:
	addl      $12, %eax
	xorl      %esi, %esi
	cmpl      %eax, %edi
	ja        .L08050820
.L0805083B:
	testl     %ebp, %ebp
	jne       .L08050862
.L0805083F:
	movl      24(%ecx), %ecx
	testl     %ecx, %ecx
	jne       .L080507E8
.L08050846:
	movl      24(%esp), %ebp
.L0805084A:
	movl      %ebp, %eax
	xorl      %edx, %edx
	cmpb      $127, %al
	je        .L0805073C
.L08050856:
	subl      $1, .LBSS08061374
	jmp       .L0805073C
.L08050862:
	testl     %esi, %esi
	movl      %ebp, %edi
	je        .L0805087E
.L08050868:
	movzbl    22(%ebp), %eax
	orb       $16, 23(%ebp)
	cmpl      %esi, %eax
	je        .L0805087E
.L08050874:
	movl      %esi, %edx
	cmpl      $1, %esi
	movb      %dl, 22(%ebp)
	je        .L080508B0
.L0805087E:
	cmpl      28(%esp), %edi
	sete      %dl
	jmp       .L0805073C
# ----------------------
.L0805088A:
	.ascii	"\215\266\000\000\000\000"
.L08050890:
	movl      %edx, 16(%ecx)
	movl      $1, %esi
	jmp       .L08050819
.L0805089D:
	movb      %dl, 20(%esp)
	call      .L0804AFA0
# ----------------------
.L080508A6:
	.ascii	"\017\266T$\024\351\252\376\377\377"
.L080508B0:
	xorl      %edx, %edx
	movl      %ebp, %eax
	call      .L0804FE10
.L080508B9:
	jmp       .L0805087E
.L080508BB:
	call      __stack_chk_fail
.L080508C0:
	xorl      %edx, %edx
	jmp       .L0805073C
# ----------------------
.L080508C7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L080508D0:
	subl      $28, %esp
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      tcsetpgrp
.L080508DF:
	testl     %eax, %eax
	jne       .L080508E7
.L080508E3:
	addl      $28, %esp
	ret       
.L080508E7:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      strerror
.L080508F6:
	movl      $.LC08059F48, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L08050906:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L08050910:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $16, %esp
	addl      $1, .LBSS080616A8
	movzwl    20(%eax), %edi
	movl      12(%eax), %esi
	subl      $1, %edi
	cmpl      $-1, %edi
	je        .L08050950
.L0805092E:
	nop       
.L08050930:
	movl      8(%esi), %eax
	cmpl      $.LBSS0806395C, %eax
	je        .L08050942
.L0805093A:
	movl      %eax, (%esp)
	call      free
.L08050942:
	subl      $1, %edi
	addl      $12, %esi
	cmpl      $-1, %edi
	jne       .L08050930
.L0805094D:
	movl      12(%ebx), %esi
.L08050950:
	cmpl      %ebx, %esi
	je        .L0805095C
.L08050954:
	movl      %esi, (%esp)
	call      free
.L0805095C:
	andb      $247, 23(%ebx)
	movl      $2, %edx
	movl      %ebx, %eax
	call      .L0804FE10
.L0805096C:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08050986
.L0805097D:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08050990
.L08050986:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0805098D:
	.ascii	"\215v\000"
.L08050990:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       .L0804AFA0
# ----------------------
.L0805099B:
	.ascii	"\220\215t&\000"
.L080509A0:
	pushl     %ebp
	pushl     %edi
	movl      %ecx, %edi
	pushl     %esi
	pushl     %ebx
	subl      $172, %esp
	movl      12(%edx), %esi
	movl      %eax, 48(%esp)
	movl      %gs:20, %eax
	movl      %eax, 156(%esp)
	xorl      %eax, %eax
	testb     $1, %cl
	movl      %edx, 60(%esp)
	jne       .L08050B80
.L080509CF:
	movl      60(%esp), %eax
	leal      76(%esp), %ebx
	subl      .LBSS08061370, %eax
	movl      $.LC08059DED, 8(%esp)
	movl      $16, 4(%esp)
	sarl      $2, %eax
	imull     $-1227133513, %eax, %eax
	movl      %ebx, (%esp)
	addl      $1, %eax
	movl      %eax, 12(%esp)
	call      .L08056910
.L08050A05:
	movl      %eax, 52(%esp)
	movl      .LBSS08061368, %eax
	cmpl      %eax, 60(%esp)
	je        .L08050C30
.L08050A18:
	testl     %eax, %eax
	je        .L08050A29
.L08050A1C:
	movl      60(%esp), %edx
	cmpl      %edx, 24(%eax)
	je        .L08050C0D
.L08050A29:
	andl      $4, %edi
	movl      52(%esp), %ebp
	jne       .L08050BE0
.L08050A36:
	movl      60(%esp), %edx
	movzwl    20(%edx), %eax
	leal      (%eax,%eax,2), %eax
	leal      (%esi,%eax,4), %eax
	movl      %eax, 56(%esp)
	movzbl    22(%edx), %eax
	testb     %al, %al
	je        .L08050BC8
.L08050A54:
	movl      56(%esp), %ecx
	cmpb      $1, %al
	movl      -8(%ecx), %edx
	je        .L08050C20
.L08050A63:
	leal      (%ebx,%ebp), %eax
	xorl      %ecx, %ecx
	call      .L08050550
.L08050A6D:
	addl      %eax, %ebp
.L08050A6F:
	movl      8(%esi), %eax
	movl      $0, %edx
	movl      $32, 16(%esp)
	movl      %ebx, 8(%esp)
	movl      $.LC08059DF5, 4(%esp)
	movl      %eax, 20(%esp)
	movl      $33, %eax
	subl      %ebp, %eax
	cmovs     %edx, %eax
	movl      %eax, 12(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      .L08056C30
.L08050AA9:
	testl     %edi, %edi
	je        .L08050BA0
.L08050AB1:
	movl      %esi, %edi
	movl      %esi, 44(%esp)
	jmp       .L08050B36
# ----------------------
.L08050AB9:
	.ascii	"\215\264&\000\000\000\000"
.L08050AC0:
	movl      44(%esp), %ebp
	movl      %edi, %esi
	subl      44(%esp), %esi
	movl      (%esi,%ebp), %eax
	movl      $32, 16(%esp)
	movl      $.LC08059DFD, 8(%esp)
	movl      $48, 4(%esp)
	movl      %eax, 20(%esp)
	movl      52(%esp), %eax
	movl      %ebx, (%esp)
	movl      %eax, 12(%esp)
	call      .L08056910
.L08050AF9:
	movl      8(%esi,%ebp), %edx
	movl      $0, %ecx
	movl      $32, 16(%esp)
	movl      %ebx, 8(%esp)
	movl      $.LC08059DF5, 4(%esp)
	movl      %edx, 20(%esp)
	movl      $36, %edx
	subl      %eax, %edx
	movl      %edx, %eax
	cmovs     %ecx, %eax
	movl      %eax, 12(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      .L08056C30
.L08050B36:
	addl      $12, %edi
	cmpl      56(%esp), %edi
	jne       .L08050AC0
.L08050B3F:
	movl      48(%esp), %eax
	movl      $10, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C60
.L08050B53:
	movl      60(%esp), %edx
	andb      $239, 23(%edx)
	cmpb      $2, 22(%edx)
	je        .L08050BBB
.L08050B61:
	movl      156(%esp), %ecx
	xorl      %gs:20, %ecx
	jne       .L08050C3E
.L08050B75:
	addl      $172, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08050B80:
	movl      (%esi), %eax
	movl      $.LC08059DE9, 4(%esp)
	movl      %eax, 8(%esp)
	movl      48(%esp), %eax
	movl      %eax, (%esp)
	call      .L08056C30
.L08050B9A:
	jmp       .L08050B61
# ----------------------
.L08050B9C:
	.long	2520205
.L08050BA0:
	movl      48(%esp), %edx
	movl      60(%esp), %eax
	call      .L080504F0
.L08050BAD:
	movl      60(%esp), %edx
	andb      $239, 23(%edx)
	cmpb      $2, 22(%edx)
	jne       .L08050B61
.L08050BBB:
	movl      %edx, %eax
	call      .L08050910
.L08050BC2:
	jmp       .L08050B61
# ----------------------
.L08050BC4:
	.long	2520205
.L08050BC8:
	leal      (%ebx,%ebp), %eax
	addl      $7, %ebp
	movl      $1852732754, (%eax)
	movl      $6778473, 4(%eax)
	jmp       .L08050A6F
.L08050BE0:
	movl      (%esi), %eax
	movl      $.LC08059E03, 8(%esp)
	movl      $16, 4(%esp)
	movl      %eax, 12(%esp)
	movl      %ebp, %eax
	addl      %ebx, %eax
	movl      %eax, (%esp)
	call      .L08056910
.L08050C02:
	movl      52(%esp), %ebp
	addl      %eax, %ebp
	jmp       .L08050A36
.L08050C0D:
	movl      52(%esp), %eax
	movb      $45, 74(%esp,%eax)
	jmp       .L08050A29
# ----------------------
.L08050C1B:
	.ascii	"\220\215t&\000"
.L08050C20:
	movl      60(%esp), %eax
	movl      16(%eax), %edx
	jmp       .L08050A63
# ----------------------
.L08050C2C:
	.long	2520205
.L08050C30:
	movl      52(%esp), %eax
	movb      $43, 74(%esp,%eax)
	jmp       .L08050A29
.L08050C3E:
	call      __stack_chk_fail
# ----------------------
.L08050C43:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08050C50:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %esi
	cmpl      .LBSS0806374C, %esi
	je        .L08050D54
.L08050C66:
	movl      .LBSS08063758, %ecx
	testl     %ecx, %ecx
	jne       .L08050D54
.L08050C74:
	testl     %esi, %esi
	je        .L08050CF0
.L08050C78:
	movl      $2, 4(%esp)
	movl      $.LC08059E07, (%esp)
	call      open
.L08050C8C:
	testl     %eax, %eax
	movl      %eax, %edi
	movl      %eax, %ebx
	js        .L08050D60
.L08050C98:
	movl      %ebx, (%esp)
	movl      %edi, 4(%esp)
	call      .L08055B90
.L08050CA4:
	movl      %eax, %ebx
	jmp       .L08050CCA
.L08050CA8:
	call      getpgrp
.L08050CAD:
	cmpl      %edi, %eax
	nop       
	je        .L08050D88
.L08050CB6:
	movl      $21, 4(%esp)
	movl      $0, (%esp)
	call      killpg
.L08050CCA:
	movl      %ebx, (%esp)
	call      tcgetpgrp
.L08050CD2:
	testl     %eax, %eax
	movl      %eax, %edi
	jns       .L08050CA8
.L08050CD8:
	movl      $.LC08059F6C, (%esp)
	call      .L0804B060
.L08050CE4:
	movb      $0, .LBSS08063968
	jmp       .L08050D39
# ----------------------
.L08050CED:
	.ascii	"\215v\000"
.L08050CF0:
	movl      .LBSS08061364, %esi
	movl      .LD0806119C, %ebx
	movl      %esi, %edx
	movl      %ebx, %eax
	call      .L080508D0
.L08050D05:
	movl      %esi, 4(%esp)
	movl      $0, (%esp)
	call      setpgid
.L08050D15:
	movl      $20, (%esp)
	call      .L080562A0
.L08050D21:
	movl      $22, (%esp)
	call      .L080562A0
.L08050D2D:
	movl      $21, (%esp)
	call      .L080562A0
.L08050D39:
	movl      %ebx, (%esp)
	xorl      %esi, %esi
	movl      $-1, %ebx
	call      close
.L08050D48:
	movl      %ebx, .LD0806119C
	movl      %esi, .LBSS0806374C
.L08050D54:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08050D5B:
	.ascii	"\220\215t&\000"
.L08050D60:
	leal      3(%eax), %ebx
	nop       
	leal      (%esi), %esi
.L08050D68:
	movl      %ebx, (%esp)
	call      isatty
.L08050D70:
	testl     %eax, %eax
	jne       .L08050C98
.L08050D78:
	subl      $1, %ebx
	jns       .L08050D68
.L08050D7D:
	leal      (%esi), %esi
	jmp       .L08050CD8
# ----------------------
.L08050D85:
	.ascii	"\215v\000"
.L08050D88:
	movl      %eax, .LBSS08061364
	movl      $20, (%esp)
	call      .L080562A0
.L08050D99:
	movl      $22, (%esp)
	call      .L080562A0
.L08050DA5:
	movl      $21, (%esp)
	call      .L080562A0
.L08050DB1:
	movl      .LBSS0806375C, %edi
	movl      $0, (%esp)
	movl      %edi, 4(%esp)
	call      setpgid
.L08050DC7:
	movl      %edi, %edx
	movl      %ebx, %eax
	call      .L080508D0
.L08050DD0:
	jmp       .L08050D48
# ----------------------
.L08050DD5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L08050DE0:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	cmpl      $1, 32(%esp)
	movl      36(%esp), %edi
	jle       .L08050FE8
.L08050DF5:
	movl      4(%edi), %eax
	leal      4(%edi), %ebx
	cmpb      $45, (%eax)
	je        .L08050F40
.L08050E04:
	xorl      %edi, %edi
	movl      $15, %esi
.L08050E0B:
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
.L08050E13:
	cmpl      %edi, %eax
	jne       .L08050FE8
.L08050E1B:
	testl     %eax, %eax
	je        .L08050E78
.L08050E1F:
	movl      (%ebx), %eax
	movl      .LD080611B4, %esi
	testl     %eax, %eax
	je        .L08050EF8
.L08050E2F:
	movl      %eax, (%esp)
	call      .L08052CC0
.L08050E37:
	leal      -128(%eax), %edx
	cmpl      $129, %eax
	cmovge    %edx, %eax
	leal      -1(%eax), %edx
	cmpl      $63, %edx
	ja        .L08050FF4
.L08050E4E:
	movl      .LC0805B540(,%eax,4), %eax
	xorl      %edi, %edi
	movl      $.LC0805A362, 4(%esp)
	movl      %esi, (%esp)
	movl      %eax, 8(%esp)
	call      .L08056C30
.L08050E6B:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08050E74:
	.long	2520205
.L08050E78:
	movl      (%ebx), %eax
	xorl      %edi, %edi
	jmp       .L08050E89
# ----------------------
.L08050E7E:
	.value	36966
.L08050E80:
	addl      $4, %ebx
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08050E6B
.L08050E89:
	movzbl    (%eax), %edx
	cmpb      $37, %dl
	je        .L08050EE8
.L08050E91:
	cmpb      $45, %dl
	je        .L08050ED8
.L08050E96:
	movl      %eax, (%esp)
	call      .L08052CC0
.L08050E9E:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      kill
.L08050EAA:
	testl     %eax, %eax
	je        .L08050E80
.L08050EAE:
	movl      .LBSS08063754, %eax
	movl      $1, %edi
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      strerror
.L08050EC2:
	movl      $.LC0805A943, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B060
.L08050ED2:
	jmp       .L08050E80
# ----------------------
.L08050ED4:
	.long	2520205
.L08050ED8:
	addl      $1, %eax
	movl      %eax, (%esp)
	call      .L08052CC0
.L08050EE3:
	negl      %eax
	jmp       .L08050E9E
# ----------------------
.L08050EE7:
	.byte	144
.L08050EE8:
	xorl      %edx, %edx
	call      .L08050380
.L08050EEF:
	movl      12(%eax), %eax
	movl      (%eax), %eax
	negl      %eax
	jmp       .L08050E9E
.L08050EF8:
	movl      %esi, 4(%esp)
	movl      $1, %ebx
	movl      $.LC08059E14, (%esp)
	call      .L08056C90
.L08050F0D:
	leal      (%esi), %esi
.L08050F10:
	movl      .LC0805B540(,%ebx,4), %eax
	addl      $1, %ebx
	movl      $.LC0805A362, 4(%esp)
	movl      %esi, (%esp)
	movl      %eax, 8(%esp)
	call      .L08056C30
.L08050F2E:
	cmpl      $65, %ebx
	jne       .L08050F10
.L08050F33:
	xorl      %edi, %edi
	jmp       .L08050E6B
# ----------------------
.L08050F3A:
	.ascii	"\215\266\000\000\000\000"
.L08050F40:
	addl      $1, %eax
	movl      $1, 4(%esp)
	leal      8(%edi), %ebx
	xorl      %edi, %edi
	movl      %eax, (%esp)
	call      .L08056670
.L08050F58:
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L08050F65
.L08050F5E:
	movl      (%ebx), %eax
	jmp       .L08050E0B
.L08050F65:
	xorl      %edi, %edi
	jmp       .L08050F75
# ----------------------
.L08050F69:
	.ascii	"\215\264&\000\000\000\000"
.L08050F70:
	movl      $1, %edi
.L08050F75:
	movl      $.LC08059E10, (%esp)
	call      .L080539E0
.L08050F81:
	testl     %eax, %eax
	je        .L08050FC0
.L08050F85:
	cmpl      $115, %eax
	jne       .L08050F70
.L08050F8A:
	movl      .LBSS08063980, %eax
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056670
.L08050F9F:
	testl     %eax, %eax
	movl      %eax, %esi
	jns       .L08050F75
.L08050FA5:
	movl      .LBSS08063980, %eax
	movl      $.LC08059FF0, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L08050FBA:
	.ascii	"\215\266\000\000\000\000"
.L08050FC0:
	movl      %esi, %eax
	movl      .LBSS08063978, %ebx
	shrl      $31, %eax
	testb     %al, %al
	je        .L08050F5E
.L08050FCF:
	testl     %edi, %edi
	movl      $1, %eax
	jne       .L08050E13
.L08050FDC:
	movl      (%ebx), %eax
	jmp       .L08050E04
# ----------------------
.L08050FE3:
	.ascii	"\220\215t&\000"
.L08050FE8:
	movl      $.LC08059F98, (%esp)
	call      .L0804B000
.L08050FF4:
	movl      (%ebx), %eax
	movl      $.LC0805A014, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L08051006:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L08051010:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %ebp
	movl      36(%esp), %edi
.L0805101F:
	xorl      %edx, %edx
	xorl      %eax, %eax
	call      .L08050650
.L08051028:
	testl     %eax, %eax
	jg        .L0805101F
.L0805102C:
	movl      .LBSS08061368, %ebx
	testl     %ebx, %ebx
	je        .L0805105C
.L08051036:
	movl      %edi, %esi
	andl      $8, %esi
	nop       
	leal      (%esi), %esi
.L08051040:
	testl     %esi, %esi
	je        .L0805104A
.L08051044:
	testb     $16, 23(%ebx)
	je        .L08051055
.L0805104A:
	movl      %edi, %ecx
	movl      %ebx, %edx
	movl      %ebp, %eax
	call      .L080509A0
.L08051055:
	movl      24(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08051040
.L0805105C:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051064:
	.long	46733
	.long	-1081278464
	.long	0
.L08051070:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $16, %esp
	jmp       .L0805108C
# ----------------------
.L0805107A:
	.ascii	"\215\266\000\000\000\000"
.L08051080:
	xorl      %ebx, %ebx
	cmpl      $108, %eax
	sete      %bl
	leal      1(%ebx,%ebx,2), %ebx
.L0805108C:
	movl      $.LC08059E17, (%esp)
	call      .L080539E0
.L08051098:
	testl     %eax, %eax
	jne       .L08051080
.L0805109C:
	movl      .LBSS08063978, %esi
	movl      .LD080611B4, %edi
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L080510D4
.L080510AE:
	nop       
.L080510B0:
	xorl      %edx, %edx
	addl      $4, %esi
	call      .L08050380
.L080510BA:
	movl      %ebx, %ecx
	movl      %eax, %edx
	movl      %edi, %eax
	call      .L080509A0
.L080510C5:
	movl      (%esi), %eax
	testl     %eax, %eax
	jne       .L080510B0
.L080510CB:
	addl      $16, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L080510D4:
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      .L08051010
.L080510E0:
	jmp       .L080510CB
# ----------------------
.L080510E2:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L080510F0:
	pushl     %edi
	movl      $127, %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      $.LBSS0806395C, (%esp)
	call      .L080539E0
.L08051107:
	movl      .LBSS08063978, %esi
	movl      (%esi), %ecx
	testl     %ecx, %ecx
	je        .L080511FE
.L08051117:
	cmpb      $37, (%ecx)
	je        .L080511DA
.L08051120:
	movl      %ecx, (%esp)
	call      .L08052CC0
.L08051128:
	movl      .LBSS08061368, %ebx
	testl     %ebx, %ebx
	jne       .L08051143
.L08051132:
	jmp       .L080511C8
# ----------------------
.L08051137:
	.byte	144
.L08051138:
	movl      24(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L080511C8
.L08051143:
	movzwl    20(%ebx), %edx
	movl      12(%ebx), %ecx
	leal      -3(%edx,%edx,2), %edx
	leal      (%ecx,%edx,4), %edx
	cmpl      %eax, (%edx)
	jne       .L08051138
.L08051155:
	leal      (%esi), %esi
.L08051158:
	cmpb      $0, 22(%ebx)
	jne       .L08051180
.L0805115E:
	xorl      %edx, %edx
	movl      $2, %eax
	call      .L08050650
.L0805116A:
	testl     %eax, %eax
	jg        .L08051158
.L0805116E:
	movl      .LBSS08063A40, %edi
	subl      $-128, %edi
.L08051177:
	addl      $16, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08051180:
	movzbl    23(%ebx), %edx
	movl      12(%ebx), %edi
	movl      %edx, %eax
	orl       $4, %eax
	movb      %al, 23(%ebx)
	movzwl    20(%ebx), %eax
	leal      -3(%eax,%eax,2), %eax
	leal      (%edi,%eax,4), %eax
	movl      4(%eax), %eax
	movl      %eax, %ecx
	movzbl    %ah, %edi
	andl      $127, %ecx
	je        .L080511C8
.L080511A7:
	subl      $-128, %edi
	cmpb      $127, %al
	je        .L080511C8
.L080511AE:
	cmpl      $2, %ecx
	leal      128(%ecx), %edi
	jne       .L080511C8
.L080511B9:
	orl       $5, %edx
	movl      $130, %edi
	movb      %dl, 23(%ebx)
	leal      (%esi), %esi
.L080511C8:
	addl      $4, %esi
	movl      (%esi), %ecx
	testl     %ecx, %ecx
	je        .L08051177
.L080511D1:
	cmpb      $37, (%ecx)
	jne       .L08051120
.L080511DA:
	xorl      %edx, %edx
	movl      %ecx, %eax
	call      .L08050380
.L080511E3:
	movl      %eax, %ebx
	jmp       .L08051158
.L080511EA:
	xorl      %edx, %edx
	movl      $2, %eax
	call      .L08050650
.L080511F6:
	testl     %eax, %eax
	jle       .L0805116E
.L080511FE:
	movl      .LBSS08061368, %eax
	testl     %eax, %eax
	jne       .L0805121B
.L08051207:
	jmp       .L08051228
# ----------------------
.L08051209:
	.ascii	"\215\264&\000\000\000\000"
.L08051210:
	orb       $4, 23(%eax)
	movl      24(%eax), %eax
	testl     %eax, %eax
	je        .L08051228
.L0805121B:
	cmpb      $0, 22(%eax)
	jne       .L08051210
.L08051221:
	jmp       .L080511EA
# ----------------------
.L08051223:
	.ascii	"\220\215t&\000"
.L08051228:
	addl      $16, %esp
	xorl      %edi, %edi
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08051233:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08051240:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      .LBSS0806136C, %edi
	movl      68(%esp), %esi
	movl      .LBSS08061370, %ebx
	movl      %edi, %edx
	subl      $1, %edx
	js        .L08051338
.L08051262:
	testb     $8, 23(%ebx)
	movl      %ebx, %ebp
	movl      .LBSS0806374C, %ecx
	jne       .L0805128F
.L08051270:
	jmp       .L080512A8
# ----------------------
.L08051272:
	.ascii	"\215\266\000\000\000\000"
.L08051278:
	subl      $1, %edx
	cmpl      $-1, %edx
	je        .L08051338
.L08051284:
	testb     $8, 51(%ebp)
	leal      28(%ebp), %eax
	movl      %eax, %ebp
	je        .L080512A8
.L0805128F:
	movzwl    22(%ebp), %eax
	andw      $1279, %ax
	cmpw      $1026, %ax
	jne       .L08051278
.L0805129D:
	testl     %ecx, %ecx
	jne       .L08051278
.L080512A1:
	movl      %ebp, %eax
	call      .L08050910
.L080512A8:
	testl     $1, %ebp
	movl      %ebp, %edx
	movl      $28, %ecx
	jne       .L080513C9
.L080512BB:
	testb     $2, %dl
	jne       .L080513E0
.L080512C4:
	movl      %ecx, %ebx
	xorl      %eax, %eax
	andl      $-4, %ebx
.L080512CB:
	movl      $0, (%edx,%eax)
	addl      $4, %eax
	cmpl      %ebx, %eax
	jb        .L080512CB
.L080512D9:
	addl      %eax, %edx
	testb     $2, %cl
	je        .L080512E8
.L080512E0:
	movw      $0, (%edx)
	addl      $2, %edx
.L080512E8:
	andl      $1, %ecx
	je        .L080512F0
.L080512ED:
	movb      $0, (%edx)
.L080512F0:
	movl      .LBSS0806374C, %ebx
	testl     %ebx, %ebx
	je        .L080512FE
.L080512FA:
	orb       $2, 23(%ebp)
.L080512FE:
	movl      .LBSS08061368, %eax
	movl      %ebp, .LBSS08061368
	orb       $8, 23(%ebp)
	cmpl      $1, %esi
	movl      %eax, 24(%ebp)
	movl      %ebp, 12(%ebp)
	jle       .L08051329
.L08051318:
	leal      (%esi,%esi,2), %eax
	sall      $2, %eax
	movl      %eax, (%esp)
	call      .L08051D70
.L08051326:
	movl      %eax, 12(%ebp)
.L08051329:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051333:
	.ascii	"\220\215t&\000"
.L08051338:
	imull     $28, %edi, %edi
	movl      %ebx, (%esp)
	leal      112(%edi), %eax
	movl      %eax, 4(%esp)
	call      .L08051DA0
.L0805134A:
	movl      %eax, %ecx
	leal      (%eax,%edi), %edx
	subl      %ebx, %ecx
	movl      %edx, 28(%esp)
	je        .L08051396
.L08051357:
	testl     %edi, %edi
	je        .L08051384
.L0805135B:
	addl      %edi, %ebx
	leal      (%esi), %esi
.L08051360:
	subl      $28, %edi
	subl      $28, %ebx
	cmpl      %ebx, -16(%edx)
	jne       .L08051371
.L0805136B:
	leal      (%ebx,%ecx), %ebp
	movl      %ebp, -16(%edx)
.L08051371:
	movl      -4(%edx), %ebp
	testl     %ebp, %ebp
	je        .L0805137D
.L08051378:
	addl      %ecx, %ebp
	movl      %ebp, -4(%edx)
.L0805137D:
	subl      $28, %edx
	testl     %edi, %edi
	jne       .L08051360
.L08051384:
	movl      .LBSS08061368, %edx
	testl     %edx, %edx
	je        .L08051396
.L0805138E:
	addl      %ecx, %edx
	movl      %edx, .LBSS08061368
.L08051396:
	movl      28(%esp), %ebp
	movl      $28, %ecx
	addl      $4, .LBSS0806136C
	movl      %eax, .LBSS08061370
	andb      $247, 107(%ebp)
	movl      %ebp, %edx
	andb      $247, 79(%ebp)
	andb      $247, 51(%ebp)
	andb      $247, 23(%ebp)
	testl     $1, %ebp
	je        .L080512BB
.L080513C9:
	leal      1(%ebp), %edx
	movb      $27, %cl
	testb     $2, %dl
	movb      $0, (%ebp)
	je        .L080512C4
.L080513DB:
	nop       
	leal      (%esi), %esi
.L080513E0:
	movw      $0, (%edx)
	subl      $2, %ecx
	addl      $2, %edx
	jmp       .L080512C4
.L080513F0:
	subl      $44, %esp
	movl      %ebx, 28(%esp)
	movl      48(%esp), %ebx
	movl      %esi, 32(%esp)
	movl      %edi, 36(%esp)
	movl      52(%esp), %edi
	movl      %ebp, 40(%esp)
	movl      56(%esp), %ebp
	call      fork
.L08051414:
	cmpl      $0, %eax
	movl      %eax, %esi
	jl        .L080516AB
.L0805141F:
	je        .L08051500
.L08051425:
	testl     %ebx, %ebx
	je        .L080514A0
.L08051429:
	cmpl      $2, %ebp
	leal      (%esi), %esi
	je        .L08051458
.L08051432:
	testb     $2, 23(%ebx)
	je        .L0805144F
.L08051438:
	cmpw      $0, 20(%ebx)
	jne       .L080515B0
.L08051443:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      setpgid
.L0805144F:
	cmpl      $1, %ebp
	je        .L080515D8
.L08051458:
	movzwl    20(%ebx), %eax
	movzwl    %ax, %edx
	addl      $1, %eax
	leal      (%edx,%edx,2), %ebp
	movl      12(%ebx), %edx
	testl     %edi, %edi
	movw      %ax, 20(%ebx)
	leal      (%edx,%ebp,4), %ebp
	movl      %esi, (%ebp)
	movl      $-1, 4(%ebp)
	movl      $.LBSS0806395C, 8(%ebp)
	jne       .L080514D0
.L08051484:
	movl      %esi, %eax
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
# ----------------------
.L0805149A:
	.ascii	"\215\266\000\000\000\000"
.L080514A0:
	movl      .LBSS08061374, %ecx
	testl     %ecx, %ecx
	je        .L08051645
.L080514AE:
	xorl      %edx, %edx
	xorl      %eax, %eax
	call      .L08050650
.L080514B7:
	testl     %eax, %eax
	jg        .L080514A0
.L080514BB:
	movl      .LBSS08061374, %eax
.L080514C0:
	addl      $1, %eax
	movl      %eax, .LBSS08061374
	jmp       .L08051484
# ----------------------
.L080514CA:
	.ascii	"\215\266\000\000\000\000"
.L080514D0:
	movl      .LBSS0806374C, %eax
	testl     %eax, %eax
	je        .L08051484
.L080514D9:
	movl      .LD080611A8, %eax
	movl      %eax, .LBSS08061378
	movl      %edi, %eax
	call      .L08050060
.L080514EA:
	movl      .LD080611A8, %eax
	movl      %eax, (%esp)
	call      .L08051DD0
.L080514F7:
	movl      %eax, 8(%ebp)
	jmp       .L08051484
# ----------------------
.L080514FC:
	.long	2520205
.L08051500:
	movl      .LBSS08063758, %edi
	leal      1(%edi), %eax
	movl      %eax, .LBSS08063758
	call      .L0804FDE0
.L08051513:
	call      .L08056420
.L08051518:
	cmpl      $2, %ebp
	movl      $0, .LBSS0806374C
	je        .L080515C9
.L0805152B:
	testb     $2, 23(%ebx)
	je        .L080515C0
.L08051535:
	testl     %edi, %edi
	jne       .L080515C0
.L0805153D:
	cmpw      $0, 20(%ebx)
	je        .L08051638
.L08051548:
	movl      12(%ebx), %eax
	movl      (%eax), %ebx
.L0805154D:
	movl      %ebx, 4(%esp)
	movl      $0, (%esp)
	call      setpgid
.L0805155D:
	testl     %ebp, %ebp
	je        .L08051620
.L08051565:
	movl      $20, (%esp)
	call      .L080562A0
.L08051571:
	movl      $22, (%esp)
	call      .L080562A0
.L0805157D:
	cmpb      $0, .LBSS08063967
	jne       .L080515F0
.L08051586:
	movl      .LBSS08061368, %ebx
	testl     %ebx, %ebx
	je        .L0805159E
.L08051590:
	movl      %ebx, %eax
	call      .L08050910
.L08051597:
	movl      24(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08051590
.L0805159E:
	movl      $0, .LBSS08061374
	jmp       .L08051484
# ----------------------
.L080515AD:
	.ascii	"\215v\000"
.L080515B0:
	movl      12(%ebx), %eax
	movl      (%eax), %eax
	jmp       .L08051443
# ----------------------
.L080515BA:
	.ascii	"\215\266\000\000\000\000"
.L080515C0:
	cmpl      $1, %ebp
	je        .L0805164C
.L080515C9:
	testl     %edi, %edi
	jne       .L08051586
.L080515CD:
	leal      (%esi), %esi
	jmp       .L0805157D
# ----------------------
.L080515D2:
	.ascii	"\215\266\000\000\000\000"
.L080515D8:
	movl      $1, %edx
	movl      %ebx, %eax
	movl      %esi, .LBSS08063750
	call      .L0804FE10
.L080515EA:
	jmp       .L08051458
# ----------------------
.L080515EF:
	.byte	144
.L080515F0:
	movl      $2, (%esp)
	call      .L080562A0
.L080515FC:
	movl      $3, (%esp)
	call      .L080562A0
.L08051608:
	movl      $15, (%esp)
	call      .L080562A0
.L08051614:
	jmp       .L08051586
# ----------------------
.L08051619:
	.ascii	"\215\264&\000\000\000\000"
.L08051620:
	movl      .LD0806119C, %eax
	movl      %ebx, %edx
	call      .L080508D0
.L0805162C:
	jmp       .L08051565
# ----------------------
.L08051631:
	.ascii	"\215\264&\000\000\000\000"
.L08051638:
	call      getpid
.L0805163D:
	movl      %eax, %ebx
	nop       
	jmp       .L0805154D
.L08051645:
	xorl      %eax, %eax
	jmp       .L080514C0
.L0805164C:
	movl      $2, (%esp)
	call      .L080564C0
.L08051658:
	movl      $3, (%esp)
	call      .L080564C0
.L08051664:
	cmpw      $0, 20(%ebx)
	jne       .L080515C9
.L0805166F:
	movl      $0, (%esp)
	call      close
.L0805167B:
	movl      $0, 4(%esp)
	movl      $.LC08059E26, (%esp)
	call      open
.L0805168F:
	testl     %eax, %eax
	je        .L080515C9
.L08051697:
	movl      $.LC08059E26, 4(%esp)
	movl      $.LC08059CE1, (%esp)
	call      .L0804B000
.L080516AB:
	testl     %ebx, %ebx
	je        .L080516B6
.L080516AF:
	movl      %ebx, %eax
	call      .L08050910
.L080516B6:
	movl      $.LC08059E1A, (%esp)
	call      .L0804B000
# ----------------------
.L080516C2:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L080516D0:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ebx
	cmpb      $0, 22(%ebx)
	jne       .L080516F2
.L080516DF:
	nop       
.L080516E0:
	movl      %ebx, %edx
	movl      $1, %eax
	call      .L08050650
.L080516EC:
	cmpb      $0, 22(%ebx)
	je        .L080516E0
.L080516F2:
	movzwl    20(%ebx), %eax
	movl      12(%ebx), %esi
	leal      -3(%eax,%eax,2), %eax
	leal      (%esi,%eax,4), %eax
	movl      4(%eax), %eax
	movl      %eax, %edx
	movzbl    %ah, %esi
	andl      $127, %edx
	je        .L0805174B
.L0805170D:
	cmpb      $127, %al
	je        .L08051748
.L08051711:
	cmpl      $2, %edx
	je        .L08051777
.L08051716:
	movzbl    23(%ebx), %eax
	leal      128(%edx), %esi
	testb     $2, %al
	je        .L08051753
.L08051724:
	movl      .LBSS0806375C, %edx
	movl      .LD0806119C, %eax
	call      .L080508D0
.L08051734:
	testb     $1, 23(%ebx)
	je        .L08051753
.L0805173A:
	movl      $2, (%esp)
	call      raise
.L08051746:
	jmp       .L08051753
.L08051748:
	subl      $-128, %esi
.L0805174B:
	movzbl    23(%ebx), %eax
.L0805174F:
	testb     $2, %al
	jne       .L08051724
.L08051753:
	cmpb      $2, 22(%ebx)
	je        .L08051768
.L08051759:
	addl      $20, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08051761:
	.ascii	"\215\264&\000\000\000\000"
.L08051768:
	movl      %ebx, %eax
	call      .L08050910
.L0805176F:
	addl      $20, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
.L08051777:
	movzbl    23(%ebx), %eax
	movl      $130, %esi
	orl       $1, %eax
	movb      %al, 23(%ebx)
	jmp       .L0805174F
# ----------------------
.L08051788:
	.long	649366928
	.long	0
.L08051790:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      68(%esp), %eax
	movl      (%eax), %eax
	cmpb      $102, (%eax)
	movl      $.LBSS0806395C, (%esp)
	setne     %al
	movzbl    %al, %eax
	movl      %eax, %edi
	call      .L080539E0
.L080517B4:
	movl      .LBSS08063978, %esi
	movl      .LD080611B4, %ebp
	movl      (%esi), %eax
	leal      (%esi), %esi
.L080517C8:
	movl      $1, %edx
	call      .L08050380
.L080517D2:
	cmpl      $1, %edi
	movl      %eax, %ebx
	je        .L080518D0
.L080517DD:
	movl      %ebp, 4(%esp)
	movl      12(%ebx), %eax
	movl      8(%eax), %eax
	movl      %eax, (%esp)
	call      .L08056C90
.L080517EF:
	movl      %ebp, %edx
	movl      %ebx, %eax
	call      .L080504F0
.L080517F8:
	addl      $1, .LBSS080616A8
	cmpb      $2, 22(%ebx)
	je        .L0805184D
.L08051805:
	movl      12(%ebx), %eax
	testl     %edi, %edi
	movb      $0, 22(%ebx)
	movl      (%eax), %ecx
	je        .L080518B0
.L08051816:
	movl      $18, 4(%esp)
	movl      %ecx, (%esp)
	call      killpg
.L08051826:
	movl      12(%ebx), %eax
	movzwl    20(%ebx), %edx
	jmp       .L08051838
# ----------------------
.L0805182F:
	.byte	144
.L08051830:
	addl      $12, %eax
	subl      $1, %edx
	je        .L0805184D
.L08051838:
	cmpb      $127, 4(%eax)
	jne       .L08051830
.L0805183E:
	movl      $-1, 4(%eax)
	addl      $12, %eax
	subl      $1, %edx
	jne       .L08051838
.L0805184D:
	xorl      %ecx, %ecx
	testl     %edi, %edi
	je        .L080518A0
.L08051853:
	movl      .LBSS080616A8, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L0805187C
.L08051866:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L0805187C
.L0805186F:
	movl      %ecx, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08051878:
	.long	472140939
.L0805187C:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L0805188F
.L08051882:
	addl      $4, %esi
	movl      (%esi), %eax
	testl     %eax, %eax
	jne       .L080517C8
.L0805188F:
	addl      $44, %esp
	movl      %ecx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051899:
	.ascii	"\215\264&\000\000\000\000"
.L080518A0:
	movl      %ebx, (%esp)
	call      .L080516D0
.L080518A8:
	movl      %eax, %ecx
	jmp       .L08051853
# ----------------------
.L080518AC:
	.long	2520205
.L080518B0:
	movl      .LD0806119C, %eax
	movl      %ecx, %edx
	movl      %ecx, 28(%esp)
	call      .L080508D0
.L080518C0:
	movl      28(%esp), %ecx
	jmp       .L08051816
# ----------------------
.L080518C9:
	.ascii	"\215\264&\000\000\000\000"
.L080518D0:
	movl      $1, %edx
	call      .L0804FE10
.L080518DA:
	movl      %ebx, %eax
	subl      .LBSS08061370, %eax
	movl      $.LC08059E30, 4(%esp)
	movl      %ebp, (%esp)
	sarl      $2, %eax
	imull     $-1227133513, %eax, %eax
	addl      $1, %eax
	movl      %eax, 8(%esp)
	call      .L08056C30
.L08051902:
	jmp       .L080517DD
# ----------------------
.L08051907:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08051910:
	subl      $28, %esp
	movl      .LBSS08063748, %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	jne       .L0805192F
.L0805191F:
	movl      .LBSS08061368, %edx
	testl     %edx, %edx
	je        .L0805192F
.L08051929:
	cmpb      $1, 22(%edx)
	je        .L08051938
.L0805192F:
	addl      $28, %esp
	ret       
# ----------------------
.L08051933:
	.ascii	"\220\215t&\000"
.L08051938:
	movl      .LD080611B0, %eax
	movl      $.LC08059E36, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C90
.L0805194D:
	movl      $1, %eax
	movl      $2, .LBSS08063748
	addl      $28, %esp
	ret       
.L08051960:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	leal      112(%esp), %ebp
	movl      %ebp, (%esp)
	call      .L08051F10
.L08051976:
	testb     $32, .LD08061224
	jne       .L08051A58
.L08051983:
	movl      .LD08061228, %eax
	addl      $9, %eax
.L0805198B:
	movl      %eax, 124(%esp)
	movl      $.LBSS080613A0, %ebx
	leal      124(%esp), %esi
	leal      16(%esp), %edi
	leal      (%esi), %esi
.L080519A0:
	movl      $.LBSS0806395C, 4(%esp)
	movl      %esi, (%esp)
	call      .L0804C870
.L080519B0:
	testl     %eax, %eax
	je        .L08051A32
.L080519B4:
	cmpb      $0, (%eax)
	je        .L08051A23
.L080519B9:
	movl      %eax, %edx
	nop       
	leal      (%esi), %esi
.L080519C0:
	addl      $1, %edx
	cmpb      $0, (%edx)
	jne       .L080519C0
.L080519C8:
	movb      $0, -1(%edx)
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	call      __xstat64
.L080519E0:
	testl     %eax, %eax
	js        .L08051A50
.L080519E4:
	movl      .LBSS08061380, %edx
	movl      88(%esp), %eax
	testl     %edx, %edx
	jne       .L08051A21
.L080519F2:
	cmpl      (%ebx), %eax
	je        .L08051A21
.L080519F6:
	movl      .LBSS080616D4, %eax
	movl      $.LC0805A03D, %edx
	movl      $.LC0805A362, 4(%esp)
	movl      $.LD080611B8, (%esp)
	testl     %eax, %eax
	cmove     %edx, %eax
	movl      %eax, 8(%esp)
	call      .L08056C30
.L08051A1D:
	movl      88(%esp), %eax
.L08051A21:
	movl      %eax, (%ebx)
.L08051A23:
	addl      $4, %ebx
	cmpl      $.LBSS080613C8, %ebx
	jb        .L080519A0
.L08051A32:
	movl      %ebp, (%esp)
	movl      $0, .LBSS08061380
	call      .L08051F50
.L08051A44:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051A4F:
	.byte	144
.L08051A50:
	movl      $0, (%ebx)
	jmp       .L08051A23
.L08051A58:
	movl      .LD08061218, %eax
	addl      $5, %eax
	jmp       .L0805198B
# ----------------------
.L08051A65:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L08051A70:
	addl      $1, .LBSS08061380
	ret       
# ----------------------
.L08051A78:
	.long	-1869574000
	.long	-1869574000
.L08051A80:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	testl     %eax, %eax
	movl      %eax, 28(%esp)
	setne     %al
	xorl      %edi, %edi
	movl      %eax, %esi
	xorl      %ebp, %ebp
	leal      36(%esp), %ebx
	leal      (%esi), %esi
.L08051AA0:
	movl      %ebx, (%esp)
	call      .L08051F10
.L08051AA8:
	movl      .LBSS0806374C, %ecx
	testl     %ecx, %ecx
	jne       .L08051B60
.L08051AB6:
	movl      %esi, %eax
	testb     %al, %al
	jne       .L08051B00
.L08051ABC:
	xorl      %eax, %eax
	movl      %eax, (%esp)
	call      .L08055A60
.L08051AC6:
	cmpl      $.LBSS0806399C, %eax
	je        .L08051B22
.L08051ACD:
	cmpb      $0, .LBSS08063969
	je        .L08051B80
.L08051ADA:
	movl      %ebx, (%esp)
	call      .L08051F50
.L08051AE2:
	movl      .LBSS080616C8, %eax
	testl     %eax, %eax
	je        .L08051AA0
.L08051AEB:
	movl      $0, .LBSS080616C8
.L08051AF5:
	addl      $60, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051AFF:
	.byte	144
.L08051B00:
	cmpb      $0, .LBSS08063967
	je        .L08051ABC
.L08051B09:
	call      .L08051960
.L08051B0E:
	movl      $1, %eax
	movl      %eax, (%esp)
	call      .L08055A60
.L08051B1B:
	cmpl      $.LBSS0806399C, %eax
	jne       .L08051ACD
.L08051B22:
	cmpl      $49, %edi
	jg        .L08051AF5
.L08051B27:
	movl      28(%esp), %edx
	testl     %edx, %edx
	je        .L08051AF5
.L08051B2F:
	call      .L08051910
.L08051B34:
	testl     %eax, %eax
	jne       .L08051B56
.L08051B38:
	cmpb      $0, .LBSS08063966
	je        .L08051BAF
.L08051B41:
	movl      .LD080611B0, %eax
	movl      $.LC0805A04B, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C90
.L08051B56:
	addl      $1, %edi
	jmp       .L08051ADA
# ----------------------
.L08051B5E:
	.value	36966
.L08051B60:
	movl      .LD080611B0, %eax
	movl      $8, 4(%esp)
	movl      %eax, (%esp)
	call      .L08051010
.L08051B75:
	jmp       .L08051AB6
# ----------------------
.L08051B7A:
	.ascii	"\215\266\000\000\000\000"
.L08051B80:
	xorl      %edx, %edx
	cmpl      $2, .LBSS08063748
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	sete      %dl
	xorl      %edi, %edi
	movl      %edx, .LBSS08063748
	call      .L0804B170
.L08051BA4:
	movl      .LBSS080616C4, %ebp
	jmp       .L08051ADA
.L08051BAF:
	cmpb      $0, .LBSS08063967
	je        .L08051AF5
.L08051BBC:
	movl      .LD080611B0, %eax
	movl      $10, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C60
.L08051BD1:
	jmp       .L08051AF5
# ----------------------
.L08051BD6:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L08051BE0:
	subl      $28, %esp
	movl      %eax, (%esp)
	call      .L080555D0
.L08051BEB:
	movl      $3, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804FB70
.L08051BFB:
	testl     %eax, %eax
	js        .L08051C0E
.L08051BFF:
	xorl      %eax, %eax
	call      .L08051A80
.L08051C06:
	addl      $28, %esp
	jmp       .L0804FD00
.L08051C0E:
	addl      $28, %esp
	ret       
# ----------------------
.L08051C12:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08051C20:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804FB70
.L08051C37:
	xorl      %eax, %eax
	call      .L08051A80
.L08051C3E:
	addl      $28, %esp
	jmp       .L0804FD00
# ----------------------
.L08051C46:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L08051C50:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $124, %esp
	cmpl      $1, 144(%esp)
	jle       .L08051D10
.L08051C65:
	movl      148(%esp), %eax
	leal      108(%esp), %edi
	leal      20(%esp), %ebp
	movl      4(%eax), %esi
	movl      .LD08061238, %eax
	movl      $47, 4(%esp)
	movl      %esi, (%esp)
	addl      $5, %eax
	movl      %eax, 108(%esp)
	call      strchr
.L08051C93:
	testl     %eax, %eax
	je        .L08051CD0
.L08051C97:
	movl      %esi, (%esp)
	movl      $1, 4(%esp)
	call      .L0804FB70
.L08051CA7:
	xorl      %eax, %eax
	movl      %esi, .LBSS080616CC
	call      .L08051A80
.L08051CB4:
	movl      %eax, %ebx
	call      .L0804FD00
.L08051CBB:
	addl      $124, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08051CC5:
	.ascii	"\215v\000"
.L08051CC8:
	movl      %ebx, (%esp)
	call      .L08051EC0
.L08051CD0:
	movl      %esi, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804C870
.L08051CDC:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L08051D1C
.L08051CE2:
	movl      %ebp, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08051CF6:
	testl     %eax, %eax
	jne       .L08051CC8
.L08051CFA:
	movl      36(%esp), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       .L08051CC8
.L08051D0A:
	movl      %ebx, %esi
	jmp       .L08051C97
# ----------------------
.L08051D0E:
	.value	36966
.L08051D10:
	addl      $124, %esp
	xorl      %ebx, %ebx
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08051D1C:
	movl      %esi, 4(%esp)
	movl      $.LC0805A088, (%esp)
	call      .L0804B000
# ----------------------
.L08051D2C:
	.long	2520205
.L08051D30:
	subl      $28, %esp
	call      .L08051910
.L08051D38:
	testl     %eax, %eax
	je        .L08051D42
.L08051D3C:
	xorl      %eax, %eax
	addl      $28, %esp
	ret       
.L08051D42:
	cmpl      $1, 32(%esp)
	jle       .L08051D5D
.L08051D49:
	movl      36(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, (%esp)
	call      .L08052CC0
.L08051D58:
	movl      %eax, .LBSS080616C4
.L08051D5D:
	movl      $4, (%esp)
	call      .L0804AF70
# ----------------------
.L08051D69:
	.ascii	"\220\220\220\220\220\220\220"
.L08051D70:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      malloc
.L08051D7F:
	testl     %eax, %eax
	je        .L08051D87
.L08051D83:
	addl      $28, %esp
	ret       
.L08051D87:
	movl      $.LC0805A096, (%esp)
	call      .L0804B000
# ----------------------
.L08051D93:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08051DA0:
	subl      $28, %esp
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      realloc
.L08051DB7:
	testl     %eax, %eax
	je        .L08051DBF
.L08051DBB:
	addl      $28, %esp
	ret       
.L08051DBF:
	movl      $.LC0805A096, (%esp)
	call      .L0804B000
# ----------------------
.L08051DCB:
	.ascii	"\220\215t&\000"
.L08051DD0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      __strdup
.L08051DDF:
	testl     %eax, %eax
	je        .L08051DE7
.L08051DE3:
	addl      $28, %esp
	ret       
.L08051DE7:
	movl      $.LC0805A096, (%esp)
	call      .L0804B000
# ----------------------
.L08051DF3:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08051E00:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      .LD080611A4, %edx
	movl      32(%esp), %ebx
	addl      $7, %ebx
	andl      $-8, %ebx
	cmpl      %edx, %ebx
	jbe       .L08051E89
.L08051E19:
	cmpl      $503, %ebx
	movl      $508, %eax
	movl      $504, %esi
	jbe       .L08051E34
.L08051E2B:
	leal      4(%ebx), %eax
	cmpl      %eax, %ebx
	ja        .L08051EAF
.L08051E32:
	movl      %ebx, %esi
.L08051E34:
	addl      $1, .LBSS080616A8
	movl      %eax, (%esp)
	call      .L08051D70
.L08051E43:
	movl      .LD080611AC, %edx
	movl      %edx, (%eax)
	leal      4(%eax), %edx
	movl      %edx, .LD080611A8
	leal      4(%eax,%esi), %edx
	movl      %esi, .LD080611A4
	movl      %edx, .LD080611A0
	movl      %eax, .LD080611AC
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08051E83
.L08051E7A:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08051EA8
.L08051E83:
	movl      .LD080611A4, %edx
.L08051E89:
	movl      .LD080611A8, %eax
	subl      %ebx, %edx
	movl      %edx, .LD080611A4
	leal      (%eax,%ebx), %ecx
	movl      %ecx, .LD080611A8
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08051EA5:
	.ascii	"\215v\000"
.L08051EA8:
	call      .L0804AFA0
# ----------------------
.L08051EAD:
	.value	54507
.L08051EAF:
	movl      $.LC0805A096, (%esp)
	call      .L0804B000
# ----------------------
.L08051EBB:
	.ascii	"\220\215t&\000"
.L08051EC0:
	movl      4(%esp), %edx
	movl      .LD080611A8, %eax
	movl      %edx, .LD080611A8
	subl      %edx, %eax
	addl      %eax, .LD080611A4
	ret       
# ----------------------
.L08051ED8:
	.long	649366928
	.long	0
.L08051EE0:
	movl      4(%esp), %eax
	movl      .LD080611AC, %edx
	movl      %edx, (%eax)
	movl      .LD080611A8, %edx
	movl      %edx, 4(%eax)
	movl      .LD080611A4, %edx
	movl      %edx, 8(%eax)
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       .L08051E00
# ----------------------
.L08051F0B:
	.ascii	"\220\215t&\000"
.L08051F10:
	subl      $28, %esp
	movl      .LD080611AC, %edx
	xorl      %eax, %eax
	leal      4(%edx), %ecx
	cmpl      %ecx, .LD080611A8
	je        .L08051F40
.L08051F26:
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      .L08051EE0
.L08051F36:
	addl      $28, %esp
	ret       
# ----------------------
.L08051F3A:
	.ascii	"\215\266\000\000\000\000"
.L08051F40:
	xorl      %eax, %eax
	cmpl      $.LBSS08063760, %edx
	setne     %al
	jmp       .L08051F26
# ----------------------
.L08051F4D:
	.ascii	"\215v\000"
.L08051F50:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	addl      $1, .LBSS080616A8
	movl      .LD080611AC, %eax
	cmpl      %eax, (%ebx)
	je        .L08051F81
.L08051F68:
	movl      (%eax), %edx
	movl      %eax, (%esp)
	movl      %edx, .LD080611AC
	call      free
.L08051F78:
	movl      .LD080611AC, %eax
	cmpl      %eax, (%ebx)
	jne       .L08051F68
.L08051F81:
	movl      4(%ebx), %edx
	movl      8(%ebx), %eax
	movl      %edx, .LD080611A8
	movl      %eax, .LD080611A4
	addl      %edx, %eax
	movl      %eax, .LD080611A0
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08051FB3
.L08051FAA:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08051FB8
.L08051FB3:
	addl      $24, %esp
	popl      %ebx
	ret       
.L08051FB8:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L08051FC1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08051FD0:
	subl      $28, %esp
	movl      %esi, 20(%esp)
	movl      .LD080611A4, %esi
	movl      %ebx, 16(%esp)
	movl      %edi, 24(%esp)
	leal      (%esi,%esi), %ebx
	cmpl      %ebx, %esi
	ja        .L080520B9
.L08051FF0:
	leal      128(%ebx), %eax
	cmpl      $127, %ebx
	movl      .LD080611A8, %edi
	cmovbe    %eax, %ebx
	movl      .LD080611AC, %eax
	leal      4(%eax), %edx
	cmpl      %edx, %edi
	je        .L08052048
.L0805200E:
	movl      %ebx, (%esp)
	call      .L08051E00
.L08052016:
	movl      %esi, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy
.L08052026:
	addl      %ebx, .LD080611A4
	movl      %eax, .LD080611A8
.L08052031:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L08052041:
	.ascii	"\215\264&\000\000\000\000"
.L08052048:
	cmpl      $.LBSS08063760, %eax
	je        .L0805200E
.L0805204F:
	addl      $1, .LBSS080616A8
	movl      .LD080611AC, %eax
	leal      4(%ebx), %edx
	movl      (%eax), %esi
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      .L08051DA0
.L0805206C:
	movl      %esi, (%eax)
	leal      4(%eax), %edx
	movl      %eax, .LD080611AC
	leal      4(%eax,%ebx), %eax
	movl      %edx, .LD080611A8
	movl      %ebx, .LD080611A4
	movl      %eax, .LD080611A0
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08052031
.L0805209C:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L08052031
.L080520A5:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	jmp       .L0804AFA0
.L080520B9:
	movl      $.LC0805A096, (%esp)
	call      .L0804B000
# ----------------------
.L080520C5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L080520D0:
	pushl     %ebx
	subl      $8, %esp
	movl      .LD080611A4, %ebx
	call      .L08051FD0
.L080520DF:
	movl      .LD080611A8, %eax
	addl      $8, %esp
	addl      %ebx, %eax
	popl      %ebx
	ret       
# ----------------------
.L080520EB:
	.ascii	"\220\215t&\000"
.L080520F0:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      .LD080611A8, %eax
	movl      20(%esp), %ebx
	movl      .LD080611A4, %edx
	movl      16(%esp), %esi
	subl      %eax, %ebx
	subl      %ebx, %edx
	cmpl      %edx, %esi
	jbe       .L08052126
.L08052110:
	call      .L08051FD0
.L08052115:
	movl      .LD080611A4, %edx
	subl      %ebx, %edx
	cmpl      %esi, %edx
	jb        .L08052110
.L08052121:
	movl      .LD080611A8, %eax
.L08052126:
	addl      $4, %esp
	addl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0805212E:
	.value	36966
.L08052130:
	subl      $28, %esp
	movl      %ebx, 20(%esp)
	movl      40(%esp), %eax
	movl      36(%esp), %ebx
	movl      %esi, 24(%esp)
	movl      32(%esp), %esi
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      .L080520F0
.L08052153:
	movl      %ebx, 40(%esp)
	movl      20(%esp), %ebx
	movl      %esi, 36(%esp)
	movl      24(%esp), %esi
	movl      %eax, 32(%esp)
	addl      $28, %esp
	jmp       mempcpy
# ----------------------
.L0805216F:
	.byte	144
.L08052170:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      %ebx, (%esp)
	call      strlen
.L08052180:
	movl      36(%esp), %edx
	movl      %ebx, (%esp)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	call      .L08052130
.L08052194:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08052199:
	.ascii	"\220\220\220\220\220\220\220"
.L080521A0:
	pushl     %ebp
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $60, %esp
.L080521AB:
	movl      $.LC0805A0A3, (%esp)
	call      .L080539E0
.L080521B7:
	testl     %eax, %eax
	je        .L080521D9
.L080521BB:
	cmpl      $112, %eax
	je        .L08052390
.L080521C4:
	movl      $.LC0805A0A3, (%esp)
	movl      $1, %edi
	call      .L080539E0
.L080521D5:
	testl     %eax, %eax
	jne       .L080521BB
.L080521D9:
	testl     %ebx, %ebx
	je        .L080521F1
.L080521DD:
	movl      $0, (%esp)
	call      isatty
.L080521E9:
	testl     %eax, %eax
	jne       .L08052430
.L080521F1:
	movl      .LBSS08063978, %ebx
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L080524A3
.L08052201:
	movl      .LD080611A8, %esi
	movl      %ebx, 28(%esp)
	movl      %edi, %ebx
	movl      %esi, %eax
.L0805220F:
	movl      %esi, %ebp
	subl      %eax, %ebp
	leal      -1(%ebp), %edi
.L08052216:
	leal      47(%esp), %eax
	movl      $1, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $0, (%esp)
	call      read
.L08052232:
	testl     %eax, %eax
	je        .L08052252
.L08052236:
	cmpl      $1, %eax
	je        .L080523A0
.L0805223F:
	movl      .LBSS08063754, %eax
	cmpl      $4, (%eax)
	jne       .L08052252
.L08052249:
	movl      .LBSS08063A40, %eax
	testl     %eax, %eax
	je        .L08052216
.L08052252:
	movl      28(%esp), %ebx
	movl      $1, %edi
.L0805225B:
	movl      %esi, %eax
	subl      .LD080611A8, %eax
	movl      $0, 8(%esp)
	movl      %ebp, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804E180
.L08052277:
	cmpl      %esi, .LD080611A0
	je        .L08052458
.L08052283:
	movb      $0, (%esi)
.L08052286:
	movl      .LD080611A8, %ebp
	addl      $1, %esi
	subl      %ebp, %esi
	movl      %esi, (%esp)
	call      .L08051E00
.L08052299:
	movl      %ebp, (%esp)
	movl      %eax, 28(%esp)
	call      .L08052DE0
.L080522A5:
	movl      %eax, %ebp
	leal      36(%esp), %eax
	movl      %eax, 40(%esp)
	movl      %eax, 4(%esp)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804E200
.L080522BF:
	movl      40(%esp), %eax
	movl      $0, (%eax)
	call      .L0804E430
.L080522CE:
	movl      36(%esp), %esi
	testl     %esi, %esi
	jne       .L0805231C
.L080522D6:
	jmp       .L08052362
# ----------------------
.L080522DB:
	.ascii	"\220\215t&\000"
.L080522E0:
	movl      $0, 4(%esp)
	movl      4(%esi), %eax
	movl      %eax, (%esp)
	call      .L0804E4B0
.L080522F3:
	movl      $0, 8(%esp)
	movl      4(%esi), %eax
	movl      %eax, 4(%esp)
	movl      (%ebx), %eax
	movl      %eax, (%esp)
	call      .L08058810
.L0805230C:
	movl      4(%ebx), %eax
	movl      (%esi), %esi
	testl     %eax, %eax
	je        .L08052358
.L08052315:
	addl      $4, %ebx
	testl     %esi, %esi
	je        .L08052368
.L0805231C:
	movl      4(%ebx), %edx
	testl     %edx, %edx
	jne       .L080522E0
.L08052323:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L080522E0
.L08052329:
	subl      28(%esp), %ebp
	addl      4(%esi), %ebp
	movl      $0, 4(%esp)
	movl      %ebp, (%esp)
	call      .L0804E4B0
.L08052340:
	movl      $0, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      (%ebx), %eax
	movl      %eax, (%esp)
	call      .L08058810
.L08052356:
	nop       
.L08052358:
	addl      $60, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052362:
	movl      (%ebx), %eax
	leal      (%esi), %esi
.L08052368:
	addl      $4, %ebx
	movl      $0, 8(%esp)
	movl      $.LBSS0806395C, 4(%esp)
	movl      %eax, (%esp)
	call      .L08058810
.L08052383:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L08052368
.L08052389:
	jmp       .L08052358
# ----------------------
.L0805238B:
	.ascii	"\220\215t&\000"
.L08052390:
	movl      .LBSS08063980, %ebx
	jmp       .L080521AB
# ----------------------
.L0805239B:
	.ascii	"\220\215t&\000"
.L080523A0:
	movzbl    47(%esp), %eax
	testb     %al, %al
	je        .L08052216
.L080523AD:
	cmpl      %ebp, %edi
	jge       .L08052448
.L080523B5:
	testl     %ebx, %ebx
	jne       .L080523C6
.L080523B9:
	cmpb      $92, %al
	nop       
	leal      (%esi), %esi
	je        .L0805248B
.L080523C6:
	cmpb      $10, %al
	je        .L08052498
.L080523CE:
	movl      .LD080611A0, %edx
	movsbl    %al, %eax
	subl      %esi, %edx
	cmpl      $1, %edx
	jbe       .L0805246F
.L080523E2:
	movl      %eax, 4(%esp)
	movl      $.LC0805A358, (%esp)
	call      strchr
.L080523F2:
	testl     %eax, %eax
	je        .L080523FC
.L080523F6:
	movb      $129, (%esi)
	addl      $1, %esi
.L080523FC:
	movzbl    47(%esp), %eax
	movb      %al, (%esi)
	addl      $1, %esi
	cmpl      %ebp, %edi
	jl        .L08052216
.L0805240E:
	movl      $0, 8(%esp)
	movl      %edi, 4(%esp)
	movl      %ebp, (%esp)
	call      .L0804E180
.L08052422:
	movl      .LD080611A8, %eax
	jmp       .L0805220F
# ----------------------
.L0805242C:
	.long	2520205
.L08052430:
	movl      .LD080611B0, %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C90
.L08052441:
	jmp       .L080521F1
# ----------------------
.L08052446:
	.value	36966
.L08052448:
	cmpb      $10, %al
	jne       .L080523CE
.L0805244C:
	leal      (%esi), %esi
	jmp       .L0805240E
# ----------------------
.L08052452:
	.ascii	"\215\266\000\000\000\000"
.L08052458:
	nop       
	leal      (%esi), %esi
	call      .L080520D0
.L08052465:
	movl      %eax, %esi
	movb      $0, (%eax)
	jmp       .L08052286
.L0805246F:
	movl      %esi, 4(%esp)
	movl      $2, (%esp)
	call      .L080520F0
.L0805247F:
	movl      %eax, %esi
	movsbl    47(%esp), %eax
	jmp       .L080523E2
.L0805248B:
	movl      %esi, %edi
	subl      .LD080611A8, %edi
	jmp       .L08052216
.L08052498:
	movl      28(%esp), %ebx
	xorl      %edi, %edi
	jmp       .L0805225B
.L080524A3:
	movl      $.LC0805A0A7, (%esp)
	call      .L0804B000
# ----------------------
.L080524AF:
	.byte	144
.L080524B0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $108, %esp
	movl      %gs:20, %eax
	movl      %eax, 92(%esp)
	xorl      %eax, %eax
	jmp       .L080524CD
# ----------------------
.L080524C7:
	.byte	144
.L080524C8:
	movl      $1, %ebx
.L080524CD:
	movl      $.LC0805AC68, (%esp)
	call      .L080539E0
.L080524D9:
	testl     %eax, %eax
	jne       .L080524C8
.L080524DD:
	addl      $1, .LBSS080616A8
	movl      $0, (%esp)
	call      umask
.L080524F0:
	movl      %eax, %edi
	movl      %eax, (%esp)
	call      umask
.L080524FA:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08052518
.L0805250B:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08052823
.L08052518:
	movl      .LBSS08063978, %eax
	movl      (%eax), %eax
	testl     %eax, %eax
	movl      %eax, 60(%esp)
	je        .L0805283B
.L0805252B:
	call      __ctype_b_loc
.L08052530:
	movl      60(%esp), %ecx
	movzbl    (%ecx), %esi
	movl      (%eax), %eax
	movl      %esi, %ecx
	movzbl    %cl, %edx
	testb     $8, 1(%eax,%edx,2)
	jne       .L0805265B
.L08052549:
	notl      %edi
	movl      60(%esp), %ebx
	xorl      %ebp, %ebp
	movl      %edi, %edx
	movl      %edi, %ecx
	sarl      $3, %edx
	movl      %edx, 48(%esp)
	movl      %edi, %edx
	sarl      $6, %ecx
	andl      $73, %edx
	movl      %edi, 40(%esp)
	movl      %ecx, 44(%esp)
	movl      %edi, 36(%esp)
	movl      %edx, 52(%esp)
	leal      (%esi), %esi
.L08052578:
	movl      %esi, %edx
	testb     %dl, %dl
	je        .L080527AE
.L08052582:
	movl      %ebx, %eax
	movl      %esi, %ebx
	movl      %eax, %esi
	jmp       .L080525A2
# ----------------------
.L0805258A:
	.ascii	"\215\266\000\000\000\000"
.L08052590:
	cmpb      $97, %bl
	movl      $73, %ecx
	cmove     %ecx, %ebp
.L0805259B:
	movzbl    (%esi), %ebx
	testb     %bl, %bl
	je        .L080525E8
.L080525A2:
	movsbl    %bl, %edi
	movl      %edi, 4(%esp)
	movl      $.LC0805A0BB, (%esp)
	call      strchr
.L080525B5:
	testl     %eax, %eax
	je        .L080527C0
.L080525BD:
	addl      $1, %esi
	cmpb      $103, %bl
	je        .L080526A8
.L080525C9:
	jle       .L08052590
.L080525CB:
	cmpb      $111, %bl
	nop       
	je        .L080526B0
.L080525D6:
	movl      %ebp, %eax
	orl       $64, %eax
	cmpb      $117, %bl
	movzbl    (%esi), %ebx
	cmove     %eax, %ebp
	testb     %bl, %bl
	jne       .L080525A2
.L080525E8:
	movl      %esi, %eax
	xorl      %edi, %edi
	movl      %ebx, %esi
	movl      %eax, %ebx
.L080525F0:
	testl     %ebp, %ebp
	movl      $73, %eax
	movl      %edi, 4(%esp)
	cmove     %eax, %ebp
	movl      $.LC0805A0C0, (%esp)
	call      strchr
.L0805260A:
	testl     %eax, %eax
	je        .L080527A3
.L08052612:
	addl      $1, %ebx
	movl      $0, 32(%esp)
	movl      %ebx, %edi
	nop       
.L08052620:
	movzbl    (%edi), %ebx
	testb     %bl, %bl
	je        .L080526C8
.L0805262B:
	movsbl    %bl, %eax
	movl      %eax, 4(%esp)
	movl      $.LC0805A0C4, (%esp)
	call      strchr
.L0805263E:
	testl     %eax, %eax
	je        .L080527D0
.L08052646:
	subl      $88, %ebx
	addl      $1, %edi
	cmpb      $32, %bl
	ja        .L08052620
.L08052651:
	movzbl    %bl, %ebx
	jmp       *.LC0805A1E0(,%ebx,4)
.L0805265B:
	movl      60(%esp), %eax
	xorl      %edx, %edx
	leal      (%esi), %esi
.L08052668:
	leal      -48(%ecx), %ebx
	cmpb      $7, %bl
	ja        .L080528E0
.L08052674:
	movsbl    %cl, %ecx
	addl      $1, %eax
	leal      -48(%ecx,%edx,8), %edx
	movzbl    (%eax), %ecx
	testb     %cl, %cl
	jne       .L08052668
.L08052685:
	movl      %edx, (%esp)
	call      umask
.L0805268D:
	xorl      %eax, %eax
	movl      92(%esp), %edx
	xorl      %gs:20, %edx
	jne       .L080528DB
.L080526A0:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080526A8:
	orl       $8, %ebp
	jmp       .L0805259B
.L080526B0:
	orl       $1, %ebp
	jmp       .L0805259B
.L080526B8:
	movzbl    (%edi), %ebx
	orl       $2, 32(%esp)
	testb     %bl, %bl
	jne       .L0805262B
.L080526C8:
	movl      %edi, %edx
	movl      %ebx, %edi
	movl      %edx, %ebx
	xorl      %edx, %edx
	movl      %ebx, 56(%esp)
.L080526D4:
	movl      32(%esp), %eax
	movl      %esi, %ecx
	andl      $7, %eax
	imull     %ebp, %eax
	cmpb      $45, %cl
	je        .L08052818
.L080526E9:
	cmpb      $61, %cl
	je        .L08052800
.L080526F2:
	orl       36(%esp), %eax
	cmpb      $43, %cl
	cmovne    36(%esp), %eax
	movl      %eax, 36(%esp)
.L08052702:
	movl      %edi, %eax
	cmpb      $44, %al
	je        .L080527E8
.L0805270C:
	movl      %edi, %eax
	movsbl    %al, %edi
	movl      %edi, 4(%esp)
	movl      $.LC0805A0C0, (%esp)
	movb      %dl, 28(%esp)
	call      strchr
.L08052725:
	movzbl    28(%esp), %edx
	testl     %eax, %eax
	je        .L080527A6
.L0805272E:
	movl      %edx, %esi
	jmp       .L08052578
# ----------------------
.L08052735:
	.ascii	"\215v\000"
.L08052738:
	movl      44(%esp), %edx
	orl       %edx, 32(%esp)
	jmp       .L08052620
# ----------------------
.L08052745:
	.ascii	"\215v\000"
.L08052748:
	orl       $1, 32(%esp)
	jmp       .L08052620
# ----------------------
.L08052752:
	.ascii	"\215\266\000\000\000\000"
.L08052758:
	orl       $4, 32(%esp)
	jmp       .L08052620
# ----------------------
.L08052762:
	.ascii	"\215\266\000\000\000\000"
.L08052768:
	movl      40(%esp), %edx
	orl       %edx, 32(%esp)
	jmp       .L08052620
# ----------------------
.L08052775:
	.ascii	"\215v\000"
.L08052778:
	movl      48(%esp), %ecx
	orl       %ecx, 32(%esp)
	jmp       .L08052620
# ----------------------
.L08052785:
	.ascii	"\215v\000"
.L08052788:
	movl      32(%esp), %eax
	movl      52(%esp), %ebx
	orl       $1, %eax
	testl     %ebx, %ebx
	cmove     32(%esp), %eax
	movl      %eax, 32(%esp)
	jmp       .L08052620
.L080527A3:
	movzbl    (%ebx), %edx
.L080527A6:
	testb     %dl, %dl
	jne       .L080528C7
.L080527AE:
	movl      36(%esp), %edx
	notl      %edx
	jmp       .L08052685
# ----------------------
.L080527B9:
	.ascii	"\215\264&\000\000\000\000"
.L080527C0:
	movl      %esi, %eax
	movl      %ebx, %esi
	movl      %eax, %ebx
	jmp       .L080525F0
# ----------------------
.L080527CB:
	.ascii	"\220\215t&\000"
.L080527D0:
	movl      %edi, %edx
	movl      %ebx, %edi
	movl      %edx, %ebx
	movl      %edi, %edx
	movl      %ebx, 56(%esp)
	jmp       .L080526D4
# ----------------------
.L080527E1:
	.ascii	"\215\264&\000\000\000\000"
.L080527E8:
	movl      56(%esp), %ecx
	addl      $1, %ebx
	xorl      %ebp, %ebp
	movzbl    1(%ecx), %edx
	movl      %edx, %esi
	jmp       .L08052578
# ----------------------
.L080527FC:
	.long	2520205
.L08052800:
	leal      0(,%ebp,8), %ecx
	subl      %ebp, %ecx
	notl      %ecx
	andl      %ecx, 36(%esp)
	orl       %eax, 36(%esp)
	jmp       .L08052702
.L08052818:
	notl      %eax
	andl      %eax, 36(%esp)
	jmp       .L08052702
.L08052823:
	call      .L0804AFA0
# ----------------------
.L08052828:
	.ascii	"\241x9\006\010\213\000\205\300\211D$<\017\205\360\374\377\377"
.L0805283B:
	testl     %ebx, %ebx
	je        .L080528B2
.L0805283F:
	movl      %edi, %eax
	movl      $.LC0805A0BD, %ebp
	notl      %eax
	xorl      %esi, %esi
	movl      $117, %edx
	leal      74(%esp), %ecx
.L08052853:
	movb      %dl, (%ecx)
	leal      8(%esi), %edi
	xorl      %edx, %edx
	movb      $61, 1(%ecx)
	addl      $2, %ecx
.L08052861:
	movl      %edi, %ebx
	subl      %edx, %ebx
	btl       %ebx, %eax
	jae       .L08052876
.L0805286A:
	movzbl    .LC0805A0B1(%edx), %ebx
	movb      %bl, (%ecx)
	addl      $1, %ecx
.L08052876:
	addl      $1, %edx
	cmpl      $3, %edx
	jne       .L08052861
.L0805287E:
	subl      $3, %esi
	movb      $44, (%ecx)
	addl      $1, %ecx
	cmpl      $-9, %esi
	je        .L08052895
.L0805288C:
	movzbl    (%ebp), %edx
	addl      $1, %ebp
	jmp       .L08052853
.L08052895:
	movb      $0, -1(%ecx)
	leal      74(%esp), %edx
	movl      %edx, 4(%esp)
	movl      $.LC0805A943, (%esp)
	call      .L08056C00
.L080528AD:
	jmp       .L0805268D
.L080528B2:
	movl      %edi, 4(%esp)
	movl      $.LC0805A0B5, (%esp)
	call      .L08056C00
.L080528C2:
	jmp       .L0805268D
.L080528C7:
	movl      60(%esp), %ecx
	movl      $.LC0805A0CD, (%esp)
	movl      %ecx, 4(%esp)
	call      .L0804B000
.L080528DB:
	call      __stack_chk_fail
.L080528E0:
	movl      60(%esp), %edx
	movl      $.LC0805A345, (%esp)
	movl      %edx, 4(%esp)
	call      .L0804B000
# ----------------------
.L080528F4:
	.long	46733
	.long	-1081278464
	.long	0
.L08052900:
	pushl     %ebp
	movl      $3, %ebp
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	movl      $102, %esi
	pushl     %ebx
	movl      $2, %ebx
	subl      $44, %esp
.L08052918:
	movl      $.LC0805A0DE, (%esp)
	call      .L080539E0
.L08052924:
	testl     %eax, %eax
	je        .L08052953
.L08052928:
	cmpl      $83, %eax
	je        .L08052A50
.L08052931:
	cmpl      $97, %eax
	je        .L08052A40
.L0805293A:
	cmpl      $72, %eax
	cmovne    %eax, %esi
	cmove     %ebx, %ebp
	movl      $.LC0805A0DE, (%esp)
	call      .L080539E0
.L0805294F:
	testl     %eax, %eax
	jne       .L08052928
.L08052953:
	cmpl      $116, %esi
	movl      $.LC0805A280, %ebx
	je        .L0805296B
.L0805295D:
	leal      (%esi), %esi
.L08052960:
	addl      $16, %ebx
	movsbl    12(%ebx), %eax
	cmpl      %eax, %esi
	jne       .L08052960
.L0805296B:
	movl      .LBSS08063978, %edx
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L08052A60
.L0805297B:
	testl     %edi, %edi
	jne       .L08052B24
.L08052983:
	movl      4(%edx), %edx
	testl     %edx, %edx
	jne       .L08052B24
.L0805298E:
	movl      $.LC0805A100, %edi
	movl      $10, %ecx
	movl      %eax, %esi
	repz cmpsb     
	movl      $-1, %edi
	seta      %cl
	setb      %dl
	cmpb      %dl, %cl
	je        .L080529EF
.L080529AB:
	movsbl    (%eax), %edx
	cmpl      $47, %edx
	jle       .L08052AE9
.L080529B7:
	cmpl      $57, %edx
	jg        .L08052B18
.L080529C0:
	addl      $1, %eax
	xorl      %edi, %edi
	jmp       .L080529D1
# ----------------------
.L080529C7:
	.byte	144
.L080529C8:
	cmpl      $57, %edx
	jg        .L08052B18
.L080529D1:
	leal      (%edi,%edi,4), %ecx
	leal      -48(%edx,%ecx,2), %edi
	movsbl    (%eax), %edx
	addl      $1, %eax
	cmpl      $47, %edx
	jg        .L080529C8
.L080529E3:
	testl     %edx, %edx
	jne       .L08052B18
.L080529EB:
	imull     8(%ebx), %edi
.L080529EF:
	leal      24(%esp), %esi
	movl      %esi, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      getrlimit
.L08052A02:
	testl     $2, %ebp
	jne       .L08052AE0
.L08052A0E:
	andl      $1, %ebp
	je        .L08052A17
.L08052A13:
	movl      %edi, 24(%esp)
.L08052A17:
	movl      %esi, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      setrlimit
.L08052A26:
	testl     %eax, %eax
	js        .L08052AF5
.L08052A2E:
	nop       
.L08052A30:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08052A3A:
	.ascii	"\215\266\000\000\000\000"
.L08052A40:
	movl      $1, %edi
	jmp       .L08052918
# ----------------------
.L08052A4A:
	.ascii	"\215\266\000\000\000\000"
.L08052A50:
	movl      $1, %ebp
	jmp       .L08052918
# ----------------------
.L08052A5A:
	.ascii	"\215\266\000\000\000\000"
.L08052A60:
	testl     %edi, %edi
	je        .L08052B30
.L08052A68:
	andl      $1, %ebp
	movl      $.LC0805A280, %ebx
	leal      24(%esp), %esi
	jmp       .L08052A9E
# ----------------------
.L08052A76:
	.value	36966
.L08052A78:
	xorl      %edx, %edx
	divl      8(%ebx)
	movl      $0, 8(%esp)
	movl      $.LC0805A127, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08052A95:
	addl      $16, %ebx
	movl      (%ebx), %edi
	testl     %edi, %edi
	je        .L08052A30
.L08052A9E:
	movl      %esi, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      getrlimit
.L08052AAD:
	movl      (%ebx), %eax
	movl      $.LC0805A115, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08052ABF:
	movl      28(%esp), %eax
	testl     %ebp, %ebp
	cmovne    24(%esp), %eax
	cmpl      $-1, %eax
	jne       .L08052A78
.L08052ACF:
	movl      $.LC0805A11C, (%esp)
	call      .L08056C00
.L08052ADB:
	jmp       .L08052A95
# ----------------------
.L08052ADD:
	.ascii	"\215v\000"
.L08052AE0:
	movl      %edi, 28(%esp)
	jmp       .L08052A0E
.L08052AE9:
	xorl      %edi, %edi
	nop       
	leal      (%esi), %esi
	jmp       .L080529E3
.L08052AF5:
	movl      .LBSS08063754, %eax
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      strerror
.L08052B04:
	movl      $.LC0805A12D, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L08052B14:
	.long	2520205
.L08052B18:
	movl      $.LC0805A10A, (%esp)
	call      .L0804B000
.L08052B24:
	movl      $.LC0805A0ED, (%esp)
	call      .L0804B000
.L08052B30:
	leal      24(%esp), %eax
	movl      %eax, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      getrlimit
.L08052B43:
	movl      28(%esp), %eax
	andl      $1, %ebp
	cmovne    24(%esp), %eax
	cmpl      $-1, %eax
	je        .L08052B7B
.L08052B54:
	xorl      %edx, %edx
	divl      8(%ebx)
	movl      $0, 8(%esp)
	movl      $.LC0805A127, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08052B71:
	addl      $44, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052B7B:
	movl      $.LC0805A11C, (%esp)
	call      .L08056C00
.L08052B87:
	jmp       .L08052A30
# ----------------------
.L08052B8C:
	.long	-1869574000
.L08052B90:
	movl      8(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 8(%esp)
	movl      4(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	jmp       strcmp
# ----------------------
.L08052BA9:
	.ascii	"\215\264&\000\000\000\000"
.L08052BB0:
	pushl     %ebx
	movl      8(%esp), %eax
	movl      12(%esp), %edx
	leal      (%esi), %esi
.L08052BC0:
	movzbl    (%edx), %ecx
	testb     %cl, %cl
	je        .L08052BD6
.L08052BC7:
	movzbl    (%eax), %ebx
	addl      $1, %edx
	addl      $1, %eax
	cmpb      %bl, %cl
	je        .L08052BC0
.L08052BD4:
	xorl      %eax, %eax
.L08052BD6:
	popl      %ebx
	ret       
# ----------------------
.L08052BD8:
	.long	649366928
	.long	0
.L08052BE0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      $.LC0805A345, (%esp)
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L08052BF7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08052C00:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	call      __errno_location
.L08052C0C:
	movl      84(%esp), %ebp
	movl      $0, (%eax)
	movl      %eax, %ebx
	leal      44(%esp), %eax
	movl      %eax, 4(%esp)
	movl      80(%esp), %eax
	movl      $0, 12(%esp)
	movl      %ebp, 8(%esp)
	movl      %eax, (%esp)
	call      __strtoll_internal
.L08052C38:
	movl      %eax, %esi
	movl      (%ebx), %eax
	movl      %edx, %edi
	testl     %eax, %eax
	jne       .L08052C8E
.L08052C42:
	movl      44(%esp), %eax
	testl     %ebp, %ebp
	movl      %eax, 28(%esp)
	jne       .L08052C84
.L08052C4E:
	call      __ctype_b_loc
.L08052C53:
	movl      (%eax), %ebx
	movl      28(%esp), %eax
	jmp       .L08052C64
# ----------------------
.L08052C5B:
	.ascii	"\220\215t&\000"
.L08052C60:
	movl      %eax, 44(%esp)
.L08052C64:
	movzbl    (%eax), %edx
	addl      $1, %eax
	movzbl    %dl, %ecx
	testb     $32, 1(%ebx,%ecx,2)
	jne       .L08052C60
.L08052C74:
	testb     %dl, %dl
	jne       .L08052C8E
.L08052C78:
	addl      $60, %esp
	movl      %esi, %eax
	popl      %ebx
	movl      %edi, %edx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08052C84:
	movl      80(%esp), %eax
	cmpl      %eax, 28(%esp)
	jne       .L08052C4E
.L08052C8E:
	movl      80(%esp), %eax
	movl      %eax, (%esp)
	call      .L08052BE0
# ----------------------
.L08052C9A:
	.ascii	"\215\266\000\000\000\000"
.L08052CA0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      $10, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052C00
.L08052CB7:
	addl      $28, %esp
	ret       
# ----------------------
.L08052CBB:
	.ascii	"\220\215t&\000"
.L08052CC0:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      %ebx, (%esp)
	call      .L08052CA0
.L08052CD0:
	cmpl      $0, %edx
	jbe       .L08052CE0
.L08052CD5:
	movl      %ebx, (%esp)
	call      .L08052BE0
# ----------------------
.L08052CDD:
	.ascii	"\215v\000"
.L08052CE0:
	cmpl      $2147483647, %eax
	ja        .L08052CD5
.L08052CE7:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08052CEC:
	.long	2520205
.L08052CF0:
	movl      4(%esp), %eax
	movzbl    (%eax), %edx
	jmp       .L08052D0A
# ----------------------
.L08052CF9:
	.ascii	"\215\264&\000\000\000\000"
.L08052D00:
	addl      $1, %eax
	movzbl    (%eax), %edx
	testb     %dl, %dl
	je        .L08052D18
.L08052D0A:
	movsbl    %dl, %edx
	subl      $48, %edx
	cmpl      $9, %edx
	jbe       .L08052D00
.L08052D15:
	xorl      %eax, %eax
	ret       
.L08052D18:
	movl      $1, %eax
	ret       
# ----------------------
.L08052D1E:
	.value	36966
.L08052D20:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      .LD080611A8, %edi
	movl      48(%esp), %ebx
	leal      (%esi), %esi
.L08052D38:
	movl      $39, 4(%esp)
	movl      %ebx, (%esp)
	call      strchrnul
.L08052D48:
	movl      %edi, 4(%esp)
	movl      %eax, %esi
	subl      %ebx, %esi
	leal      3(%esi), %eax
	movl      %eax, (%esp)
	leal      (%ebx,%esi), %ebp
	call      .L080520F0
.L08052D5E:
	movb      $39, (%eax)
	addl      $1, %eax
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      mempcpy
.L08052D74:
	movb      $39, (%eax)
	leal      1(%eax), %edi
	cmpb      $39, (%ebp)
	jne       .L08052DCE
.L08052D80:
	leal      1(%ebp), %eax
	xorl      %esi, %esi
	leal      (%esi), %esi
.L08052D88:
	movl      %eax, %ebx
	addl      $1, %esi
	leal      1(%eax), %eax
	cmpb      $39, -1(%eax)
	je        .L08052D88
.L08052D96:
	testl     %esi, %esi
	je        .L08052DCE
.L08052D9A:
	leal      3(%esi), %eax
	movl      %edi, 4(%esp)
	movl      %eax, (%esp)
	call      .L080520F0
.L08052DA9:
	movb      $34, (%eax)
	addl      $1, %eax
	movl      %esi, 8(%esp)
	movl      %ebp, 4(%esp)
	movl      %eax, (%esp)
	call      mempcpy
.L08052DBF:
	movb      $34, (%eax)
	leal      1(%eax), %edi
	cmpb      $0, (%ebx)
	jne       .L08052D38
.L08052DCE:
	movb      $0, (%edi)
	movl      .LD080611A8, %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08052DDE:
	.value	36966
.L08052DE0:
	subl      $28, %esp
	movl      %ebx, 20(%esp)
	movl      32(%esp), %ebx
	movl      %esi, 24(%esp)
	movl      %ebx, (%esp)
	call      strlen
.L08052DF7:
	leal      1(%eax), %esi
	movl      %esi, (%esp)
	call      .L08051E00
.L08052E02:
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      memcpy
.L08052E12:
	movl      20(%esp), %ebx
	movl      24(%esp), %esi
	addl      $28, %esp
	ret       
# ----------------------
.L08052E1E:
	.value	36966
.L08052E20:
	subl      $44, %esp
	movl      56(%esp), %eax
	movl      $.L08052B90, 16(%esp)
	movl      $4, 12(%esp)
	movl      %eax, 8(%esp)
	movl      52(%esp), %eax
	movl      %eax, 4(%esp)
	leal      48(%esp), %eax
	movl      %eax, (%esp)
	call      bsearch
.L08052E4F:
	addl      $44, %esp
	ret       
# ----------------------
.L08052E53:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08052E60:
	subl      $28, %esp
	movsbl    .LBSS08063967, %eax
	movl      %eax, (%esp)
	call      .L08056570
.L08052E72:
	movsbl    .LBSS08063968, %eax
	movl      %eax, (%esp)
	call      .L08050C50
.L08052E81:
	addl      $28, %esp
	ret       
# ----------------------
.L08052E85:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L08052E90:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %esi
	movzbl    4(%esi), %eax
	testb     %al, %al
	je        .L08052ED8
.L08052EA1:
	movl      8(%esi), %ebx
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08052EC1
.L08052EAA:
	leal      (%esi), %esi
.L08052EB0:
	addl      $4, %ebx
	movl      %eax, (%esp)
	call      free
.L08052EBB:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L08052EB0
.L08052EC1:
	movl      8(%esi), %eax
	movl      %eax, 32(%esp)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	jmp       free
# ----------------------
.L08052ED2:
	.ascii	"\215\266\000\000\000\000"
.L08052ED8:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08052EDE:
	.value	36966
.L08052EE0:
	pushl     %ebp
	movl      $4, %eax
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $28, %esp
	movl      48(%esp), %edi
	movl      (%edi), %edx
	testl     %edx, %edx
	je        .L08052F09
.L08052EF8:
	addl      $1, %ebx
	movl      (%edi,%ebx,4), %eax
	testl     %eax, %eax
	jne       .L08052EF8
.L08052F02:
	leal      4(,%ebx,4), %eax
.L08052F09:
	movl      %eax, (%esp)
	call      .L08051D70
.L08052F11:
	movl      %eax, %ebp
	movl      (%edi), %eax
	movl      %ebp, %esi
	testl     %eax, %eax
	je        .L08052F36
.L08052F1B:
	nop       
	leal      (%esi), %esi
.L08052F20:
	movl      %eax, (%esp)
	addl      $4, %edi
	call      .L08051DD0
.L08052F2B:
	movl      %eax, (%esi)
	movl      (%edi), %eax
	addl      $4, %esi
	testl     %eax, %eax
	jne       .L08052F20
.L08052F36:
	movl      $0, (%esi)
	movl      $.LBSS08063984, (%esp)
	call      .L08052E90
.L08052F48:
	movl      %ebx, .LBSS08063984
	movl      %ebp, .LBSS0806398C
	movb      $1, .LBSS08063988
	movl      $1, .LBSS08063990
	movl      $-1, .LBSS08063994
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08052F77:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08052F80:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	testl     %eax, %eax
	je        .L08052F97
.L08052F8D:
	movl      $0, .LBSS08063998
.L08052F97:
	xorl      %edx, %edx
	jmp       .L08052FB5
# ----------------------
.L08052F9B:
	.ascii	"\220\215t&\000"
.L08052FA0:
	cmpl      $43, %ecx
	jne       .L080530E0
.L08052FA9:
	xorl      %esi, %esi
.L08052FAB:
	addl      $1, %ebx
.L08052FAE:
	movsbl    (%ebx), %eax
	testl     %eax, %eax
	jne       .L08052FF0
.L08052FB5:
	movl      .LBSS08063978, %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L08053098
.L08052FC4:
	leal      4(%eax), %esi
	movl      %esi, .LBSS08063978
	movsbl    (%ebx), %ecx
	cmpl      $45, %ecx
	jne       .L08052FA0
.L08052FD5:
	movzbl    1(%ebx), %eax
	testb     %al, %al
	je        .L08053072
.L08052FE1:
	cmpb      $45, %al
	je        .L08053068
.L08052FE9:
	movl      $1, %esi
	jmp       .L08052FAB
.L08052FF0:
	addl      $1, %ebx
	testl     %edi, %edi
	setne     %cl
	cmpl      $99, %eax
	jne       .L08053010
.L08052FFD:
	testb     %cl, %cl
	je        .L08053010
.L08053001:
	movl      %ebx, .LBSS08063998
	jmp       .L08052FAE
# ----------------------
.L08053009:
	.ascii	"\215\264&\000\000\000\000"
.L08053010:
	cmpl      $108, %eax
	jne       .L08053019
.L08053015:
	testb     %cl, %cl
	jne       .L08053058
.L08053019:
	cmpl      $111, %eax
	movl      $0, 32(%esp)
	movl      32(%esp), %ecx
	je        .L080530EF
.L0805302E:
	nop       
.L08053030:
	movsbl    .LC0805A500(%ecx), %ebp
	cmpl      %ebp, %eax
	je        .L080530A8
.L0805303B:
	addl      $1, %ecx
	cmpl      $17, %ecx
	jne       .L08053030
.L08053043:
	movl      %eax, 4(%esp)
	movl      $.LC0805A3B4, (%esp)
	call      .L0804B000
# ----------------------
.L08053053:
	.ascii	"\220\215t&\000"
.L08053058:
	movl      $1, %edx
	jmp       .L08052FAE
# ----------------------
.L08053062:
	.ascii	"\215\266\000\000\000\000"
.L08053068:
	cmpb      $0, 2(%ebx)
	jne       .L08052FE9
.L08053072:
	testl     %edi, %edi
	jne       .L08053098
.L08053076:
	testb     %al, %al
	je        .L08053153
.L0805307E:
	movl      (%esi), %ebx
	testl     %ebx, %ebx
	jne       .L08053098
.L08053084:
	movl      %edx, 28(%esp)
	movl      %esi, (%esp)
	call      .L08052EE0
.L08053090:
	movl      28(%esp), %edx
	leal      (%esi), %esi
.L08053098:
	addl      $60, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L080530A2:
	.ascii	"\215\266\000\000\000\000"
.L080530A8:
	movl      %ecx, 32(%esp)
	movl      32(%esp), %ebp
	movl      %esi, %ecx
	testl     %esi, %esi
	movb      %cl, .LBSS08063964(%ebp)
	je        .L08052FAE
.L080530C0:
	cmpl      $86, %eax
	je        .L08053166
.L080530C9:
	cmpl      $69, %eax
	jne       .L08052FAE
.L080530D2:
	movb      $0, .LBSS0806396D
	jmp       .L08052FAE
# ----------------------
.L080530DE:
	.value	36966
.L080530E0:
	movl      %eax, .LBSS08063978
	addl      $60, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080530EF:
	movl      .LBSS08063978, %ecx
	xorl      %ebp, %ebp
	movl      %ecx, 32(%esp)
	movl      (%ecx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, 36(%esp)
	je        .L080531A4
.L08053109:
	movl      %edi, 44(%esp)
	movl      %esi, %edi
	movl      %ebx, %esi
	movl      36(%esp), %ebx
	movl      %edx, 40(%esp)
	leal      (%esi), %esi
.L08053120:
	movl      .LC0805A520(,%ebp,4), %eax
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      strcmp
.L08053133:
	testl     %eax, %eax
	je        .L08053172
.L08053137:
	addl      $1, %ebp
	cmpl      $17, %ebp
	jne       .L08053120
.L0805313F:
	movl      36(%esp), %edx
	movl      $.LC0805A39F, (%esp)
	movl      %edx, 4(%esp)
	call      .L0804B000
.L08053153:
	movb      $0, .LBSS0806396C
	movb      $0, .LBSS0806396B
	jmp       .L08053098
.L08053166:
	movb      $0, .LBSS0806396E
	jmp       .L08052FAE
.L08053172:
	movl      %esi, %ebx
	movl      40(%esp), %edx
	movl      %edi, %esi
	movl      44(%esp), %edi
	movl      %esi, %eax
	movb      %al, .LBSS08063964(%ebp)
.L08053186:
	movl      32(%esp), %ebp
	movl      (%ebp), %ecx
	testl     %ecx, %ecx
	je        .L08052FAE
.L08053195:
	movl      %ebp, %eax
	addl      $4, %eax
	movl      %eax, .LBSS08063978
	jmp       .L08052FAE
.L080531A4:
	testl     %esi, %esi
	jne       .L080531FB
.L080531A8:
	movl      %edi, 32(%esp)
	movl      %esi, %edi
	movl      %edx, %esi
.L080531B0:
	cmpb      $0, .LBSS08063964(%ebp)
	movl      $.LC0805A36F, %edx
	movl      .LC0805A520(,%ebp,4), %ecx
	movl      $.LC0805A36C, %eax
	movl      $.LC0805A394, (%esp)
	cmove     %edx, %eax
	addl      $1, %ebp
	movl      %eax, 4(%esp)
	movl      %ecx, 8(%esp)
	call      .L08056C00
.L080531E2:
	cmpl      $17, %ebp
	jne       .L080531B0
.L080531E7:
	movl      .LBSS08063978, %ecx
	movl      %esi, %edx
	movl      %edi, %esi
	movl      32(%esp), %edi
	movl      %ecx, 32(%esp)
	jmp       .L08053186
.L080531FB:
	movl      .LD080611B4, %eax
	movl      %edx, 28(%esp)
	movl      $.LC0805A372, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C90
.L08053214:
	movl      28(%esp), %edx
	movl      %edi, 32(%esp)
	movl      %esi, %edi
	movl      %edx, %esi
.L08053220:
	cmpb      $0, .LBSS08063964(%ebp)
	movl      $.LC0805A368, %edx
	movl      $.LC0805A68F, %eax
	movl      $.LC0805A38B, (%esp)
	cmove     %edx, %eax
	movl      %eax, 8(%esp)
	movl      .LC0805A520(,%ebp,4), %eax
	addl      $1, %ebp
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08053252:
	cmpl      $17, %ebp
	jne       .L08053220
.L08053257:
	jmp       .L080531E7
# ----------------------
.L08053259:
	.ascii	"\215\264&\000\000\000\000"
.L08053260:
	pushl     %ebp
	pushl     %edi
	xorl      %edi, %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0805327D
.L08053273:
	xorl      %ecx, %ecx
	cmpb      $45, (%edx)
	sete      %cl
	movl      %ecx, %edi
.L0805327D:
	movl      48(%esp), %ecx
	movl      %edx, .LBSS0806397C
	leal      4(%eax), %edx
	testl     %ecx, %ecx
	cmovle    %eax, %edx
	xorl      %eax, %eax
	leal      (%esi), %esi
.L08053298:
	movb      $2, .LBSS08063964(%eax)
	addl      $1, %eax
	cmpl      $17, %eax
	jne       .L08053298
.L080532A7:
	movb      $1, %al
	movl      %edx, .LBSS08063978
	call      .L08052F80
.L080532B4:
	movl      .LBSS08063978, %esi
	movl      .LBSS08063998, %ebx
	movl      %eax, %ebp
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L08053410
.L080532CC:
	cmpb      $2, .LBSS08063967
	je        .L080533A0
.L080532D9:
	cmpb      $2, .LBSS08063968
	je        .L08053388
.L080532E6:
	xorl      %eax, %eax
	jmp       .L080532F8
# ----------------------
.L080532EA:
	.ascii	"\215\266\000\000\000\000"
.L080532F0:
	addl      $1, %eax
	cmpl      $17, %eax
	je        .L08053310
.L080532F8:
	cmpb      $2, .LBSS08063964(%eax)
	jne       .L080532F0
.L08053301:
	movb      $0, .LBSS08063964(%eax)
	addl      $1, %eax
	cmpl      $17, %eax
	jne       .L080532F8
.L08053310:
	testl     %ebx, %ebx
	je        .L080533E8
.L08053318:
	movl      (%esi), %eax
	leal      4(%esi), %ebx
	movl      %eax, .LBSS08063998
	movl      4(%esi), %eax
	testl     %eax, %eax
	je        .L08053336
.L08053329:
	movl      %eax, .LBSS0806397C
	addl      $4, %ebx
	movl      %eax, .LBSS080616CC
.L08053336:
	movl      %ebx, .LBSS0806398C
	movl      (%ebx), %eax
	movl      $1, .LBSS08063990
	movl      $-1, .LBSS08063994
	testl     %eax, %eax
	je        .L08053377
.L08053356:
	movl      .LBSS08063984, %eax
	movl      %eax, %edx
	negl      %edx
	leal      (%ebx,%edx,4), %edx
	leal      (%esi), %esi
.L08053368:
	addl      $1, %eax
	movl      (%edx,%eax,4), %esi
	testl     %esi, %esi
	jne       .L08053368
.L08053372:
	movl      %eax, .LBSS08063984
.L08053377:
	call      .L08052E60
.L0805337C:
	addl      $28, %esp
	movl      %ebp, %eax
	popl      %ebx
	orl       %edi, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053388:
	movzbl    .LBSS08063967, %eax
	movb      %al, .LBSS08063968
	jmp       .L080532E6
# ----------------------
.L08053399:
	.ascii	"\215\264&\000\000\000\000"
.L080533A0:
	cmpb      $1, .LBSS0806396A
	jne       .L080532D9
.L080533AD:
	movl      $0, (%esp)
	call      isatty
.L080533B9:
	testl     %eax, %eax
	je        .L080532D9
.L080533C1:
	movl      $1, (%esp)
	call      isatty
.L080533CD:
	testl     %eax, %eax
	je        .L080532D9
.L080533D5:
	movb      $1, .LBSS08063967
	jmp       .L080532D9
# ----------------------
.L080533E1:
	.ascii	"\215\264&\000\000\000\000"
.L080533E8:
	cmpb      $0, .LBSS0806396A
	movl      %esi, %ebx
	jne       .L08053336
.L080533F7:
	movl      $0, 4(%esp)
	movl      (%esi), %eax
	movl      %eax, (%esp)
	call      .L0804FB70
.L08053409:
	movl      (%esi), %eax
	jmp       .L08053329
.L08053410:
	testl     %ebx, %ebx
	jne       .L08053420
.L08053414:
	movb      $1, .LBSS0806396A
	jmp       .L080532CC
.L08053420:
	movl      $.LC0805A3C7, (%esp)
	call      .L0804B000
# ----------------------
.L0805342C:
	.long	2520205
.L08053430:
	pushl     %edi
	movl      $1, %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	cmpl      $1, 32(%esp)
	jle       .L08053453
.L08053442:
	movl      36(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, (%esp)
	call      .L08052CC0
.L08053451:
	movl      %eax, %edi
.L08053453:
	cmpl      .LBSS08063984, %edi
	jg        .L08053506
.L0805345F:
	addl      $1, .LBSS080616A8
	movl      .LBSS0806398C, %esi
	subl      %edi, .LBSS08063984
	testl     %edi, %edi
	movl      %esi, %ecx
	jle       .L080534AB
.L08053478:
	xorl      %ebx, %ebx
	jmp       .L08053487
# ----------------------
.L0805347C:
	.long	2520205
.L08053480:
	addl      $1, %ebx
	cmpl      %edi, %ebx
	je        .L080534A2
.L08053487:
	cmpb      $0, .LBSS08063988
	je        .L08053480
.L08053490:
	movl      (%esi,%ebx,4), %eax
	addl      $1, %ebx
	movl      %eax, (%esp)
	call      free
.L0805349E:
	cmpl      %edi, %ebx
	jne       .L08053487
.L080534A2:
	movl      .LBSS0806398C, %ecx
	leal      (%esi,%ebx,4), %esi
.L080534AB:
	xorl      %eax, %eax
	leal      (%esi), %esi
.L080534B0:
	movl      (%esi,%eax), %edx
	movl      %edx, (%ecx,%eax)
	addl      $4, %eax
	testl     %edx, %edx
	jne       .L080534B0
.L080534BD:
	movl      $1, .LBSS08063990
	movl      $-1, .LBSS08063994
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L080534EB
.L080534E2:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L080534F8
.L080534EB:
	addl      $16, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L080534F4:
	.long	2520205
.L080534F8:
	call      .L0804AFA0
# ----------------------
.L080534FD:
	.ascii	"\203\304\0201\300[^_\303"
.L08053506:
	movl      $.LC0805A3DF, (%esp)
	call      .L0804B000
# ----------------------
.L08053512:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08053520:
	subl      $44, %esp
	cmpl      $1, 48(%esp)
	je        .L08053590
.L0805352A:
	addl      $1, .LBSS080616A8
	xorl      %eax, %eax
	call      .L08052F80
.L08053538:
	call      .L08052E60
.L0805353D:
	movl      .LBSS08063978, %eax
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L08053550
.L08053548:
	movl      %eax, (%esp)
	call      .L08052EE0
.L08053550:
	movl      .LBSS080616A8, %edx
	xorl      %eax, %eax
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L0805356F
.L08053565:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L08053578
.L0805356F:
	addl      $44, %esp
	ret       
# ----------------------
.L08053573:
	.ascii	"\220\215t&\000"
.L08053578:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08053581:
	.ascii	"\213D$\034\203\304,\303\215\264&\000\000\000\000"
.L08053590:
	movl      $32, 8(%esp)
	movl      $0, 4(%esp)
	movl      $.LBSS0806395C, (%esp)
	call      .L08058330
.L080535AC:
	addl      $44, %esp
	ret       
.L080535B0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      .L08052CC0
.L080535BF:
	movl      $1, %edx
	movl      $-1, .LBSS08063994
	testl     %eax, %eax
	cmove     %edx, %eax
	movl      %eax, .LBSS08063990
	addl      $28, %esp
	ret       
# ----------------------
.L080535DC:
	.long	2520205
.L080535E0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %eax
	movl      84(%esp), %ecx
	cmpl      $2, %eax
	jle       .L080539D3
.L080535F8:
	cmpl      $3, %eax
	je        .L08053760
.L08053601:
	movl      .LBSS08063990, %edi
	subl      $2, %eax
	leal      12(%ecx), %esi
	cmpl      %eax, %edi
	jbe       .L080536C8
.L08053615:
	movl      $-1, .LBSS08063994
.L0805361F:
	movl      8(%ecx), %eax
	movl      %esi, %edi
	movl      4(%ecx), %ecx
	movl      $-1, .LBSS08063990
	movl      %eax, 28(%esp)
	movl      %ecx, 20(%esp)
.L08053639:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L08053648
.L0805363F:
	cmpb      $45, (%eax)
	je        .L08053910
.L08053648:
	leal      46(%esp), %eax
	movl      $1, %ebp
	movl      $63, %ebx
	movl      %eax, 20(%esp)
.L0805365A:
	subl      %edi, %esi
	sarl      $2, %esi
	leal      1(%esi), %edi
	movl      %edi, %esi
	sarl      $31, %esi
	movl      %esi, 8(%esp)
	movl      $64, 12(%esp)
	movl      %edi, 4(%esp)
	movl      $.LC0805A427, (%esp)
	call      .L08058BB0
.L08053683:
	movl      20(%esp), %esi
	movb      %bl, 46(%esp)
	movb      $0, 47(%esp)
	movl      $0, 8(%esp)
	movl      %esi, 4(%esp)
	movl      28(%esp), %esi
	movl      %esi, (%esp)
	call      .L08058810
.L080536A8:
	movl      $-1, %eax
.L080536AD:
	movl      %eax, .LBSS08063994
	movl      %ebp, %eax
	movl      %edi, .LBSS08063990
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L080536C2:
	.ascii	"\215\266\000\000\000\000"
.L080536C8:
	movl      .LBSS08063994, %ebx
	leal      -4(,%edi,4), %edx
	movl      %ebx, %ebp
	shrl      $31, %ebp
	cmpl      $1, %edi
	setle     %al
	movl      %esi, %edi
	orl       %ebp, %eax
.L080536E4:
	movl      8(%ecx), %esi
	testb     %al, %al
	movl      4(%ecx), %ecx
	movl      $-1, .LBSS08063990
	movl      %esi, 28(%esp)
	leal      (%edi,%edx), %esi
	movl      %ecx, 20(%esp)
	jne       .L08053639
.L08053707:
	movl      -4(%esi), %ebp
	movl      %ebp, (%esp)
	call      strlen
.L08053712:
	cmpl      %ebx, %eax
	jb        .L08053639
.L0805371A:
	addl      %ebx, %ebp
	je        .L08053639
.L08053722:
	movzbl    (%ebp), %ebx
	testb     %bl, %bl
	je        .L08053639
.L0805372E:
	movl      20(%esp), %edx
	leal      1(%ebp), %eax
	movl      %eax, 24(%esp)
.L08053739:
	movzbl    (%edx), %eax
	jmp       .L08053742
# ----------------------
.L0805373E:
	.value	36966
.L08053740:
	movl      %ecx, %edx
.L08053742:
	cmpb      %al, %bl
	je        .L08053790
.L08053746:
	testb     %al, %al
	je        .L080537C0
.L0805374A:
	movzbl    1(%edx), %eax
	leal      1(%edx), %ecx
	cmpb      $58, %al
	jne       .L08053740
.L08053755:
	addl      $2, %edx
	jmp       .L08053739
# ----------------------
.L0805375A:
	.ascii	"\215\266\000\000\000\000"
.L08053760:
	movl      .LBSS08063984, %edx
	movl      .LBSS08063990, %eax
	movl      .LBSS0806398C, %edi
	addl      $1, %edx
	cmpl      %edx, %eax
	jbe       .L08053870
.L0805377C:
	movl      $-1, .LBSS08063994
	movl      %edi, %esi
	jmp       .L0805361F
# ----------------------
.L0805378D:
	.ascii	"\215v\000"
.L08053790:
	cmpb      $58, 1(%edx)
	je        .L08053890
.L0805379A:
	movl      $0, 8(%esp)
	movl      $.LBSS0806395C, 4(%esp)
	movl      $.LC0805A3F5, (%esp)
	call      .L08058810
.L080537B6:
	leal      46(%esp), %eax
	movl      %eax, 20(%esp)
	jmp       .L08053801
.L080537C0:
	movl      20(%esp), %eax
	cmpb      $58, (%eax)
	je        .L080538D6
.L080537CD:
	movsbl    %bl, %ebx
	movl      %ebx, 8(%esp)
	movl      $63, %ebx
	movl      $.LC0805A3FC, 4(%esp)
	movl      $.LD080611B8, (%esp)
	call      .L08056C30
.L080537ED:
	movl      $.LC0805A3F5, (%esp)
	call      .L08058930
.L080537F9:
	leal      46(%esp), %eax
	movl      %eax, 20(%esp)
.L08053801:
	movl      %esi, %eax
	subl      %edi, %eax
	movl      %eax, %edi
	sarl      $2, %edi
	addl      $1, %edi
	movl      %edi, %eax
	sarl      $31, %eax
	movl      $64, 12(%esp)
	movl      %edi, 4(%esp)
	movl      %eax, 8(%esp)
	movl      $.LC0805A427, (%esp)
	call      .L08058BB0
.L0805382E:
	movl      20(%esp), %eax
	movb      %bl, 46(%esp)
	movb      $0, 47(%esp)
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	movl      28(%esp), %eax
	movl      %eax, (%esp)
	call      .L08058810
.L08053853:
	movl      24(%esp), %ecx
	testl     %ecx, %ecx
	je        .L080539C9
.L0805385F:
	movl      24(%esp), %eax
	xorl      %ebp, %ebp
	subl      -4(%esi), %eax
	jmp       .L080536AD
# ----------------------
.L0805386D:
	.ascii	"\215v\000"
.L08053870:
	movl      .LBSS08063994, %ebx
	leal      -4(,%eax,4), %edx
	movl      %ebx, %esi
	shrl      $31, %esi
	cmpl      $1, %eax
	setle     %al
	orl       %esi, %eax
	jmp       .L080536E4
# ----------------------
.L0805388F:
	.byte	144
.L08053890:
	cmpb      $0, 1(%ebp)
	jne       .L0805393A
.L0805389A:
	movl      (%esi), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	je        .L08053950
.L080538A8:
	addl      $4, %esi
.L080538AB:
	movl      24(%esp), %eax
	xorl      %ebp, %ebp
	movl      $0, 8(%esp)
	movl      $.LC0805A3F5, (%esp)
	movl      %eax, 4(%esp)
	call      .L08058810
.L080538C9:
	leal      46(%esp), %eax
	movl      %eax, 20(%esp)
	jmp       .L0805365A
.L080538D6:
	leal      46(%esp), %eax
	movb      %bl, 46(%esp)
	movl      $63, %ebx
	movb      $0, 47(%esp)
	movl      $0, 8(%esp)
	movl      %eax, 20(%esp)
	movl      %eax, 4(%esp)
	movl      $.LC0805A3F5, (%esp)
	call      .L08058810
.L08053904:
	jmp       .L08053801
# ----------------------
.L08053909:
	.ascii	"\215\264&\000\000\000\000"
.L08053910:
	movzbl    1(%eax), %ebx
	leal      1(%eax), %ebp
	testb     %bl, %bl
	je        .L08053648
.L0805391F:
	addl      $4, %esi
	cmpb      $45, %bl
	jne       .L0805372E
.L0805392B:
	cmpb      $0, 2(%eax)
	je        .L08053648
.L08053935:
	jmp       .L0805372E
.L0805393A:
	movl      24(%esp), %eax
	cmpl      (%esi), %eax
	jne       .L080538AB
.L08053946:
	jmp       .L080538A8
# ----------------------
.L0805394B:
	.ascii	"\220\215t&\000"
.L08053950:
	movl      20(%esp), %eax
	cmpb      $58, (%eax)
	je        .L08053994
.L08053959:
	movsbl    %bl, %ebx
	xorl      %ebp, %ebp
	movl      %ebx, 8(%esp)
	movl      $63, %ebx
	movl      $.LC0805A410, 4(%esp)
	movl      $.LD080611B8, (%esp)
	call      .L08056C30
.L0805397B:
	movl      $.LC0805A3F5, (%esp)
	call      .L08058930
.L08053987:
	leal      46(%esp), %eax
	movl      %eax, 20(%esp)
	jmp       .L0805365A
.L08053994:
	leal      46(%esp), %eax
	xorl      %ebp, %ebp
	movb      %bl, 46(%esp)
	movl      $58, %ebx
	movb      $0, 47(%esp)
	movl      $0, 8(%esp)
	movl      %eax, 20(%esp)
	movl      %eax, 4(%esp)
	movl      $.LC0805A3F5, (%esp)
	call      .L08058810
.L080539C4:
	jmp       .L0805365A
.L080539C9:
	xorl      %ebp, %ebp
	orl       $-1, %eax
	jmp       .L080536AD
.L080539D3:
	movl      $.LC0805A4C8, (%esp)
	call      .L0804B000
# ----------------------
.L080539DF:
	.byte	144
.L080539E0:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      .LBSS08063960, %esi
	testl     %esi, %esi
	je        .L08053A28
.L080539EF:
	movzbl    (%esi), %ebx
	testb     %bl, %bl
	je        .L08053A28
.L080539F6:
	movl      32(%esp), %edx
	leal      (%esi), %esi
.L08053A00:
	movzbl    (%edx), %eax
	jmp       .L08053A0A
# ----------------------
.L08053A05:
	.ascii	"\215v\000"
.L08053A08:
	movl      %ecx, %edx
.L08053A0A:
	cmpb      %bl, %al
	je        .L08053A48
.L08053A0E:
	testb     %al, %al
	je        .L08053ABE
.L08053A16:
	movzbl    1(%edx), %eax
	leal      1(%edx), %ecx
	cmpb      $58, %al
	jne       .L08053A08
.L08053A21:
	addl      $2, %edx
	jmp       .L08053A00
# ----------------------
.L08053A26:
	.value	36966
.L08053A28:
	movl      .LBSS08063978, %ecx
	xorl      %eax, %eax
	movl      (%ecx), %edx
	testl     %edx, %edx
	je        .L08053A3B
.L08053A36:
	cmpb      $45, (%edx)
	je        .L08053A60
.L08053A3B:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08053A41:
	.ascii	"\215\264&\000\000\000\000"
.L08053A48:
	cmpb      $58, 1(%edx)
	leal      1(%esi), %ecx
	je        .L08053A90
.L08053A51:
	movl      %ecx, .LBSS08063960
	movsbl    %bl, %eax
.L08053A5A:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08053A60:
	cmpb      $0, 1(%edx)
	leal      1(%edx), %esi
	je        .L08053A3B
.L08053A69:
	addl      $4, %ecx
	movl      %ecx, .LBSS08063978
	movzbl    1(%edx), %ebx
	cmpb      $45, %bl
	jne       .L080539F6
.L08053A7F:
	cmpb      $0, 2(%edx)
	jne       .L080539F6
.L08053A89:
	jmp       .L08053A3B
# ----------------------
.L08053A8B:
	.ascii	"\220\215t&\000"
.L08053A90:
	cmpb      $0, 1(%esi)
	jne       .L08053AAB
.L08053A96:
	movl      .LBSS08063978, %edx
	movl      (%edx), %ecx
	addl      $4, %edx
	movl      %edx, .LBSS08063978
	testl     %ecx, %ecx
	je        .L08053AD1
.L08053AAB:
	movl      %ecx, .LBSS08063980
	xorl      %ecx, %ecx
	movsbl    %bl, %eax
	movl      %ecx, .LBSS08063960
	jmp       .L08053A5A
.L08053ABE:
	movsbl    %bl, %ebx
	movl      %ebx, 4(%esp)
	movl      $.LC0805A3B4, (%esp)
	call      .L0804B000
.L08053AD1:
	movsbl    %al, %eax
	movl      %eax, 4(%esp)
	movl      $.LC0805A42E, (%esp)
	call      .L0804B000
# ----------------------
.L08053AE4:
	.long	-1869574000
	.long	-1869574000
	.long	-1869574000
.L08053AF0:
	subl      $28, %esp
	movl      $16, (%esp)
	call      .L08051E00
.L08053AFF:
	movl      $15, (%eax)
	movl      .LBSS080639BC, %edx
	movl      $0, 4(%eax)
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %edx
	movl      %edx, 12(%eax)
	addl      $28, %esp
	ret       
# ----------------------
.L08053B22:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08053B30:
	subl      $28, %esp
	movl      .LD08061198, %edx
	movl      %eax, 4(%esp)
	movl      $.LC0805A564, (%esp)
	movl      %edx, .LBSS080616B4
	call      .L0804B000
# ----------------------
.L08053B4F:
	.byte	144
.L08053B50:
	pushl     %ebx
	subl      $120, %esp
	movl      %gs:20, %edx
	movl      %edx, 108(%esp)
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L08053BA3
.L08053B65:
	movl      .LC0805A800(,%eax,4), %eax
	leal      44(%esp), %ebx
	movl      $.LC0805A575, 8(%esp)
	movl      $64, 4(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 16(%esp)
	movl      .LBSS080639C0, %eax
	movl      .LC0805A800(,%eax,4), %eax
	movl      %eax, 12(%esp)
	call      .L08056910
.L08053B9C:
	movl      %ebx, %eax
	call      .L08053B30
.L08053BA3:
	movl      .LBSS080639C0, %eax
	leal      44(%esp), %ebx
	movl      $.LC0805A592, 8(%esp)
	movl      $64, 4(%esp)
	movl      %ebx, (%esp)
	movl      .LC0805A800(,%eax,4), %eax
	movl      %eax, 12(%esp)
	call      .L08056910
.L08053BCF:
	jmp       .L08053B9C
# ----------------------
.L08053BD1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08053BE0:
	subl      $12, %esp
	movl      24(%esp), %ecx
	movl      %ebx, 4(%esp)
	movl      20(%esp), %edx
	movl      %esi, 8(%esp)
	movl      16(%esp), %ebx
	testl     %ecx, %ecx
	jne       .L08053C02
.L08053BFB:
	movl      $0, 16(%ebx)
.L08053C02:
	movzbl    (%edx), %eax
	movsbl    %al, %esi
	subl      $48, %esi
	cmpl      $9, %esi
	ja        .L08053C16
.L08053C10:
	cmpb      $0, 1(%edx)
	je        .L08053C48
.L08053C16:
	cmpb      $45, %al
	je        .L08053C38
.L08053C1A:
	testl     %ecx, %ecx
	jne       .L08053C57
.L08053C1E:
	nop       
	call      .L08053AF0
.L08053C25:
	movl      %eax, 16(%ebx)
.L08053C28:
	movl      4(%esp), %ebx
	movl      8(%esp), %esi
	addl      $12, %esp
	ret       
# ----------------------
.L08053C34:
	.long	2520205
.L08053C38:
	cmpb      $0, 1(%edx)
	jne       .L08053C1A
.L08053C3E:
	movl      $-1, 12(%ebx)
	jmp       .L08053C28
# ----------------------
.L08053C47:
	.byte	144
.L08053C48:
	movl      %esi, 12(%ebx)
	movl      4(%esp), %ebx
	movl      8(%esp), %esi
	addl      $12, %esp
	ret       
.L08053C57:
	movl      $.LC0805A5A0, %eax
	call      .L08053B30
# ----------------------
.L08053C61:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08053C70:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %esi
	movzbl    (%esi), %ebx
	cmpb      $95, %bl
	je        .L08053C98
.L08053C81:
	call      __ctype_b_loc
.L08053C86:
	movzbl    %bl, %ebx
	movl      (%eax), %eax
	testb     $4, 1(%eax,%ebx,2)
	je        .L08053CB7
.L08053C92:
	leal      (%esi), %esi
.L08053C98:
	addl      $1, %esi
	movzbl    (%esi), %ebx
	testb     %bl, %bl
	je        .L08053CB7
.L08053CA2:
	cmpb      $95, %bl
	je        .L08053C98
.L08053CA7:
	call      __ctype_b_loc
.L08053CAC:
	movzbl    %bl, %ebx
	movl      (%eax), %eax
	testb     $8, (%eax,%ebx,2)
	jne       .L08053C98
.L08053CB7:
	addl      $4, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08053CBF:
	.byte	144
.L08053CC0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      $16, 8(%esp)
	movl      $.LC0805A7A0, 4(%esp)
	movl      %eax, (%esp)
	call      .L08052E20
.L08053CDF:
	addl      $28, %esp
	ret       
# ----------------------
.L08053CE3:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08053CF0:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      .LBSS080639A0, %edi
	movl      %edi, %esi
	andl      $2, %edi
	andl      $4, %esi
	leal      (%esi), %esi
.L08053D08:
	movl      .LBSS0806399C, %ecx
	testl     %ecx, %ecx
	jne       .L08053D88
.L08053D12:
	call      .L080557C0
.L08053D17:
	testl     %esi, %esi
	movl      %eax, %ebx
	jne       .L08053DA0
.L08053D21:
	cmpl      $12, %ebx
	jne       .L08053E18
.L08053D2A:
	movl      .LBSS080639B0, %eax
	testl     %eax, %eax
	jne       .L08053E18
.L08053D37:
	testl     %edi, %edi
	jne       .L08053DF0
.L08053D3F:
	testb     $1, .LBSS080639A0
	je        .L08053E18
.L08053D4C:
	movl      .LBSS080639BC, %eax
	movl      $1, 4(%esp)
	movl      %eax, (%esp)
	call      .L08049BA0
.L08053D61:
	testl     %eax, %eax
	je        .L08053E18
.L08053D69:
	movl      8(%eax), %edx
	cmpb      $0, (%edx)
	je        .L08053D08
.L08053D71:
	movl      %eax, 4(%esp)
	movl      %edx, (%esp)
	call      .L0804F740
.L08053D7D:
	movl      .LBSS0806399C, %ecx
	testl     %ecx, %ecx
	je        .L08053D12
.L08053D87:
	nop       
.L08053D88:
	testl     %esi, %esi
	movl      .LBSS080639C0, %ebx
	movl      $0, .LBSS0806399C
	je        .L08053D21
.L08053D9C:
	leal      (%esi), %esi
.L08053DA0:
	cmpl      $1, %ebx
	jne       .L08053D21
.L08053DA9:
	call      .L08055720
.L08053DAE:
	movl      .LBSS0806399C, %edx
	testl     %edx, %edx
	jne       .L08053DD7
.L08053DB8:
	call      .L080557C0
.L08053DBD:
	movl      %eax, %ebx
	cmpl      $1, %ebx
	jne       .L08053D21
.L08053DC8:
	call      .L08055720
.L08053DCD:
	movl      .LBSS0806399C, %edx
	testl     %edx, %edx
	je        .L08053DB8
.L08053DD7:
	movl      $0, .LBSS0806399C
	movl      .LBSS080639C0, %ebx
	jmp       .L08053DA0
# ----------------------
.L08053DE9:
	.ascii	"\215\264&\000\000\000\000"
.L08053DF0:
	movl      .LBSS080639BC, %eax
	movl      %eax, (%esp)
	call      .L08053CC0
.L08053DFD:
	testl     %eax, %eax
	je        .L08053D3F
.L08053E05:
	subl      $.LC0805A7A0, %eax
	sarl      $2, %eax
	leal      13(%eax), %ebx
	movl      %ebx, .LBSS080639C0
	nop       
.L08053E18:
	movl      $0, .LBSS080639A0
	addl      $16, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08053E2B:
	.ascii	"\220\215t&\000"
.L08053E30:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      .LBSS080639A4, %ebx
	cmpl      $23, (%ebx)
	je        .L08053E70
.L08053E40:
	call      .L08053CF0
.L08053E45:
	cmpl      $12, %eax
	jne       .L08053F02
.L08053E4E:
	movl      (%ebx), %eax
	cmpl      $23, %eax
	je        .L08053E80
.L08053E55:
	subl      $21, %eax
	cmpl      $1, %eax
	jbe       .L08053ED8
.L08053E5D:
	call      .L08053AF0
.L08053E62:
	movl      %eax, 12(%ebx)
.L08053E65:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08053E6B:
	.ascii	"\220\215t&\000"
.L08053E70:
	movl      $8, .LBSS080639A0
	jmp       .L08053E40
# ----------------------
.L08053E7C:
	.long	2520205
.L08053E80:
	movl      .LBSS080639B0, %eax
	movl      .LBSS080639C4, %esi
	testl     %eax, %eax
	je        .L08053ED0
.L08053E8F:
	movl      .LBSS080639BC, %eax
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804E4B0
.L08053EA4:
	movl      .LBSS080639B8, %edx
	movl      .LBSS080639BC, %eax
	movl      $0, (%esi)
	testl     %edx, %edx
	movl      %eax, 8(%esi)
	jne       .L08053EC2
.L08053EBC:
	jmp       .L08053EF7
# ----------------------
.L08053EBE:
	.value	36966
.L08053EC0:
	movl      %eax, %edx
.L08053EC2:
	movl      (%edx), %eax
	testl     %eax, %eax
	jne       .L08053EC0
.L08053EC8:
	movl      %esi, (%edx)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08053ED0:
	movl      $24, (%ebx)
	jmp       .L08053E8F
.L08053ED8:
	movl      .LBSS080639BC, %eax
	movl      %ebx, (%esp)
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	call      .L08053BE0
.L08053EF1:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08053EF7:
	movl      %esi, .LBSS080639B8
	jmp       .L08053E65
.L08053F02:
	orl       $-1, %eax
	call      .L08053B50
# ----------------------
.L08053F0A:
	.ascii	"\215\266\000\000\000\000"
.L08053F10:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      .LD08061198, %ebp
	movl      $0, 48(%esp)
	call      .L08053CF0
.L08053F2A:
	subl      $7, %eax
	cmpl      $20, %eax
	jbe       .L08053F40
.L08053F32:
	movl      $-1, %eax
	call      .L08053B50
# ----------------------
.L08053F3C:
	.long	2520205
.L08053F40:
	jmp       *.LC0805A700(,%eax,4)
.L08053F47:
	xorl      %eax, %eax
	movl      $28, %esi
	call      .L080546C0
.L08053F53:
	movl      %eax, %ebx
.L08053F55:
	call      .L08053CF0
.L08053F5A:
	cmpl      %esi, %eax
	jne       .L080545B8
.L08053F62:
	movl      $3, .LBSS080639A0
	leal      48(%esp), %esi
	jmp       .L08053F87
# ----------------------
.L08053F72:
	.ascii	"\215\266\000\000\000\000"
.L08053F78:
	movl      .LBSS080639A4, %eax
	movl      %eax, (%esi)
	leal      4(%eax), %esi
	call      .L08053E30
.L08053F87:
	call      .L08053CF0
.L08053F8C:
	cmpl      $11, %eax
	je        .L08053F78
.L08053F91:
	addl      $1, .LBSS0806399C
	movl      $0, (%esi)
	movl      48(%esp), %edx
	testl     %edx, %edx
	je        .L08053FCC
.L08053FA6:
	cmpl      $4, (%ebx)
	je        .L08053FC9
.L08053FAB:
	movl      $16, (%esp)
	call      .L08051E00
.L08053FB7:
	movl      $2, (%eax)
	movl      48(%esp), %edx
	movl      %ebx, 8(%eax)
	movl      %eax, %ebx
	movl      %ebp, 4(%eax)
.L08053FC9:
	movl      %edx, 12(%ebx)
.L08053FCC:
	addl      $76, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053FD6:
	movl      $16, (%esp)
	movl      $8, %esi
	call      .L08051E00
.L08053FE7:
	movl      %eax, %ebx
	movl      $4, (%eax)
	movl      %ebp, 4(%eax)
	xorl      %eax, %eax
	call      .L080546C0
.L08053FF9:
	movl      $0, 12(%ebx)
	movl      %eax, 8(%ebx)
	jmp       .L08053F55
.L08054008:
	movl      .LD08061198, %eax
	movl      $1, %esi
	xorl      %ebx, %ebx
	addl      $1, .LBSS0806399C
	leal      60(%esp), %ebp
	movl      $0, 52(%esp)
	leal      52(%esp), %edi
	movl      %eax, 28(%esp)
	leal      56(%esp), %eax
	movl      $0, 56(%esp)
	movl      $0, 60(%esp)
	movl      %eax, 24(%esp)
.L08054047:
	movl      %esi, .LBSS080639A0
	call      .L08053CF0
.L08054052:
	cmpl      $11, %eax
	je        .L0805451D
.L0805405B:
	cmpl      $12, %eax
	je        .L080544E8
.L08054064:
	cmpl      $7, %eax
	je        .L08054455
.L0805406D:
	movl      24(%esp), %eax
	addl      $1, .LBSS0806399C
	movl      $0, (%edi)
	movl      $0, (%eax)
	movl      $0, (%ebp)
	movl      $20, (%esp)
	call      .L08051E00
.L08054097:
	movl      $0, (%eax)
	movl      %eax, %ebx
	movl      28(%esp), %eax
	movl      %eax, 4(%ebx)
	movl      52(%esp), %eax
	movl      %eax, 12(%ebx)
	movl      56(%esp), %eax
	movl      %eax, 8(%ebx)
	movl      60(%esp), %eax
	movl      %eax, 16(%ebx)
	addl      $76, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080540C5:
	movl      $16, (%esp)
	call      .L08051E00
.L080540D1:
	movl      $12, (%eax)
	movl      %eax, %ebx
	movl      %ebp, 4(%eax)
	call      .L08053CF0
.L080540E1:
	cmpl      $12, %eax
	jne       .L080545AE
.L080540EA:
	movl      $16, (%esp)
	call      .L08051E00
.L080540F6:
	movl      %eax, 8(%ebx)
	movl      $15, (%eax)
	movl      .LBSS080639BC, %edx
	movl      $0, 4(%eax)
	movl      $7, .LBSS080639A0
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %edx
	movl      %edx, 12(%eax)
	call      .L08053CF0
.L08054127:
	cmpl      $23, %eax
	jne       .L08054590
.L08054130:
	leal      12(%ebx), %esi
	nop       
	leal      (%esi), %esi
.L08054138:
	movl      $6, .LBSS080639A0
	call      .L08053CF0
.L08054147:
	cmpl      $19, %eax
	je        .L08054200
.L08054150:
	cmpl      $7, .LBSS080639C0
	je        .L08054408
.L0805415D:
	movl      $16, (%esp)
	call      .L08051E00
.L08054169:
	movl      %eax, (%esi)
	movl      %eax, %edi
	movl      $13, (%eax)
	leal      8(%eax), %esi
	jmp       .L08054184
.L08054178:
	movl      44(%esp), %esi
	addl      $4, %esi
	call      .L08053CF0
.L08054184:
	movl      $16, (%esp)
	call      .L08051E00
.L08054190:
	movl      %eax, 44(%esp)
	movl      %eax, (%esi)
	movl      44(%esp), %eax
	movl      $15, (%eax)
	movl      44(%esp), %eax
	movl      .LBSS080639BC, %edx
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %edx
	movl      %edx, 12(%eax)
	call      .L08053CF0
.L080541BB:
	cmpl      $6, %eax
	je        .L08054178
.L080541C0:
	movl      44(%esp), %eax
	cmpl      $8, .LBSS080639C0
	movl      $0, 4(%eax)
	jne       .L08054586
.L080541D8:
	movl      $2, %eax
	call      .L080546C0
.L080541E2:
	leal      4(%edi), %esi
	movl      $6, .LBSS080639A0
	movl      %eax, 12(%edi)
	call      .L08053CF0
.L080541F7:
	cmpl      $19, %eax
	jne       .L080543F0
.L08054200:
	movl      $0, (%esi)
	jmp       .L08053F62
.L0805420B:
	movl      $16, (%esp)
	call      .L08051E00
.L08054217:
	movl      %eax, %ebx
	movl      $8, (%eax)
	xorl      %eax, %eax
	call      .L080546C0
.L08054226:
	movl      %eax, 4(%ebx)
	call      .L08053CF0
.L0805422E:
	cmpl      $24, %eax
	jne       .L08054572
.L08054237:
	xorl      %eax, %eax
	movl      %ebx, %edi
	call      .L080546C0
.L08054240:
	movl      %eax, 8(%ebx)
	jmp       .L08054283
# ----------------------
.L08054245:
	.ascii	"\215v\000"
.L08054248:
	movl      $16, (%esp)
	call      .L08051E00
.L08054254:
	movl      %eax, 12(%edi)
	movl      %eax, %esi
	movl      $8, (%eax)
	xorl      %eax, %eax
	call      .L080546C0
.L08054266:
	movl      %eax, 4(%esi)
	call      .L08053CF0
.L0805426E:
	cmpl      $24, %eax
	jne       .L08054572
.L08054277:
	xorl      %eax, %eax
	movl      %esi, %edi
	call      .L080546C0
.L08054280:
	movl      %eax, 8(%esi)
.L08054283:
	call      .L08053CF0
.L08054288:
	cmpl      $17, %eax
	je        .L08054248
.L0805428D:
	cmpl      $18, .LBSS080639C0
	je        .L0805455E
.L0805429A:
	movl      $0, 12(%edi)
	movl      $20, %esi
	addl      $1, .LBSS0806399C
	jmp       .L08053F55
.L080542B2:
	movl      $12, (%esp)
	call      .L08051E00
.L080542BE:
	movl      %eax, %ebx
	xorl      %eax, %eax
	cmpl      $26, .LBSS080639C0
	setne     %al
	addl      $9, %eax
	movl      %eax, (%ebx)
	xorl      %eax, %eax
	call      .L080546C0
.L080542D8:
	movl      %eax, 4(%ebx)
	call      .L08053CF0
.L080542E0:
	cmpl      $15, %eax
	jne       .L080545A4
.L080542E9:
	xorl      %eax, %eax
	movl      $16, %esi
	call      .L080546C0
.L080542F5:
	movl      %eax, 8(%ebx)
	jmp       .L08053F55
.L080542FD:
	call      .L08053CF0
.L08054302:
	cmpl      $12, %eax
	jne       .L0805459A
.L0805430B:
	movl      .LBSS080639B0, %eax
	testl     %eax, %eax
	jne       .L0805459A
.L08054318:
	movl      .LBSS080639BC, %eax
	movl      %eax, (%esp)
	call      .L08053C70
.L08054325:
	cmpb      $0, (%eax)
	jne       .L0805459A
.L0805432E:
	movl      $20, (%esp)
	call      .L08051E00
.L0805433A:
	movl      $11, (%eax)
	movl      %eax, %ebx
	movl      %ebp, 4(%eax)
	movl      .LBSS080639BC, %eax
	movl      $7, .LBSS080639A0
	movl      %eax, 16(%ebx)
	call      .L08053CF0
.L0805435C:
	cmpl      $23, %eax
	jne       .L08054412
.L08054365:
	leal      44(%esp), %esi
	jmp       .L08054399
# ----------------------
.L0805436B:
	.ascii	"\220\215t&\000"
.L08054370:
	movl      $16, (%esp)
	call      .L08051E00
.L0805437C:
	movl      $15, (%eax)
	movl      .LBSS080639BC, %edx
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %edx
	movl      %edx, 12(%eax)
	movl      %eax, (%esi)
	leal      4(%eax), %esi
.L08054399:
	call      .L08053CF0
.L0805439E:
	cmpl      $12, %eax
	je        .L08054370
.L080543A3:
	movl      $0, (%esi)
	movl      44(%esp), %eax
	movl      %eax, 8(%ebx)
	movl      .LBSS080639C0, %eax
	subl      $1, %eax
	cmpl      $1, %eax
	ja        .L08053F32
.L080543C1:
	movl      $7, .LBSS080639A0
	call      .L08053CF0
.L080543D0:
	cmpl      $15, %eax
	jne       .L080545A4
.L080543D9:
	xorl      %eax, %eax
	movl      $16, %esi
	call      .L080546C0
.L080543E5:
	movl      %eax, 12(%ebx)
	jmp       .L08053F55
# ----------------------
.L080543ED:
	.ascii	"\215v\000"
.L080543F0:
	cmpl      $9, %eax
	je        .L08054138
.L080543F9:
	movl      $9, %eax
	call      .L08053B50
# ----------------------
.L08054403:
	.ascii	"\220\215t&\000"
.L08054408:
	call      .L08053CF0
.L0805440D:
	jmp       .L0805415D
.L08054412:
	movl      $16, (%esp)
	call      .L08051E00
.L0805441E:
	movl      $15, (%eax)
	cmpl      $2, .LBSS080639C0
	movl      $.LC0805A35B, 8(%eax)
	movl      $0, 12(%eax)
	movl      $0, 4(%eax)
	movl      %eax, 8(%ebx)
	je        .L080543C1
.L08054449:
	addl      $1, .LBSS0806399C
	jmp       .L080543C1
.L08054455:
	movl      52(%esp), %eax
	testl     %eax, %eax
	je        .L0805406D
.L08054461:
	addl      $4, %eax
	cmpl      %eax, %edi
	jne       .L0805406D
.L0805446C:
	movl      56(%esp), %eax
	testl     %eax, %eax
	jne       .L0805406D
.L08054478:
	movl      60(%esp), %eax
	testl     %eax, %eax
	jne       .L0805406D
.L08054484:
	call      .L08053CF0
.L08054489:
	cmpl      $8, %eax
	jne       .L08054586
.L08054492:
	movl      8(%ebx), %esi
	movl      %esi, (%esp)
	call      .L08053C70
.L0805449D:
	cmpb      $0, (%eax)
	jne       .L0805457C
.L080544A6:
	movl      %esi, (%esp)
	call      .L0804CAD0
.L080544AE:
	testl     %eax, %eax
	je        .L080544BC
.L080544B2:
	testb     $1, 8(%eax)
	jne       .L0805457C
.L080544BC:
	movl      $14, (%ebx)
	movl      .LD08061198, %eax
	movl      $7, .LBSS080639A0
	movl      %eax, 4(%ebx)
	call      .L08053F10
.L080544D9:
	movl      %eax, 12(%ebx)
	jmp       .L08053FCC
# ----------------------
.L080544E1:
	.ascii	"\215\264&\000\000\000\000"
.L080544E8:
	movl      $16, (%esp)
	call      .L08051E00
.L080544F4:
	testl     %esi, %esi
	movl      $15, (%eax)
	movl      .LBSS080639BC, %edx
	movl      %eax, %ebx
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %eax
	movl      %eax, 12(%ebx)
	jne       .L08054533
.L08054511:
	movl      %ebx, (%edi)
	xorl      %esi, %esi
	leal      4(%ebx), %edi
	jmp       .L08054047
.L0805451D:
	movl      .LBSS080639A4, %ebx
	movl      %ebx, (%ebp)
	leal      4(%ebx), %ebp
	call      .L08053E30
.L0805452E:
	jmp       .L08054047
.L08054533:
	movl      %edx, (%esp)
	movl      %edx, 20(%esp)
	call      .L08053C70
.L0805453F:
	movl      20(%esp), %edx
	cmpl      %eax, %edx
	je        .L08054511
.L08054547:
	cmpb      $61, (%eax)
	jne       .L08054511
.L0805454C:
	movl      24(%esp), %eax
	movl      %ebx, (%eax)
	leal      4(%ebx), %eax
	movl      %eax, 24(%esp)
	jmp       .L08054047
.L0805455E:
	xorl      %eax, %eax
	movl      $20, %esi
	call      .L080546C0
.L0805456A:
	movl      %eax, 12(%edi)
	jmp       .L08053F55
.L08054572:
	movl      $24, %eax
	call      .L08053B50
.L0805457C:
	movl      $.LC0805A5C4, %eax
	call      .L08053B30
.L08054586:
	movl      $8, %eax
	call      .L08053B50
.L08054590:
	movl      $23, %eax
	call      .L08053B50
.L0805459A:
	movl      $.LC0805A5AE, %eax
	call      .L08053B30
.L080545A4:
	movl      $15, %eax
	call      .L08053B50
.L080545AE:
	movl      $12, %eax
	call      .L08053B50
.L080545B8:
	movl      %esi, %eax
	call      .L08053B50
# ----------------------
.L080545BF:
	.byte	144
.L080545C0:
	subl      $44, %esp
	movl      %ebx, 28(%esp)
	movl      %esi, 32(%esp)
	movl      %edi, 36(%esp)
	movl      %ebp, 40(%esp)
	call      .L08053CF0
.L080545D8:
	cmpl      $13, %eax
	je        .L08054630
.L080545DD:
	addl      $1, .LBSS0806399C
	xorl      %edi, %edi
.L080545E6:
	call      .L08053F10
.L080545EB:
	movl      %eax, %ebx
	call      .L08053CF0
.L080545F2:
	cmpl      $6, %eax
	je        .L08054648
.L080545F7:
	addl      $1, .LBSS0806399C
	testl     %edi, %edi
	movl      %ebx, %eax
	je        .L08054619
.L08054604:
	movl      $8, (%esp)
	call      .L08051E00
.L08054610:
	movl      $25, (%eax)
	movl      %ebx, 4(%eax)
.L08054619:
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
# ----------------------
.L0805462D:
	.ascii	"\215v\000"
.L08054630:
	movl      $3, .LBSS080639A0
	movl      $1, %edi
	jmp       .L080545E6
# ----------------------
.L08054641:
	.ascii	"\215\264&\000\000\000\000"
.L08054648:
	movl      $12, (%esp)
	call      .L08051E00
.L08054654:
	movl      $1, (%eax)
	movl      %eax, %ebp
	movl      $0, 4(%eax)
	movl      $8, (%esp)
	call      .L08051E00
.L0805466F:
	movl      %eax, 8(%ebp)
	movl      %eax, %esi
	movl      %ebx, 4(%eax)
	jmp       .L08054682
# ----------------------
.L08054679:
	.ascii	"\215\264&\000\000\000\000"
.L08054680:
	movl      %ebx, %esi
.L08054682:
	movl      $8, (%esp)
	call      .L08051E00
.L0805468E:
	movl      $7, .LBSS080639A0
	movl      %eax, %ebx
	call      .L08053F10
.L0805469F:
	movl      %ebx, (%esi)
	movl      %eax, 4(%ebx)
	call      .L08053CF0
.L080546A9:
	cmpl      $6, %eax
	je        .L08054680
.L080546AE:
	movl      $0, (%ebx)
	movl      %ebp, %ebx
	jmp       .L080545F7
# ----------------------
.L080546BB:
	.ascii	"\220\215t&\000"
.L080546C0:
	pushl     %ebp
	xorl      %ebp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	cmpl      $2, %eax
	movl      %eax, 28(%esp)
	movl      $7, .LBSS080639A0
	je        .L0805479B
.L080546E0:
	call      .L080545C0
.L080546E5:
	movl      %eax, %ebx
	jmp       .L08054721
# ----------------------
.L080546E9:
	.ascii	"\215\264&\000\000\000\000"
.L080546F0:
	cmpl      $5, %eax
	jne       .L08054738
.L080546F5:
	movl      $6, %edi
.L080546FA:
	movl      $7, .LBSS080639A0
	call      .L080545C0
.L08054709:
	movl      $12, (%esp)
	movl      %eax, %esi
	call      .L08051E00
.L08054717:
	movl      %ebx, 4(%eax)
	movl      %eax, %ebx
	movl      %edi, (%eax)
	movl      %esi, 8(%eax)
.L08054721:
	call      .L08053CF0
.L08054726:
	cmpl      $4, %eax
	jne       .L080546F0
.L0805472B:
	movl      $5, %edi
	jmp       .L080546FA
# ----------------------
.L08054732:
	.ascii	"\215\266\000\000\000\000"
.L08054738:
	addl      $1, .LBSS0806399C
	call      .L08053CF0
.L08054744:
	cmpl      $3, %eax
	movl      %eax, %esi
	je        .L080547F8
.L0805474F:
	testl     %ebp, %ebp
	je        .L080547C0
.L08054753:
	movl      $12, (%esp)
	call      .L08051E00
.L0805475F:
	cmpl      $1, %esi
	movl      %ebp, 4(%eax)
	movl      %eax, %ebp
	movl      $7, (%eax)
	movl      %ebx, 8(%eax)
	je        .L080547C7
.L08054772:
	jle       .L080547D8
.L08054774:
	cmpl      $3, %esi
	jg        .L080547DC
.L08054779:
	leal      (%esi), %esi
	call      .L08053CF0
.L08054785:
	cmpl      $1, %eax
	je        .L080547C7
.L0805478A:
	addl      $1, .LBSS0806399C
.L08054791:
	movl      $7, .LBSS080639A0
.L0805479B:
	call      .L08053CF0
.L080547A0:
	addl      $1, .LBSS0806399C
	cmpb      $0, .LC0805A874(%eax)
	je        .L080546E0
.L080547B4:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L080547BE:
	.value	36966
.L080547C0:
	cmpl      $1, %esi
	movl      %ebx, %ebp
	jne       .L08054772
.L080547C7:
	call      .L08055720
.L080547CC:
	cmpl      $1, 28(%esp)
	jne       .L08054791
.L080547D3:
	jmp       .L080547B4
# ----------------------
.L080547D5:
	.ascii	"\215v\000"
.L080547D8:
	testl     %esi, %esi
	je        .L08054827
.L080547DC:
	cmpl      $1, 28(%esp)
	je        .L0805484A
.L080547E3:
	addl      $1, .LBSS0806399C
	addl      $44, %esp
	popl      %ebx
	movl      %ebp, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L080547F4:
	.long	2520205
.L080547F8:
	movl      (%ebx), %eax
	cmpl      $1, %eax
	je        .L08054837
.L080547FF:
	cmpl      $2, %eax
	je        .L0805481C
.L08054804:
	movl      $16, (%esp)
	call      .L08051E00
.L08054810:
	movl      %ebx, 8(%eax)
	movl      %eax, %ebx
	movl      $0, 12(%eax)
.L0805481C:
	movl      $3, (%ebx)
	jmp       .L0805474F
.L08054827:
	movl      .LBSS080639B8, %eax
	testl     %eax, %eax
	je        .L08054843
.L08054830:
	call      .L08055720
.L08054835:
	jmp       .L080547E3
.L08054837:
	movl      $1, 4(%ebx)
	jmp       .L0805474F
.L08054843:
	call      .L0804F730
.L08054848:
	jmp       .L080547E3
.L0805484A:
	movl      $-1, %eax
	call      .L08053B50
# ----------------------
.L08054854:
	.long	46733
	.long	-1081278464
	.long	0
.L08054860:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	movl      %edx, %ebx
	subl      $108, %esp
	movl      .LD080611A8, %edi
	movl      %ebx, %eax
	movl      %ecx, -52(%ebp)
	xorl      %ecx, %ecx
	movl      %gs:20, %edx
	movl      %edx, -28(%ebp)
	xorl      %edx, %edx
	cmpl      $.LC0805BA42, %ebx
	movl      %esi, %ebx
	sete      %cl
	movl      %eax, %esi
	movl      %ecx, -68(%ebp)
	movl      $0, -32(%ebp)
	movl      $0, -64(%ebp)
	movl      $0, -60(%ebp)
	movl      $0, -88(%ebp)
	movl      $0, -56(%ebp)
	movl      $0, -72(%ebp)
.L080548C0:
	cmpl      $1, -52(%ebp)
	jbe       .L08054979
.L080548CA:
	cmpl      $-129, %ebx
	je        .L08055248
.L080548D6:
	movl      8(%ebp), %eax
	testl     %eax, %eax
	jne       .L08054E08
.L080548E1:
	movl      -52(%ebp), %edx
	movl      %edi, %ecx
	subl      .LD080611A8, %ecx
	movl      %esi, -48(%ebp)
	movl      %ecx, -44(%ebp)
	movl      %edx, %esi
	jmp       .L08054919
# ----------------------
.L080548F6:
	.value	36966
.L080548F8:
	movb      %bl, (%edi)
	movzbl    (%esi), %eax
	addl      $1, %edi
	testb     %al, %al
	je        .L08054938
.L08054904:
	movsbl    %al, %eax
	cmpl      %ebx, %eax
	jne       .L080550E8
.L0805490F:
	call      .L0804FB00
.L08054914:
	addl      $1, %esi
	movl      %eax, %ebx
.L08054919:
	cmpl      .LD080611A0, %edi
	jne       .L080548F8
.L08054921:
	call      .L080520D0
.L08054926:
	movl      %eax, %edi
	movb      %bl, (%edi)
	movzbl    (%esi), %eax
	addl      $1, %edi
	testb     %al, %al
	jne       .L08054904
.L08054934:
	leal      (%esi), %esi
.L08054938:
	cmpl      $-130, %ebx
	movl      -48(%ebp), %esi
	je        .L080550C8
.L08054947:
	cmpl      $10, %ebx
	je        .L080550C8
.L08054950:
	movl      .LD080611A8, %eax
	movl      -44(%ebp), %edx
	leal      1(%eax,%edx), %ecx
	subl      %ecx, %edi
	je        .L08054974
.L08054960:
	movl      %ebx, %edx
	movsbl    -1(%ecx), %ebx
	shrl      $31, %edx
	subl      %edx, %edi
	movl      %edi, -48(%ebp)
	jne       .L08055291
.L08054974:
	movl      -44(%ebp), %edi
	addl      %eax, %edi
.L08054979:
	movl      .LD080611A0, %eax
	subl      %edi, %eax
	cmpl      $3, %eax
	jbe       .L080549D4
.L08054985:
	cmpb      $14, (%esi,%ebx)
	jbe       .L080549EC
.L0805498B:
	movl      -56(%ebp), %eax
	testl     %eax, %eax
	je        .L08054E30
.L08054996:
	cmpl      $-129, %ebx
	je        .L080549A3
.L0805499E:
	movb      %bl, (%edi)
	addl      $1, %edi
.L080549A3:
	movl      .LBSS080616E0, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616E0
	js        .L08054DF8
.L080549B8:
	movl      .LBSS080616E8, %eax
	movsbl    (%eax), %ebx
	addl      $1, %eax
	movl      %eax, .LBSS080616E8
	movl      .LD080611A0, %eax
	subl      %edi, %eax
	cmpl      $3, %eax
	ja        .L08054985
.L080549D4:
	movl      %edi, 4(%esp)
	movl      $4, (%esp)
	call      .L080520F0
.L080549E4:
	cmpb      $14, (%esi,%ebx)
	movl      %eax, %edi
	ja        .L0805498B
.L080549EC:
	movzbl    (%esi,%ebx), %eax
	jmp       *.LC0805A754(,%eax,4)
# ----------------------
.L080549F7:
	.byte	144
.L080549F8:
	cmpb      $0, -68(%ebp)
	je        .L08054EE0
.L08054A02:
	movb      $129, (%edi)
	addl      $1, %edi
	jmp       .L0805499E
# ----------------------
.L08054A0A:
	.ascii	"\215\266\000\000\000\000"
.L08054A10:
	movl      -60(%ebp), %eax
	testl     %eax, %eax
	je        .L08055270
.L08054A1B:
	movb      %bl, (%edi)
	addl      $1, %edi
	subl      $1, -60(%ebp)
	jmp       .L080549A3
# ----------------------
.L08054A29:
	.ascii	"\215\264&\000\000\000\000"
.L08054A30:
	addl      $1, -60(%ebp)
	movb      %bl, (%edi)
	addl      $1, %edi
	jmp       .L080549A3
# ----------------------
.L08054A3E:
	.value	36966
.L08054A40:
	movl      -56(%ebp), %eax
	testl     %eax, %eax
	je        .L0805499E
.L08054A4B:
	subl      $1, -56(%ebp)
	cmpl      $1, -64(%ebp)
	movb      $131, (%edi)
	adcl      $-1, -64(%ebp)
	addl      $1, %edi
	jmp       .L080549A3
# ----------------------
.L08054A62:
	.ascii	"\215\266\000\000\000\000"
.L08054A68:
	call      .L0804FB40
.L08054A6D:
	cmpl      $-128, %eax
	movl      %eax, %edx
	jl        .L08054F80
.L08054A78:
	testb     $8, .LBSS080639A0
	jne       .L08054F80
.L08054A85:
	cmpl      $123, %eax
	jne       .L08054F40
.L08054A8E:
	cmpl      $40, %edx
	je        .L08055319
.L08054A97:
	movb      $130, (%edi)
	movl      .LD080611A8, %eax
	leal      1(%edi), %ecx
	subl      %eax, %ecx
	cmpl      $123, %edx
	leal      2(%edi), %eax
	movl      %ecx, -84(%ebp)
	movl      %eax, -76(%ebp)
	jne       .L080555B0
.L08054AB6:
	call      .L0804FB40
.L08054ABB:
	movl      $0, -48(%ebp)
	movl      %eax, %edx
.L08054AC4:
	cmpl      $95, %edx
	je        .L080551C7
.L08054ACD:
	movl      %edx, -104(%ebp)
	call      __ctype_b_loc
.L08054AD5:
	movl      -104(%ebp), %edx
	movl      %esi, -80(%ebp)
	movl      -48(%ebp), %esi
	movl      %edi, -92(%ebp)
	movl      %edx, %ebx
	movl      %eax, -44(%ebp)
	movl      (%eax), %eax
	movl      %eax, %edx
	movzbl    %bl, %eax
	testb     $4, 1(%edx,%eax,2)
	jne       .L08054B57
.L08054AF4:
	leal      (%esi), %esi
.L08054AF8:
	leal      -48(%ebx), %eax
	cmpl      $9, %eax
	jbe       .L080552E8
.L08054B04:
	movsbl    %bl, %eax
	movl      %ebx, %edi
	movsbl    .LC0805B6E2(%eax), %eax
	testb     $17, %al
	je        .L0805507D
.L08054B18:
	call      .L0804FB40
.L08054B1D:
	cmpl      $35, %ebx
	jne       .L08055220
.L08054B26:
	testl     %esi, %esi
	jne       .L08055220
.L08054B2E:
	cmpl      $95, %eax
	je        .L08055000
.L08054B37:
	movl      -44(%ebp), %ecx
	movl      (%ecx), %edx
	testb     $8, (%edx,%eax,2)
	je        .L08055378
.L08054B46:
	movl      %eax, %ebx
	movl      $10, %esi
	movzbl    %bl, %eax
	testb     $4, 1(%edx,%eax,2)
	je        .L08054AF8
.L08054B57:
	movl      %esi, -48(%ebp)
	movl      -76(%ebp), %edi
	movl      -80(%ebp), %esi
	jmp       .L0805500F
# ----------------------
.L08054B65:
	.ascii	"\215v\000"
.L08054B68:
	movl      $1, -48(%ebp)
.L08054B6F:
	xorl      %ebx, %ebx
	subl      .LD080611A8, %edi
	jne       .L08055140
.L08054B7D:
	movl      -48(%ebp), %eax
	testl     %eax, %eax
	je        .L08054C56
.L08054B88:
	movl      .LD080611A8, %eax
	movl      %eax, -44(%ebp)
.L08054B90:
	movl      .LBSS080639A8, %eax
	testl     %eax, %eax
	jne       .L08054BD9
.L08054B99:
	call      .L0804FB40
.L08054B9E:
	cmpl      $10, %eax
	je        .L08054BED
.L08054BA3:
	jg        .L08054C08
.L08054BA5:
	leal      130(%eax), %edx
	cmpl      $1, %edx
	jbe       .L08054FF0
.L08054BB4:
	movl      %eax, %edx
.L08054BB6:
	movl      -44(%ebp), %eax
	cmpl      .LD080611A0, %eax
	je        .L0805534B
.L08054BC5:
	movl      -44(%ebp), %eax
	movb      %dl, (%eax)
	addl      $1, %eax
	movl      %eax, -44(%ebp)
	movl      .LBSS080639A8, %eax
	testl     %eax, %eax
	je        .L08054B99
.L08054BD9:
	movl      $2, %eax
	call      .L080556B0
.L08054BE3:
	call      .L0804FB40
.L08054BE8:
	cmpl      $10, %eax
	jne       .L08054BA3
.L08054BED:
	movl      .LBSS080639AC, %eax
	movl      $10, %edx
	addl      $1, .LD08061198
	movl      %eax, .LBSS080639A8
	jmp       .L08054BB6
# ----------------------
.L08054C05:
	.ascii	"\215v\000"
.L08054C08:
	cmpl      $92, %eax
	je        .L08054F90
.L08054C11:
	cmpl      $96, %eax
	jne       .L08054BB4
.L08054C16:
	movl      -44(%ebp), %eax
	cmpl      %eax, .LD080611A0
	jne       .L08054C30
.L08054C21:
	call      .L080520D0
.L08054C26:
	movl      %eax, -44(%ebp)
	leal      (%esi), %esi
.L08054C30:
	movl      -44(%ebp), %eax
	movl      %eax, %edx
	movb      $0, (%eax)
	movl      .LD080611A8, %eax
	addl      $1, %edx
	cmpl      %eax, %edx
	je        .L08054C56
.L08054C44:
	subl      %eax, %edx
	movl      %edx, (%esp)
	call      .L08051E00
.L08054C4E:
	movl      %eax, (%esp)
	call      .L0804FC90
.L08054C56:
	movl      -32(%ebp), %eax
	leal      -32(%ebp), %edx
	testl     %eax, %eax
	je        .L08054C68
.L08054C60:
	movl      %eax, %edx
	movl      (%eax), %eax
	testl     %eax, %eax
	jne       .L08054C60
.L08054C68:
	movl      %edx, -104(%ebp)
	movl      $8, (%esp)
	call      .L08051E00
.L08054C77:
	movl      -104(%ebp), %edx
	movl      %eax, (%edx)
	movl      $0, (%eax)
	movl      -48(%ebp), %eax
	testl     %eax, %eax
	jne       .L08054EF8
.L08054C8D:
	movl      $2, %eax
	movl      %edx, -104(%ebp)
	call      .L080546C0
.L08054C9A:
	movl      %eax, -44(%ebp)
	call      .L08053CF0
.L08054CA2:
	movl      -104(%ebp), %edx
	cmpl      $8, %eax
	jne       .L080555A6
.L08054CAE:
	movl      (%edx), %eax
	movl      -44(%ebp), %ecx
	cmpl      .LD080611A4, %edi
	movl      %ecx, 4(%eax)
	jb        .L08054CCD
.L08054CBE:
	nop       
.L08054CC0:
	call      .L08051FD0
.L08054CC5:
	cmpl      .LD080611A4, %edi
	jae       .L08054CC0
.L08054CCD:
	testl     %ebx, %ebx
	movl      .LD080611A8, %edx
	je        .L08054CEF
.L08054CD7:
	movl      %edx, (%esp)
	movl      %edx, -104(%ebp)
	movl      %edi, 8(%esp)
	movl      %ebx, 4(%esp)
	call      memcpy
.L08054CEA:
	movl      -104(%ebp), %edx
	addl      %edi, %edx
.L08054CEF:
	movb      $132, (%edx)
	leal      1(%edx), %edi
	jmp       .L080549A3
# ----------------------
.L08054CFA:
	.ascii	"\215\266\000\000\000\000"
.L08054D00:
	movl      -56(%ebp), %eax
	testl     %eax, %eax
	je        .L08054EC0
.L08054D0B:
	movl      -64(%ebp), %eax
	movl      -52(%ebp), %edx
	testl     %eax, %eax
	movl      $0, %eax
	cmovne    -68(%ebp), %eax
	movl      %eax, -68(%ebp)
	movl      $.LC0805BB62, %eax
	cmove     %eax, %esi
	addl      $1, -72(%ebp)
	testl     %edx, %edx
	jne       .L080549A3
.L08054D33:
	movb      $136, (%edi)
	addl      $1, %edi
	jmp       .L080549A3
# ----------------------
.L08054D3E:
	.value	36966
.L08054D40:
	movl      $1, -68(%ebp)
	movl      $.LC0805BA42, %esi
.L08054D4C:
	movl      -52(%ebp), %edx
	testl     %edx, %edx
	jne       .L080549A3
.L08054D57:
	jmp       .L08054D33
# ----------------------
.L08054D59:
	.ascii	"\215\264&\000\000\000\000"
.L08054D60:
	movl      $.LC0805B922, %esi
	jmp       .L08054D4C
# ----------------------
.L08054D67:
	.byte	144
.L08054D68:
	call      .L0804FB00
.L08054D6D:
	cmpl      $-130, %eax
	je        .L08055258
.L08054D78:
	cmpl      $10, %eax
	je        .L08055188
.L08054D81:
	cmpl      $92, %eax
	je        .L08054DB0
.L08054D86:
	cmpb      $0, -68(%ebp)
	je        .L08054DB0
.L08054D8C:
	cmpl      $36, %eax
	je        .L08054DB0
.L08054D91:
	cmpl      $96, %eax
	je        .L08054DB0
.L08054D96:
	cmpl      $34, %eax
	jne       .L080551FF
.L08054D9F:
	movl      -52(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L080551FF
.L08054DAA:
	leal      (%esi), %esi
.L08054DB0:
	movb      $129, (%edi)
	movb      %al, 1(%edi)
	addl      $2, %edi
	addl      $1, -72(%ebp)
	jmp       .L080549A3
# ----------------------
.L08054DC2:
	.ascii	"\215\266\000\000\000\000"
.L08054DC8:
	cmpl      $.LC0805BB62, %esi
	je        .L08054E30
.L08054DD0:
	movb      %bl, (%edi)
	movl      .LBSS080639AC, %ebx
	addl      $1, %edi
	addl      $1, .LD08061198
	testl     %ebx, %ebx
	jne       .L08055178
.L08054DEA:
	call      .L0804FB40
.L08054DEF:
	movl      %eax, %ebx
	jmp       .L080548C0
# ----------------------
.L08054DF6:
	.value	36966
.L08054DF8:
	call      .L0804F8D0
.L08054DFD:
	movl      %eax, %ebx
	nop       
	jmp       .L08054979
# ----------------------
.L08054E05:
	.ascii	"\215v\000"
.L08054E08:
	cmpl      $9, %ebx
	jne       .L080548E1
.L08054E11:
	leal      (%esi), %esi
.L08054E18:
	call      .L0804FB00
.L08054E1D:
	cmpl      $9, %eax
	je        .L08054E18
.L08054E22:
	movl      %eax, %ebx
	jmp       .L080548E1
# ----------------------
.L08054E29:
	.ascii	"\215\264&\000\000\000\000"
.L08054E30:
	movl      %esi, %eax
	movl      %ebx, %esi
	cmpl      $.LC0805B802, %eax
	movl      %eax, %ebx
	je        .L0805558A
.L08054E41:
	movl      -52(%ebp), %ecx
	testl     %ecx, %ecx
	sete      %al
	cmpl      $.LC0805BB62, %ebx
	jne       .L08055594
.L08054E55:
	movl      -56(%ebp), %edx
	testl     %edx, %edx
	jne       .L080555BC
.L08054E60:
	movb      $0, (%edi)
	movl      .LD080611A8, %ebx
	addl      $1, %edi
	subl      %ebx, %edi
	testb     %al, %al
	jne       .L080550F0
.L08054E76:
	movl      -72(%ebp), %ecx
	movl      -32(%ebp), %eax
	movl      %edi, (%esp)
	movl      %ecx, .LBSS080639B0
	movl      %eax, .LBSS080639B4
	call      .L08051E00
.L08054E8F:
	movl      $12, %eax
	movl      %ebx, .LBSS080639BC
	movl      $12, .LBSS080639C0
.L08054EA4:
	movl      -28(%ebp), %edx
	xorl      %gs:20, %edx
	jne       .L08055585
.L08054EB4:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08054EBC:
	.long	2520205
.L08054EC0:
	movl      -52(%ebp), %eax
	testl     %eax, %eax
	je        .L08054D0B
.L08054ECB:
	movb      %bl, (%edi)
	addl      $1, %edi
	movl      $0, -56(%ebp)
	jmp       .L080549A3
# ----------------------
.L08054EDC:
	.long	2520205
.L08054EE0:
	movl      -52(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L0805499E
.L08054EEB:
	movb      $129, (%edi)
	addl      $1, %edi
	jmp       .L0805499E
# ----------------------
.L08054EF6:
	.value	36966
.L08054EF8:
	movl      .LBSS080639AC, %ecx
	movl      $2, %eax
	movl      $0, .LBSS080639AC
	movl      %ecx, -100(%ebp)
	call      .L080546C0
.L08054F15:
	movl      -104(%ebp), %edx
	movl      -100(%ebp), %ecx
	movl      (%edx), %edx
	movl      %ecx, .LBSS080639AC
	movl      %eax, 4(%edx)
	call      .L0804FD00
.L08054F2B:
	movl      $0, .LBSS0806399C
	jmp       .L08054CC5
# ----------------------
.L08054F3A:
	.ascii	"\215\266\000\000\000\000"
.L08054F40:
	cmpl      $40, %eax
	je        .L08054A8E
.L08054F49:
	cmpl      $95, %eax
	je        .L080551A9
.L08054F52:
	movl      %eax, -104(%ebp)
	call      __ctype_b_loc
.L08054F5A:
	movl      -104(%ebp), %edx
	movzbl    %dl, %ecx
	movl      (%eax), %eax
	testb     $4, 1(%eax,%ecx,2)
	jne       .L08054A8E
.L08054F6D:
	movsbl    %dl, %eax
	movsbl    .LC0805B6E2(%eax), %eax
	testb     $17, %al
	jne       .L08054A8E
.L08054F7F:
	nop       
.L08054F80:
	movb      $36, (%edi)
	addl      $1, %edi
	call      .L0804F730
.L08054F8B:
	jmp       .L080549A3
.L08054F90:
	call      .L0804FB40
.L08054F95:
	cmpl      $10, %eax
	movl      %eax, %edx
	je        .L080551DC
.L08054FA0:
	cmpl      $96, %eax
	je        .L08054FE0
.L08054FA5:
	cmpl      $92, %eax
	je        .L08054FE0
.L08054FAA:
	cmpl      $36, %eax
	je        .L08055488
.L08054FB3:
	cmpl      $34, %eax
	jne       .L08054FBF
.L08054FB8:
	movl      -68(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L08054FE0
.L08054FBF:
	movl      -44(%ebp), %eax
	cmpl      .LD080611A0, %eax
	je        .L08055572
.L08054FCE:
	movl      -44(%ebp), %eax
	movb      $92, (%eax)
	addl      $1, %eax
	movl      %eax, -44(%ebp)
	leal      (%esi), %esi
.L08054FE0:
	cmpl      $-128, %edx
	jge       .L08054BB6
.L08054FE9:
	leal      (%esi), %esi
.L08054FF0:
	movl      $.LC0805A60A, %eax
	call      .L08053B30
# ----------------------
.L08054FFA:
	.ascii	"\215\266\000\000\000\000"
.L08055000:
	movl      -80(%ebp), %esi
	movl      %eax, %ebx
	movl      -76(%ebp), %edi
	movl      $10, -48(%ebp)
.L0805500F:
	cmpl      .LD080611A0, %edi
	je        .L08055130
.L0805501B:
	movb      %bl, (%edi)
	addl      $1, %edi
	call      .L0804FB40
.L08055025:
	cmpl      $95, %eax
	movl      %eax, %ebx
	je        .L0805500F
.L0805502C:
	movl      -44(%ebp), %ecx
	movzbl    %al, %edx
	movl      (%ecx), %eax
	testb     $8, (%eax,%edx,2)
	jne       .L0805500F
.L0805503A:
	movl      -48(%ebp), %eax
	movl      %edi, -76(%ebp)
	testl     %eax, %eax
	jne       .L08055083
.L08055044:
	cmpl      $37, %ebx
	je        .L0805545E
.L0805504D:
	cmpl      $58, %ebx
	je        .L08055338
.L08055056:
	cmpl      $35, %ebx
	je        .L08055495
.L0805505F:
	movl      %ebx, 4(%esp)
	movl      $.LC0805A7E0, (%esp)
	call      strchr
.L0805506F:
	testl     %eax, %eax
	je        .L08055088
.L08055073:
	subl      $.LC0805A7E0-1, %eax
	orl       %eax, -48(%ebp)
	jmp       .L08055088
.L0805507D:
	movl      %esi, -48(%ebp)
	movl      -80(%ebp), %esi
.L08055083:
	call      .L0804F730
.L08055088:
	movl      .LD080611A8, %eax
	movzbl    -48(%ebp), %edx
	movl      -84(%ebp), %ecx
	cmpl      $1, -48(%ebp)
	movb      %dl, (%eax,%ecx)
	je        .L080550A9
.L0805509D:
	addl      $1, -56(%ebp)
	cmpl      $1, -68(%ebp)
	sbbl      $-1, -64(%ebp)
.L080550A9:
	movl      -76(%ebp), %eax
	cmpl      .LD080611A0, %eax
	je        .L08055451
.L080550B8:
	movl      -76(%ebp), %eax
	movl      %eax, %edi
	movb      $61, (%eax)
	addl      $1, %edi
	jmp       .L080549A3
.L080550C8:
	movl      .LBSS080639AC, %eax
	movl      $-130, %ebx
	addl      $1, .LD08061198
	movl      %eax, .LBSS080639A8
	movl      .LD080611A8, %eax
	jmp       .L08054974
.L080550E8:
	movl      -48(%ebp), %esi
	jmp       .L08054950
.L080550F0:
	cmpl      $62, %esi
	sete      %dl
	cmpl      $60, %esi
	jne       .L080552DB
.L080550FF:
	cmpl      $2, %edi
	jg        .L08055123
.L08055104:
	movl      -72(%ebp), %eax
	testl     %eax, %eax
	jne       .L08055123
.L0805510B:
	movzbl    (%ebx), %esi
	leal      -48(%esi), %eax
	cmpb      $9, %al
	jbe       .L080553C3
.L08055119:
	movl      %esi, %eax
	testb     %al, %al
	je        .L080553C3
.L08055123:
	call      .L0804F730
.L08055128:
	jmp       .L08054E76
# ----------------------
.L0805512D:
	.ascii	"\215v\000"
.L08055130:
	call      .L080520D0
.L08055135:
	movl      %eax, %edi
	jmp       .L0805501B
# ----------------------
.L0805513C:
	.long	2520205
.L08055140:
	leal      30(%edi), %eax
	movl      $16, %ecx
	xorl      %edx, %edx
	divl      %ecx
	sall      $4, %eax
	subl      %eax, %esp
	movl      .LD080611A8, %eax
	leal      27(%esp), %ebx
	andl      $-16, %ebx
	movl      %edi, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      memcpy
.L0805516D:
	jmp       .L08054B7D
# ----------------------
.L08055172:
	.ascii	"\215\266\000\000\000\000"
.L08055178:
	movl      $2, %eax
	call      .L080556B0
.L08055182:
	jmp       .L08054DEA
# ----------------------
.L08055187:
	.byte	144
.L08055188:
	movl      .LBSS080639AC, %edx
	addl      $1, .LD08061198
	testl     %edx, %edx
	je        .L080549A3
.L0805519D:
	movb      $2, %al
	call      .L080556B0
.L080551A4:
	jmp       .L080549A3
.L080551A9:
	movb      $130, (%edi)
	movl      .LD080611A8, %ecx
	leal      1(%edi), %edx
	addl      $2, %edi
	movl      %edi, -76(%ebp)
	movl      $1, -48(%ebp)
	subl      %ecx, %edx
	movl      %edx, -84(%ebp)
.L080551C7:
	call      __ctype_b_loc
.L080551CC:
	movl      $95, %ebx
	movl      -76(%ebp), %edi
	movl      %eax, -44(%ebp)
	jmp       .L0805500F
.L080551DC:
	movl      .LBSS080639AC, %eax
	addl      $1, .LD08061198
	testl     %eax, %eax
	je        .L08054B90
.L080551F0:
	movl      $2, %eax
	call      .L080556B0
.L080551FA:
	jmp       .L08054B90
.L080551FF:
	cmpl      $125, %eax
	jne       .L0805520F
.L08055204:
	movl      -56(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L08054DB0
.L0805520F:
	movb      $92, (%edi)
	addl      $1, %edi
	jmp       .L08054DB0
# ----------------------
.L0805521A:
	.ascii	"\215\266\000\000\000\000"
.L08055220:
	movl      %esi, -48(%ebp)
	movl      %edi, %edx
	movl      -80(%ebp), %esi
	movl      -92(%ebp), %edi
	movl      %eax, %ebx
.L0805522D:
	movl      -48(%ebp), %eax
	movb      %dl, 2(%edi)
	addl      $3, %edi
	movl      %edi, -76(%ebp)
	testl     %eax, %eax
	jne       .L08055083
.L08055241:
	jmp       .L08055044
# ----------------------
.L08055246:
	.value	36966
.L08055248:
	call      .L0804FB00
.L0805524D:
	movl      %eax, %ebx
	nop       
	jmp       .L080548D6
# ----------------------
.L08055255:
	.ascii	"\215v\000"
.L08055258:
	movb      $129, (%edi)
	movb      $92, 1(%edi)
	addl      $2, %edi
	call      .L0804F730
.L08055267:
	jmp       .L080549A3
# ----------------------
.L0805526C:
	.long	2520205
.L08055270:
	call      .L0804FB40
.L08055275:
	cmpl      $41, %eax
	jne       .L08055368
.L0805527E:
	movb      $135, (%edi)
	addl      $1, %edi
	subl      $1, -88(%ebp)
	cmove     -96(%ebp), %esi
	jmp       .L080549A3
.L08055291:
	movl      %edi, %eax
	xorl      %edx, %edx
	movl      $16, %edi
	addl      $31, %eax
	divl      %edi
	sall      $4, %eax
	subl      %eax, %esp
	movl      -48(%ebp), %eax
	leal      27(%esp), %edi
	andl      $-16, %edi
	movl      %ecx, 4(%esp)
	movl      %eax, 8(%esp)
	movl      %edi, (%esp)
	call      mempcpy
.L080552BE:
	movb      $0, (%eax)
	movl      $0, 4(%esp)
	movl      %edi, (%esp)
	call      .L0804F740
.L080552D1:
	movl      .LD080611A8, %eax
	jmp       .L08054974
.L080552DB:
	testb     %dl, %dl
	jne       .L080550FF
.L080552E3:
	jmp       .L08055123
.L080552E8:
	movl      %esi, -48(%ebp)
	movl      -76(%ebp), %edi
	movl      -80(%ebp), %esi
	leal      (%esi), %esi
.L080552F8:
	cmpl      .LD080611A0, %edi
	je        .L0805535F
.L08055300:
	movb      %bl, (%edi)
	addl      $1, %edi
	call      .L0804FB40
.L0805530A:
	movl      %eax, %ebx
	leal      -48(%eax), %eax
	cmpl      $9, %eax
	jbe       .L080552F8
.L08055314:
	jmp       .L0805503A
.L08055319:
	call      .L0804FB40
.L0805531E:
	cmpl      $40, %eax
	je        .L080553AA
.L08055327:
	call      .L0804F730
.L0805532C:
	movl      $0, -48(%ebp)
	jmp       .L08054B6F
.L08055338:
	call      .L0804FB40
.L0805533D:
	movl      $16, -48(%ebp)
	movl      %eax, %ebx
	jmp       .L0805505F
.L0805534B:
	movb      %dl, -104(%ebp)
	call      .L080520D0
.L08055353:
	movzbl    -104(%ebp), %edx
	movl      %eax, -44(%ebp)
	jmp       .L08054BC5
.L0805535F:
	call      .L080520D0
.L08055364:
	movl      %eax, %edi
	jmp       .L08055300
.L08055368:
	call      .L0804F730
.L0805536D:
	movb      $41, (%edi)
	addl      $1, %edi
	jmp       .L080549A3
.L08055378:
	movl      -92(%ebp), %edi
	movl      %eax, %ebx
	movl      -80(%ebp), %esi
	call      .L0804FB40
.L08055385:
	cmpl      $125, %eax
	jne       .L0805543B
.L0805538E:
	cmpl      $125, %ebx
	je        .L0805543B
.L08055397:
	movl      %ebx, %edx
	movl      $125, %ebx
	movl      $10, -48(%ebp)
	jmp       .L0805522D
.L080553AA:
	addl      $1, -88(%ebp)
	cmpl      $1, -88(%ebp)
	je        .L0805549C
.L080553B8:
	movb      $134, (%edi)
	addl      $1, %edi
	jmp       .L080549A3
.L080553C3:
	movb      %dl, -104(%ebp)
	movl      $20, (%esp)
	call      .L08051E00
.L080553D2:
	movzbl    -104(%ebp), %edx
	testb     %dl, %dl
	movl      %eax, %ebx
	jne       .L080554A9
.L080553E0:
	movl      $0, 8(%eax)
	call      .L0804FB40
.L080553EC:
	cmpl      $60, %eax
	je        .L080554E6
.L080553F5:
	cmpl      $62, %eax
	je        .L080554DB
.L080553FE:
	cmpl      $38, %eax
	je        .L08055530
.L08055407:
	movl      $18, (%ebx)
	call      .L0804F730
.L08055412:
	movl      %esi, %edx
	testb     %dl, %dl
	je        .L08055421
.L08055418:
	movsbl    %dl, %eax
	subl      $48, %eax
	movl      %eax, 8(%ebx)
.L08055421:
	movl      %ebx, .LBSS080639A4
	movl      $11, %eax
	movl      $11, .LBSS080639C0
	jmp       .L08054EA4
.L0805543B:
	call      .L0804F730
.L08055440:
	movl      $35, %edx
	movl      $0, -48(%ebp)
	jmp       .L0805522D
.L08055451:
	call      .L080520D0
.L08055456:
	movl      %eax, -76(%ebp)
	jmp       .L080550B8
.L0805545E:
	movl      $6, %edi
.L08055463:
	call      .L0804FB40
.L08055468:
	cmpl      %eax, %ebx
	jne       .L08055481
.L0805546C:
	addl      $1, %edi
.L0805546F:
	movl      .LD080611A8, %eax
	movl      %edi, %ecx
	movl      -84(%ebp), %edx
	movb      %cl, (%eax,%edx)
	jmp       .L0805509D
.L08055481:
	call      .L0804F730
.L08055486:
	jmp       .L0805546F
.L08055488:
	movl      $36, %edx
	leal      (%esi), %esi
	jmp       .L08054BB6
.L08055495:
	movl      $8, %edi
	jmp       .L08055463
.L0805549C:
	movl      %esi, -96(%ebp)
	movl      $.LC0805B802, %esi
	jmp       .L080553B8
.L080554A9:
	movl      $1, 8(%eax)
	call      .L0804FB40
.L080554B5:
	cmpl      $62, %eax
	je        .L08055557
.L080554BE:
	cmpl      $124, %eax
	je        .L0805554C
.L080554C7:
	cmpl      $38, %eax
	jne       .L08055562
.L080554D0:
	movl      $21, (%ebx)
	jmp       .L08055412
.L080554DB:
	movl      $19, (%ebx)
	jmp       .L08055412
.L080554E6:
	movl      $16, (%esp)
	call      .L08051E00
.L080554F2:
	movl      $0, 8(%eax)
	movl      %eax, %ebx
	movl      $23, (%eax)
	movl      $16, (%esp)
	call      .L08051E00
.L0805550D:
	movl      %ebx, 4(%eax)
	movl      %eax, .LBSS080639C4
	call      .L0804FB40
.L0805551A:
	cmpl      $45, %eax
	movl      .LBSS080639C4, %eax
	jne       .L0805553B
.L08055524:
	movl      $1, 12(%eax)
	jmp       .L08055412
.L08055530:
	movl      $22, (%ebx)
	jmp       .L08055412
.L0805553B:
	movl      $0, 12(%eax)
	call      .L0804F730
.L08055547:
	jmp       .L08055412
.L0805554C:
	movl      $17, (%ebx)
	jmp       .L08055412
.L08055557:
	movl      $20, (%ebx)
	jmp       .L08055412
.L08055562:
	movl      $16, (%ebx)
	call      .L0804F730
.L0805556D:
	jmp       .L08055412
.L08055572:
	movl      %edx, -104(%ebp)
	call      .L080520D0
.L0805557A:
	movl      -104(%ebp), %edx
	movl      %eax, -44(%ebp)
	jmp       .L08054FCE
.L08055585:
	call      __stack_chk_fail
.L0805558A:
	movl      $.LC0805A5D6, %eax
	call      .L08053B30
.L08055594:
	testb     %al, %al
	je        .L08054E55
.L0805559C:
	movl      $.LC0805A5E3, %eax
	call      .L08053B30
.L080555A6:
	movl      $8, %eax
	call      .L08053B50
.L080555B0:
	movl      $1, -48(%ebp)
	jmp       .L08054AC4
.L080555BC:
	movl      $.LC0805A5FE, %eax
	call      .L08053B30
# ----------------------
.L080555C6:
	.ascii	"\215v\000\215\274'\000\000\000\000"
.L080555D0:
	pushl     %ebx
	subl      $56, %esp
	movl      64(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804FC90
.L080555E0:
	movl      .LBSS080639AC, %ebx
	movl      $0, .LBSS080639AC
	call      .L0804FB40
.L080555F5:
	movl      $1, %ecx
	movl      $.LC0805BA42, %edx
	movl      $0, (%esp)
	call      .L08054860
.L0805560B:
	movl      %ebx, .LBSS080639AC
	call      .L0804FD00
.L08055616:
	movl      .LBSS080639BC, %eax
	movl      $15, 28(%esp)
	movl      $0, 32(%esp)
	movl      $256, 8(%esp)
	movl      %eax, 36(%esp)
	movl      .LBSS080639B4, %eax
	movl      $0, 4(%esp)
	movl      %eax, 40(%esp)
	leal      28(%esp), %eax
	movl      %eax, (%esp)
	call      .L0804F400
.L08055654:
	movl      .LD080611A8, %eax
	addl      $56, %esp
	popl      %ebx
	ret       
# ----------------------
.L0805565E:
	.value	36966
.L08055660:
	movl      .LBSS080616E4, %eax
	cmpl      $1, %eax
	je        .L08055678
.L0805566A:
	cmpl      $2, %eax
	je        .L08055690
.L0805566F:
	movl      $.LBSS0806395C, %eax
	ret       
# ----------------------
.L08055675:
	.ascii	"\215v\000"
.L08055678:
	movl      .LD08061248, %eax
	addl      $4, %eax
	movl      %eax, 4(%esp)
	jmp       .L080555D0
# ----------------------
.L08055689:
	.ascii	"\215\264&\000\000\000\000"
.L08055690:
	movl      .LD08061258, %eax
	addl      $4, %eax
	movl      %eax, 4(%esp)
	jmp       .L080555D0
# ----------------------
.L080556A1:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L080556B0:
	subl      $44, %esp
	movl      %eax, .LBSS080616E4
	movl      .LD080611A4, %eax
	movl      %ebx, 36(%esp)
	leal      20(%esp), %ebx
	movl      %esi, 40(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	movl      $0, .LBSS080639A8
	call      .L08051EE0
.L080556DF:
	movl      .LD080611B0, %esi
	movl      $0, (%esp)
	call      .L08055660
.L080556F1:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C90
.L080556FD:
	movl      %ebx, (%esp)
	call      .L08051F50
.L08055705:
	movl      36(%esp), %ebx
	movl      40(%esp), %esi
	addl      $44, %esp
	ret       
# ----------------------
.L08055711:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08055720:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      .LBSS080639B8, %ebx
	movl      $0, .LBSS080639B8
	testl     %ebx, %ebx
	jne       .L080557A1
.L0805573B:
	jmp       .L080557B8
# ----------------------
.L0805573D:
	.ascii	"\215v\000"
.L08055740:
	movl      4(%ebx), %eax
	movl      $.LC0805B922, %esi
	movl      12(%ebx), %ebp
	movl      8(%ebx), %edi
	cmpl      $23, (%eax)
	movl      $.LC0805BA42, %eax
	cmovne    %eax, %esi
	call      .L0804FB40
.L0805575E:
	movl      %esi, %edx
	movl      %edi, %ecx
	movl      %ebp, (%esp)
	call      .L08054860
.L0805576A:
	movl      $16, (%esp)
	call      .L08051E00
.L08055776:
	movl      $15, (%eax)
	movl      .LBSS080639BC, %edx
	movl      $0, 4(%eax)
	movl      %edx, 8(%eax)
	movl      .LBSS080639B4, %edx
	movl      %edx, 12(%eax)
	movl      4(%ebx), %edx
	movl      %eax, 12(%edx)
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	je        .L080557B8
.L080557A1:
	movl      .LBSS080639A8, %esi
	testl     %esi, %esi
	je        .L08055740
.L080557AB:
	movl      $2, %eax
	call      .L080556B0
.L080557B5:
	jmp       .L08055740
# ----------------------
.L080557B7:
	.byte	144
.L080557B8:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080557C0:
	pushl     %ebx
	subl      $24, %esp
	movl      .LBSS080639A8, %ecx
	testl     %ecx, %ecx
	jne       .L08055888
.L080557D2:
	movl      .LBSS080616E0, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616E0
	js        .L080558F8
.L080557E7:
	movl      .LBSS080616E8, %eax
	movsbl    (%eax), %ebx
	addl      $1, %eax
	movl      %eax, .LBSS080616E8
.L080557F7:
	cmpl      $35, %ebx
	je        .L08055840
.L080557FC:
	jle       .L08055860
.L080557FE:
	cmpl      $41, %ebx
	je        .L08055908
.L08055807:
	jg        .L08055898
.L0805580D:
	cmpl      $38, %ebx
	je        .L080559C8
.L08055816:
	cmpl      $40, %ebx
	je        .L08055988
.L0805581F:
	xorl      %ecx, %ecx
	movl      $.LC0805BB62, %edx
	movl      %ebx, %eax
	movl      $0, (%esp)
	call      .L08054860
.L08055834:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08055839:
	.ascii	"\215\264&\000\000\000\000"
.L08055840:
	call      .L0804FB40
.L08055845:
	cmpl      $10, %eax
	je        .L08055851
.L0805584A:
	cmpl      $-130, %eax
	jne       .L08055840
.L08055851:
	call      .L0804F730
.L08055856:
	jmp       .L080557D2
# ----------------------
.L0805585B:
	.ascii	"\220\215t&\000"
.L08055860:
	cmpl      $9, %ebx
	je        .L080557D2
.L08055869:
	leal      (%esi), %esi
	jle       .L080558D8
.L08055872:
	cmpl      $10, %ebx
	je        .L080559A0
.L0805587B:
	cmpl      $32, %ebx
	nop       
	jne       .L0805581F
.L08055882:
	jmp       .L080557D2
# ----------------------
.L08055887:
	.byte	144
.L08055888:
	movl      $2, %eax
	call      .L080556B0
.L08055892:
	jmp       .L080557D2
# ----------------------
.L08055897:
	.byte	144
.L08055898:
	cmpl      $92, %ebx
	je        .L08055958
.L080558A1:
	cmpl      $124, %ebx
	je        .L08055938
.L080558AA:
	cmpl      $59, %ebx
	jne       .L0805581F
.L080558B3:
	call      .L0804FB40
.L080558B8:
	cmpl      $59, %eax
	jne       .L08055A40
.L080558C1:
	movl      $9, .LBSS080639C0
	movb      $9, %al
	jmp       .L08055834
# ----------------------
.L080558D2:
	.ascii	"\215\266\000\000\000\000"
.L080558D8:
	cmpl      $-130, %ebx
	je        .L08055920
.L080558E0:
	cmpl      $-129, %ebx
	jne       .L0805581F
.L080558EC:
	jmp       .L080557D2
# ----------------------
.L080558F1:
	.ascii	"\215\264&\000\000\000\000"
.L080558F8:
	call      .L0804F8D0
.L080558FD:
	movl      %eax, %ebx
	nop       
	jmp       .L080557F7
# ----------------------
.L08055905:
	.ascii	"\215v\000"
.L08055908:
	movl      $8, .LBSS080639C0
	addl      $24, %esp
	movl      $8, %eax
	popl      %ebx
	ret       
# ----------------------
.L0805591C:
	.long	2520205
.L08055920:
	movl      $0, .LBSS080639C0
	addl      $24, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
# ----------------------
.L08055931:
	.ascii	"\215\264&\000\000\000\000"
.L08055938:
	call      .L0804FB40
.L0805593D:
	cmpl      $124, %eax
	jne       .L08055A20
.L08055946:
	movl      $5, .LBSS080639C0
	movb      $5, %al
	jmp       .L08055834
# ----------------------
.L08055957:
	.byte	144
.L08055958:
	call      .L0804FB40
.L0805595D:
	cmpl      $10, %eax
	jne       .L080559E8
.L08055966:
	movl      .LBSS080639AC, %edx
	addl      $1, .LD08061198
	testl     %edx, %edx
	je        .L080557D2
.L0805597B:
	movb      $2, %al
	call      .L080556B0
.L08055982:
	jmp       .L080557D2
# ----------------------
.L08055987:
	.byte	144
.L08055988:
	movl      $7, .LBSS080639C0
	addl      $24, %esp
	movl      $7, %eax
	popl      %ebx
	ret       
# ----------------------
.L0805599C:
	.long	2520205
.L080559A0:
	movl      .LBSS080639AC, %eax
	addl      $1, .LD08061198
	movl      $1, .LBSS080639C0
	movl      %eax, .LBSS080639A8
	addl      $24, %esp
	movl      $1, %eax
	popl      %ebx
	ret       
# ----------------------
.L080559C5:
	.ascii	"\215v\000"
.L080559C8:
	call      .L0804FB40
.L080559CD:
	cmpl      $38, %eax
	jne       .L080559F8
.L080559D2:
	movl      $4, .LBSS080639C0
	movb      $4, %al
	jmp       .L08055834
# ----------------------
.L080559E3:
	.ascii	"\220\215t&\000"
.L080559E8:
	call      .L0804F730
.L080559ED:
	jmp       .L0805581F
# ----------------------
.L080559F2:
	.ascii	"\215\266\000\000\000\000"
.L080559F8:
	nop       
	leal      (%esi), %esi
	call      .L0804F730
.L08055A05:
	movl      $3, %eax
	movl      $3, .LBSS080639C0
	jmp       .L08055834
# ----------------------
.L08055A19:
	.ascii	"\215\264&\000\000\000\000"
.L08055A20:
	call      .L0804F730
.L08055A25:
	movl      $6, %eax
	movl      $6, .LBSS080639C0
	jmp       .L08055834
# ----------------------
.L08055A39:
	.ascii	"\215\264&\000\000\000\000"
.L08055A40:
	call      .L0804F730
.L08055A45:
	movl      $2, %eax
	movl      $2, .LBSS080639C0
	jmp       .L08055834
# ----------------------
.L08055A59:
	.ascii	"\215\264&\000\000\000\000"
.L08055A60:
	subl      $12, %esp
	movl      16(%esp), %eax
	movl      $0, .LBSS0806399C
	testl     %eax, %eax
	movl      %eax, .LBSS080639AC
	jne       .L08055AB8
.L08055A7A:
	movl      $0, .LBSS080639A8
	call      .L08053CF0
.L08055A89:
	testl     %eax, %eax
	je        .L08055AA8
.L08055A8D:
	cmpl      $1, %eax
	je        .L08055AC0
.L08055A92:
	addl      $1, .LBSS0806399C
	movl      $1, %eax
	addl      $12, %esp
	jmp       .L080546C0
# ----------------------
.L08055AA6:
	.value	36966
.L08055AA8:
	movl      $.LBSS0806399C, %eax
.L08055AAD:
	addl      $12, %esp
	ret       
# ----------------------
.L08055AB1:
	.ascii	"\215\264&\000\000\000\000"
.L08055AB8:
	call      .L080556B0
.L08055ABD:
	jmp       .L08055A7A
# ----------------------
.L08055ABF:
	.byte	144
.L08055AC0:
	xorl      %eax, %eax
	jmp       .L08055AAD
# ----------------------
.L08055AC4:
	.long	-1869574000
	.long	-1869574000
	.long	-1869574000
.L08055AD0:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %edi
	addl      $1, .LBSS080616A8
	xorl      %ebx, %ebx
	movl      .LBSS080639C8, %esi
	jmp       .L08055B04
# ----------------------
.L08055AEB:
	.ascii	"\220\215t&\000"
.L08055AF0:
	testl     %edi, %edi
	je        .L08055B60
.L08055AF4:
	movl      %eax, (%esp)
	call      close
.L08055AFC:
	addl      $1, %ebx
	cmpl      $10, %ebx
	je        .L08055B30
.L08055B04:
	movl      4(%esi,%ebx,4), %eax
	cmpl      $-3, %eax
	jl        .L08055AF0
.L08055B0D:
	cmpl      $-2, %eax
	jle       .L08055AFC
.L08055B12:
	cmpl      $-1, %eax
	jne       .L08055AF0
.L08055B17:
	testl     %edi, %edi
	jne       .L08055AFC
.L08055B1B:
	movl      %ebx, (%esp)
	addl      $1, %ebx
	call      close
.L08055B26:
	cmpl      $10, %ebx
	jne       .L08055B04
.L08055B2B:
	nop       
	leal      (%esi), %esi
.L08055B30:
	movl      (%esi), %eax
	movl      %esi, (%esp)
	movl      %eax, .LBSS080639C8
	call      free
.L08055B3F:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08055B59
.L08055B50:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08055B78
.L08055B59:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08055B60:
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      dup2
.L08055B6C:
	movl      4(%esi,%ebx,4), %eax
	jmp       .L08055AF4
# ----------------------
.L08055B72:
	.ascii	"\215\266\000\000\000\000"
.L08055B78:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       .L0804AFA0
# ----------------------
.L08055B83:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08055B90:
	subl      $44, %esp
	movl      %esi, 32(%esp)
	movl      48(%esp), %esi
	movl      %ebx, 28(%esp)
	movl      %edi, 36(%esp)
	movl      52(%esp), %edi
	movl      %ebp, 40(%esp)
	movl      $10, 8(%esp)
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      fcntl
.L08055BC3:
	testl     %eax, %eax
	movl      %eax, %ebx
	js        .L08055C00
.L08055BC9:
	movl      %edi, (%esp)
	call      close
.L08055BD1:
	movl      $1, 8(%esp)
	movl      $2, 4(%esp)
	movl      %ebx, (%esp)
	call      fcntl
.L08055BE9:
	movl      %ebx, %eax
	movl      32(%esp), %esi
	movl      28(%esp), %ebx
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
# ----------------------
.L08055BFF:
	.byte	144
.L08055C00:
	movl      .LBSS08063754, %eax
	movl      (%eax), %ebp
	cmpl      $9, %ebp
	je        .L08055BE9
.L08055C0C:
	movl      %edi, (%esp)
	call      close
.L08055C14:
	testl     %ebp, %ebp
	je        .L08055BD1
.L08055C18:
	movl      %ebp, (%esp)
	call      strerror
.L08055C20:
	movl      %esi, 4(%esp)
	movl      $.LC0805A891, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B000
# ----------------------
.L08055C34:
	.long	46733
	.long	-1081278464
	.long	0
.L08055C40:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	movl      160(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08055DE4
.L08055C59:
	addl      $1, .LBSS080616A8
	testb     $1, 164(%esp)
	je        .L0805602B
.L08055C6E:
	movl      .LBSS080639C8, %edi
	jmp       .L08055CF4
# ----------------------
.L08055C76:
	.value	36966
.L08055C78:
	leal      120(%esp), %eax
	movl      %eax, (%esp)
	call      pipe
.L08055C84:
	testl     %eax, %eax
	js        .L08056032
.L08055C8C:
	movl      12(%ebx), %eax
	cmpl      $24, (%ebx)
	movl      8(%eax), %esi
	je        .L08055FC8
.L08055C9B:
	movl      %esi, (%esp)
	call      strlen
.L08055CA3:
	cmpl      $4096, %eax
	movl      %eax, %ebp
	jbe       .L08055FA8
.L08055CB0:
	movl      $2, 8(%esp)
	movl      $0, 4(%esp)
	movl      $0, (%esp)
	call      .L080513F0
.L08055CCC:
	testl     %eax, %eax
	je        .L0805603E
.L08055CD4:
	movl      124(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L08055CE0:
	movl      120(%esp), %esi
.L08055CE4:
	cmpl      $-1, %esi
	jge       .L08055D42
.L08055CE9:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L08055DB9
.L08055CF4:
	movl      (%ebx), %eax
	subl      $16, %eax
	cmpl      $6, %eax
	ja        .L08055C78
.L08055D02:
	jmp       *.LC0805A8C0(,%eax,4)
# ----------------------
.L08055D09:
	.ascii	"\215\264&\000\000\000\000"
.L08055D10:
	cmpb      $0, .LBSS0806396F
	jne       .L08055EE0
.L08055D1D:
	movl      16(%ebx), %ebp
	movl      $438, 8(%esp)
	movl      $577, 4(%esp)
.L08055D30:
	movl      %ebp, (%esp)
	call      open64
.L08055D38:
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L08056000
.L08055D42:
	testl     %edi, %edi
	movl      8(%ebx), %edx
	je        .L08055D79
.L08055D49:
	movl      4(%edi,%edx,4), %eax
	movl      %edx, %ebp
	cmpl      $-2, %eax
	jne       .L08055D6B
.L08055D54:
	cmpl      %esi, %edx
	movb      $255, %al
	je        .L08055D6B
.L08055D5A:
	movl      %edx, 4(%esp)
	movl      %edx, (%esp)
	call      .L08055B90
.L08055D66:
	movl      $-1, %edx
.L08055D6B:
	cmpl      %esi, %eax
	movl      $-3, %ecx
	cmove     %ecx, %eax
	movl      %eax, 4(%edi,%ebp,4)
.L08055D79:
	cmpl      %esi, %edx
	je        .L08055CE9
.L08055D81:
	movl      (%ebx), %eax
	movl      8(%ebx), %edx
	subl      $21, %eax
	cmpl      $1, %eax
	jbe       .L08055E80
.L08055D92:
	movl      %edx, 4(%esp)
	movl      %esi, (%esp)
	call      dup2
.L08055D9E:
	testl     %eax, %eax
	js        .L08055F88
.L08055DA6:
	movl      %esi, (%esp)
	call      close
.L08055DAE:
	movl      4(%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08055CF4
.L08055DB9:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	je        .L08055EC8
.L08055DCE:
	testb     $3, 164(%esp)
	je        .L08055DE4
.L08055DD8:
	movl      12(%edi), %eax
	testl     %eax, %eax
	js        .L08055DE4
.L08055DDF:
	movl      %eax, .LBSS08063A58
.L08055DE4:
	addl      $140, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08055DEF:
	.byte	144
.L08055DF0:
	movl      12(%ebx), %esi
	cmpl      8(%ebx), %esi
	jne       .L08055CE4
.L08055DFC:
	jmp       .L08055CE9
# ----------------------
.L08055E01:
	.ascii	"\215\264&\000\000\000\000"
.L08055E08:
	movl      16(%ebx), %ebp
	movl      $438, 8(%esp)
	movl      $1089, 4(%esp)
	jmp       .L08055D30
.L08055E20:
	movl      16(%ebx), %ebp
	movl      $438, 8(%esp)
	movl      $66, 4(%esp)
	jmp       .L08055D30
.L08055E38:
	movl      16(%ebx), %ebp
	movl      $0, 4(%esp)
	movl      %ebp, (%esp)
	call      open64
.L08055E4B:
	testl     %eax, %eax
	movl      %eax, %esi
	jns       .L08055D42
.L08055E55:
	movl      .LBSS08063754, %eax
	movl      $1, 4(%esp)
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      .L0804B080
.L08055E6C:
	movl      %ebp, 4(%esp)
	movl      $.LC0805A8AD, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B000
.L08055E80:
	testl     %esi, %esi
	js        .L08055EC0
.L08055E84:
	movl      %edx, 4(%esp)
	movl      %esi, (%esp)
	call      dup2
.L08055E90:
	testl     %eax, %eax
	jns       .L08055CE9
.L08055E98:
	movl      .LBSS08063754, %eax
	movl      (%eax), %ebp
.L08055E9F:
	movl      %ebp, (%esp)
	call      strerror
.L08055EA7:
	movl      %esi, 4(%esp)
	movl      $.LC0805A891, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B000
# ----------------------
.L08055EBB:
	.ascii	"\220\215t&\000"
.L08055EC0:
	movl      %edx, %esi
	jmp       .L08055DA6
# ----------------------
.L08055EC7:
	.byte	144
.L08055EC8:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	je        .L08055DCE
.L08055ED5:
	call      .L0804AFA0
# ----------------------
.L08055EDA:
	.ascii	"\351\357\376\377\377\220"
.L08055EE0:
	movl      16(%ebx), %ebp
	leal      24(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $3, (%esp)
	movl      %ebp, 4(%esp)
	call      __xstat64
.L08055EFB:
	testl     %eax, %eax
	js        .L08055FEB
.L08055F03:
	movl      40(%esp), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	je        .L080560CE
.L08055F17:
	movl      $438, 8(%esp)
	movl      $1, 4(%esp)
	movl      %ebp, (%esp)
	call      open64
.L08055F2F:
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L08056000
.L08055F39:
	leal      24(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $3, (%esp)
	call      __fxstat64
.L08055F51:
	testl     %eax, %eax
	jns       .L08055D42
.L08055F59:
	movl      40(%esp), %eax
	andl      $61440, %eax
	cmpl      $32768, %eax
	jne       .L08055D42
.L08055F6D:
	movl      %esi, (%esp)
	call      close
.L08055F75:
	movl      .LBSS08063754, %eax
	movl      $17, (%eax)
	jmp       .L08056005
# ----------------------
.L08055F85:
	.ascii	"\215v\000"
.L08055F88:
	movl      .LBSS08063754, %eax
	movl      (%eax), %ebp
	movl      %esi, (%esp)
	call      close
.L08055F97:
	testl     %ebp, %ebp
	jns       .L08055CE9
.L08055F9F:
	jmp       .L08055E9F
# ----------------------
.L08055FA4:
	.long	2520205
.L08055FA8:
	movl      %eax, 8(%esp)
	movl      124(%esp), %eax
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056930
.L08055FBC:
	jmp       .L08055CD4
# ----------------------
.L08055FC1:
	.ascii	"\215\264&\000\000\000\000"
.L08055FC8:
	movl      $256, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804F400
.L08055FE0:
	movl      .LD080611A8, %esi
	jmp       .L08055C9B
.L08055FEB:
	movl      $438, 8(%esp)
	movl      $193, 4(%esp)
	jmp       .L08055D30
.L08056000:
	movl      .LBSS08063754, %eax
.L08056005:
	movl      $2, 4(%esp)
	movl      (%eax), %eax
	movl      %eax, (%esp)
	call      .L0804B080
.L08056017:
	movl      %ebp, 4(%esp)
	movl      $.LC0805A898, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B000
.L0805602B:
	xorl      %edi, %edi
	jmp       .L08055CF4
.L08056032:
	movl      $.LC080599E0, (%esp)
	call      .L0804B000
.L0805603E:
	movl      120(%esp), %eax
	movl      %eax, (%esp)
	call      close
.L0805604A:
	movl      $1, 4(%esp)
	movl      $2, (%esp)
	call      signal
.L0805605E:
	movl      $1, 4(%esp)
	movl      $3, (%esp)
	call      signal
.L08056072:
	movl      $1, 4(%esp)
	movl      $1, (%esp)
	call      signal
.L08056086:
	movl      $1, 4(%esp)
	movl      $20, (%esp)
	call      signal
.L0805609A:
	movl      $0, 4(%esp)
	movl      $13, (%esp)
	call      signal
.L080560AE:
	movl      124(%esp), %eax
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056930
.L080560C2:
	movl      $0, (%esp)
	call      _exit
.L080560CE:
	movl      .LBSS08063754, %eax
	movl      $17, (%eax)
	jmp       .L08056005
# ----------------------
.L080560DE:
	.value	36966
.L080560E0:
	subl      $220, %esp
	movl      .LBSS080616AC, %eax
	movl      %eax, 204(%esp)
	movl      .LBSS080616A8, %eax
	movl      %eax, 200(%esp)
	leal      44(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L0805610A:
	addl      %eax, %eax
	je        .L08056160
.L0805610E:
	movl      204(%esp), %edx
	cmpl      $1, .LBSS080616B8
	movl      %edx, .LBSS080616AC
	jne       .L0805619B
.L08056124:
	movl      200(%esp), %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L0805613F
.L08056135:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L08056148
.L0805613F:
	addl      $220, %esp
	ret       
# ----------------------
.L08056146:
	.value	36966
.L08056148:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08056151:
	.ascii	"\213D$\034\201\304\334\000\000\000\303\215t&\000"
.L08056160:
	leal      44(%esp), %edx
	movl      %edx, .LBSS080616AC
	movl      228(%esp), %edx
	movl      %eax, 28(%esp)
	movl      %edx, 4(%esp)
	movl      224(%esp), %edx
	movl      %edx, (%esp)
	call      .L08055C40
.L08056188:
	movl      204(%esp), %edx
	movl      28(%esp), %eax
	movl      %edx, .LBSS080616AC
	jmp       .L08056124
.L0805619B:
	movl      $1, 4(%esp)
	movl      %edx, (%esp)
	call      __longjmp_chk
# ----------------------
.L080561AB:
	.ascii	"\220\215t&\000"
.L080561B0:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	cmpl      %ebx, .LBSS080639C8
	je        .L080561D4
.L080561C0:
	movl      $0, (%esp)
	call      .L08055AD0
.L080561CC:
	cmpl      %ebx, .LBSS080639C8
	jne       .L080561C0
.L080561D4:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L080561D9:
	.ascii	"\215\264&\000\000\000\000"
.L080561E0:
	pushl     %ebx
	subl      $24, %esp
	movl      .LBSS080639C8, %ebx
	movl      32(%esp), %eax
	testl     %eax, %eax
	je        .L08056218
.L080561F2:
	movl      $44, (%esp)
	call      .L08051D70
.L080561FE:
	xorl      %edx, %edx
	movl      %ebx, (%eax)
	movl      %eax, .LBSS080639C8
	nop       
.L08056208:
	movl      $-2, 4(%eax,%edx,4)
	addl      $1, %edx
	cmpl      $10, %edx
	jne       .L08056208
.L08056218:
	addl      $24, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
# ----------------------
.L0805621F:
	.byte	144
.L08056220:
	subl      $12, %esp
	movl      16(%esp), %eax
	cmpl      $17, %eax
	je        .L08056250
.L0805622C:
	cmpl      $2, %eax
	movb      $1, .LBSS080614FF(%eax)
	movl      %eax, .LBSS08063A40
	jne       .L08056247
.L0805623D:
	movl      .LBSS080613E8, %edx
	testl     %edx, %edx
	je        .L08056280
.L08056247:
	addl      $12, %esp
	ret       
# ----------------------
.L0805624B:
	.ascii	"\220\215t&\000"
.L08056250:
	movl      .LBSS08061424, %ecx
	movl      $1, .LBSS080639E0
	testl     %ecx, %ecx
	je        .L08056247
.L08056264:
	movb      $1, .LBSS08061510
	movl      $17, .LBSS08063A40
	addl      $12, %esp
	ret       
# ----------------------
.L08056279:
	.ascii	"\215\264&\000\000\000\000"
.L08056280:
	movl      .LBSS080616A8, %eax
	testl     %eax, %eax
	je        .L08056298
.L08056289:
	movl      $1, .LBSS080616B0
	jmp       .L08056247
# ----------------------
.L08056295:
	.ascii	"\215v\000"
.L08056298:
	call      .L0804AFA0
# ----------------------
.L0805629D:
	.ascii	"\353\352\220"
.L080562A0:
	pushl     %esi
	pushl     %ebx
	subl      $164, %esp
	movl      176(%esp), %esi
	movl      .LBSS080613E0(,%esi,4), %eax
	testl     %eax, %eax
	je        .L08056390
.L080562BE:
	cmpb      $1, (%eax)
	sbbl      %ebx, %ebx
	notl      %ebx
	addl      $3, %ebx
.L080562C8:
	cmpl      $17, %esi
	movl      $2, %eax
	cmove     %eax, %ebx
.L080562D3:
	movzbl    .LBSS080639FF(%esi), %eax
	testb     %al, %al
	je        .L08056348
.L080562DE:
	cmpb      $4, %al
	je        .L0805632F
.L080562E2:
	movsbl    %al, %eax
.L080562E5:
	cmpl      %eax, %ebx
	je        .L0805632F
.L080562E9:
	cmpl      $2, %ebx
	je        .L08056338
.L080562EE:
	xorl      %eax, %eax
	cmpl      $3, %ebx
	sete      %al
	movl      %eax, 20(%esp)
.L080562FA:
	movb      %bl, .LBSS080639FF(%esi)
	leal      24(%esp), %eax
	leal      20(%esp), %ebx
	movl      $0, 152(%esp)
	movl      %eax, (%esp)
	call      sigfillset
.L0805631B:
	movl      $0, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      sigaction
.L0805632F:
	addl      $164, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08056338:
	movl      $.L08056220, 20(%esp)
	jmp       .L080562FA
# ----------------------
.L08056342:
	.ascii	"\215\266\000\000\000\000"
.L08056348:
	leal      20(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      sigaction
.L08056360:
	cmpl      $-1, %eax
	je        .L0805632F
.L08056365:
	cmpl      $1, 20(%esp)
	movl      $5, %eax
	jne       .L080562E5
.L08056375:
	cmpb      $0, .LBSS08063968
	je        .L0805632F
.L0805637E:
	leal      -20(%esi), %edx
	movb      $3, %al
	cmpl      $2, %edx
	jbe       .L080562E5
.L0805638C:
	jmp       .L0805632F
# ----------------------
.L0805638E:
	.value	36966
.L08056390:
	movl      .LBSS08063758, %eax
	testl     %eax, %eax
	jne       .L0805639E
.L08056399:
	cmpl      $22, %esi
	jbe       .L080563A8
.L0805639E:
	movl      $1, %ebx
	jmp       .L080562C8
.L080563A8:
	jmp       *.LC0805A8DC(,%esi,4)
# ----------------------
.L080563AF:
	.byte	144
.L080563B0:
	cmpb      $1, .LBSS08063968
	sbbl      %ebx, %ebx
	andl      $-2, %ebx
	addl      $3, %ebx
	jmp       .L080562D3
# ----------------------
.L080563C4:
	.long	2520205
.L080563C8:
	cmpb      $1, .LBSS08063967
	sbbl      %ebx, %ebx
	andl      $-2, %ebx
	addl      $3, %ebx
	jmp       .L080562C8
# ----------------------
.L080563DC:
	.long	2520205
.L080563E0:
	cmpb      $0, .LBSS08063967
	movl      $2, %ebx
	jne       .L080562D3
.L080563F2:
	movl      .LBSS08063998, %eax
	testl     %eax, %eax
	jne       .L080562D3
.L080563FF:
	cmpb      $1, .LBSS0806396A
	sbbl      %ebx, %ebx
	notl      %ebx
	addl      $2, %ebx
	jmp       .L080562D3
# ----------------------
.L08056412:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08056420:
	pushl     %ebx
	subl      $24, %esp
	addl      $1, .LBSS080616A8
	movl      $.LBSS080613E0, %ebx
	jmp       .L08056443
# ----------------------
.L08056432:
	.ascii	"\215\266\000\000\000\000"
.L08056438:
	addl      $4, %ebx
	cmpl      $.LBSS080614E4, %ebx
	jae       .L08056488
.L08056443:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08056438
.L08056449:
	cmpb      $0, (%eax)
	je        .L08056438
.L0805644E:
	movl      %eax, (%esp)
	call      free
.L08056456:
	cmpl      $.LBSS080613E0, %ebx
	movl      $0, (%ebx)
	je        .L08056438
.L08056464:
	movl      %ebx, %eax
	addl      $4, %ebx
	subl      $.LBSS080613E0, %eax
	sarl      $2, %eax
	movl      %eax, (%esp)
	call      .L080562A0
.L08056479:
	cmpl      $.LBSS080614E4, %ebx
	jb        .L08056443
.L08056481:
	leal      (%esi), %esi
.L08056488:
	movl      $0, .LBSS08063A44
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L080564AC
.L080564A3:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L080564B1
.L080564AC:
	addl      $24, %esp
	popl      %ebx
	ret       
.L080564B1:
	addl      $24, %esp
	popl      %ebx
	jmp       .L0804AFA0
# ----------------------
.L080564BA:
	.ascii	"\215\266\000\000\000\000"
.L080564C0:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movzbl    .LBSS080639FF(%ebx), %eax
	subl      $3, %eax
	cmpb      $1, %al
	jbe       .L080564E6
.L080564D6:
	movl      $1, 4(%esp)
	movl      %ebx, (%esp)
	call      signal
.L080564E6:
	movb      $4, .LBSS080639FF(%ebx)
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L080564F2:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08056500:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      .LBSS080616C4, %esi
	movl      $0, .LBSS08063A40
	movl      $1, %ebx
	jmp       .L08056528
# ----------------------
.L0805651C:
	.long	2520205
.L08056520:
	addl      $1, %ebx
	cmpl      $65, %ebx
	je        .L08056562
.L08056528:
	cmpb      $0, .LBSS080614FF(%ebx)
	je        .L08056520
.L08056531:
	movl      .LBSS080613E0(,%ebx,4), %eax
	movb      $0, .LBSS080614FF(%ebx)
	testl     %eax, %eax
	je        .L08056520
.L08056543:
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L0804BB80
.L08056553:
	movl      .LBSS080616C8, %eax
	movl      %esi, .LBSS080616C4
	testl     %eax, %eax
	je        .L08056520
.L08056562:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08056568:
	.long	649366928
	.long	0
.L08056570:
	subl      $28, %esp
	movl      32(%esp), %eax
	addl      $1, %eax
	cmpl      .LBSS08061540, %eax
	je        .L080565B0
.L08056582:
	movl      %eax, .LBSS08061540
	movl      $2, (%esp)
	call      .L080562A0
.L08056593:
	movl      $3, (%esp)
	call      .L080562A0
.L0805659F:
	movl      $15, 32(%esp)
	addl      $28, %esp
	jmp       .L080562A0
# ----------------------
.L080565AF:
	.byte	144
.L080565B0:
	addl      $28, %esp
	ret       
# ----------------------
.L080565B4:
	.long	46733
	.long	-1081278464
	.long	0
.L080565C0:
	subl      $188, %esp
	movl      .LBSS080616C4, %eax
	movl      %eax, 172(%esp)
	leal      16(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L080565DE:
	testl     %eax, %eax
	je        .L0805661B
.L080565E2:
	cmpl      $4, .LBSS080616B8
	je        .L08056653
.L080565EB:
	leal      16(%esp), %eax
	movl      %eax, (%esp)
	call      _setjmp
.L080565F7:
	testl     %eax, %eax
	jne       .L08056607
.L080565FB:
	movl      $0, (%esp)
	call      .L08050C50
.L08056607:
	call      .L080569E0
.L0805660C:
	movl      172(%esp), %eax
	movl      %eax, (%esp)
	call      _exit
.L0805661B:
	leal      16(%esp), %eax
	movl      %eax, .LBSS080616AC
	movl      .LBSS080613E0, %eax
	testl     %eax, %eax
	je        .L080565EB
.L0805662D:
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	movl      $0, .LBSS080613E0
	movl      $0, .LBSS080616C8
	call      .L0804BB80
.L08056651:
	jmp       .L080565EB
.L08056653:
	movl      .LBSS080616C4, %eax
	movl      %eax, 172(%esp)
	jmp       .L080565EB
# ----------------------
.L08056661:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08056670:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %esi
	movl      %esi, (%esp)
	call      .L08052CF0
.L08056681:
	testl     %eax, %eax
	jne       .L080566D0
.L08056685:
	movl      36(%esp), %ebx
	cmpl      $64, %ebx
	jle       .L080566A0
.L0805668E:
	nop       
	jmp       .L080566C0
# ----------------------
.L08056692:
	.ascii	"\215\266\000\000\000\000"
.L08056698:
	addl      $1, %ebx
	cmpl      $65, %ebx
	je        .L080566C0
.L080566A0:
	movl      .LC0805B540(,%ebx,4), %eax
	movl      %esi, (%esp)
	movl      %eax, 4(%esp)
	call      strcasecmp
.L080566B3:
	testl     %eax, %eax
	jne       .L08056698
.L080566B7:
	addl      $20, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080566BF:
	.byte	144
.L080566C0:
	movl      $-1, %ebx
	addl      $20, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080566CD:
	.ascii	"\215v\000"
.L080566D0:
	movl      %esi, (%esp)
	movl      $10, 8(%esp)
	movl      $0, 4(%esp)
	call      strtol
.L080566E8:
	cmpl      $65, %eax
	movl      %eax, %ebx
	movl      $-1, %eax
	cmovge    %eax, %ebx
	addl      $20, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080566FD:
	.ascii	"\215v\000"
.L08056700:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      $.LBSS0806395C, (%esp)
	call      .L080539E0
.L08056712:
	movl      .LBSS08063978, %edi
	movl      (%edi), %esi
	testl     %esi, %esi
	je        .L08056840
.L08056722:
	movl      4(%edi), %eax
	testl     %eax, %eax
	je        .L08056888
.L0805672D:
	addl      $4, %edi
	jmp       .L08056763
# ----------------------
.L08056732:
	.ascii	"\215\266\000\000\000\000"
.L08056738:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08056756
.L08056749:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L080567F8
.L08056756:
	addl      $4, %edi
	movl      (%edi), %eax
	testl     %eax, %eax
	je        .L08056810
.L08056763:
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056670
.L08056773:
	testl     %eax, %eax
	movl      %eax, %ebx
	js        .L08056818
.L0805677D:
	addl      $1, .LBSS080616A8
	testl     %esi, %esi
	je        .L0805679D
.L08056788:
	movzbl    (%esi), %eax
	cmpb      $45, %al
	je        .L080567E8
.L0805678F:
	testb     %al, %al
	jne       .L080567D8
.L08056793:
	movl      %esi, (%esp)
	call      .L08051DD0
.L0805679B:
	movl      %eax, %esi
.L0805679D:
	movl      .LBSS080613E0(,%ebx,4), %eax
	testl     %eax, %eax
	je        .L080567BC
.L080567A8:
	cmpb      $0, (%eax)
	je        .L080567B4
.L080567AD:
	subl      $1, .LBSS08063A44
.L080567B4:
	movl      %eax, (%esp)
	call      free
.L080567BC:
	testl     %ebx, %ebx
	movl      %esi, .LBSS080613E0(,%ebx,4)
	je        .L08056738
.L080567CB:
	movl      %ebx, (%esp)
	call      .L080562A0
.L080567D3:
	jmp       .L08056738
.L080567D8:
	addl      $1, .LBSS08063A44
	jmp       .L08056793
# ----------------------
.L080567E1:
	.ascii	"\215\264&\000\000\000\000"
.L080567E8:
	cmpb      $0, 1(%esi)
	jne       .L080567D8
.L080567EE:
	xorl      %esi, %esi
	jmp       .L0805679D
# ----------------------
.L080567F2:
	.ascii	"\215\266\000\000\000\000"
.L080567F8:
	addl      $4, %edi
	call      .L0804AFA0
# ----------------------
.L08056800:
	.long	-1065023605
	.long	-10910449
	.long	-1232207873
	.long	0
.L08056810:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08056817:
	.byte	144
.L08056818:
	movl      (%edi), %eax
	movl      $.LC0805A947, 4(%esp)
	movl      %eax, 8(%esp)
	movl      .LD080611B0, %eax
	movl      %eax, (%esp)
	call      .L08056C30
.L08056833:
	addl      $16, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0805683F:
	.byte	144
.L08056840:
	xorl      %ebx, %ebx
	leal      (%esi), %esi
.L08056848:
	movl      .LBSS080613E0(,%ebx,4), %eax
	testl     %eax, %eax
	je        .L08056876
.L08056853:
	movl      .LC0805B540(,%ebx,4), %esi
	movl      %eax, (%esp)
	call      .L08052D20
.L08056862:
	movl      $.LC0805A938, (%esp)
	movl      %esi, 8(%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08056876:
	addl      $1, %ebx
	cmpl      $65, %ebx
	jne       .L08056848
.L0805687E:
	addl      $16, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08056887:
	.byte	144
.L08056888:
	movl      %esi, %eax
	xorl      %esi, %esi
	jmp       .L08056763
# ----------------------
.L08056891:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L080568A0:
	pushl     %ebx
	subl      $56, %esp
	addl      $1, .LBSS080616A8
	movl      64(%esp), %ebx
	movl      %ecx, 16(%esp)
	movl      $-1, 12(%esp)
	movl      $1, 8(%esp)
	movl      %ebx, 20(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      __vsnprintf_chk
.L080568D3:
	movl      .LBSS080616A8, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L080568F0
.L080568E6:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L080568F8
.L080568F0:
	addl      $56, %esp
	popl      %ebx
	ret       
# ----------------------
.L080568F5:
	.ascii	"\215v\000"
.L080568F8:
	movl      %eax, 44(%esp)
	call      .L0804AFA0
# ----------------------
.L08056901:
	.ascii	"\213D$,\203\3048[\303\215\266\000\000\000\000"
.L08056910:
	subl      $28, %esp
	leal      44(%esp), %eax
	movl      40(%esp), %ecx
	movl      %eax, (%esp)
	movl      36(%esp), %edx
	movl      32(%esp), %eax
	call      .L080568A0
.L0805692B:
	addl      $28, %esp
	ret       
# ----------------------
.L0805692F:
	.byte	144
.L08056930:
	pushl     %ebp
	xorl      %eax, %eax
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      56(%esp), %ebp
	movl      48(%esp), %edi
	testl     %ebp, %ebp
	je        .L0805697B
.L08056945:
	movl      52(%esp), %ebx
.L08056949:
	testl     %ebp, %ebp
	movl      $2147483647, %esi
	cmovns    %ebp, %esi
	nop       
	leal      (%esi), %esi
.L08056958:
	movl      %esi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %edi, (%esp)
	call      write
.L08056968:
	testl     %eax, %eax
	jns       .L08056988
.L0805696C:
	movl      .LBSS08063754, %eax
	cmpl      $4, (%eax)
	je        .L08056958
.L08056976:
	movl      $-1, %eax
.L0805697B:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08056983:
	.ascii	"\220\215t&\000"
.L08056988:
	addl      %eax, %ebx
	subl      %eax, %ebp
	jne       .L08056949
.L0805698E:
	addl      $28, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08056998:
	.long	649366928
	.long	0
.L080569A0:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movl      8(%ebx), %eax
	movl      (%ebx), %edx
	subl      %eax, %edx
	je        .L080569D2
.L080569B1:
	movl      16(%ebx), %ecx
	testl     %ecx, %ecx
	js        .L080569D2
.L080569B8:
	movl      %eax, (%ebx)
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ecx, (%esp)
	call      .L08056930
.L080569CA:
	testl     %eax, %eax
	je        .L080569D2
.L080569CE:
	orl       $1, 20(%ebx)
.L080569D2:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L080569D7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L080569E0:
	subl      $28, %esp
	movl      $.LD080611D0, (%esp)
	call      .L080569A0
.L080569EF:
	addl      $28, %esp
	ret       
# ----------------------
.L080569F3:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08056A00:
	subl      $60, %esp
	movl      %esi, 48(%esp)
	movl      %ecx, %esi
	movl      (%ecx), %ecx
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	movl      4(%esi), %eax
	movl      %edi, 52(%esp)
	movl      %ebp, 56(%esp)
	subl      %ecx, %eax
	cmpl      %edx, %eax
	jae       .L08056A55
.L08056A22:
	movl      12(%esi), %ebp
	testl     %ebp, %ebp
	je        .L08056A51
.L08056A29:
	movl      8(%esi), %eax
	testl     %eax, %eax
	je        .L08056B10
.L08056A34:
	cmpl      $-3, 16(%esi)
	je        .L08056AA0
.L08056A3A:
	movl      %edx, 28(%esp)
	movl      %esi, (%esp)
	call      .L080569A0
.L08056A46:
	movl      (%esi), %ecx
	movl      4(%esi), %eax
	movl      28(%esp), %edx
	subl      %ecx, %eax
.L08056A51:
	cmpl      %eax, %edx
	jae       .L08056A80
.L08056A55:
	movl      %edx, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %ecx, (%esp)
	call      mempcpy
.L08056A65:
	movl      %eax, (%esi)
.L08056A67:
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L08056A7B:
	.ascii	"\220\215t&\000"
.L08056A80:
	movl      16(%esi), %eax
	movl      %edx, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056930
.L08056A93:
	testl     %eax, %eax
	je        .L08056A67
.L08056A97:
	orl       $1, 20(%esi)
	jmp       .L08056A67
# ----------------------
.L08056A9D:
	.ascii	"\215v\000"
.L08056AA0:
	cmpl      %ebp, %edx
	leal      (%ebp,%ebp), %edi
	leal      (%edx,%ebp), %eax
	cmova     %eax, %edi
	cmpl      %ebp, %edi
	jb        .L08056A97
.L08056AB0:
	addl      $1, .LBSS080616A8
	movl      8(%esi), %eax
	movl      %edi, 4(%esp)
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      .L08051DA0
.L08056ACA:
	movl      %edi, 12(%esi)
	addl      %eax, %ebp
	addl      %eax, %edi
	movl      %ebp, (%esi)
	movl      %eax, 8(%esi)
	movl      %edi, 4(%esi)
	movl      .LBSS080616A8, %eax
	movl      28(%esp), %edx
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08056AF7
.L08056AEE:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08056B28
.L08056AF7:
	movl      (%esi), %ecx
	movl      4(%esi), %eax
	subl      %ecx, %eax
	cmpl      %eax, %edx
	jb        .L08056A55
.L08056B06:
	jmp       .L08056A80
# ----------------------
.L08056B0B:
	.ascii	"\220\215t&\000"
.L08056B10:
	cmpl      %ebp, %edx
	jbe       .L08056B20
.L08056B14:
	cmpl      $-3, 16(%esi)
	jne       .L08056B20
.L08056B1A:
	movl      %edx, %edi
	xorl      %ebp, %ebp
	jmp       .L08056AB0
.L08056B20:
	movl      %ebp, %edi
	xorl      %ebp, %ebp
	jmp       .L08056AB0
# ----------------------
.L08056B26:
	.value	36966
.L08056B28:
	movl      %edx, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08056B31:
	.ascii	"\213\016\213F\004\213T$\034)\310\351\020\377\377\377\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08056B50:
	subl      $76, %esp
	movl      %ebx, 60(%esp)
	movl      80(%esp), %ebx
	movl      %edi, 68(%esp)
	movl      84(%esp), %ecx
	movl      %ebp, 72(%esp)
	movl      88(%esp), %ebp
	movl      %esi, 64(%esp)
	movl      (%ebx), %eax
	movl      4(%ebx), %edi
	movl      %ebp, (%esp)
	subl      %eax, %edi
	movl      %edi, %edx
	call      .L080568A0
.L08056B80:
	testl     %eax, %eax
	movl      %eax, %esi
	js        .L08056BE8
.L08056B86:
	cmpl      %eax, %edi
	jbe       .L08056BA0
.L08056B8A:
	addl      %eax, (%ebx)
.L08056B8C:
	movl      60(%esp), %ebx
	movl      64(%esp), %esi
	movl      68(%esp), %edi
	movl      72(%esp), %ebp
	addl      $76, %esp
	ret       
.L08056BA0:
	leal      36(%esp), %edi
	movl      %edi, (%esp)
	call      .L08051F10
.L08056BAC:
	movl      .LD080611A4, %eax
	cmpl      %eax, %esi
	cmovae    %esi, %eax
	addl      $1, %eax
	movl      %eax, (%esp)
	call      .L08051E00
.L08056BC1:
	movl      84(%esp), %ecx
	leal      1(%esi), %edx
	movl      %ebp, (%esp)
	movl      %eax, 28(%esp)
	call      .L080568A0
.L08056BD4:
	cmpl      %esi, %eax
	je        .L08056BF0
.L08056BD8:
	orl       $1, 20(%ebx)
.L08056BDC:
	movl      %edi, (%esp)
	call      .L08051F50
.L08056BE4:
	jmp       .L08056B8C
# ----------------------
.L08056BE6:
	.value	36966
.L08056BE8:
	orl       $1, 20(%ebx)
	jmp       .L08056B8C
# ----------------------
.L08056BEE:
	.value	36966
.L08056BF0:
	movl      %eax, %edx
	movl      28(%esp), %eax
	movl      %ebx, %ecx
	call      .L08056A00
.L08056BFD:
	jmp       .L08056BDC
# ----------------------
.L08056BFF:
	.byte	144
.L08056C00:
	subl      $28, %esp
	leal      36(%esp), %eax
	movl      %eax, 8(%esp)
	movl      32(%esp), %eax
	movl      %eax, 4(%esp)
	movl      .LD080611B4, %eax
	movl      %eax, (%esp)
	call      .L08056B50
.L08056C20:
	addl      $28, %esp
	ret       
# ----------------------
.L08056C24:
	.long	46733
	.long	-1081278464
	.long	0
.L08056C30:
	subl      $28, %esp
	leal      40(%esp), %eax
	movl      %eax, 8(%esp)
	movl      36(%esp), %eax
	movl      %eax, 4(%esp)
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      .L08056B50
.L08056C4F:
	addl      $28, %esp
	ret       
# ----------------------
.L08056C53:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08056C60:
	subl      $28, %esp
	movl      $1, %edx
	movl      32(%esp), %eax
	movl      36(%esp), %ecx
	movb      %al, 15(%esp)
	leal      15(%esp), %eax
	call      .L08056A00
.L08056C7D:
	addl      $28, %esp
	ret       
# ----------------------
.L08056C81:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08056C90:
	subl      $28, %esp
	movl      %ebx, 20(%esp)
	movl      32(%esp), %ebx
	movl      %esi, 24(%esp)
	movl      36(%esp), %esi
	movl      %ebx, (%esp)
	call      strlen
.L08056CAB:
	movl      %esi, %ecx
	movl      24(%esp), %esi
	movl      %eax, %edx
	movl      %ebx, %eax
	movl      20(%esp), %ebx
	addl      $28, %esp
	jmp       .L08056A00
# ----------------------
.L08056CC1:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08056CD0:
	subl      $16, %esp
	movzbl    (%eax), %ecx
	movl      %ebx, (%esp)
	movl      %esi, 4(%esp)
	movl      %edi, 8(%esp)
	leal      -48(%ecx), %ebx
	cmpb      $70, %bl
	movl      %ebp, 12(%esp)
	jbe       .L08056D10
.L08056CED:
	movl      $92, %ebp
	leal      (%esi), %esi
.L08056CF8:
	movl      %ebp, (%edx)
	movl      (%esp), %ebx
	movl      4(%esp), %esi
	movl      8(%esp), %edi
	movl      12(%esp), %ebp
	addl      $16, %esp
	ret       
# ----------------------
.L08056D0D:
	.ascii	"\215v\000"
.L08056D10:
	movzbl    %bl, %ebx
	jmp       *.LC0805A95C(,%ebx,4)
# ----------------------
.L08056D1A:
	.ascii	"\215\266\000\000\000\000"
.L08056D20:
	movl      $11, %ebp
	leal      (%esi), %esi
.L08056D28:
	addl      $1, %eax
	jmp       .L08056CF8
# ----------------------
.L08056D2D:
	.ascii	"\215v\000"
.L08056D30:
	leal      3(%eax), %edi
	xorl      %ebp, %ebp
.L08056D35:
	movsbl    %cl, %ecx
	addl      $1, %eax
	leal      -48(%ecx,%ebp,8), %ebp
	movzbl    (%eax), %ecx
	leal      -48(%ecx), %esi
	movl      %esi, %ebx
	cmpb      $7, %bl
	ja        .L08056CF8
.L08056D4C:
	cmpl      %edi, %eax
	jne       .L08056D35
.L08056D50:
	jmp       .L08056CF8
# ----------------------
.L08056D52:
	.ascii	"\215\266\000\000\000\000"
.L08056D58:
	movl      $92, %ebp
	leal      (%esi), %esi
	jmp       .L08056D28
# ----------------------
.L08056D62:
	.ascii	"\215\266\000\000\000\000"
.L08056D68:
	movl      $7, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D6F:
	.byte	144
.L08056D70:
	movl      $8, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D77:
	.byte	144
.L08056D78:
	movl      $12, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D7F:
	.byte	144
.L08056D80:
	movl      $10, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D87:
	.byte	144
.L08056D88:
	movl      $13, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D8F:
	.byte	144
.L08056D90:
	movl      $9, %ebp
	jmp       .L08056D28
# ----------------------
.L08056D97:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08056DA0:
	pushl     %edi
	movl      %eax, %edi
	pushl     %esi
	pushl     %ebx
	subl      $32, %esp
	movl      .LD080611A8, %ebx
	jmp       .L08056DC6
.L08056DB0:
	addl      $1, %edi
	movl      %esi, %edx
.L08056DB5:
	cmpl      .LD080611A0, %ebx
	je        .L08056E08
.L08056DBD:
	movb      %dl, (%ebx)
	addl      $1, %ebx
	testb     %dl, %dl
	je        .L08056E28
.L08056DC6:
	movsbl    (%edi), %esi
	cmpl      $92, %esi
	jne       .L08056DB0
.L08056DCE:
	movsbl    1(%edi), %edx
	leal      2(%edi), %eax
	cmpl      $99, %edx
	je        .L08056E38
.L08056DDA:
	cmpl      $48, %edx
	jne       .L08056E48
.L08056DDF:
	addl      $5, %edi
	xorl      %esi, %esi
.L08056DE4:
	movsbl    (%eax), %edx
	subl      $48, %edx
	cmpl      $7, %edx
	ja        .L08056DF9
.L08056DEF:
	addl      $1, %eax
	cmpl      %edi, %eax
	leal      (%edx,%esi,8), %esi
	jne       .L08056DE4
.L08056DF9:
	cmpl      .LD080611A0, %ebx
	movl      %esi, %edx
	movl      %eax, %edi
	jne       .L08056DBD
.L08056E05:
	leal      (%esi), %esi
.L08056E08:
	movb      %dl, 12(%esp)
	call      .L080520D0
.L08056E11:
	movzbl    12(%esp), %edx
	movl      %eax, %ebx
	movb      %dl, (%ebx)
	addl      $1, %ebx
	testb     %dl, %dl
	jne       .L08056DC6
.L08056E21:
	leal      (%esi), %esi
.L08056E28:
	addl      $32, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08056E31:
	.ascii	"\215\264&\000\000\000\000"
.L08056E38:
	movl      %eax, %edi
	xorl      %edx, %edx
	movl      $256, %esi
	jmp       .L08056DB5
# ----------------------
.L08056E46:
	.value	36966
.L08056E48:
	leal      1(%edi), %eax
	leal      28(%esp), %edx
	call      .L08056CD0
.L08056E54:
	movl      28(%esp), %esi
	movl      %esi, %edx
	movl      %eax, %edi
	jmp       .L08056DB5
# ----------------------
.L08056E61:
	.ascii	"\353\r\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L08056E70:
	subl      $60, %esp
	movl      %ebx, 44(%esp)
	movl      %eax, %ebx
	movl      %ebp, 56(%esp)
	movl      %edx, %ebp
	subl      %eax, %edx
	movl      .LD080611A8, %eax
	movl      %edi, 52(%esp)
	leal      3(%edx), %edi
	movl      %esi, 48(%esp)
	movl      %edi, (%esp)
	movl      %edx, 28(%esp)
	movl      %eax, 4(%esp)
	call      .L080520F0
.L08056EA1:
	movl      28(%esp), %edx
	movl      %ebx, 4(%esp)
	movl      %edx, 8(%esp)
	movl      %eax, %esi
	movl      %eax, (%esp)
	call      memcpy
.L08056EB7:
	movb      $106, -3(%esi,%edi)
	movzbl    (%ebp), %eax
	movb      $0, -1(%esi,%edi)
	movb      %al, -2(%esi,%edi)
	movl      %esi, %eax
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L08056EDF:
	.byte	144
.L08056EE0:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $24, %esp
	cmpb      $0, (%edx)
	je        .L08056F10
.L08056EEB:
	cmpl      %eax, %edx
	je        .L08056F40
.L08056EEF:
	movl      %eax, 4(%esp)
	movl      $.LC0805AB63, (%esp)
	call      .L0804B060
.L08056EFF:
	movl      $1, .LBSS08061544
.L08056F09:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08056F0E:
	.value	36966
.L08056F10:
	call      __errno_location
.L08056F15:
	cmpl      $34, (%eax)
	jne       .L08056F09
.L08056F1A:
	movl      $34, (%esp)
	call      strerror
.L08056F26:
	movl      %ebx, 4(%esp)
	movl      $.LC0805A8A6, (%esp)
	movl      %eax, 8(%esp)
	call      .L0804B060
.L08056F3A:
	jmp       .L08056EFF
# ----------------------
.L08056F3C:
	.long	2520205
.L08056F40:
	movl      %edx, 4(%esp)
	movl      $.LC0805AB48, (%esp)
	call      .L0804B060
.L08056F50:
	jmp       .L08056EFF
# ----------------------
.L08056F52:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08056F60:
	subl      $44, %esp
	movl      .LBSS08061548, %eax
	movl      %ebx, 32(%esp)
	movl      %esi, 36(%esp)
	xorl      %esi, %esi
	movl      %edi, 40(%esp)
	xorl      %edi, %edi
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L08056F99
.L08056F7E:
	addl      $4, %eax
	movzbl    1(%ebx), %esi
	movl      %eax, .LBSS08061548
	movzbl    (%ebx), %eax
	cmpb      $39, %al
	jne       .L08056FB0
.L08056F91:
	andl      $255, %esi
	xorl      %edi, %edi
.L08056F99:
	movl      %esi, %eax
	movl      %edi, %edx
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	addl      $44, %esp
	ret       
# ----------------------
.L08056FAD:
	.ascii	"\215v\000"
.L08056FB0:
	cmpb      $34, %al
	je        .L08056F91
.L08056FB4:
	call      __errno_location
.L08056FB9:
	movl      $0, (%eax)
	leal      28(%esp), %eax
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      __strtoll_internal
.L08056FDF:
	movl      %edx, %edi
	movl      28(%esp), %edx
	movl      %eax, %esi
	movl      %ebx, %eax
	call      .L08056EE0
.L08056FEE:
	jmp       .L08056F99
.L08056FF0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      $.LBSS0806395C, (%esp)
	movl      $0, .LBSS08061544
	call      .L080539E0
.L0805700D:
	movl      .LBSS08063978, %eax
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	movl      %ebx, 64(%esp)
	je        .L08057641
.L08057020:
	movl      64(%esp), %esi
	addl      $4, %eax
	movl      %eax, 72(%esp)
	movl      %eax, .LBSS08061548
	movzbl    (%esi), %ecx
	movl      %esi, %ebx
	leal      (%esi), %esi
.L08057038:
	movsbl    %cl, %ecx
	testl     %ecx, %ecx
	je        .L08057071
.L0805703F:
	cmpl      $92, %ecx
	leal      1(%ebx), %esi
	je        .L08057138
.L0805704B:
	cmpl      $37, %ecx
	je        .L08057098
.L08057050:
	movl      .LD080611B4, %eax
	movl      (%eax), %edx
	cmpl      4(%eax), %edx
	je        .L08057160
.L08057060:
	movb      %cl, (%edx)
	movl      %esi, %ebx
	addl      $1, (%eax)
	movzbl    (%esi), %ecx
	movsbl    %cl, %ecx
	testl     %ecx, %ecx
	jne       .L0805703F
.L08057071:
	movl      .LBSS08061548, %eax
	cmpl      72(%esp), %eax
	je        .L08057600
.L08057080:
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L08057600
.L0805708A:
	movl      64(%esp), %edi
	movzbl    (%edi), %ecx
	movl      %edi, %ebx
	jmp       .L08057038
# ----------------------
.L08057095:
	.ascii	"\215v\000"
.L08057098:
	cmpb      $37, 1(%ebx)
	je        .L080573B8
.L080570A2:
	movl      %esi, (%esp)
	leal      80(%esp), %edi
	movl      $.LC0805AB80, 4(%esp)
	call      strspn
.L080570B6:
	movl      %edi, 60(%esp)
	addl      %eax, %esi
	cmpb      $42, (%esi)
	je        .L08057428
.L080570C5:
	movl      %esi, (%esp)
	movl      $.LC0805AB86, 4(%esp)
	call      strspn
.L080570D5:
	addl      %eax, %esi
	movzbl    (%esi), %eax
	cmpb      $46, %al
	je        .L080573C0
.L080570E2:
	cmpb      $42, %al
	je        .L080573CF
.L080570EA:
	movl      $.LC0805AB86, 4(%esp)
	movl      %esi, (%esp)
	call      strspn
.L080570FA:
	leal      (%esi,%eax), %ebp
	movzbl    (%ebp), %eax
	testb     %al, %al
	je        .L0805760D
.L08057109:
	subl      $69, %eax
	movzbl    1(%ebp), %ecx
	cmpb      $51, %al
	movb      $0, 1(%ebp)
	jbe       .L08057178
.L08057118:
	movl      %ebx, 4(%esp)
	movl      $.LC0805ABAB, (%esp)
	call      .L0804B060
.L08057128:
	movl      $1, %eax
.L0805712D:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08057135:
	.ascii	"\215v\000"
.L08057138:
	leal      88(%esp), %edx
	movl      %esi, %eax
	call      .L08056CD0
.L08057143:
	movl      88(%esp), %ecx
	movl      %eax, %esi
	movl      .LD080611B4, %eax
	movl      (%eax), %edx
	cmpl      4(%eax), %edx
	jne       .L08057060
.L08057159:
	leal      (%esi), %esi
.L08057160:
	movl      %ecx, (%esp)
	movl      %esi, %ebx
	movl      %eax, 4(%esp)
	call      .L08056C60
.L0805716E:
	movzbl    (%esi), %ecx
	jmp       .L08057038
# ----------------------
.L08057176:
	.value	36966
.L08057178:
	movzbl    %al, %eax
	jmp       *.LC0805AA78(,%eax,4)
# ----------------------
.L08057182:
	.ascii	"\215\266\000\000\000\000"
.L08057188:
	movl      .LBSS08061548, %edx
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L08057626
.L08057198:
	addl      $4, %edx
	movl      %edx, .LBSS08061548
.L080571A1:
	movl      60(%esp), %esi
	leal      80(%esp), %edx
	subl      %edx, %esi
	je        .L08057440
.L080571B1:
	cmpl      $4, %esi
	je        .L08057536
.L080571BA:
	movl      %eax, 12(%esp)
	movl      84(%esp), %eax
	movl      %eax, 8(%esp)
.L080571C6:
	movl      80(%esp), %eax
	movl      %ebx, (%esp)
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L080571DD:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L080571EA:
	.ascii	"\215\266\000\000\000\000"
.L080571F0:
	movb      %cl, 44(%esp)
	call      .L08056F60
.L080571F9:
	movl      %eax, %esi
	movl      %edx, %edi
	movl      %ebx, %eax
	movl      %ebp, %edx
.L08057201:
	call      .L08056E70
.L08057206:
	movl      60(%esp), %ebx
	leal      80(%esp), %edx
	movzbl    44(%esp), %ecx
	subl      %edx, %ebx
	jne       .L080573E8
.L0805721B:
	movb      %cl, 44(%esp)
	leal      1(%ebp), %ebx
	movl      %esi, 4(%esp)
	movl      %edi, 8(%esp)
	movl      %eax, (%esp)
	call      .L08056C00
.L08057232:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L0805723F:
	.byte	144
.L08057240:
	movl      .LBSS08061548, %eax
	xorl      %esi, %esi
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L08057258
.L0805724D:
	movsbl    (%edx), %esi
	addl      $4, %eax
	movl      %eax, .LBSS08061548
.L08057258:
	movl      60(%esp), %edi
	leal      80(%esp), %eax
	subl      %eax, %edi
	je        .L08057480
.L08057268:
	cmpl      $4, %edi
	je        .L08057505
.L08057271:
	movl      84(%esp), %eax
	movl      %esi, 12(%esp)
	movl      %eax, 8(%esp)
	jmp       .L080571C6
# ----------------------
.L08057282:
	.ascii	"\215\266\000\000\000\000"
.L08057288:
	movl      .LBSS08061548, %edx
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L08057630
.L08057298:
	addl      $4, %edx
	movl      %edx, .LBSS08061548
.L080572A1:
	movb      %cl, 44(%esp)
	call      .L08056DA0
.L080572AA:
	movl      60(%esp), %edi
	leal      80(%esp), %edx
	subl      %edx, %edi
	movl      %eax, %esi
	movl      .LD080611A8, %eax
	movb      $115, (%ebp)
	movzbl    44(%esp), %ecx
	je        .L08057460
.L080572CA:
	cmpl      $4, %edi
	je        .L0805753C
.L080572D3:
	movl      %eax, 12(%esp)
	movl      84(%esp), %eax
	movl      %ebx, (%esp)
	movl      %eax, 8(%esp)
	movl      80(%esp), %eax
	movl      %eax, 4(%esp)
	call      .L08056C00
.L080572EF:
	movzbl    44(%esp), %ecx
.L080572F4:
	testl     %esi, %esi
	jne       .L08057600
.L080572FC:
	movb      $98, (%ebp)
	leal      1(%ebp), %ebx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L0805730B:
	.ascii	"\220\215t&\000"
.L08057310:
	movl      .LBSS08061548, %eax
	xorl      %edi, %edi
	movl      (%eax), %esi
	movl      %esi, 68(%esp)
	movl      68(%esp), %edx
	xorl      %esi, %esi
	testl     %edx, %edx
	je        .L0805734A
.L08057327:
	addl      $4, %eax
	movl      %eax, .LBSS08061548
	movl      68(%esp), %eax
	movzbl    1(%eax), %esi
	movzbl    (%eax), %eax
	cmpb      $39, %al
	jne       .L080575A2
.L08057342:
	andl      $255, %esi
	xorl      %edi, %edi
.L0805734A:
	movl      %ebp, %edx
	movl      %ebx, %eax
	movb      %cl, 44(%esp)
	jmp       .L08057201
# ----------------------
.L08057357:
	.byte	144
.L08057358:
	movl      .LBSS08061548, %eax
	movl      (%eax), %esi
	testl     %esi, %esi
	je        .L0805763A
.L08057367:
	addl      $4, %eax
	movl      %eax, .LBSS08061548
	movzbl    (%esi), %eax
	cmpb      $39, %al
	jne       .L0805755E
.L0805737A:
	movzbl    1(%esi), %eax
	movw      %ax, 78(%esp)
	filds     78(%esp)
.L08057387:
	movl      60(%esp), %esi
	leal      80(%esp), %eax
	subl      %eax, %esi
	jne       .L080574D0
.L08057397:
	movl      %ebx, (%esp)
	fstpl     4(%esp)
	movb      %cl, 44(%esp)
	leal      1(%ebp), %ebx
	call      .L08056C00
.L080573AA:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L080573B7:
	.byte	144
.L080573B8:
	leal      2(%ebx), %esi
	jmp       .L08057050
.L080573C0:
	movzbl    1(%esi), %eax
	addl      $1, %esi
	cmpb      $42, %al
	jne       .L080570EA
.L080573CF:
	call      .L08056F60
.L080573D4:
	movl      60(%esp), %edi
	movl      %eax, (%edi)
	addl      $4, %edi
	movl      %edi, 60(%esp)
	jmp       .L080570EA
# ----------------------
.L080573E6:
	.value	36966
.L080573E8:
	cmpl      $4, %ebx
	je        .L080574A0
.L080573F1:
	movl      84(%esp), %edx
	leal      1(%ebp), %ebx
	movl      %esi, 12(%esp)
	movl      %edi, 16(%esp)
	movl      %eax, (%esp)
	movl      %edx, 8(%esp)
	movl      80(%esp), %edx
	movl      %edx, 4(%esp)
	call      .L08056C00
.L08057414:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L08057421:
	.ascii	"\215\264&\000\000\000\000"
.L08057428:
	call      .L08056F60
.L0805742D:
	leal      84(%esp), %edi
	movl      %edi, 60(%esp)
	movl      %eax, 80(%esp)
	jmp       .L080570C5
# ----------------------
.L0805743E:
	.value	36966
.L08057440:
	movl      %ebx, (%esp)
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08057453:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
.L08057460:
	movb      %cl, 44(%esp)
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056C00
.L08057470:
	movzbl    44(%esp), %ecx
	jmp       .L080572F4
# ----------------------
.L0805747A:
	.ascii	"\215\266\000\000\000\000"
.L08057480:
	movl      %ebx, (%esp)
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %esi, 4(%esp)
	call      .L08056C00
.L08057493:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
.L080574A0:
	movl      80(%esp), %edx
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %esi, 8(%esp)
	movl      %edi, 12(%esp)
	movl      %edx, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C00
.L080574BF:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
# ----------------------
.L080574CC:
	.long	2520205
.L080574D0:
	cmpl      $4, %esi
	je        .L0805752D
.L080574D5:
	movl      84(%esp), %eax
	fstpl     12(%esp)
	movl      %ebx, (%esp)
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %eax, 8(%esp)
	movl      80(%esp), %eax
	movl      %eax, 4(%esp)
	call      .L08056C00
.L080574F8:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
.L08057505:
	movl      %esi, 8(%esp)
.L08057509:
	movl      80(%esp), %eax
	movl      %ebx, (%esp)
	leal      1(%ebp), %ebx
	movb      %cl, 44(%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08057520:
	movzbl    44(%esp), %ecx
	movb      %cl, 1(%ebp)
	jmp       .L08057038
.L0805752D:
	fstpl     8(%esp)
	jmp       .L080571C6
.L08057536:
	movl      %eax, 8(%esp)
	jmp       .L08057509
.L0805753C:
	movl      %eax, 8(%esp)
	movl      80(%esp), %eax
	movb      %cl, 44(%esp)
	movl      %ebx, (%esp)
	movl      %eax, 4(%esp)
	call      .L08056C00
.L08057554:
	movzbl    44(%esp), %ecx
	jmp       .L080572F4
.L0805755E:
	cmpb      $34, %al
	je        .L0805737A
.L08057566:
	movb      %cl, 44(%esp)
	leal      92(%esp), %edi
	call      __errno_location
.L08057573:
	movl      $0, (%eax)
	movl      %edi, 4(%esp)
	movl      %esi, (%esp)
	call      strtod
.L08057585:
	movl      92(%esp), %edx
	movl      %esi, %eax
	fstpl     48(%esp)
	call      .L08056EE0
.L08057594:
	movzbl    44(%esp), %ecx
	fldl      48(%esp)
	jmp       .L08057387
.L080575A2:
	cmpb      $34, %al
	je        .L08057342
.L080575AA:
	movb      %cl, 44(%esp)
	leal      92(%esp), %esi
	call      __errno_location
.L080575B7:
	movl      $0, (%eax)
	movl      68(%esp), %eax
	movl      %esi, 4(%esp)
	movl      $0, 12(%esp)
	movl      $0, 8(%esp)
	movl      %eax, (%esp)
	call      __strtoull_internal
.L080575DD:
	movl      %eax, %esi
	movl      %edx, %edi
	movl      68(%esp), %eax
	movl      92(%esp), %edx
	call      .L08056EE0
.L080575EE:
	movzbl    44(%esp), %ecx
	movl      %ebp, %edx
	movl      %ebx, %eax
	movb      %cl, 44(%esp)
	jmp       .L08057201
.L08057600:
	movl      .LBSS08061544, %eax
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805760D:
	movl      $.LC0805AB92, (%esp)
	call      .L0804B060
.L08057619:
	addl      $108, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08057626:
	movl      $.LBSS0806395C, %eax
	jmp       .L080571A1
.L08057630:
	movl      $.LBSS0806395C, %eax
	jmp       .L080572A1
.L0805763A:
	fldz      
	jmp       .L08057387
.L08057641:
	movl      $.LC0805ABC4, (%esp)
	call      .L0804B060
.L0805764D:
	movl      $1, %eax
	jmp       .L0805712D
# ----------------------
.L08057657:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08057660:
	subl      $44, %esp
	movl      52(%esp), %edx
	movl      %esi, 32(%esp)
	movl      .LD080611B4, %esi
	movl      %edi, 36(%esp)
	movl      %ebx, 28(%esp)
	movl      4(%edx), %eax
	leal      4(%edx), %edi
	movl      %ebp, 40(%esp)
	testl     %eax, %eax
	je        .L08057708
.L0805768B:
	xorl      %ebx, %ebx
	cmpb      $45, (%eax)
	jne       .L080576AD
.L08057692:
	cmpb      $110, 1(%eax)
	jne       .L080576AD
.L08057698:
	cmpb      $0, 2(%eax)
	jne       .L080576AD
.L0805769E:
	movl      8(%edx), %eax
	testl     %eax, %eax
	je        .L080576C9
.L080576A5:
	leal      8(%edx), %edi
	movl      $-1, %ebx
.L080576AD:
	call      .L08056DA0
.L080576B2:
	movl      %esi, 4(%esp)
	addl      %eax, %ebx
	movl      .LD080611A8, %eax
	movl      %eax, (%esp)
	call      .L08056C90
.L080576C5:
	testl     %ebx, %ebx
	jle       .L080576E0
.L080576C9:
	xorl      %eax, %eax
	movl      28(%esp), %ebx
	movl      32(%esp), %esi
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	addl      $44, %esp
	ret       
# ----------------------
.L080576DF:
	.byte	144
.L080576E0:
	movl      4(%edi), %ecx
	leal      4(%edi), %ebp
	movl      $32, %eax
	testl     %ecx, %ecx
	je        .L08057721
.L080576EF:
	movl      (%esi), %edx
	cmpl      4(%esi), %edx
	je        .L08057713
.L080576F6:
	movb      %al, (%edx)
	addl      $1, (%esi)
.L080576FB:
	movl      (%ebp), %eax
	movl      %ebp, %edi
	testl     %eax, %eax
	jne       .L080576AD
.L08057704:
	jmp       .L080576C9
# ----------------------
.L08057706:
	.value	36966
.L08057708:
	movl      %edi, %ebp
	movl      $10, %eax
	xorl      %ebx, %ebx
	jmp       .L080576EF
.L08057713:
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      .L08056C60
.L0805771F:
	jmp       .L080576FB
.L08057721:
	testl     %ebx, %ebx
	movb      $10, %al
	jne       .L080576C9
.L08057727:
	jmp       .L080576EF
# ----------------------
.L08057729:
	.ascii	"\220\220\220\220\220\220\220"
.L08057730:
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	movl      $.LC0805ABE4, %eax
	subl      $20, %esp
	movl      $.LC0805ADA0, %ebx
	jmp       .L08057751
# ----------------------
.L08057743:
	.ascii	"\220\215t&\000"
.L08057748:
	addl      $8, %ebx
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08057770
.L08057751:
	movl      %eax, 4(%esp)
	movl      %esi, (%esp)
	call      strcmp
.L0805775D:
	testl     %eax, %eax
	jne       .L08057748
.L08057761:
	addl      $20, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08057769:
	.ascii	"\215\264&\000\000\000\000"
.L08057770:
	xorl      %ebx, %ebx
	addl      $20, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L0805777A:
	.ascii	"\215\266\000\000\000\000"
.L08057780:
	subl      $12, %esp
	movl      %esi, 8(%esp)
	movl      %eax, %esi
	movl      (%eax), %eax
	movl      %ebx, 4(%esp)
	testl     %eax, %eax
	je        .L08057808
.L08057793:
	call      .L08057730
.L08057798:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L080577E8
.L0805779E:
	cmpw      $0, 6(%eax)
	je        .L080577C8
.L080577A5:
	movzwl    4(%ebx), %eax
	cmpw      $37, %ax
	je        .L08057820
.L080577AF:
	movl      %ebx, .LBSS08061550
	cwtl      
	movl      4(%esp), %ebx
	movl      8(%esp), %esi
	addl      $12, %esp
	ret       
# ----------------------
.L080577C2:
	.ascii	"\215\266\000\000\000\000"
.L080577C8:
	movl      4(%esi), %eax
	testl     %eax, %eax
	je        .L080577E8
.L080577CF:
	movl      8(%esi), %ecx
	testl     %ecx, %ecx
	je        .L080577A5
.L080577D6:
	call      .L08057730
.L080577DB:
	testl     %eax, %eax
	je        .L080577A5
.L080577DF:
	cmpw      $1, 6(%eax)
	jne       .L080577A5
.L080577E6:
	nop       
.L080577E8:
	movl      $0, .LBSS08061550
	movl      $39, %eax
	movl      4(%esp), %ebx
	movl      8(%esp), %esi
	addl      $12, %esp
	ret       
# ----------------------
.L08057803:
	.ascii	"\220\215t&\000"
.L08057808:
	movl      $0, .LBSS08061550
	movl      4(%esp), %ebx
	movl      8(%esp), %esi
	addl      $12, %esp
	ret       
# ----------------------
.L0805781E:
	.value	36966
.L08057820:
	movl      4(%esi), %edx
	testl     %edx, %edx
	jne       .L080577AF
.L08057827:
	jmp       .L080577E8
# ----------------------
.L08057829:
	.ascii	"\215\264&\000\000\000\000"
.L08057830:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $136, %esp
	cmpl      $1, %edx
	je        .L08057870
.L0805783E:
	movl      $512, 12(%esp)
	movl      %edx, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $-100, (%esp)
	call      faccessat
.L0805785A:
	testl     %eax, %eax
	sete      %al
	movzbl    %al, %eax
.L08057862:
	addl      $136, %esp
	popl      %ebx
	ret       
# ----------------------
.L0805786A:
	.ascii	"\215\266\000\000\000\000"
.L08057870:
	movl      %edx, 28(%esp)
	call      geteuid
.L08057879:
	movl      28(%esp), %edx
	testl     %eax, %eax
	jne       .L0805783E
.L08057881:
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat64
.L08057899:
	movl      28(%esp), %edx
	movl      %eax, %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	jne       .L08057862
.L080578A5:
	testb     $73, 48(%esp)
	jne       .L0805783E
.L080578AC:
	jmp       .L08057862
# ----------------------
.L080578AE:
	.value	36966
.L080578B0:
	subl      $220, %esp
	movl      %ebx, 208(%esp)
	movl      .LBSS0806154C, %ebx
	movl      %esi, 212(%esp)
	movl      %edi, 216(%esp)
	leal      4(%ebx), %eax
	movl      (%ebx), %esi
	call      .L08057780
.L080578DB:
	leal      8(%ebx), %edx
	movl      8(%ebx), %ebx
	movl      .LBSS08061550, %eax
	movl      %edx, .LBSS0806154C
	testl     %ebx, %ebx
	je        .L08057BFF
.L080578F4:
	movzwl    4(%eax), %eax
	subl      $17, %eax
	cmpw      $16, %ax
	jbe       .L08057938
.L08057901:
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      strcmp
.L0805790D:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	sete      %cl
	leal      (%esi), %esi
.L08057918:
	movl      %ecx, %eax
	movl      208(%esp), %ebx
	movl      212(%esp), %esi
	movl      216(%esp), %edi
	addl      $220, %esp
	ret       
# ----------------------
.L08057936:
	.value	36966
.L08057938:
	movzwl    %ax, %eax
	jmp       *.LC0805ACA0(,%eax,4)
# ----------------------
.L08057942:
	.ascii	"\215\266\000\000\000\000"
.L08057948:
	movl      %esi, (%esp)
	call      .L08052CA0
.L08057950:
	movl      %ebx, (%esp)
	movl      %edx, %esi
	movl      %eax, %edi
	call      .L08052CA0
.L0805795C:
	movl      $1, %ecx
	cmpl      %edx, %esi
	jl        .L08057918
.L08057965:
	jg        .L08057970
.L08057967:
	cmpl      %eax, %edi
	jb        .L08057918
.L0805796B:
	nop       
	leal      (%esi), %esi
.L08057970:
	xorl      %ecx, %ecx
	jmp       .L08057918
# ----------------------
.L08057974:
	.long	2520205
.L08057978:
	movl      %esi, (%esp)
	call      .L08052CA0
.L08057980:
	movl      %ebx, (%esp)
	movl      %edx, %esi
	movl      %eax, %edi
	call      .L08052CA0
.L0805798C:
	movl      $1, %ecx
	cmpl      %edx, %esi
	jl        .L08057918
.L08057995:
	jg        .L08057970
.L08057997:
	cmpl      %eax, %edi
	jbe       .L08057918
.L0805799F:
	nop       
	jmp       .L08057970
# ----------------------
.L080579A2:
	.ascii	"\215\266\000\000\000\000"
.L080579A8:
	movl      %esi, (%esp)
	nop       
	leal      (%esi), %esi
	call      .L08052CA0
.L080579B5:
	movl      %ebx, (%esp)
	movl      %edx, %esi
	movl      %eax, %edi
	call      .L08052CA0
.L080579C1:
	movl      $1, %ecx
	cmpl      %edx, %esi
	jg        .L08057918
.L080579CE:
	jl        .L08057970
.L080579D0:
	cmpl      %eax, %edi
	ja        .L08057918
.L080579D8:
	nop       
	leal      (%esi), %esi
	jmp       .L08057970
# ----------------------
.L080579E2:
	.ascii	"\215\266\000\000\000\000"
.L080579E8:
	movl      %esi, (%esp)
	nop       
	leal      (%esi), %esi
	call      .L08052CA0
.L080579F5:
	movl      %ebx, (%esp)
	movl      %edx, %esi
	movl      %eax, %edi
	call      .L08052CA0
.L08057A01:
	movl      $1, %ecx
	cmpl      %edx, %esi
	jg        .L08057918
.L08057A0E:
	jl        .L08057970
.L08057A14:
	cmpl      %eax, %edi
	jae       .L08057918
.L08057A1C:
	leal      (%esi), %esi
	jmp       .L08057970
# ----------------------
.L08057A25:
	.ascii	"\215v\000"
.L08057A28:
	movl      %esi, (%esp)
	nop       
	leal      (%esi), %esi
	call      .L08052CA0
.L08057A35:
	movl      %ebx, (%esp)
	movl      %eax, %edi
	movl      %edx, %esi
	call      .L08052CA0
.L08057A41:
	xorl      %edi, %eax
	xorl      %esi, %edx
	orl       %edx, %eax
	setne     %cl
	movzbl    %cl, %ecx
	jmp       .L08057918
# ----------------------
.L08057A52:
	.ascii	"\215\266\000\000\000\000"
.L08057A58:
	movl      %esi, (%esp)
	call      .L08052CA0
.L08057A60:
	movl      %ebx, (%esp)
	movl      %eax, %edi
	movl      %edx, %esi
	call      .L08052CA0
.L08057A6C:
	xorl      %edi, %eax
	xorl      %esi, %edx
	orl       %edx, %eax
	sete      %cl
	movzbl    %cl, %ecx
	jmp       .L08057918
# ----------------------
.L08057A7D:
	.ascii	"\215v\000"
.L08057A80:
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      strcmp
.L08057A8C:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setg      %cl
	jmp       .L08057918
.L08057A98:
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      strcmp
.L08057AA4:
	movl      %eax, %ecx
	shrl      $31, %ecx
	jmp       .L08057918
# ----------------------
.L08057AAE:
	.value	36966
.L08057AB0:
	movl      %ebx, 4(%esp)
	movl      %esi, (%esp)
	call      strcmp
.L08057ABC:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	setne     %cl
	jmp       .L08057918
.L08057AC8:
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057AE0:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057AEA:
	leal      120(%esp), %eax
	movl      %ecx, 28(%esp)
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057B06:
	movl      28(%esp), %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057B12:
	movl      32(%esp), %eax
	movl      36(%esp), %edx
	xorl      124(%esp), %edx
	xorl      120(%esp), %eax
	orl       %eax, %edx
	jne       .L08057918
.L08057B2A:
	movl      132(%esp), %eax
	xorl      %ecx, %ecx
	cmpl      %eax, 44(%esp)
	sete      %cl
	jmp       .L08057918
# ----------------------
.L08057B3F:
	.byte	144
.L08057B40:
	leal      120(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057B58:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057B62:
	leal      32(%esp), %eax
	movl      %ecx, 28(%esp)
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057B7E:
	movl      28(%esp), %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057B8A:
	movl      96(%esp), %eax
	xorl      %ecx, %ecx
	cmpl      %eax, 184(%esp)
	setl      %cl
	jmp       .L08057918
# ----------------------
.L08057B9F:
	.byte	144
.L08057BA0:
	leal      32(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %esi, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057BB8:
	xorl      %ecx, %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057BC2:
	leal      120(%esp), %eax
	movl      %ecx, 28(%esp)
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08057BDE:
	movl      28(%esp), %ecx
	testl     %eax, %eax
	jne       .L08057918
.L08057BEA:
	movl      184(%esp), %eax
	xorl      %ecx, %ecx
	cmpl      %eax, 96(%esp)
	setg      %cl
	jmp       .L08057918
.L08057BFF:
	movl      (%eax), %eax
	movl      $.LC0805ABE7, %edx
	call      .L08049700
# ----------------------
.L08057C0B:
	.ascii	"\220\215t&\000"
.L08057C10:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $136, %esp
	cmpl      $34, %eax
	je        .L08057D28
.L08057C22:
	testl     %eax, %eax
	je        .L08057CD0
.L08057C2A:
	cmpl      $37, %eax
	je        .L08057CB0
.L08057C33:
	movl      .LBSS08061550, %ecx
	testl     %ecx, %ecx
	je        .L08057CE0
.L08057C41:
	cmpw      $0, 6(%ecx)
	jne       .L08057CE0
.L08057C4C:
	movl      .LBSS0806154C, %eax
	leal      4(%eax), %edx
	movl      4(%eax), %eax
	movl      %edx, .LBSS0806154C
	testl     %eax, %eax
	je        .L08057F21
.L08057C65:
	cmpl      $23, %ebx
	jbe       .L08057D50
.L08057C6E:
	leal      32(%esp), %edx
	cmpl      $11, %ebx
	movl      %edx, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $3, (%esp)
	je        .L08057DF9
.L08057C8A:
	call      __xstat64
.L08057C8F:
	testl     %eax, %eax
	setne     %al
.L08057C94:
	xorl      %edx, %edx
	testb     %al, %al
	jne       .L08057CD2
.L08057C9A:
	subl      $5, %ebx
	cmpl      $16, %ebx
	jbe       .L08057E08
.L08057CA6:
	movl      $1, %edx
	jmp       .L08057CD2
# ----------------------
.L08057CAD:
	.ascii	"\215v\000"
.L08057CB0:
	movl      .LBSS0806154C, %eax
	addl      $4, %eax
	movl      %eax, .LBSS0806154C
	call      .L08057780
.L08057CC2:
	cmpl      $38, %eax
	jne       .L08057D58
.L08057CCB:
	nop       
	leal      (%esi), %esi
.L08057CD0:
	xorl      %edx, %edx
.L08057CD2:
	addl      $136, %esp
	movl      %edx, %eax
	popl      %ebx
	ret       
# ----------------------
.L08057CDC:
	.long	2520205
.L08057CE0:
	movl      .LBSS0806154C, %ebx
	leal      4(%ebx), %eax
	call      .L08057780
.L08057CEE:
	movl      .LBSS08061550, %eax
	testl     %eax, %eax
	je        .L08057CFE
.L08057CF7:
	cmpw      $1, 6(%eax)
	je        .L08057D18
.L08057CFE:
	movl      (%ebx), %eax
.L08057D00:
	xorl      %edx, %edx
	cmpb      $0, (%eax)
	setne     %dl
	addl      $136, %esp
	movl      %edx, %eax
	popl      %ebx
	ret       
# ----------------------
.L08057D12:
	.ascii	"\215\266\000\000\000\000"
.L08057D18:
	call      .L080578B0
.L08057D1D:
	movl      %eax, %edx
	jmp       .L08057CD2
# ----------------------
.L08057D21:
	.ascii	"\215\264&\000\000\000\000"
.L08057D28:
	movl      .LBSS0806154C, %eax
	addl      $4, %eax
	movl      %eax, .LBSS0806154C
	call      .L08057780
.L08057D3A:
	call      .L08057C10
.L08057D3F:
	xorl      %edx, %edx
	testl     %eax, %eax
	sete      %dl
	addl      $136, %esp
	movl      %edx, %eax
	popl      %ebx
	ret       
.L08057D50:
	jmp       *.LC0805ACE4(,%ebx,4)
# ----------------------
.L08057D57:
	.byte	144
.L08057D58:
	call      .L08057F30
.L08057D5D:
	movl      %eax, %edx
	movl      .LBSS0806154C, %eax
	movl      %edx, 28(%esp)
	addl      $4, %eax
	movl      %eax, .LBSS0806154C
	call      .L08057780
.L08057D75:
	movl      28(%esp), %edx
	cmpl      $38, %eax
	je        .L08057CD2
.L08057D82:
	movl      $.LC0805ABF9, %edx
	xorl      %eax, %eax
	call      .L08049700
# ----------------------
.L08057D8E:
	.value	36966
.L08057D90:
	movl      $4, %edx
	call      .L08057830
.L08057D9A:
	movl      %eax, %edx
	jmp       .L08057CD2
# ----------------------
.L08057DA1:
	.ascii	"\215\264&\000\000\000\000"
.L08057DA8:
	xorl      %edx, %edx
	cmpb      $0, (%eax)
	sete      %dl
	jmp       .L08057CD2
# ----------------------
.L08057DB5:
	.ascii	"\215v\000"
.L08057DB8:
	movl      %eax, (%esp)
	call      .L08052CA0
.L08057DC0:
	movl      %eax, (%esp)
	call      isatty
.L08057DC8:
	movl      %eax, %edx
	jmp       .L08057CD2
# ----------------------
.L08057DCF:
	.byte	144
.L08057DD0:
	movl      $1, %edx
	call      .L08057830
.L08057DDA:
	movl      %eax, %edx
	jmp       .L08057CD2
# ----------------------
.L08057DE1:
	.ascii	"\215\264&\000\000\000\000"
.L08057DE8:
	movl      $2, %edx
	call      .L08057830
.L08057DF2:
	movl      %eax, %edx
	jmp       .L08057CD2
.L08057DF9:
	call      __lxstat64
.L08057DFE:
	testl     %eax, %eax
	setne     %al
	jmp       .L08057C94
.L08057E08:
	jmp       *.LC0805AD44(,%ebx,4)
.L08057E0F:
	movl      56(%esp), %ebx
	call      geteuid
.L08057E18:
	xorl      %edx, %edx
	cmpl      %eax, %ebx
	sete      %dl
	jmp       .L08057CD2
.L08057E24:
	xorl      %edx, %edx
	testb     $2, 49(%esp)
	setne     %dl
	jmp       .L08057CD2
.L08057E33:
	xorl      %edx, %edx
	testb     $4, 49(%esp)
	setne     %dl
	jmp       .L08057CD2
.L08057E42:
	xorl      %edx, %edx
	testb     $8, 49(%esp)
	setne     %dl
	jmp       .L08057CD2
.L08057E51:
	movl      76(%esp), %eax
	orl       80(%esp), %eax
	setne     %dl
	movzbl    %dl, %edx
	jmp       .L08057CD2
.L08057E64:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $40960, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057E7C:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $49152, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057E94:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $4096, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057EAC:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $24576, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057EC4:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $8192, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057EDC:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $16384, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057EF4:
	movl      48(%esp), %eax
	xorl      %edx, %edx
	andl      $61440, %eax
	cmpl      $32768, %eax
	sete      %dl
	jmp       .L08057CD2
.L08057F0C:
	movl      60(%esp), %ebx
	call      getegid
.L08057F15:
	xorl      %edx, %edx
	cmpl      %eax, %ebx
	sete      %dl
	jmp       .L08057CD2
.L08057F21:
	movl      (%ecx), %eax
	movl      $.LC0805ABE7, %edx
	call      .L08049700
# ----------------------
.L08057F2D:
	.ascii	"\215v\000"
.L08057F30:
	pushl     %ebp
	xorl      %ebp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      $0, 12(%esp)
	leal      (%esi), %esi
.L08057F48:
	movl      $1, %esi
	jmp       .L08057F5D
# ----------------------
.L08057F4F:
	.byte	144
.L08057F50:
	leal      8(%ebx), %eax
	movl      %eax, .LBSS0806154C
	call      .L08057780
.L08057F5D:
	call      .L08057C10
.L08057F62:
	movl      .LBSS0806154C, %ebx
	leal      4(%ebx), %edi
	testl     %eax, %eax
	movl      %edi, %eax
	cmove     %ebp, %esi
	call      .L08057780
.L08057F77:
	cmpl      $35, %eax
	je        .L08057F50
.L08057F7C:
	movl      %edi, %eax
	orl       %esi, 12(%esp)
	call      .L08057780
.L08057F87:
	cmpl      $36, %eax
	jne       .L08057F9B
.L08057F8C:
	leal      8(%ebx), %eax
	movl      %eax, .LBSS0806154C
	call      .L08057780
.L08057F99:
	jmp       .L08057F48
.L08057F9B:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08057FA7:
	.ascii	"\211\366\215\274'\000\000\000\000"
.L08057FB0:
	subl      $28, %esp
	movl      %ebx, 16(%esp)
	movl      36(%esp), %ebx
	movl      %esi, 20(%esp)
	movl      32(%esp), %esi
	movl      %edi, 24(%esp)
	movl      (%ebx), %eax
	cmpb      $91, (%eax)
	je        .L08058078
.L08057FD2:
	subl      $1, %esi
	testl     %esi, %esi
	jle       .L08058096
.L08057FDD:
	cmpl      $3, %esi
	leal      4(%ebx), %edi
	je        .L08058030
.L08057FE5:
	cmpl      $4, %esi
	je        .L0805804A
.L08057FEA:
	movl      %edi, %eax
	call      .L08057780
.L08057FF1:
	movl      %edi, .LBSS0806154C
	call      .L08057F30
.L08057FFC:
	movl      .LBSS0806154C, %edx
	movl      (%edx), %ecx
	testl     %eax, %eax
	sete      %al
	testl     %ecx, %ecx
	movzbl    %al, %eax
	je        .L0805801B
.L08058010:
	movl      4(%edx), %ebx
	testl     %ebx, %ebx
	jne       .L080580AB
.L0805801B:
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
# ----------------------
.L0805802B:
	.ascii	"\220\215t&\000"
.L08058030:
	movl      8(%ebx), %eax
	call      .L08057730
.L08058038:
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L0805804A
.L0805803E:
	cmpw      $1, 6(%edx)
	movl      $39, %eax
	je        .L08057FF1
.L0805804A:
	movl      4(%ebx), %eax
	cmpb      $40, (%eax)
	jne       .L08057FEA
.L08058052:
	cmpb      $0, 1(%eax)
	jne       .L08057FEA
.L08058058:
	subl      $1, %esi
	movl      (%edi,%esi,4), %eax
	cmpb      $41, (%eax)
	jne       .L08057FEA
.L08058063:
	cmpb      $0, 1(%eax)
	jne       .L08057FEA
.L08058069:
	movl      $0, (%edi,%esi,4)
	leal      8(%ebx), %edi
	jmp       .L08057FEA
.L08058078:
	subl      $1, %esi
	leal      (%ebx,%esi,4), %eax
	movl      (%eax), %edx
	cmpb      $93, (%edx)
	jne       .L080580B7
.L08058085:
	subl      $1, %esi
	testl     %esi, %esi
	movl      $0, (%eax)
	jg        .L08057FDD
.L08058096:
	movl      $1, %eax
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	addl      $28, %esp
	ret       
.L080580AB:
	movl      $.LC0805AC1A, %edx
	movl      %ecx, %eax
	call      .L08049700
.L080580B7:
	movl      $.LC0805AC10, (%esp)
	call      .L0804B000
# ----------------------
.L080580C3:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220\220\220"
.L080580D0:
	subl      $124, %esp
	movl      %ebx, 108(%esp)
	movl      %esi, 112(%esp)
	movl      %edi, 116(%esp)
	movl      %ebp, 120(%esp)
	movl      $2, (%esp)
	call      sysconf
.L080580EF:
	movl      %eax, %ebx
	leal      80(%esp), %eax
	movl      %eax, (%esp)
	call      times
.L080580FD:
	movl      92(%esp), %esi
	movl      $-2004318071, %ecx
	movl      %ebx, 76(%esp)
	movl      88(%esp), %edi
	movl      84(%esp), %ebp
	movl      $.LC0805AEE0, (%esp)
	movl      %esi, %edx
	movl      %esi, %eax
	sarl      $31, %edx
	idivl     %ebx
	fildl     76(%esp)
	movl      %esi, 76(%esp)
	fildl     76(%esp)
	movl      %edi, 76(%esp)
	fdiv      %st(1), %st
	fstpl     44(%esp)
	fildl     76(%esp)
	fdiv      %st(1), %st
	movl      %eax, %esi
	imull     %ecx
	movl      %edi, %eax
	movl      %ebp, 76(%esp)
	addl      %esi, %edx
	sarl      $5, %edx
	sarl      $31, %esi
	subl      %esi, %edx
	movl      %edx, 40(%esp)
	movl      %edi, %edx
	sarl      $31, %edx
	idivl     %ebx
	fstpl     32(%esp)
	fildl     76(%esp)
	fdiv      %st(1), %st
	movl      %eax, %edi
	imull     %ecx
	movl      %ebp, %eax
	addl      %edi, %edx
	sarl      $5, %edx
	sarl      $31, %edi
	subl      %edi, %edx
	movl      %edx, 28(%esp)
	movl      %ebp, %edx
	sarl      $31, %edx
	idivl     %ebx
	fstpl     20(%esp)
	fildl     80(%esp)
	fdivp     %st, %st(1)
	fstpl     8(%esp)
	movl      %eax, %ebp
	imull     %ecx
	movl      80(%esp), %eax
	addl      %ebp, %edx
	sarl      $5, %edx
	sarl      $31, %ebp
	subl      %ebp, %edx
	movl      %edx, 16(%esp)
	movl      %eax, %edx
	sarl      $31, %edx
	idivl     %ebx
	movl      %eax, %ebx
	imull     %ecx
	addl      %ebx, %edx
	sarl      $5, %edx
	sarl      $31, %ebx
	subl      %ebx, %edx
	movl      %edx, 4(%esp)
	call      .L08056C00
.L080581C4:
	xorl      %eax, %eax
	movl      108(%esp), %ebx
	movl      112(%esp), %esi
	movl      116(%esp), %edi
	movl      120(%esp), %ebp
	addl      $124, %esp
	ret       
# ----------------------
.L080581DA:
	.ascii	"\220\220\220\220\220\220"
.L080581E0:
	pushl     %esi
	movl      $-1541783131, %esi
	pushl     %ebx
	movl      $.LD08061200, %ebx
	subl      $4, %esp
	nop       
.L080581F0:
	movl      8(%ebx), %edx
	movzbl    (%edx), %eax
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L08058221
.L08058200:
	cmpb      $61, %al
	jne       .L08058212
.L08058204:
	jmp       .L08058221
# ----------------------
.L08058206:
	.value	36966
.L08058208:
	testb     %al, %al
	leal      (%esi), %esi
	je        .L08058221
.L08058212:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	cmpb      $61, %al
	jne       .L08058208
.L08058221:
	movl      %ecx, %eax
	mull      %esi
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	subl      %edx, %ecx
	movl      .LBSS08061560(,%ecx,4), %eax
	movl      %ebx, .LBSS08061560(,%ecx,4)
	movl      %eax, (%ebx)
	addl      $16, %ebx
	cmpl      $.LD08061280, %ebx
	jb        .L080581F0
.L08058250:
	call      geteuid
.L08058255:
	testl     %eax, %eax
	jne       .L08058263
.L08058259:
	movl      $.LC0805AEFD, .LD08061248
.L08058263:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L08058269:
	.ascii	"\215\264&\000\000\000\000"
.L08058270:
	pushl     %ebp
	movl      $.LBSS08061560, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      .LD080611A8, %eax
	movl      48(%esp), %esi
	movl      56(%esp), %edx
	movl      52(%esp), %edi
	movl      %edx, 12(%esp)
	orl       %esi, %edi
	nop       
	leal      (%esi), %esi
.L08058298:
	movl      (%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L080582AE
.L0805829F:
	jmp       .L080582CD
# ----------------------
.L080582A1:
	.ascii	"\215\264&\000\000\000\000"
.L080582A8:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	je        .L080582CD
.L080582AE:
	movl      4(%ebx), %edx
	andl      %edi, %edx
	cmpl      %esi, %edx
	jne       .L080582A8
.L080582B7:
	cmpl      .LD080611A0, %eax
	je        .L08058310
.L080582BF:
	movl      8(%ebx), %edx
	movl      %edx, (%eax)
	movl      (%ebx), %ebx
	addl      $4, %eax
	testl     %ebx, %ebx
	jne       .L080582AE
.L080582CD:
	addl      $4, %ebp
	cmpl      $.LBSS080615FC, %ebp
	jb        .L08058298
.L080582D8:
	cmpl      %eax, .LD080611A0
	je        .L08058317
.L080582E0:
	movl      12(%esp), %edx
	testl     %edx, %edx
	je        .L080582EE
.L080582E8:
	movl      12(%esp), %edx
	movl      %eax, (%edx)
.L080582EE:
	movl      $0, (%eax)
	addl      $4, %eax
	subl      .LD080611A8, %eax
	movl      %eax, 48(%esp)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L08051E00
# ----------------------
.L0805830D:
	.ascii	"\215v\000"
.L08058310:
	call      .L080520D0
.L08058315:
	jmp       .L080582BF
.L08058317:
	call      .L080520D0
.L0805831C:
	leal      (%esi), %esi
	jmp       .L080582E0
# ----------------------
.L08058322:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08058330:
	pushl     %ebp
	movl      $.LC0805A366, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	leal      44(%esp), %eax
	movl      %eax, 8(%esp)
	movl      88(%esp), %eax
	movl      %eax, 4(%esp)
	movl      84(%esp), %eax
	movl      %eax, (%esp)
	call      .L08058270
.L08058358:
	movl      $.L08058F30, 12(%esp)
	movl      $4, 8(%esp)
	movl      %eax, %ebx
	movl      44(%esp), %eax
	movl      %ebx, (%esp)
	subl      %ebx, %eax
	sarl      $2, %eax
	movl      %eax, 4(%esp)
	call      qsort
.L0805837F:
	movl      80(%esp), %eax
	cmpb      $0, (%eax)
	cmove     %eax, %ebp
	cmpl      44(%esp), %ebx
	jb        .L080583C7
.L0805838F:
	jmp       .L080583F8
# ----------------------
.L08058391:
	.ascii	"\215\264&\000\000\000\000"
.L08058398:
	movl      %eax, 20(%esp)
	movl      80(%esp), %eax
	subl      %esi, %edi
	movl      %esi, 16(%esp)
	addl      $4, %ebx
	movl      %edi, 12(%esp)
	movl      %ebp, 8(%esp)
	movl      %eax, 4(%esp)
	movl      $.LC0805AF04, (%esp)
	call      .L08056C00
.L080583C1:
	cmpl      %ebx, 44(%esp)
	jbe       .L080583F8
.L080583C7:
	movl      (%ebx), %esi
	movl      $61, 4(%esp)
	movl      %esi, (%esp)
	call      strchrnul
.L080583D9:
	movl      %eax, %edi
	movl      $.LBSS0806395C, %eax
	cmpb      $0, (%edi)
	je        .L08058398
.L080583E5:
	addl      $1, %edi
	movl      %edi, (%esp)
	call      .L08052D20
.L080583F0:
	movl      (%ebx), %esi
	jmp       .L08058398
# ----------------------
.L080583F4:
	.long	2520205
.L080583F8:
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08058402:
	.ascii	"\215\264&\000\000\000\000\215\274'\000\000\000\000"
.L08058410:
	subl      $44, %esp
	addl      $1, .LBSS080616A8
	movl      $8, (%esp)
	call      .L08051D70
.L08058426:
	movl      .LBSS08063A60, %edx
	movl      $0, 4(%eax)
	movl      %edx, (%eax)
	movl      %eax, .LBSS08063A60
	movl      .LBSS080616A8, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L08058457
.L0805844D:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L08058460
.L08058457:
	movl      (%eax), %eax
	addl      $44, %esp
	ret       
# ----------------------
.L0805845D:
	.ascii	"\215v\000"
.L08058460:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08058469:
	.ascii	"\213D$\034\213\000\203\304,\303\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08058480:
	pushl     %esi
	pushl     %ebx
	movl      12(%esp), %ebx
	movl      16(%esp), %esi
	movsbl    (%ebx), %eax
	movsbl    (%esi), %ecx
	cmpl      %ecx, %eax
	jne       .L080584C2
.L08058494:
	testl     %eax, %eax
	je        .L080584E0
.L08058498:
	xorl      %edx, %edx
	cmpl      $61, %eax
	jne       .L080584B4
.L0805849F:
	nop       
	jmp       .L080584E0
# ----------------------
.L080584A2:
	.ascii	"\215\266\000\000\000\000"
.L080584A8:
	addl      $1, %edx
	cmpl      $61, %eax
	je        .L080584E0
.L080584B0:
	testl     %eax, %eax
	je        .L080584E0
.L080584B4:
	movsbl    1(%ebx,%edx), %eax
	movsbl    1(%esi,%edx), %ecx
	cmpl      %ecx, %eax
	je        .L080584A8
.L080584C2:
	cmpl      $61, %eax
	movl      $0, %edx
	cmove     %edx, %eax
	movl      %eax, %edx
	subl      %ecx, %edx
	cmpl      $61, %ecx
	cmovne    %edx, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080584DA:
	.ascii	"\215\266\000\000\000\000"
.L080584E0:
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080584E5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L080584F0:
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $8, %esp
	movl      (%eax), %esi
	testl     %esi, %esi
	jne       .L08058510
.L08058500:
	jmp       .L08058523
# ----------------------
.L08058502:
	.ascii	"\215\266\000\000\000\000"
.L08058508:
	movl      %esi, %ebx
	movl      (%esi), %esi
	testl     %esi, %esi
	je        .L08058523
.L08058510:
	movl      %edi, 4(%esp)
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      .L08058480
.L0805851F:
	testl     %eax, %eax
	jne       .L08058508
.L08058523:
	addl      $8, %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L0805852C:
	.long	2520205
.L08058530:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	movzbl    (%ebx), %eax
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L08058563
.L08058545:
	cmpb      $61, %al
	je        .L08058563
.L08058549:
	movl      %ebx, %edx
	jmp       .L08058554
# ----------------------
.L0805854D:
	.ascii	"\215v\000"
.L08058550:
	testb     %al, %al
	je        .L08058563
.L08058554:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	cmpb      $61, %al
	jne       .L08058550
.L08058563:
	movl      %ecx, %eax
	movl      $-1541783131, %edx
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	subl      %edx, %ecx
	movl      %ebx, %edx
	leal      .LBSS08061560(,%ecx,4), %eax
	call      .L080584F0
.L0805858A:
	movl      (%eax), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L080585AE
.L08058592:
	testb     $32, 4(%edx)
	jne       .L080585AE
.L08058598:
	movl      $61, 4(%esp)
	movl      8(%edx), %eax
	movl      %eax, (%esp)
	call      strchrnul
.L080585AB:
	addl      $1, %eax
.L080585AE:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L080585B3:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L080585C0:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      %eax, (%esp)
	call      .L08058530
.L080585CF:
	movl      $.LBSS0806395C, %edx
	movl      $0, 4(%esp)
	testl     %eax, %eax
	cmove     %edx, %eax
	movl      %eax, (%esp)
	call      .L08052C00
.L080585E9:
	addl      $28, %esp
	ret       
# ----------------------
.L080585ED:
	.ascii	"\215v\000"
.L080585F0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %esi
	movzbl    (%esi), %eax
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L08058623
.L08058608:
	cmpb      $61, %al
	je        .L08058623
.L0805860C:
	movl      %esi, %edx
	jmp       .L08058614
.L08058610:
	testb     %al, %al
	je        .L08058623
.L08058614:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	cmpb      $61, %al
	jne       .L08058610
.L08058623:
	movl      %ecx, %eax
	movl      $-1541783131, %edx
	movsbl    .LBSS08063970, %ebx
	mull      %edx
	movl      %ecx, %eax
	andl      $1, %ebx
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	orl       68(%esp), %ebx
	subl      %edx, %ecx
	movl      %esi, %edx
	leal      .LBSS08061560(,%ecx,4), %eax
	movl      %ebx, %edi
	call      .L080584F0
.L0805865A:
	movl      (%eax), %ebp
	movl      %eax, %edx
	testl     %ebp, %ebp
	je        .L08058728
.L08058666:
	movl      4(%ebp), %eax
	testb     $2, %al
	jne       .L0805876F
.L08058671:
	testb     $128, %bl
	jne       .L080586B3
.L08058676:
	movl      12(%ebp), %edi
	testl     %edi, %edi
	je        .L08058682
.L0805867D:
	testb     $64, %bl
	je        .L080586D8
.L08058682:
	testb     $24, %al
	je        .L080586C0
.L08058686:
	movl      %eax, %ecx
	movl      %ebx, %edi
	andl      $39, %edi
	andl      $4, %ecx
	orl       %edi, %ecx
	movl      %eax, %edi
	andl      $-313, %edi
	orl       %ebx, %edi
	cmpl      $32, %ecx
	je        .L08058701
.L080586A1:
	testl     $280, %edi
	je        .L08058760
.L080586AD:
	movl      %esi, 8(%ebp)
	movl      %edi, 4(%ebp)
.L080586B3:
	addl      $44, %esp
	movl      %ebp, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L080586BD:
	.ascii	"\215v\000"
.L080586C0:
	movl      8(%ebp), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      free
.L080586CF:
	movl      4(%ebp), %eax
	movl      28(%esp), %edx
	jmp       .L08058686
.L080586D8:
	movl      $61, 4(%esp)
	movl      %esi, (%esp)
	movl      %edx, 28(%esp)
	call      strchrnul
.L080586EC:
	addl      $1, %eax
	movl      %eax, (%esp)
	call      *%edi
.L080586F4:
	movl      4(%ebp), %eax
	movl      28(%esp), %edx
	testb     $24, %al
	jne       .L08058686
.L080586FF:
	jmp       .L080586C0
.L08058701:
	movl      (%ebp), %eax
	movl      %eax, (%edx)
	movl      %ebp, (%esp)
	call      free
.L0805870E:
	andl      $280, %ebx
	cmpl      $256, %ebx
	jne       .L080586B3
.L0805871C:
	movl      %esi, (%esp)
	call      free
.L08058724:
	jmp       .L080586B3
# ----------------------
.L08058726:
	.value	36966
.L08058728:
	testb     $128, %bl
	jne       .L080586B3
.L0805872D:
	movl      %ebx, %eax
	andl      $39, %eax
	cmpl      $32, %eax
	je        .L0805870E
.L08058737:
	movl      %edx, 28(%esp)
	movl      $16, (%esp)
	call      .L08051D70
.L08058747:
	movl      28(%esp), %edx
	movl      %eax, %ebp
	movl      (%edx), %eax
	movl      $0, 12(%ebp)
	movl      %eax, (%ebp)
	movl      %ebp, (%edx)
	jmp       .L080586A1
.L08058760:
	movl      %esi, (%esp)
	call      .L08051DD0
.L08058768:
	movl      %eax, %esi
	jmp       .L080586AD
.L0805876F:
	andb      $1, %bh
	je        .L0805877C
.L08058774:
	movl      %esi, (%esp)
	call      free
.L0805877C:
	movl      8(%ebp), %ebx
	movl      $61, 4(%esp)
	movl      %ebx, (%esp)
	call      strchrnul
.L0805878F:
	movl      %ebx, 8(%esp)
	movl      $.LC0805AF10, (%esp)
	subl      %ebx, %eax
	movl      %eax, 4(%esp)
	call      .L0804B000
# ----------------------
.L080587A5:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L080587B0:
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	testl     %ebx, %ebx
	je        .L080587F7
.L080587C1:
	addl      $1, .LBSS080616A8
.L080587C8:
	movl      %esi, 4(%esp)
	movl      4(%ebx), %eax
	movl      %eax, (%esp)
	call      .L080585F0
.L080587D7:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L080587C8
.L080587DD:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L080587F7
.L080587EE:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08058800
.L080587F7:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080587FD:
	.ascii	"\215v\000"
.L08058800:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	jmp       .L0804AFA0
# ----------------------
.L0805880A:
	.ascii	"\215\266\000\000\000\000"
.L08058810:
	subl      $60, %esp
	movl      %ebx, 44(%esp)
	movl      64(%esp), %ebx
	movl      %esi, 48(%esp)
	movl      68(%esp), %esi
	movl      %edi, 52(%esp)
	movl      %ebp, 56(%esp)
	movl      %ebx, (%esp)
	call      .L08053C70
.L08058833:
	movl      $61, 4(%esp)
	movl      %eax, (%esp)
	movl      %eax, %ebp
	call      strchrnul
.L08058845:
	movl      %eax, %edi
	subl      %ebx, %edi
	je        .L08058914
.L0805884F:
	cmpl      %ebp, %eax
	jne       .L08058914
.L08058857:
	testl     %esi, %esi
	je        .L08058908
.L0805885F:
	movl      %esi, (%esp)
	call      strlen
.L08058867:
	movl      %eax, %edx
.L08058869:
	addl      $1, .LBSS080616A8
	leal      2(%edx,%edi), %eax
	movl      %edx, 28(%esp)
	movl      %eax, (%esp)
	call      .L08051D70
.L08058880:
	movl      %edi, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      %eax, %ebp
	movl      %eax, (%esp)
	call      mempcpy
.L08058892:
	testl     %esi, %esi
	movl      28(%esp), %edx
	je        .L080588B0
.L0805889A:
	movb      $61, (%eax)
	addl      $1, %eax
	movl      %edx, 8(%esp)
	movl      %esi, 4(%esp)
	movl      %eax, (%esp)
	call      mempcpy
.L080588B0:
	movb      $0, (%eax)
	movl      72(%esp), %eax
	movl      %ebp, (%esp)
	orb       $1, %ah
	movl      %eax, 4(%esp)
	call      .L080585F0
.L080588C6:
	movl      .LBSS080616A8, %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, .LBSS080616A8
	jne       .L080588E3
.L080588D9:
	movl      .LBSS080616B0, %edx
	testl     %edx, %edx
	jne       .L080588F8
.L080588E3:
	movl      44(%esp), %ebx
	movl      48(%esp), %esi
	movl      52(%esp), %edi
	movl      56(%esp), %ebp
	addl      $60, %esp
	ret       
# ----------------------
.L080588F7:
	.byte	144
.L080588F8:
	movl      %eax, 28(%esp)
	call      .L0804AFA0
# ----------------------
.L08058901:
	.ascii	"\213D$\034\353\334\220"
.L08058908:
	orl       $32, 72(%esp)
	xorl      %edx, %edx
	jmp       .L08058869
.L08058914:
	movl      %ebx, 8(%esp)
	movl      %edi, 4(%esp)
	movl      $.LC0805AF23, (%esp)
	call      .L0804B000
# ----------------------
.L08058928:
	.long	649366928
	.long	0
.L08058930:
	subl      $28, %esp
	movl      32(%esp), %eax
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	movl      %eax, (%esp)
	call      .L08058810
.L0805894F:
	addl      $28, %esp
	ret       
# ----------------------
.L08058953:
	.ascii	"\215\266\000\000\000\000\215\274'\000\000\000\000"
.L08058960:
	pushl     %esi
	pushl     %ebx
	xorl      %ebx, %ebx
	subl      $20, %esp
	jmp       .L08058972
# ----------------------
.L08058969:
	.ascii	"\215\264&\000\000\000\000"
.L08058970:
	movl      %eax, %ebx
.L08058972:
	movl      $.LC0805AF3B, (%esp)
	call      .L080539E0
.L0805897E:
	testl     %eax, %eax
	jne       .L08058970
.L08058982:
	movl      .LBSS08063978, %esi
	movl      (%esi), %eax
	testl     %eax, %eax
	jne       .L0805899E
.L0805898E:
	jmp       .L080589B4
.L08058990:
	addl      $4, %esi
	call      .L0804D5C0
.L08058998:
	movl      (%esi), %eax
	testl     %eax, %eax
	je        .L080589B4
.L0805899E:
	cmpl      $102, %ebx
	movl      %eax, (%esp)
	je        .L08058990
.L080589A6:
	addl      $4, %esi
	call      .L08058930
.L080589AE:
	movl      (%esi), %eax
	testl     %eax, %eax
	jne       .L0805899E
.L080589B4:
	addl      $20, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080589BC:
	.long	2520205
.L080589C0:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebp
	addl      $1, .LBSS080616A8
	movl      .LBSS08063A60, %eax
	movl      (%eax), %edx
	movl      4(%eax), %ebx
	movl      %eax, (%esp)
	movl      %edx, .LBSS08063A60
	call      free
.L080589EA:
	testl     %ebx, %ebx
	je        .L08058AB4
.L080589F2:
	movl      %ebp, 16(%esp)
	jmp       .L08058A51
.L080589F8:
	movl      8(%ebx), %eax
	movl      $-5, %edx
	movl      $4, %ecx
	cmpl      $32, %eax
	je        .L08058A2D
.L08058A0A:
	movl      12(%ebx), %edx
	movb      $12, %cl
	movl      %edx, 28(%esp)
	movl      28(%esp), %ebp
	movl      $-13, %edx
	cmpl      %ebp, 8(%esi)
	je        .L08058A2D
.L08058A21:
	testb     $24, %al
	movb      $251, %dl
	movb      $4, %cl
	je        .L08058B00
.L08058A2D:
	andl      4(%esi), %edx
	andl      %ecx, %eax
	orl       %edx, %eax
	movl      %eax, 4(%esi)
	andl      $39, %eax
	cmpl      $32, %eax
	je        .L08058ADC
.L08058A43:
	movl      %ebx, (%esp)
	call      free
.L08058A4B:
	testl     %edi, %edi
	je        .L08058AB4
.L08058A4F:
	movl      %edi, %ebx
.L08058A51:
	movl      16(%esp), %ecx
	movl      (%ebx), %edi
	movl      4(%ebx), %esi
	testl     %ecx, %ecx
	jne       .L080589F8
.L08058A5E:
	testl     %esi, %esi
	je        .L08058B30
.L08058A66:
	cmpl      $32, 8(%ebx)
	je        .L08058AD8
.L08058A6C:
	movl      12(%esi), %edx
	testl     %edx, %edx
	je        .L08058A96
.L08058A73:
	movl      $61, 4(%esp)
	movl      12(%ebx), %eax
	movl      %edx, 20(%esp)
	movl      %eax, (%esp)
	call      strchrnul
.L08058A8A:
	movl      20(%esp), %edx
	addl      $1, %eax
	movl      %eax, (%esp)
	call      *%edx
.L08058A96:
	testb     $24, 4(%esi)
	je        .L08058AF0
.L08058A9C:
	movl      8(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      12(%ebx), %eax
	movl      %eax, 8(%esi)
	movl      %ebx, (%esp)
	call      free
.L08058AB0:
	testl     %edi, %edi
	jne       .L08058A4F
.L08058AB4:
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08058ACE
.L08058AC5:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08058B20
.L08058ACE:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08058AD6:
	.value	36966
.L08058AD8:
	andl      $-7, 4(%esi)
.L08058ADC:
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      .L08058930
.L08058AE7:
	jmp       .L08058A43
# ----------------------
.L08058AEC:
	.long	2520205
.L08058AF0:
	movl      8(%esi), %eax
	movl      %eax, (%esp)
	call      free
.L08058AFB:
	jmp       .L08058A9C
# ----------------------
.L08058AFD:
	.ascii	"\215v\000"
.L08058B00:
	movl      %edx, 20(%esp)
	movl      %ecx, 24(%esp)
	movl      %ebp, (%esp)
	call      free
.L08058B10:
	movl      8(%ebx), %eax
	movl      24(%esp), %ecx
	movl      20(%esp), %edx
	jmp       .L08058A2D
.L08058B20:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	jmp       .L0804AFA0
# ----------------------
.L08058B2C:
	.long	2520205
.L08058B30:
	movl      12(%ebx), %eax
	movl      (%eax), %edx
	movl      %edx, .LBSS08063964
	movl      4(%eax), %edx
	movl      %edx, .LBSS08063968
	movl      8(%eax), %edx
	movl      %edx, .LBSS0806396C
	movl      12(%eax), %edx
	movl      %edx, .LBSS08063970
	movzbl    16(%eax), %eax
	movb      %al, .LBSS08063974
	movl      12(%ebx), %eax
	movl      %eax, (%esp)
	call      free
.L08058B6A:
	call      .L08052E60
.L08058B6F:
	jmp       .L08058A43
# ----------------------
.L08058B74:
	.long	46733
	.long	-1081278464
	.long	0
.L08058B80:
	pushl     %ebx
	subl      $24, %esp
	movl      32(%esp), %ebx
	cmpl      %ebx, .LBSS08063A60
	je        .L08058BA4
.L08058B90:
	movl      $0, (%esp)
	call      .L080589C0
.L08058B9C:
	cmpl      %ebx, .LBSS08063A60
	jne       .L08058B90
.L08058BA4:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08058BA9:
	.ascii	"\215\264&\000\000\000\000"
.L08058BB0:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $136, %esp
	movl      %esi, -8(%ebp)
	movl      8(%ebp), %edx
	movl      12(%ebp), %esi
	movl      %edi, -4(%ebp)
	movl      16(%ebp), %edi
	movl      %ebx, -12(%ebp)
	leal      35(%esp), %ebx
	andl      $-16, %ebx
	movl      %gs:20, %eax
	movl      %eax, -28(%ebp)
	xorl      %eax, %eax
	movl      %edx, -44(%ebp)
	movl      %esi, 12(%esp)
	movl      %edi, 16(%esp)
	movl      $.LC08059B1E, 8(%esp)
	movl      $32, 4(%esp)
	movl      %ebx, (%esp)
	call      .L08056910
.L08058C00:
	movl      -44(%ebp), %edx
	movl      20(%ebp), %eax
	movl      %ebx, 4(%esp)
	movl      %edx, (%esp)
	movl      %eax, 8(%esp)
	call      .L08058810
.L08058C16:
	movl      %esi, %eax
	movl      %edi, %edx
	movl      -28(%ebp), %ecx
	xorl      %gs:20, %ecx
	jne       .L08058C33
.L08058C26:
	movl      -12(%ebp), %ebx
	movl      -8(%ebp), %esi
	movl      -4(%ebp), %edi
	movl      %ebp, %esp
	popl      %ebp
	ret       
.L08058C33:
	call      __stack_chk_fail
# ----------------------
.L08058C38:
	.long	649366928
	.long	0
.L08058C40:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      32(%esp), %esi
	addl      $1, .LBSS080616A8
	movl      $16, (%esp)
	call      .L08051D70
.L08058C5D:
	movl      %eax, %ebx
	movzbl    (%esi), %eax
	cmpb      $45, %al
	je        .L08058D40
.L08058C6A:
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L08058C93
.L08058C74:
	cmpb      $61, %al
	je        .L08058C93
.L08058C78:
	movl      %esi, %edx
	jmp       .L08058C84
# ----------------------
.L08058C7C:
	.long	2520205
.L08058C80:
	testb     %al, %al
	je        .L08058C93
.L08058C84:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	cmpb      $61, %al
	jne       .L08058C80
.L08058C93:
	movl      %ecx, %eax
	movl      $-1541783131, %edx
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	subl      %edx, %ecx
	movl      %esi, %edx
	leal      .LBSS08061560(,%ecx,4), %eax
	call      .L080584F0
.L08058CBA:
	movl      (%eax), %edi
	movl      $61, 4(%esp)
	movl      %esi, (%esp)
	call      strchr
.L08058CCC:
	testl     %edi, %edi
	je        .L08058D90
.L08058CD4:
	movl      8(%edi), %edx
	movl      %edx, 12(%ebx)
	movl      4(%edi), %edx
	movl      %edx, 8(%ebx)
	orl       $12, %edx
	testl     %eax, %eax
	movl      %edx, 4(%edi)
	je        .L08058CFA
.L08058CEA:
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      .L080585F0
.L08058CFA:
	movl      .LBSS08063A60, %eax
	movl      %edi, 4(%ebx)
	movl      4(%eax), %edx
	movl      %edx, (%ebx)
	movl      %ebx, 4(%eax)
	movl      .LBSS080616A8, %eax
	subl      $1, %eax
	testl     %eax, %eax
	movl      %eax, .LBSS080616A8
	jne       .L08058D24
.L08058D1B:
	movl      .LBSS080616B0, %eax
	testl     %eax, %eax
	jne       .L08058D30
.L08058D24:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08058D2B:
	.ascii	"\220\215t&\000"
.L08058D30:
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	jmp       .L0804AFA0
# ----------------------
.L08058D3B:
	.ascii	"\220\215t&\000"
.L08058D40:
	cmpb      $0, 1(%esi)
	jne       .L08058C6A
.L08058D4A:
	movl      $17, (%esp)
	xorl      %edi, %edi
	call      .L08051D70
.L08058D58:
	movl      .LBSS08063964, %edx
	movl      %edx, (%eax)
	movl      .LBSS08063968, %edx
	movl      %edx, 4(%eax)
	movl      .LBSS0806396C, %edx
	movl      %edx, 8(%eax)
	movl      .LBSS08063970, %edx
	movl      %edx, 12(%eax)
	movzbl    .LBSS08063974, %edx
	movb      %dl, 16(%eax)
	movl      %eax, 12(%ebx)
	jmp       .L08058CFA
# ----------------------
.L08058D8D:
	.ascii	"\215v\000"
.L08058D90:
	testl     %eax, %eax
	je        .L08058DB2
.L08058D94:
	movl      $4, 4(%esp)
	movl      %esi, (%esp)
	call      .L080585F0
.L08058DA4:
	movl      %eax, %edi
.L08058DA6:
	movl      $32, 8(%ebx)
	jmp       .L08058CFA
.L08058DB2:
	movl      $4, 8(%esp)
	movl      $0, 4(%esp)
	movl      %esi, (%esp)
	call      .L08058810
.L08058DCA:
	movl      %eax, %edi
	jmp       .L08058DA6
# ----------------------
.L08058DCE:
	.value	36966
.L08058DD0:
	pushl     %ebx
	subl      $24, %esp
	movl      .LBSS08063A60, %ebx
	testl     %ebx, %ebx
	je        .L08058E08
.L08058DDE:
	movl      .LBSS08063978, %ebx
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08058E01
.L08058DEA:
	addl      $4, %ebx
	leal      (%esi), %esi
.L08058DF0:
	movl      %eax, (%esp)
	call      .L08058C40
.L08058DF8:
	movl      (%ebx), %eax
	addl      $4, %ebx
	testl     %eax, %eax
	jne       .L08058DF0
.L08058E01:
	addl      $24, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L08058E08:
	movl      $.LC0805AF3E, (%esp)
	call      .L0804B000
# ----------------------
.L08058E14:
	.long	46733
	.long	-1081278464
	.long	0
.L08058E20:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	movl      (%esi), %eax
	cmpb      $114, (%eax)
	movl      $.LC0805AC44, (%esp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, %ebp
	call      .L080539E0
.L08058E44:
	addl      $1, %ebp
	cmpl      $112, %eax
	je        .L08058F10
.L08058E50:
	movl      .LBSS08063978, %edi
	movl      (%edi), %ebx
	testl     %ebx, %ebx
	jne       .L08058E84
.L08058E5C:
	jmp       .L08058F10
# ----------------------
.L08058E61:
	.ascii	"\215\264&\000\000\000\000"
.L08058E68:
	addl      $1, %esi
.L08058E6B:
	addl      $4, %edi
	movl      %ebx, (%esp)
	movl      %ebp, 8(%esp)
	movl      %esi, 4(%esp)
	call      .L08058810
.L08058E7E:
	movl      (%edi), %ebx
	testl     %ebx, %ebx
	je        .L08058F00
.L08058E84:
	movl      $61, 4(%esp)
	movl      %ebx, (%esp)
	call      strchr
.L08058E94:
	testl     %eax, %eax
	movl      %eax, %esi
	jne       .L08058E68
.L08058E9A:
	movzbl    (%ebx), %eax
	movzbl    %al, %ecx
	sall      $4, %ecx
	testb     %al, %al
	je        .L08058EC3
.L08058EA7:
	cmpb      $61, %al
	je        .L08058EC3
.L08058EAB:
	movl      %ebx, %edx
	jmp       .L08058EB4
# ----------------------
.L08058EAF:
	.byte	144
.L08058EB0:
	testb     %al, %al
	je        .L08058EC3
.L08058EB4:
	movzbl    %al, %eax
	addl      $1, %edx
	addl      %eax, %ecx
	movzbl    (%edx), %eax
	cmpb      $61, %al
	jne       .L08058EB0
.L08058EC3:
	movl      $-1541783131, %eax
	mull      %ecx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %eax, %edx
	shrl      $5, %edx
	imull     $39, %edx, %edx
	subl      %edx, %ecx
	movl      %ebx, %edx
	leal      .LBSS08061560(,%ecx,4), %eax
	call      .L080584F0
.L08058EE8:
	movl      (%eax), %eax
	testl     %eax, %eax
	je        .L08058E6B
.L08058EF2:
	addl      $4, %edi
	movl      (%edi), %ebx
	orl       %ebp, 4(%eax)
	testl     %ebx, %ebx
	jne       .L08058E84
.L08058EFE:
	nop       
.L08058F00:
	addl      $28, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
# ----------------------
.L08058F0A:
	.ascii	"\215\266\000\000\000\000"
.L08058F10:
	movl      %ebp, 4(%esp)
	movl      $0, 8(%esp)
	movl      (%esi), %eax
	movl      %eax, (%esp)
	call      .L08058330
.L08058F26:
	addl      $28, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08058F30:
	movl      8(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 8(%esp)
	movl      4(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 4(%esp)
	jmp       .L08058480
# ----------------------
.L08058F49:
	.ascii	"\220\220\220\220\220\220\220"
.L08058F50:
	pushl     %esi
	pushl     %ebx
	subl      $196, %esp
	movl      $17, (%esp)
	movl      $.LBSS08061740, .LBSS08061718
	movl      $.LBSS08061740, .LBSS08061714
	movb      $1, .LBSS08063A10
	call      .L080562A0
.L08058F7F:
	call      .L080581E0
.L08058F84:
	movl      __environ, %esi
	movl      (%esi), %ebx
	testl     %ebx, %ebx
	je        .L08058FBD
.L08058F90:
	movl      $61, 4(%esp)
	movl      %ebx, (%esp)
	call      strchr
.L08058FA0:
	testl     %eax, %eax
	je        .L08058FB4
.L08058FA4:
	movl      $9, 4(%esp)
	movl      %ebx, (%esp)
	call      .L080585F0
.L08058FB4:
	addl      $4, %esi
	movl      (%esi), %ebx
	testl     %ebx, %ebx
	jne       .L08058F90
.L08058FBD:
	call      getppid
.L08058FC2:
	movl      $.LC0805B274, 8(%esp)
	movl      $27, 4(%esp)
	movl      $.LD08061285, (%esp)
	movl      %eax, 12(%esp)
	call      .L08056910
.L08058FE2:
	movl      $8, 4(%esp)
	movl      $.LD08061280, (%esp)
	call      .L080585F0
.L08058FF6:
	movl      $.LC0805992E, (%esp)
	call      .L08058530
.L08059002:
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L0805900F
.L08059008:
	cmpb      $47, (%eax)
	je        .L08059028
.L0805900D:
	xorl      %ebx, %ebx
.L0805900F:
	movl      %ebx, (%esp)
	movl      $0, 4(%esp)
	call      .L0804A9E0
.L0805901F:
	addl      $196, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08059028:
	leal      16(%esp), %eax
	movl      %eax, 8(%esp)
	movl      %ebx, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08059040:
	testl     %eax, %eax
	jne       .L0805900D
.L08059044:
	leal      104(%esp), %eax
	movl      %eax, 8(%esp)
	movl      $.LC08059D3A, 4(%esp)
	movl      $3, (%esp)
	call      __xstat
.L08059060:
	testl     %eax, %eax
	jne       .L0805900D
.L08059064:
	movl      16(%esp), %eax
	movl      20(%esp), %edx
	xorl      108(%esp), %edx
	xorl      104(%esp), %eax
	orl       %edx, %eax
	jne       .L0805900D
.L08059078:
	movl      116(%esp), %edx
	cmpl      %edx, 28(%esp)
	cmovne    %eax, %ebx
	jmp       .L0805900F
# ----------------------
.L08059085:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L08059090:
	subl      $28, %esp
	movl      $0, .LBSS080616C8
	movl      $0, .LBSS080616BC
	call      .L0804E430
.L080590AC:
	movl      $0, .LBSS080616E0
	movl      $0, .LBSS08063744
	call      .L0804FDB0
.L080590C5:
	movl      $0, (%esp)
	movl      $0, .LBSS0806399C
	movl      $0, .LBSS080639A0
	call      .L080561B0
.L080590E5:
	movl      $0, (%esp)
	call      .L08058B80
.L080590F1:
	addl      $28, %esp
	ret       
# ----------------------
.L080590F5:
	.ascii	"\220\220\220\220\220\220\220\220\220\220\220"
.L08059100:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $24, %esp
	testl     %eax, %eax
	je        .L0805911F
.L0805910A:
	movl      (%ebx), %eax
	movswl    .LC0805B360(%eax,%eax), %eax
	addl      %eax, .LBSS08063A6C
	cmpl      $25, (%ebx)
	jbe       .L08059128
.L0805911F:
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L08059124:
	.long	2520205
.L08059128:
	movl      (%ebx), %eax
	jmp       *.LC0805B280(,%eax,4)
# ----------------------
.L08059131:
	.ascii	"\215\264&\000\000\000\000"
.L08059138:
	movl      16(%ebx), %eax
	movl      %eax, (%esp)
	call      strlen
.L08059143:
	movl      .LBSS08063A68, %edx
	leal      1(%eax,%edx), %eax
	movl      %eax, .LBSS08063A68
.L08059152:
	movl      12(%ebx), %eax
	call      .L08059100
.L0805915A:
	movl      8(%ebx), %ebx
.L0805915D:
	testl     %ebx, %ebx
	jne       .L0805910A
.L08059161:
	jmp       .L0805911F
# ----------------------
.L08059163:
	.ascii	"\220\215t&\000"
.L08059168:
	movl      12(%ebx), %eax
	call      .L08059100
.L08059170:
	movl      4(%ebx), %ebx
	jmp       .L0805915D
# ----------------------
.L08059175:
	.ascii	"\215v\000"
.L08059178:
	movl      12(%ebx), %eax
	call      .L08059100
.L08059180:
	movl      8(%ebx), %eax
	call      .L08059100
.L08059188:
	movl      4(%ebx), %ebx
	jmp       .L0805915D
# ----------------------
.L0805918D:
	.ascii	"\215v\000"
.L08059190:
	movl      16(%ebx), %eax
	call      .L08059100
.L08059198:
	movl      4(%ebx), %ebx
	jmp       .L0805915D
# ----------------------
.L0805919D:
	.ascii	"\215v\000"
.L080591A0:
	movl      12(%ebx), %eax
	call      .L08059230
.L080591A8:
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      strlen
.L080591B3:
	movl      .LBSS08063A68, %edx
	leal      1(%eax,%edx), %eax
	movl      %eax, .LBSS08063A68
	movl      4(%ebx), %ebx
	jmp       .L0805915D
# ----------------------
.L080591C7:
	.byte	144
.L080591C8:
	movl      12(%ebx), %eax
	call      .L08059100
.L080591D0:
	movl      8(%ebx), %eax
	movl      %eax, (%esp)
	call      strlen
.L080591DB:
	movl      .LBSS08063A68, %edx
	leal      1(%eax,%edx), %eax
	movl      %eax, .LBSS08063A68
	addl      $24, %esp
	popl      %ebx
	ret       
# ----------------------
.L080591EF:
	.byte	144
.L080591F0:
	movl      12(%ebx), %eax
	call      .L08059100
.L080591F8:
	movl      8(%ebx), %eax
	call      .L08059100
.L08059200:
	movl      4(%ebx), %ebx
	jmp       .L0805915D
.L08059208:
	movl      8(%ebx), %eax
	addl      $24, %esp
	popl      %ebx
	jmp       .L08059230
# ----------------------
.L08059211:
	.ascii	"\215\264&\000\000\000\000"
.L08059218:
	movl      16(%ebx), %eax
	call      .L08059100
.L08059220:
	movl      12(%ebx), %eax
	call      .L08059100
.L08059228:
	movl      8(%ebx), %ebx
	jmp       .L0805915D
.L08059230:
	pushl     %ebx
	movl      %eax, %ebx
	subl      $8, %esp
	testl     %eax, %eax
	je        .L08059255
.L0805923A:
	leal      (%esi), %esi
.L08059240:
	movl      4(%ebx), %eax
	addl      $8, .LBSS08063A6C
	call      .L08059100
.L0805924F:
	movl      (%ebx), %ebx
	testl     %ebx, %ebx
	jne       .L08059240
.L08059255:
	addl      $8, %esp
	popl      %ebx
	ret       
# ----------------------
.L0805925A:
	.ascii	"\215\266\000\000\000\000"
.L08059260:
	pushl     %ebx
	subl      $24, %esp
	movl      .LBSS08063A70, %ebx
	movl      %eax, 4(%esp)
	movl      %ebx, (%esp)
	call      stpcpy
.L08059276:
	addl      $1, %eax
	movl      %eax, .LBSS08063A70
	addl      $24, %esp
	movl      %ebx, %eax
	popl      %ebx
	ret       
# ----------------------
.L08059285:
	.ascii	"\215t&\000\215\274'\000\000\000\000"
.L08059290:
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $4, %esp
	testl     %eax, %eax
	je        .L080593E8
.L0805929F:
	movl      (%eax), %eax
	movl      .LBSS08063A64, %esi
	movswl    .LC0805B360(%eax,%eax), %eax
	addl      %esi, %eax
	movl      %eax, .LBSS08063A64
	movl      (%ebx), %eax
	cmpl      $25, %eax
	jbe       .L080592C8
.L080592BD:
	movl      %eax, (%esi)
.L080592BF:
	addl      $4, %esp
	movl      %esi, %eax
	popl      %ebx
	popl      %esi
	ret       
# ----------------------
.L080592C7:
	.byte	144
.L080592C8:
	jmp       *.LC0805B2E8(,%eax,4)
# ----------------------
.L080592CF:
	.byte	144
.L080592D0:
	movl      16(%ebx), %eax
	call      .L08059260
.L080592D8:
	movl      %eax, 16(%esi)
.L080592DB:
	movl      12(%ebx), %eax
	call      .L08059290
.L080592E3:
	movl      %eax, 12(%esi)
	movl      8(%ebx), %eax
	call      .L08059290
.L080592EE:
	movl      %eax, 8(%esi)
	movl      4(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      (%ebx), %eax
	jmp       .L080592BD
# ----------------------
.L080592FB:
	.ascii	"\220\215t&\000"
.L08059300:
	movl      12(%ebx), %eax
	call      .L08059290
.L08059308:
	movl      %eax, 12(%esi)
	movl      8(%ebx), %eax
.L0805930E:
	movl      %eax, 8(%esi)
	movl      4(%ebx), %eax
	call      .L08059290
.L08059319:
	movl      %eax, 4(%esi)
	movl      (%ebx), %eax
	jmp       .L080592BD
.L08059320:
	movl      12(%ebx), %eax
	call      .L08059290
.L08059328:
	movl      %eax, 12(%esi)
.L0805932B:
	movl      8(%ebx), %eax
	call      .L08059290
.L08059333:
	jmp       .L0805930E
# ----------------------
.L08059335:
	.ascii	"\215v\000"
.L08059338:
	movl      12(%ebx), %eax
	call      .L08059290
.L08059340:
	movl      %eax, 12(%esi)
	movl      8(%ebx), %eax
	call      .L08059290
.L0805934B:
	jmp       .L0805930E
# ----------------------
.L0805934D:
	.ascii	"\215v\000"
.L08059350:
	movl      8(%ebx), %eax
	call      .L080593F0
.L08059358:
	movl      %eax, 8(%esi)
	movl      4(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      (%ebx), %eax
	jmp       .L080592BD
.L08059368:
	movl      16(%ebx), %eax
	call      .L08059290
.L08059370:
	movl      %eax, 16(%esi)
	jmp       .L080592DB
.L08059378:
	movl      4(%ebx), %eax
	call      .L08059290
.L08059380:
	movl      %eax, 4(%esi)
	movl      (%ebx), %eax
	jmp       .L080592BD
# ----------------------
.L0805938A:
	.ascii	"\215\266\000\000\000\000"
.L08059390:
	movl      16(%ebx), %eax
	call      .L08059290
.L08059398:
	movl      %eax, 16(%esi)
	movl      12(%ebx), %eax
	jmp       .L08059308
# ----------------------
.L080593A3:
	.ascii	"\220\215t&\000"
.L080593A8:
	movl      12(%ebx), %eax
	call      .L080593F0
.L080593B0:
	movl      %eax, 12(%esi)
	movl      8(%ebx), %eax
	call      .L08059260
.L080593BB:
	jmp       .L0805930E
.L080593C0:
	movl      12(%ebx), %eax
	call      .L08059290
.L080593C8:
	movl      %eax, 12(%esi)
	movl      8(%ebx), %eax
	call      .L08059260
.L080593D3:
	movl      %eax, 8(%esi)
	movl      4(%ebx), %eax
	movl      %eax, 4(%esi)
	movl      (%ebx), %eax
	jmp       .L080592BD
# ----------------------
.L080593E3:
	.ascii	"\220\215t&\000"
.L080593E8:
	xorl      %esi, %esi
	jmp       .L080592BF
# ----------------------
.L080593EF:
	.byte	144
.L080593F0:
	pushl     %edi
	pushl     %esi
	movl      %eax, %esi
	pushl     %ebx
	subl      $16, %esp
	testl     %eax, %eax
	leal      12(%esp), %ebx
	je        .L08059423
.L08059400:
	movl      .LBSS08063A64, %eax
	movl      %eax, (%ebx)
	movl      4(%esi), %eax
	addl      $8, .LBSS08063A64
	movl      (%ebx), %edi
	call      .L08059290
.L08059418:
	movl      (%esi), %esi
	testl     %esi, %esi
	movl      %eax, 4(%edi)
	movl      (%ebx), %ebx
	jne       .L08059400
.L08059423:
	movl      $0, (%ebx)
	movl      12(%esp), %eax
	addl      $16, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
# ----------------------
.L08059434:
	.long	46733
	.long	-1081278464
	.long	0
.L08059440:
	subl      $28, %esp
	movl      %esi, 20(%esp)
	movl      32(%esp), %esi
	movl      %ebx, 16(%esp)
	movl      %edi, 24(%esp)
	movl      $4, .LBSS08063A6C
	movl      %esi, %eax
	movl      $0, .LBSS08063A68
	call      .L08059100
.L0805946E:
	movl      .LBSS08063A6C, %edi
	movl      .LBSS08063A68, %eax
	addl      %edi, %eax
	movl      %eax, (%esp)
	call      .L08051D70
.L08059483:
	movl      %eax, %ebx
	leal      4(%eax), %eax
	addl      %ebx, %edi
	movl      %eax, .LBSS08063A64
	movl      %esi, %eax
	movl      %edi, .LBSS08063A70
	call      .L08059290
.L0805949C:
	movl      %ebx, %eax
	movl      20(%esp), %esi
	movl      $0, (%ebx)
	movl      24(%esp), %edi
	movl      16(%esp), %ebx
	addl      $28, %esp
	ret       
# ----------------------
.L080594B4:
	.long	46733
	.long	-1081278464
	.long	0
.L080594C0:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L080594D3
.L080594C8:
	movl      (%eax), %edx
	subl      $1, %edx
	testl     %edx, %edx
	movl      %edx, (%eax)
	js        .L080594D8
.L080594D3:
	rep; ret       
# ----------------------
.L080594D5:
	.ascii	"\215v\000"
.L080594D8:
	jmp       free
# ----------------------
	.section       .rodata
.LC080595C0:
	.long	3
	.long	131073
.LC080595C8:
	.value	28277
.LC080595CA:
	.string	"alias"
.LC080595D0:
	.string	"%s: %s not found\n"
.LC080595E2:
	.string	"%s=%s\n"
# ----------------------
.LC080595E9:
	.zero	3
	.align 4
.LC080595EC:
	.string	"arithmetic expression: %s: \"%s\""
.LC0805960C:
	.string	"division by zero"
.LC0805961D:
	.string	"expecting ')'"
.LC0805962B:
	.string	"expecting primary"
.LC0805963D:
	.string	"expecting ':'"
.LC0805964B:
	.string	"expecting EOF"
# ----------------------
.LC08059659:
	.zero	3
	.align 4
.LC0805965C:
	.long	.L08049EE0
	.long	.L08049F08
	.long	.L08049F28
	.long	.L08049F58
	.long	.L08049F98
	.long	.L08049E6D
	.long	.L08049FC0
	.long	.L08049FE0
	.long	.L0804A008
	.long	.L0804A038
	.long	.L0804A060
	.long	.L0804A080
	.long	.L0804A0A0
	.long	.L0804A0C0
	.long	.L08049E6D
	.long	.L0804A0E0
.LC0805969C:
	.long	.L0804A1C0
	.long	.L0804A1D0
	.long	.L0804A1F0
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A228
	.long	.L0804A156
	.long	.L0804A248
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A156
	.long	.L0804A270
.LC08059714:
	.long	.L0804A156
	.long	.L0804A168
	.long	50529027
	.long	33882116
	.long	117506050
	.long	67110401
.LC0805972C:
	.long	.L0804A928
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A888
	.long	.L0804A888
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A888
	.long	.L0804A870
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A868
	.long	.L0804A850
	.long	.L0804A770
	.long	.L0804A7C0
	.long	.L0804A7C0
	.long	.L0804A798
	.long	.L0804A798
	.long	.L0804A770
	.long	.L0804A798
	.long	.L0804A770
	.long	.L0804A798
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C8
	.long	.L0804A8C0
	.long	.L0804A770
	.long	.L0804A898
	.long	.L0804A890
	.long	.L0804A908
	.long	.L0804A900
	.long	.L0804A770
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A770
	.long	.L0804A830
	.long	.L0804A7D0
	.long	.L0804A770
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A7D0
	.long	.L0804A770
	.long	.L0804A838
	.long	.L0804A770
	.long	.L0804A828
.LC08059928:
	.string	"LP"
.LC0805992B:
	.ascii	"OLD"
.LC0805992E:
	.long	4478800
.LC08059932:
	.string	"getcwd() failed: %s"
.LC08059946:
	.string	"CDPATH"
.LC0805994D:
	.value	47
.LC0805994F:
	.string	"can't cd to %s"
.LC0805995E:
	.string	"%s: %d: "
.LC08059967:
	.string	"%s: %d: %s: "
.LC08059974:
	.string	"No such file"
.LC08059981:
	.string	"Directory nonexistent"
# ----------------------
.LC08059997:
	.byte	0
	.align 2
.LC08059998:
	.long	.L0804B350
	.long	.L0804B348
	.long	.L0804B2F8
	.long	.L0804B2D0
	.long	.L0804B2D0
	.long	.L0804B280
	.long	.L0804B280
	.long	.L0804B280
	.long	.L0804B240
	.long	.L0804B230
	.long	.L0804B230
	.long	.L0804B220
	.long	.L0804B1F8
	.long	.L0804B192
	.long	.L0804B1E8
.LC080599D4:
	.long	.LBSS0806395C
	.long	.L0804B0C0
	.long	0
	.align 32
.LC080599E0:
	.string	"Pipe call failed"
.LC080599F1:
	.value	95
.LC080599F3:
	.ascii	"/bin/"
.LC080599F8:
	.string	"sh"
.LC080599FB:
	.string	"%builtin"
.LC08059A04:
	.string	"func"
.LC08059A09:
	.string	"%s not defined in %s"
.LC08059A1E:
	.ascii	" is a shell key"
.LC08059A2D:
	.string	"word"
.LC08059A32:
	.ascii	" a tracked alias "
.LC08059A43:
	.long	7499622
.LC08059A47:
	.string	"special "
.LC08059A50:
	.string	" is an alias for %s"
.LC08059A64:
	.string	"alias "
.LC08059A6B:
	.string	" is%s %s"
.LC08059A74:
	.string	" is a shell function"
.LC08059A89:
	.ascii	" is a %sshell "
.LC08059A97:
	.string	"builtin"
.LC08059A9F:
	.string	": not found\n"
.LC08059AAC:
	.value	42
.LC08059AAE:
	.string	"pvV"
# ----------------------
.LC08059AB2:
	.zero	14
.LC08059AC0:
	.long	127
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	126
.LC08059AF0:
	.long	4
	.long	32
.LC08059AF8:
	.ascii	"parameter not "
.LC08059B06:
	.long	7628147
.LC08059B0A:
	.string	" or null"
.LC08059B13:
	.string	"%.*s: %s%s"
.LC08059B1E:
	.string	"%lld"
.LC08059B23:
	.string	"Bad substitution"
# ----------------------
.LC08059B34:
	.zero	12
.LC08059B40:
	.long	.L0804EBAE
	.long	.L0804E9C0
	.long	.L0804EBA7
	.long	.L0804EB91
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804EAFD
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804EC22
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804EBCF
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804E9C0
	.long	.L0804EBC8
	.long	.L0804EAF1
.LC08059BC0:
	.long	.L0804F090
	.long	.L0804F2D8
	.long	.L0804EFE8
	.long	.L0804F150
	.long	.L0804EF42
	.long	.L0804EF42
	.long	.L0804F128
	.long	.L0804F0D0
.LC08059BE0:
	.byte	61
.LC08059BE1:
	.byte	58
.LC08059BE2:
	.ascii	"\210\203\201\202\204\207\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
.LC08059C00:
	.long	1852596538
	.long	1564110197
	.long	0
	.long	isalnum
	.long	1953391418
	.long	1564109938
	.long	0
	.long	iscntrl
	.long	2003790906
	.long	1564111461
	.long	0
	.long	islower
	.long	1634759482
	.long	1564108131
	.long	0
	.long	isspace
	.long	1886150970
	.long	1564107112
	.long	0
	.long	isalpha
	.long	1734960186
	.long	1564111977
	.long	0
	.long	isdigit
	.long	1769107514
	.long	1564111982
	.long	0
	.long	isprint
	.long	1886418234
	.long	1564111461
	.long	0
	.long	isupper
	.long	1634492986
	.long	1564109678
	.long	0
	.long	isblank
	.long	1634887482
	.long	1564108912
	.long	0
	.long	isgraph
	.long	1853190202
	.long	1564111971
	.long	0
	.long	ispunct
	.long	1768192058
	.long	980707687
	.long	93
	.long	isxdigit
.LC08059CC0:
	.long	5979946
.LC08059CC4:
	.string	"sh: turning off NDELAY mode\n"
.LC08059CE1:
	.string	"Can't open %s"
.LC08059CEF:
	.byte	34
.LC08059CF0:
	.value	125
.LC08059CF2:
	.string	"$(...)"
.LC08059CF9:
	.byte	36
.LC08059CFA:
	.value	123
.LC08059CFC:
	.long	2325284
.LC08059D00:
	.byte	41
.LC08059D01:
	.value	41
.LC08059D03:
	.value	10276
.LC08059D05:
	.value	40
.LC08059D07:
	.string	" && "
.LC08059D0C:
	.string	" || "
.LC08059D11:
	.string	"while "
.LC08059D18:
	.string	"until "
.LC08059D1F:
	.value	8251
.LC08059D21:
	.string	"fi"
.LC08059D24:
	.value	8251
.LC08059D26:
	.string	"done"
.LC08059D2B:
	.ascii	"() { ... "
.LC08059D34:
	.value	125
.LC08059D36:
	.long	774782012
.LC08059D3A:
	.value	46
.LC08059D3C:
	.string	"esac"
.LC08059D41:
	.string	">|"
.LC08059D44:
	.string	">>"
.LC08059D47:
	.string	">&"
.LC08059D4A:
	.value	60
.LC08059D4C:
	.string	"<&"
.LC08059D4F:
	.byte	60
.LC08059D50:
	.value	62
.LC08059D52:
	.long	2128928
.LC08059D56:
	.value	33
.LC08059D58:
	.long	2123369
.LC08059D5C:
	.string	"; then "
.LC08059D64:
	.string	"; else "
.LC08059D6C:
	.string	"; do "
.LC08059D72:
	.string	"for "
.LC08059D77:
	.string	" in "
.LC08059D7C:
	.string	"case "
.LC08059D82:
	.string	") "
.LC08059D85:
	.byte	59
.LC08059D86:
	.string	"; "
.LC08059D89:
	.string	"No current job"
.LC08059D98:
	.string	"No previous job"
.LC08059DA8:
	.ascii	"No such job:"
.LC08059DB4:
	.byte	32
.LC08059DB5:
	.string	"%s"
.LC08059DB8:
	.string	"%s: ambiguous"
.LC08059DC6:
	.string	" | %s"
.LC08059DCC:
	.string	" (core dumped)"
.LC08059DDB:
	.string	"Done(%d)"
.LC08059DE4:
	.string	"Done"
.LC08059DE9:
	.long	680997
.LC08059DED:
	.string	"[%d]   "
.LC08059DF5:
	.string	"%s%*c%s"
.LC08059DFD:
	.ascii	" |\n%*c"
.LC08059E03:
	.long	2122789
.LC08059E07:
	.string	"/dev/tty"
.LC08059E10:
	.value	29548
.LC08059E12:
	.value	58
.LC08059E14:
	.string	"0\n"
.LC08059E17:
	.string	"lp"
.LC08059E1A:
	.string	"Cannot fork"
.LC08059E26:
	.string	"/dev/null"
.LC08059E30:
	.string	"[%d] "
.LC08059E36:
	.string	"You have stopped jobs.\n"
# ----------------------
.LC08059E4E:
	.zero	18
.LC08059E60:
	.long	.L080500A8
	.long	.L08050070
	.long	.L080500C8
	.long	.L080500C8
	.long	.L080500E0
	.long	.L08050108
	.long	.L08050128
	.long	.L08050130
	.long	.L08050138
	.long	.L08050180
	.long	.L080501B0
	.long	.L080501B8
	.long	.L080501E8
	.long	.L08050070
	.long	.L08050250
	.long	.L08050268
	.long	.L08050270
	.long	.L080502B8
	.long	.L080502C0
	.long	.L080502C8
	.long	.L080502D0
	.long	.L080502D8
	.long	.L080502E0
	.long	.L080502E8
	.long	.L080502E8
	.long	.L080502F8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC08059EE0:
	.long	0
	.long	125
	.long	45
	.long	43
	.long	63
	.long	61
	.long	37
	.long	9509
	.long	35
	.long	8995
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC08059F20:
	.string	"job %s not created under job control"
# ----------------------
.LC08059F45:
	.zero	3
	.align 4
.LC08059F48:
	.string	"Cannot set tty process group (%s)"
# ----------------------
.LC08059F6A:
	.value	0
	.align 4
.LC08059F6C:
	.string	"can't access tty; job control turned off"
# ----------------------
.LC08059F95:
	.zero	3
	.align 4
.LC08059F98:
	.string	"Usage: kill [-s sigspec | -signum | -sigspec] [pid | job]... or\nkill -l [exitstatus]"
# ----------------------
.LC08059FED:
	.zero	3
	.align 4
.LC08059FF0:
	.string	"invalid signal number or name: %s"
# ----------------------
.LC0805A012:
	.value	0
	.align 4
.LC0805A014:
	.string	"invalid signal number or exit status: %s"
.LC0805A03D:
	.string	"you have mail"
.LC0805A04B:
	.string	"\nUse \"exit\" to leave shell.\n"
.LC0805A068:
	.string	"/etc/profile"
.LC0805A075:
	.string	"$HOME/.profile"
.LC0805A084:
	.long	5656133
.LC0805A088:
	.long	540701477
.LC0805A08C:
	.string	"not found"
.LC0805A096:
	.string	"Out of space"
.LC0805A0A3:
	.long	7486064
.LC0805A0A7:
	.string	"arg count"
.LC0805A0B1:
	.long	7894898
.LC0805A0B5:
	.string	"%.4o\n"
.LC0805A0BB:
	.value	30049
.LC0805A0BD:
	.string	"go"
.LC0805A0C0:
	.long	2960189
.LC0805A0C4:
	.string	"rwxugoXs"
.LC0805A0CD:
	.string	"Illegal mode: %s"
.LC0805A0DE:
	.string	"HSatfdscmlpnvw"
.LC0805A0ED:
	.string	"too many arguments"
.LC0805A100:
	.string	"unlimited"
.LC0805A10A:
	.string	"bad number"
.LC0805A115:
	.string	"%-20s "
.LC0805A11C:
	.string	"unlimited\n"
.LC0805A127:
	.string	"%lld\n"
.LC0805A12D:
	.string	"error setting limit (%s)"
.LC0805A146:
	.string	"time(seconds)"
.LC0805A154:
	.string	"file(blocks)"
.LC0805A161:
	.string	"data(kbytes)"
.LC0805A16E:
	.string	"stack(kbytes)"
.LC0805A17C:
	.string	"coredump(blocks)"
.LC0805A18D:
	.ascii	"locked "
.LC0805A194:
	.string	"memory(kbytes)"
.LC0805A1A3:
	.string	"process"
.LC0805A1AB:
	.string	"nofiles"
.LC0805A1B3:
	.string	"vmemory(kbytes)"
.LC0805A1C3:
	.string	"locks"
# ----------------------
.LC0805A1C9:
	.zero	23
.LC0805A1E0:
	.long	.L08052788
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052778
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052620
	.long	.L08052768
	.long	.L08052620
	.long	.L08052620
	.long	.L08052758
	.long	.L08052620
	.long	.L08052620
	.long	.L08052738
	.long	.L08052620
	.long	.L080526B8
	.long	.L08052748
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805A280:
	.long	.LC0805A146
	.long	0
	.long	1
	.long	116
	.long	.LC0805A154
	.long	1
	.long	512
	.long	102
	.long	.LC0805A161
	.long	2
	.long	1024
	.long	100
	.long	.LC0805A16E
	.long	3
	.long	1024
	.long	115
	.long	.LC0805A17C
	.long	4
	.long	512
	.long	99
	.long	.LC0805A194
	.long	5
	.long	1024
	.long	109
	.long	.LC0805A18D
	.long	8
	.long	1024
	.long	108
	.long	.LC0805A1A3
	.long	6
	.long	1
	.long	112
	.long	.LC0805A1AB
	.long	7
	.long	1
	.long	110
	.long	.LC0805A1B3
	.long	9
	.long	1024
	.long	118
	.long	.LC0805A1C3
	.long	10
	.long	1
	.long	119
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805A340:
	.string	"HOME"
.LC0805A345:
	.string	"Illegal number: %s"
.LC0805A358:
	.ascii	"\201\210\000"
.LC0805A35B:
	.byte	136
.LC0805A35C:
	.ascii	"\202\001@=\210\000"
.LC0805A362:
	.long	684837
.LC0805A366:
	.value	32
.LC0805A368:
	.long	6710895
.LC0805A36C:
	.string	"-o"
.LC0805A36F:
	.string	"+o"
.LC0805A372:
	.string	"Current option settings\n"
.LC0805A38B:
	.string	"%-16s%s\n"
.LC0805A394:
	.string	"set %s %s\n"
.LC0805A39F:
	.string	"Illegal option -o %s"
.LC0805A3B4:
	.string	"Illegal option -%c"
.LC0805A3C7:
	.string	"-c requires an argument"
.LC0805A3DF:
	.string	"can't shift that many"
.LC0805A3F5:
	.string	"OPTARG"
.LC0805A3FC:
	.string	"Illegal option -%c\n"
.LC0805A410:
	.string	"No arg for -%c option\n"
.LC0805A427:
	.string	"OPTIND"
.LC0805A42E:
	.string	"No arg for -%c option"
.LC0805A444:
	.ascii	"err"
.LC0805A447:
	.string	"exit"
.LC0805A44C:
	.string	"noglob"
.LC0805A453:
	.string	"ignoreeof"
.LC0805A45D:
	.string	"interactive"
.LC0805A469:
	.string	"monitor"
.LC0805A471:
	.value	28526
.LC0805A473:
	.string	"exec"
.LC0805A478:
	.ascii	"std"
.LC0805A47B:
	.string	"in"
.LC0805A47E:
	.string	"xtrace"
.LC0805A485:
	.string	"verbose"
.LC0805A48D:
	.string	"vi"
.LC0805A490:
	.string	"emacs"
.LC0805A496:
	.string	"noclobber"
.LC0805A4A0:
	.ascii	"all"
.LC0805A4A3:
	.string	"export"
.LC0805A4AA:
	.string	"notify"
.LC0805A4B1:
	.value	28526
.LC0805A4B3:
	.string	"unset"
.LC0805A4B9:
	.string	"nolog"
.LC0805A4BF:
	.string	"debug"
# ----------------------
.LC0805A4C5:
	.zero	3
	.align 4
.LC0805A4C8:
	.string	"Usage: getopts optstring var [arg]"
# ----------------------
.LC0805A4EB:
	.zero	21
.LC0805A500:
	.string	"efIimnsxvVECabu"
# ----------------------
.LC0805A510:
	.zero	16
.LC0805A520:
	.long	.LC0805A444
	.long	.LC0805A44C
	.long	.LC0805A453
	.long	.LC0805A45D
	.long	.LC0805A469
	.long	.LC0805A471
	.long	.LC0805A478
	.long	.LC0805A47E
	.long	.LC0805A485
	.long	.LC0805A48D
	.long	.LC0805A490
	.long	.LC0805A496
	.long	.LC0805A4A0
	.long	.LC0805A4AA
	.long	.LC0805A4B1
	.long	.LC0805A4B9
	.long	.LC0805A4BF
.LC0805A564:
	.string	"Syntax error: %s"
.LC0805A575:
	.string	"%s unexpected (expecting %s)"
.LC0805A592:
	.string	"%s unexpected"
.LC0805A5A0:
	.string	"Bad fd number"
.LC0805A5AE:
	.string	"Bad for loop variable"
.LC0805A5C4:
	.string	"Bad function name"
.LC0805A5D6:
	.string	"Missing '))'"
.LC0805A5E3:
	.string	"Unterminated quoted string"
.LC0805A5FE:
	.string	"Missing '}'"
.LC0805A60A:
	.string	"EOF in backquote substitution"
.LC0805A628:
	.string	"case"
.LC0805A62D:
	.string	"do"
.LC0805A630:
	.value	27749
.LC0805A632:
	.string	"if"
.LC0805A635:
	.string	"else"
.LC0805A63A:
	.string	"then"
.LC0805A63F:
	.string	"until"
.LC0805A645:
	.string	"while"
.LC0805A64B:
	.string	"end of file"
.LC0805A657:
	.string	"newline"
.LC0805A65F:
	.long	2243362
.LC0805A663:
	.long	2237986
.LC0805A667:
	.string	"\"&&\""
.LC0805A66C:
	.string	"\"||\""
.LC0805A671:
	.long	2260002
.LC0805A675:
	.long	2238498
.LC0805A679:
	.long	2238754
.LC0805A67D:
	.string	"\";;\""
.LC0805A682:
	.long	2252834
.LC0805A686:
	.ascii	"redirecti"
.LC0805A68F:
	.string	"on"
.LC0805A692:
	.long	2236706
.LC0805A696:
	.string	"\"case\""
.LC0805A69D:
	.string	"\"do\""
.LC0805A6A2:
	.string	"\"done\""
.LC0805A6A9:
	.string	"\"elif\""
.LC0805A6B0:
	.string	"\"else\""
.LC0805A6B7:
	.string	"\"esac\""
.LC0805A6BE:
	.string	"\"fi\""
.LC0805A6C3:
	.string	"\"for\""
.LC0805A6C9:
	.string	"\"if\""
.LC0805A6CE:
	.string	"\"in\""
.LC0805A6D3:
	.string	"\"then\""
.LC0805A6DA:
	.string	"\"until\""
.LC0805A6E2:
	.string	"\"while\""
.LC0805A6EA:
	.long	2259746
.LC0805A6EE:
	.string	"\"}\""
# ----------------------
.LC0805A6F2:
	.zero	14
.LC0805A700:
	.long	.L08053FD6
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08054008
	.long	.L08054008
	.long	.L08053F32
	.long	.L080540C5
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08053F32
	.long	.L08053F32
	.long	.L080542FD
	.long	.L0805420B
	.long	.L08053F32
	.long	.L08053F32
	.long	.L080542B2
	.long	.L080542B2
	.long	.L08053F47
.LC0805A754:
	.long	.L0805499E
	.long	.L08054DC8
	.long	.L08054D68
	.long	.L08054D60
	.long	.L08054D40
	.long	.L08054D00
	.long	.L08054B68
	.long	.L08054A68
	.long	.L08054A40
	.long	.L08054A30
	.long	.L08054A10
	.long	.L08054E30
	.long	.L080549F8
	.long	.L0805498B
	.long	.L080549A3
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805A7A0:
	.long	.LC08059D56
	.long	.LC0805A628
	.long	.LC0805A62D
	.long	.LC08059D26
	.long	.LC0805A630
	.long	.LC0805A635
	.long	.LC08059D3C
	.long	.LC08059D21
	.long	.LC08059A43
	.long	.LC0805A632
	.long	.LC0805A47B
	.long	.LC0805A63A
	.long	.LC0805A63F
	.long	.LC0805A645
	.long	.LC08059CFA
	.long	.LC08059D34
.LC0805A7E0:
	.string	"}-+?="
# ----------------------
.LC0805A7E6:
	.zero	26
.LC0805A800:
	.long	.LC0805A64B
	.long	.LC0805A657
	.long	.LC0805A65F
	.long	.LC0805A663
	.long	.LC0805A667
	.long	.LC0805A66C
	.long	.LC0805A671
	.long	.LC0805A675
	.long	.LC0805A679
	.long	.LC0805A67D
	.long	.LC0805A682
	.long	.LC0805A686
	.long	.LC08059A2D
	.long	.LC0805A692
	.long	.LC0805A696
	.long	.LC0805A69D
	.long	.LC0805A6A2
	.long	.LC0805A6A9
	.long	.LC0805A6B0
	.long	.LC0805A6B7
	.long	.LC0805A6BE
	.long	.LC0805A6C3
	.long	.LC0805A6C9
	.long	.LC0805A6CE
	.long	.LC0805A6D3
	.long	.LC0805A6DA
	.long	.LC0805A6E2
	.long	.LC0805A6EA
	.long	.LC0805A6EE
.LC0805A874:
	.ascii	"\001\000\000\000\000\000\000\000\001\001\001\000\000\000\000\001\001\001\001\001\001\000\000\000\001\000\000\000\001"
.LC0805A891:
	.string	"%d: %s"
.LC0805A898:
	.ascii	"cannot create "
.LC0805A8A6:
	.string	"%s: %s"
.LC0805A8AD:
	.string	"cannot open %s: %s"
.LC0805A8C0:
	.long	.L08055D10
	.long	.L08055D1D
	.long	.L08055E38
	.long	.L08055E20
	.long	.L08055E08
	.long	.L08055DF0
	.long	.L08055DF0
.LC0805A8DC:
	.long	.L0805639E
	.long	.L0805639E
	.long	.L080563E0
	.long	.L080563C8
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L080563C8
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L0805639E
	.long	.L080563B0
	.long	.L0805639E
	.long	.L080563B0
.LC0805A938:
	.ascii	"trap -- %s "
.LC0805A943:
	.long	684837
.LC0805A947:
	.string	"trap: %s: bad trap\n"
# ----------------------
.LC0805A95B:
	.byte	0
	.align 2
.LC0805A95C:
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056D30
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056D58
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056D68
	.long	.L08056D70
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056D78
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056D80
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056CED
	.long	.L08056D88
	.long	.L08056CED
	.long	.L08056D90
	.long	.L08056CED
	.long	.L08056D20
.LC0805AA78:
	.long	.L08057358
	.long	.L08057118
	.long	.L08057358
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057310
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057288
	.long	.L08057240
	.long	.L080571F0
	.long	.L08057358
	.long	.L08057358
	.long	.L08057358
	.long	.L08057118
	.long	.L080571F0
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057310
	.long	.L08057118
	.long	.L08057118
	.long	.L08057118
	.long	.L08057188
	.long	.L08057118
	.long	.L08057310
	.long	.L08057118
	.long	.L08057118
	.long	.L08057310
.LC0805AB48:
	.string	"%s: expected numeric value"
.LC0805AB63:
	.string	"%s: not completely converted"
.LC0805AB80:
	.string	"#-+ 0"
.LC0805AB86:
	.string	"*0123456789"
.LC0805AB92:
	.string	"missing format character"
.LC0805ABAB:
	.string	"%s: invalid directive"
# ----------------------
.LC0805ABC1:
	.zero	3
	.align 4
.LC0805ABC4:
	.string	"usage: printf format [arg ...]"
# ----------------------
.LC0805ABE3:
	.byte	0
	.align 2
.LC0805ABE4:
	.byte	45
.LC0805ABE5:
	.value	114
.LC0805ABE7:
	.string	"argument expected"
.LC0805ABF9:
	.string	"closing paren expected"
.LC0805AC10:
	.string	"missing ]"
.LC0805AC1A:
	.string	"unexpected operator"
.LC0805AC2E:
	.string	"-w"
.LC0805AC31:
	.string	"-x"
.LC0805AC34:
	.string	"-e"
.LC0805AC37:
	.string	"-f"
.LC0805AC3A:
	.string	"-d"
.LC0805AC3D:
	.string	"-c"
.LC0805AC40:
	.string	"-b"
.LC0805AC43:
	.byte	45
.LC0805AC44:
	.value	112
.LC0805AC46:
	.string	"-u"
.LC0805AC49:
	.string	"-g"
.LC0805AC4C:
	.string	"-k"
.LC0805AC4F:
	.string	"-s"
.LC0805AC52:
	.string	"-t"
.LC0805AC55:
	.string	"-z"
.LC0805AC58:
	.string	"-n"
.LC0805AC5B:
	.string	"-h"
.LC0805AC5E:
	.string	"-O"
.LC0805AC61:
	.string	"-G"
.LC0805AC64:
	.string	"-L"
.LC0805AC67:
	.byte	45
.LC0805AC68:
	.value	83
.LC0805AC6A:
	.byte	33
.LC0805AC6B:
	.value	61
.LC0805AC6D:
	.long	7431469
.LC0805AC71:
	.long	6647341
.LC0805AC75:
	.long	6645549
.LC0805AC79:
	.long	7628589
.LC0805AC7D:
	.long	6646829
.LC0805AC81:
	.long	7629869
.LC0805AC85:
	.long	7630381
.LC0805AC89:
	.long	7630637
.LC0805AC8D:
	.long	6710573
.LC0805AC91:
	.byte	45
.LC0805AC92:
	.string	"a"
# ----------------------
.LC0805AC94:
	.zero	12
.LC0805ACA0:
	.long	.L08057BA0
	.long	.L08057B40
	.long	.L08057AC8
	.long	.L08057901
	.long	.L08057901
	.long	.L08057901
	.long	.L08057901
	.long	.L08057901
	.long	.L08057AB0
	.long	.L08057A98
	.long	.L08057A80
	.long	.L08057A58
	.long	.L08057A28
	.long	.L080579E8
	.long	.L080579A8
	.long	.L08057978
	.long	.L08057948
.LC0805ACE4:
	.long	.L08057C6E
	.long	.L08057D90
	.long	.L08057DE8
	.long	.L08057DD0
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057DB8
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057C6E
	.long	.L08057DA8
	.long	.L08057D00
.LC0805AD44:
	.long	.L08057EF4
	.long	.L08057EDC
	.long	.L08057EC4
	.long	.L08057EAC
	.long	.L08057E94
	.long	.L08057E7C
	.long	.L08057E64
	.long	.L08057E51
	.long	.L08057CA6
	.long	.L08057E42
	.long	.L08057E33
	.long	.L08057E24
	.long	.L08057CA6
	.long	.L08057CA6
	.long	.L08057CA6
	.long	.L08057E0F
	.long	.L08057F0C
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805ADA0:
	.long	.LC0805ABE4
	.long	1
	.long	.LC0805AC2E
	.long	2
	.long	.LC0805AC31
	.long	3
	.long	.LC0805AC34
	.long	4
	.long	.LC0805AC37
	.long	5
	.long	.LC0805AC3A
	.long	6
	.long	.LC0805AC3D
	.long	7
	.long	.LC0805AC40
	.long	8
	.long	.LC0805AC43
	.long	9
	.long	.LC0805AC46
	.long	14
	.long	.LC0805AC49
	.long	15
	.long	.LC0805AC4C
	.long	16
	.long	.LC0805AC4F
	.long	12
	.long	.LC0805AC52
	.long	13
	.long	.LC0805AC55
	.long	22
	.long	.LC0805AC58
	.long	23
	.long	.LC0805AC5B
	.long	11
	.long	.LC0805AC5E
	.long	20
	.long	.LC0805AC61
	.long	21
	.long	.LC0805AC64
	.long	11
	.long	.LC0805AC67
	.long	10
	.long	.LC0805AC6B
	.long	65560
	.long	.LC0805AC6A
	.long	65561
	.long	.LC08059D4A
	.long	65562
	.long	.LC08059D50
	.long	65563
	.long	.LC0805AC6D
	.long	65564
	.long	.LC0805AC71
	.long	65565
	.long	.LC0805AC75
	.long	65566
	.long	.LC0805AC79
	.long	65567
	.long	.LC0805AC7D
	.long	65568
	.long	.LC0805AC81
	.long	65569
	.long	.LC0805AC85
	.long	65553
	.long	.LC0805AC89
	.long	65554
	.long	.LC0805AC8D
	.long	65555
	.long	.LC08059D56
	.long	131106
	.long	.LC0805AC91
	.long	196643
	.long	.LC0805A36C
	.long	196644
	.long	.LC08059D05
	.long	262181
	.long	.LC08059D01
	.long	262182
	.long	0
	.long	0
.LC0805AEE0:
	.string	"%dm%fs %dm%fs\n%dm%fs %dm%fs\n"
.LC0805AEFD:
	.string	"PS1=# "
.LC0805AF04:
	.string	"%s%s%.*s%s\n"
.LC0805AF10:
	.string	"%.*s: is read only"
.LC0805AF23:
	.string	"%.*s: bad variable name"
.LC0805AF3B:
	.string	"vf"
.LC0805AF3E:
	.string	"not in a function"
.LC0805AF50:
	.string	"PS1=$ "
.LC0805AF57:
	.string	"PS2=> "
.LC0805AF5E:
	.string	"PS4=+ "
.LC0805AF65:
	.string	"OPTIND=1"
# ----------------------
.LC0805AF6E:
	.zero	18
.LC0805AF80:
	.string	"MAIL"
# ----------------------
.LC0805AF85:
	.byte	0
	.align 2
.LC0805AF86:
	.string	"MAILPATH"
# ----------------------
.LC0805AF8F:
	.byte	0
	.align 2
.LC0805AF90:
	.long	1028867657
.LC0805AF94:
	.string	" \t\n"
# ----------------------
.LC0805AF98:
	.zero	8
.LC0805AFA0:
	.ascii	"PATH="
.LC0805AFA5:
	.string	"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
.LC0805AFE2:
	.value	91
.LC0805AFE4:
	.string	"bg"
.LC0805AFE7:
	.string	"break"
.LC0805AFED:
	.string	"cd"
.LC0805AFF0:
	.string	"chdir"
.LC0805AFF6:
	.string	"command"
.LC0805AFFE:
	.string	"continue"
.LC0805B007:
	.string	"echo"
.LC0805B00C:
	.string	"eval"
.LC0805B011:
	.string	"false"
.LC0805B017:
	.string	"fg"
.LC0805B01A:
	.string	"getopts"
.LC0805B022:
	.string	"hash"
.LC0805B027:
	.string	"jobs"
.LC0805B02C:
	.string	"kill"
.LC0805B031:
	.string	"local"
.LC0805B037:
	.string	"printf"
.LC0805B03E:
	.long	6584176
.LC0805B042:
	.string	"read"
.LC0805B047:
	.string	"readonly"
.LC0805B050:
	.string	"return"
.LC0805B057:
	.string	"shift"
.LC0805B05D:
	.string	"test"
.LC0805B062:
	.string	"times"
.LC0805B068:
	.string	"trap"
.LC0805B06D:
	.string	"true"
.LC0805B072:
	.string	"type"
.LC0805B077:
	.string	"ulimit"
.LC0805B07E:
	.string	"umask"
.LC0805B084:
	.string	"wait"
# ----------------------
.LC0805B089:
	.zero	23
.LC0805B0A0:
	.long	.LC08059D3A
	.long	.L08051C50
	.long	3
	.long	.LC08059E12
	.long	.L0804C5C0
	.long	3
	.long	.LC0805AFE2
	.long	.L08057FB0
	.long	0
	.long	.LC080595CA
	.long	.L08049C90
	.long	6
	.long	.LC0805AFE4
	.long	.L08051790
	.long	2
	.long	.LC0805AFE7
	.long	.L0804C510
	.long	3
	.long	.LC0805AFED
	.long	.L0804AB60
	.long	2
	.long	.LC0805AFF0
	.long	.L0804AB60
	.long	0
.LC0805B100:
	.long	.LC0805AFF6
	.long	.L0804D640
	.long	2
	.long	.LC0805AFFE
	.long	.L0804C510
	.long	3
	.long	.LC0805B007
	.long	.L08057660
	.long	0
.LC0805B124:
	.long	.LC0805B00C
	.long	0
	.long	3
.LC0805B130:
	.long	.LC0805A473
	.long	.L0804C5D0
	.long	3
	.long	.LC0805A447
	.long	.L08051D30
	.long	3
	.long	.LC0805A4A3
	.long	.L08058E20
	.long	7
	.long	.LC0805B011
	.long	.L0804C5B0
	.long	2
	.long	.LC0805B017
	.long	.L08051790
	.long	2
	.long	.LC0805B01A
	.long	.L080535E0
	.long	2
	.long	.LC0805B022
	.long	.L0804D220
	.long	0
	.long	.LC0805B027
	.long	.L08051070
	.long	2
	.long	.LC0805B02C
	.long	.L08050DE0
	.long	2
	.long	.LC0805B031
	.long	.L08058DD0
	.long	7
	.long	.LC0805B037
	.long	.L08056FF0
	.long	0
	.long	.LC0805B03E
	.long	.L0804AB10
	.long	0
	.long	.LC0805B042
	.long	.L080521A0
	.long	2
	.long	.LC0805B047
	.long	.L08058E20
	.long	7
	.long	.LC0805B050
	.long	.L0804C580
	.long	3
	.long	.LC08059B06
	.long	.L08053520
	.long	3
	.long	.LC0805B057
	.long	.L08053430
	.long	3
	.long	.LC0805B05D
	.long	.L08057FB0
	.long	0
	.long	.LC0805B062
	.long	.L080580D0
	.long	3
	.long	.LC0805B068
	.long	.L08056700
	.long	3
	.long	.LC0805B06D
	.long	.L0804C5C0
	.long	2
	.long	.LC0805B072
	.long	.L0804D5F0
	.long	0
	.long	.LC0805B077
	.long	.L08052900
	.long	0
	.long	.LC0805B07E
	.long	.L080524B0
	.long	2
	.long	.LC080595C8
	.long	.L08049BD0
	.long	2
	.long	.LC0805A4B3
	.long	.L08058960
	.long	3
	.long	.LC0805B084
	.long	.L080510F0
	.long	2
.LC0805B274:
	.string	"%ld"
# ----------------------
.LC0805B278:
	.zero	8
.LC0805B280:
	.long	.L08059218
	.long	.L08059208
	.long	.L08059152
	.long	.L08059152
	.long	.L08059152
	.long	.L08059180
	.long	.L08059180
	.long	.L08059180
	.long	.L08059178
	.long	.L08059180
	.long	.L08059180
	.long	.L08059138
	.long	.L08059152
	.long	.L080591F0
	.long	.L080591C8
	.long	.L080591A0
	.long	.L08059168
	.long	.L08059168
	.long	.L08059168
	.long	.L08059168
	.long	.L08059168
	.long	.L08059190
	.long	.L08059190
	.long	.L08059168
	.long	.L08059168
	.long	.L08059188
.LC0805B2E8:
	.long	.L08059368
	.long	.L08059350
	.long	.L080592DB
	.long	.L080592DB
	.long	.L080592DB
	.long	.L0805932B
	.long	.L0805932B
	.long	.L0805932B
	.long	.L08059338
	.long	.L0805932B
	.long	.L0805932B
	.long	.L080592D0
	.long	.L080592DB
	.long	.L08059320
	.long	.L080593C0
	.long	.L080593A8
	.long	.L08059300
	.long	.L08059300
	.long	.L08059300
	.long	.L08059300
	.long	.L08059300
	.long	.L08059390
	.long	.L08059390
	.long	.L08059300
	.long	.L08059300
	.long	.L08059378
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805B360:
	.long	1048600
	.long	1048592
	.long	1048592
	.long	1048592
	.long	1048592
	.long	1572880
	.long	1048592
	.long	1048592
	.long	1572888
	.long	1572888
	.long	1572888
	.long	1048600
	.long	524304
	.long	1414092869
	.long	1347766272
	.long	1414416640
	.long	1230328064
	.long	1381236820
	.long	1090539585
	.long	5526082
	.long	5461314
	.long	4542534
	.long	1280067915
	.long	1381192960
	.long	1163067441
	.long	1426085447
	.long	3297875
	.long	1162889552
	.long	1380275200
	.long	909181005
	.long	1279804160
	.long	1329791044
	.long	1392530510
	.long	5263188
	.long	1347703636
	.long	1230263296
	.long	1414791246
	.long	1426085199
	.long	1476413266
	.long	5591107
	.long	1515406936
	.long	1096046080
	.long	5067340
	.long	1179603536
	.long	1313429248
	.long	1224755267
	.long	1464860751
	.long	1498611794
	.long	842203219
	.long	3355392
	.long	1229804626
	.long	1414660174
	.long	726550861
	.long	1414660145
	.long	726550861
	.long	1414660146
	.long	726550861
	.long	1414660147
	.long	726550861
	.long	1414660148
	.long	726550861
	.long	1414660149
	.long	726550861
	.long	1414660150
	.long	726550861
	.long	1414660151
	.long	726550861
	.long	1414660152
	.long	726550861
	.long	1414660153
	.long	726550861
	.long	1375744049
	.long	1313426772
	.long	3223851
	.long	1229804626
	.long	842083150
	.long	1297371648
	.long	824921673
	.long	1414660147
	.long	726550861
	.long	1375745073
	.long	1313426772
	.long	3485995
	.long	1095586898
	.long	875638104
	.long	1297371648
	.long	825055297
	.long	1414660147
	.long	760758605
	.long	1375744561
	.long	1480674644
	.long	3223853
	.long	1095586898
	.long	808529240
	.long	1297371648
	.long	959273025
	.long	1297371648
	.long	942495809
	.long	1297371648
	.long	925718593
	.long	1297371648
	.long	908941377
	.long	1297371648
	.long	892164161
	.long	1297371648
	.long	875386945
	.long	1297371648
	.long	858609729
	.long	1297371648
	.long	841832513
	.long	1297371648
	.long	825055297
	.long	1297371648
	.long	22593
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805B540:
	.ascii	"\224\263\005\010\231\263\005\010\235\263\005\010\241\263\005\010\271\263\005\010\246\263\005\010\253\263\005\010\260\263\005\010\264\263\005\010\270\263\005\010\275\263\005\010\302\263\005\010\307\263\005\010\314\263\005\010\007\264\005\010\321\263\005\010\326\263\005\010\331\263\005\010\336\263\005\010\343\263\005\010\350\263\005\010\355\263\005\010\362\263\005\010\367\263\005\010\373\263\005\010\000\264\005\010\005\264\005\010\014\264\005\010\021\264\005\010\027\264\005\010\032\264\005\010\036\264\005\010\"\264\005\010%\264\005\010(\264\005\010.\264\005\0106\264\005\010>\264\005\010F\264\005\010N\264\005\010V\264\005\010^\264\005\010f\264\005\010n\264\005\010v\264\005\010\177\264\005\010\210\264\005\010\221\264\005\010\232\264\005\010\243\264\005\010\254\264\005\010\265\264\005\010\276\264\005\010\307\264\005\010\320\264\005\010\331\264\005\010\341\264\005\010\351\264\005\010\361\264\005\010\371\264\005\010\001\265\005\010\t\265\005\010\021\265\005\010\031\265\005\010!\265\005\010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
.LC0805B6E2:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	268439552
	.long	16
	.long	1048576
	.long	4096
	.long	16843009
	.long	16843009
	.long	257
	.long	268435456
	.long	33686032
	.long	33686018
	.long	33686018
	.long	33686018
	.long	33686018
	.long	33686018
	.long	131586
	.long	134217728
	.long	67372032
	.long	67372036
	.long	67372036
	.long	67372036
	.long	67372036
	.long	67372036
	.long	263172
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	235601920
	.long	202116096
	.long	202116108
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805B802:
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	2569
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2048
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	235601920
	.long	202116096
	.long	202116108
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805B922:
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3072
	.long	83886080
	.long	786432
	.long	201329664
	.long	0
	.long	0
	.long	786432
	.long	201329664
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	201326592
	.long	3084
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	786432
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	235601920
	.long	202116096
	.long	202116108
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805BA42:
	.long	0
	.long	0
	.long	65536
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	330752
	.long	7
	.long	786432
	.long	201329664
	.long	0
	.long	0
	.long	786432
	.long	201329664
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	201326592
	.long	3074
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	788480
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	218824704
	.long	202116096
	.long	202116108
	.long	12
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.LC0805BB62:
	.long	0
	.long	0
	.long	68864
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	262157
	.long	51183623
	.long	3341
	.long	0
	.long	0
	.long	0
	.long	218103808
	.long	851981
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2061
# ----------------------
	.data
.LD08061180:
	.zero	8
.LD08061188:
	.long	.LBSS0806395C
.LD0806118C:
	.long	.LBSS0806395C
.LD08061190:
	.long	-1
.LD08061194:
	.long	.LBSS08061700
.LD08061198:
	.long	1
.LD0806119C:
	.long	-1
.LD080611A0:
	.long	.LBSS0806395C
.LD080611A4:
	.long	504
.LD080611A8:
	.long	.LBSS08063764
.LD080611AC:
	.long	.LBSS08063760
.LD080611B0:
	.long	.LD080611B8
.LD080611B4:
	.long	.LD080611D0
.LD080611B8:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	0
.LD080611D0:
	.zero	8
.LD080611D8:
	.long	0
	.long	8192
	.long	1
.LD080611E4:
	.zero	28
.LD08061200:
	.long	0
.LD08061204:
	.long	12
.LD08061208:
	.long	.LC0805AF90
	.long	0
	.long	0
	.long	44
.LD08061218:
	.long	.LC0805AF80
	.long	.L08051A70
	.long	0
.LD08061224:
	.long	44
.LD08061228:
	.long	.LC0805AF86
	.long	.L08051A70
	.long	0
	.long	12
.LD08061238:
	.long	.LC0805AFA0
	.long	.L0804D420
	.long	0
	.long	12
.LD08061248:
	.long	.LC0805AF50
	.long	0
	.long	0
	.long	12
.LD08061258:
	.long	.LC0805AF57
	.long	0
	.long	0
	.long	12
.LD08061268:
	.long	.LC0805AF5E
	.long	0
	.long	0
	.long	12
	.long	.LC0805AF65
	.long	.L080535B0
.LD08061280:
	.ascii	"PPID="
.LD08061285:
	.zero	27
# ----------------------
	.bss
.LBSS080612AC:
	.zero	4
.LBSS080612B0:
	.zero	4
.LBSS080612B4:
	.zero	4
.LBSS080612B8:
	.zero	8
.LBSS080612C0:
	.zero	124
.LBSS0806133C:
	.zero	4
.LBSS08061340:
	.zero	4
.LBSS08061344:
	.zero	4
.LBSS08061348:
	.zero	4
.LBSS0806134C:
	.zero	4
.LBSS08061350:
	.zero	4
.LBSS08061354:
	.zero	4
.LBSS08061358:
	.zero	4
.LBSS0806135C:
	.zero	8
.LBSS08061364:
	.zero	4
.LBSS08061368:
	.zero	4
.LBSS0806136C:
	.zero	4
.LBSS08061370:
	.zero	4
.LBSS08061374:
	.zero	4
.LBSS08061378:
	.zero	8
.LBSS08061380:
	.zero	32
.LBSS080613A0:
	.zero	40
.LBSS080613C8:
	.zero	24
.LBSS080613E0:
	.zero	8
.LBSS080613E8:
	.zero	60
.LBSS08061424:
	.zero	192
.LBSS080614E4:
	.zero	27
.LBSS080614FF:
	.zero	17
.LBSS08061510:
	.zero	48
.LBSS08061540:
	.zero	4
.LBSS08061544:
	.zero	4
.LBSS08061548:
	.zero	4
.LBSS0806154C:
	.zero	4
.LBSS08061550:
	.zero	16
.LBSS08061560:
	.zero	156
.LBSS080615FC:
	.zero	4
.LBSS08061600:
	.zero	156
.LBSS0806169C:
	.zero	4
.LBSS080616A0:
	.zero	4
.LBSS080616A4:
	.zero	4
.LBSS080616A8:
	.zero	4
.LBSS080616AC:
	.zero	4
.LBSS080616B0:
	.zero	4
.LBSS080616B4:
	.zero	4
.LBSS080616B8:
	.zero	4
.LBSS080616BC:
	.zero	4
.LBSS080616C0:
	.zero	4
.LBSS080616C4:
	.zero	4
.LBSS080616C8:
	.zero	4
.LBSS080616CC:
	.zero	4
.LBSS080616D0:
	.zero	4
.LBSS080616D4:
	.zero	12
.LBSS080616E0:
	.zero	4
.LBSS080616E4:
	.zero	4
.LBSS080616E8:
	.zero	24
.LBSS08061700:
	.zero	20
.LBSS08061714:
	.zero	4
.LBSS08061718:
	.zero	40
.LBSS08061740:
	.zero	8196
.LBSS08063744:
	.zero	4
.LBSS08063748:
	.zero	4
.LBSS0806374C:
	.zero	4
.LBSS08063750:
	.zero	4
.LBSS08063754:
	.zero	4
.LBSS08063758:
	.zero	4
.LBSS0806375C:
	.zero	4
.LBSS08063760:
	.zero	4
.LBSS08063764:
	.zero	504
.LBSS0806395C:
	.zero	4
.LBSS08063960:
	.zero	4
.LBSS08063964:
	.zero	1
.LBSS08063965:
	.zero	1
.LBSS08063966:
	.zero	1
.LBSS08063967:
	.zero	1
.LBSS08063968:
	.zero	1
.LBSS08063969:
	.zero	1
.LBSS0806396A:
	.zero	1
.LBSS0806396B:
	.zero	1
.LBSS0806396C:
	.zero	1
.LBSS0806396D:
	.zero	1
.LBSS0806396E:
	.zero	1
.LBSS0806396F:
	.zero	1
.LBSS08063970:
	.zero	2
.LBSS08063972:
	.zero	2
.LBSS08063974:
	.zero	4
.LBSS08063978:
	.zero	4
.LBSS0806397C:
	.zero	4
.LBSS08063980:
	.zero	4
.LBSS08063984:
	.zero	4
.LBSS08063988:
	.zero	4
.LBSS0806398C:
	.zero	4
.LBSS08063990:
	.zero	4
.LBSS08063994:
	.zero	4
.LBSS08063998:
	.zero	4
.LBSS0806399C:
	.zero	4
.LBSS080639A0:
	.zero	4
.LBSS080639A4:
	.zero	4
.LBSS080639A8:
	.zero	4
.LBSS080639AC:
	.zero	4
.LBSS080639B0:
	.zero	4
.LBSS080639B4:
	.zero	4
.LBSS080639B8:
	.zero	4
.LBSS080639BC:
	.zero	4
.LBSS080639C0:
	.zero	4
.LBSS080639C4:
	.zero	4
.LBSS080639C8:
	.zero	24
.LBSS080639E0:
	.zero	31
.LBSS080639FF:
	.zero	17
.LBSS08063A10:
	.zero	48
.LBSS08063A40:
	.zero	4
.LBSS08063A44:
	.zero	4
.LBSS08063A48:
	.zero	16
.LBSS08063A58:
	.zero	8
.LBSS08063A60:
	.zero	4
.LBSS08063A64:
	.zero	4
.LBSS08063A68:
	.zero	4
.LBSS08063A6C:
	.zero	4
.LBSS08063A70:
	.zero	4
# ----------------------
