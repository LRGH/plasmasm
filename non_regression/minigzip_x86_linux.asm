	.text
	.globl	main
	.type	main, @function
main:
	leal      4(%esp), %ecx
	andl      $-16, %esp
	pushl     -4(%ecx)
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %ecx
	subl      $64, %esp
	movl      4(%ecx), %ebx
	movl      (%ecx), %esi
	movl      $540435063, -44(%ebp)
	movb      $0, -40(%ebp)
	movl      (%ebx), %eax
	movl      %eax, prog
	movl      (%ebx), %eax
	pushl     $47
	pushl     %eax
	movl      %eax, -60(%ebp)
	call      strrchr
.L080488B8:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080488C5
.L080488BF:
	addl      $1, %eax
	movl      %eax, -60(%ebp)
.L080488C5:
	leal      -1(%esi), %edx
	movl      -60(%ebp), %esi
	movl      $.LC08058637, %edi
	movl      $7, %ecx
	addl      $4, %ebx
	repz cmpsb     
	je        .L08048B6B
.L080488E0:
	pushl     %esi
	pushl     %esi
	pushl     $.LC0805863E
	pushl     -60(%ebp)
	movl      %edx, -64(%ebp)
	call      strcmp
.L080488F2:
	xorl      %ecx, %ecx
	addl      $16, %esp
	cmpl      $1, %eax
	setb      %cl
	movl      -64(%ebp), %edx
	movl      %ecx, %edi
	movl      %edi, %esi
.L08048904:
	testl     %edx, %edx
	jle       .L08048A4C
.L0804890C:
	.p2align 4,,10
	.p2align 3
.L08048910:
	movl      (%ebx), %eax
	cmpb      $45, (%eax)
	je        .L08048A00
.L0804891B:
	cmpb      $32, -41(%ebp)
	jne       .L08048975
.L08048921:
	movb      $0, -41(%ebp)
	jmp       .L08048A56
.L0804892A:
	.p2align 4,,10
	.p2align 3
.L08048930:
	testl     %esi, %esi
	je        .L08048B00
.L08048938:
	subl      $8, %esp
	pushl     $.LC0805861C
	pushl     (%ebx)
	call      gzopen
.L08048947:
	addl      $16, %esp
	testl     %eax, %eax
	movl      -60(%ebp), %edx
	je        .L08048BAE
.L08048955:
	subl      $8, %esp
	pushl     stdout
	movl      %edx, -60(%ebp)
	pushl     %eax
	call      gz_uncompress
.L08048967:
	movl      -60(%ebp), %edx
	addl      $16, %esp
.L0804896D:
	addl      $4, %ebx
	subl      $1, %edx
	je        .L080489F0
.L08048975:
	testl     %edi, %edi
	movl      %edx, -60(%ebp)
	jne       .L08048930
.L0804897C:
	testl     %esi, %esi
	je        .L08048B18
.L08048984:
	subl      $8, %esp
	pushl     $.LC0805861C
	pushl     (%ebx)
	call      fopen
.L08048993:
	addl      $16, %esp
	testl     %eax, %eax
	movl      -60(%ebp), %edx
	je        .L08048BD1
.L080489A1:
	subl      $12, %esp
	pushl     stdout
	movl      %edx, -60(%ebp)
	movl      %eax, -64(%ebp)
	call      fileno
.L080489B5:
	popl      %edx
	popl      %ecx
	leal      -44(%ebp), %ecx
	pushl     %ecx
	pushl     %eax
	call      gzdopen
.L080489C1:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048BF3
.L080489CC:
	movl      -64(%ebp), %ecx
	subl      $8, %esp
	addl      $4, %ebx
	pushl     %eax
	pushl     %ecx
	call      gz_compress
.L080489DC:
	movl      -60(%ebp), %edx
	addl      $16, %esp
	subl      $1, %edx
	jne       .L08048975
.L080489E7:
	.p2align 4
.L080489F0:
	leal      -16(%ebp), %esp
	xorl      %eax, %eax
	popl      %ecx
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	leal      -4(%ecx), %esp
	ret       
.L080489FE:
	.p2align 4,,10
	.p2align 3
.L08048A00:
	movzbl    1(%eax), %ecx
	cmpb      $99, %cl
	je        .L08048AA8
.L08048A0D:
	cmpb      $100, %cl
	jne       .L08048AB9
.L08048A16:
	cmpb      $0, 2(%eax)
	je        .L08048B38
.L08048A20:
	cmpb      $114, 1(%eax)
	jne       .L08048AD1
.L08048A2A:
	cmpb      $0, 2(%eax)
	jne       .L08048AD1
.L08048A34:
	movb      $82, -41(%ebp)
	.p2align 4
.L08048A40:
	addl      $4, %ebx
	subl      $1, %edx
	jne       .L08048910
.L08048A4C:
	cmpb      $32, -41(%ebp)
	je        .L08048921
.L08048A56:
	testl     %edx, %edx
	jne       .L08048975
.L08048A5E:
	testl     %edi, %edi
	je        .L08048B77
.L08048A66:
	subl      $12, %esp
	pushl     stdin
	call      fileno
.L08048A74:
	popl      %ecx
	popl      %ebx
	pushl     $.LC0805861C
	pushl     %eax
	call      gzdopen
.L08048A81:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048BE6
.L08048A8C:
	pushl     %edx
	pushl     %edx
	pushl     stdout
	pushl     %eax
	call      gz_uncompress
.L08048A9A:
	addl      $16, %esp
	jmp       .L080489F0
.L08048AA2:
	.p2align 4,,10
	.p2align 3
.L08048AA8:
	cmpb      $0, 2(%eax)
	jne       .L08048A20
.L08048AB2:
	movl      $1, %esi
	jmp       .L08048A40
.L08048AB9:
	cmpb      $102, %cl
	je        .L08048B58
.L08048AC2:
	cmpb      $104, %cl
	jne       .L08048A20
.L08048ACB:
	cmpb      $0, 2(%eax)
	je        .L08048B48
.L08048AD1:
	movzbl    1(%eax), %ecx
	movb      %cl, -60(%ebp)
	subl      $49, %ecx
	cmpb      $8, %cl
	ja        .L0804891B
.L08048AE4:
	cmpb      $0, 2(%eax)
	jne       .L0804891B
.L08048AEE:
	movzbl    -60(%ebp), %eax
	movb      %al, -42(%ebp)
	jmp       .L08048A40
.L08048AFA:
	.p2align 4,,10
	.p2align 3
.L08048B00:
	subl      $12, %esp
	pushl     (%ebx)
	call      file_uncompress
.L08048B0A:
	addl      $16, %esp
	movl      -60(%ebp), %edx
	jmp       .L0804896D
.L08048B15:
	.p2align 4,,10
	.p2align 3
.L08048B18:
	leal      -44(%ebp), %eax
	subl      $8, %esp
	pushl     %eax
	pushl     (%ebx)
	call      file_compress
.L08048B26:
	addl      $16, %esp
	movl      -60(%ebp), %edx
	jmp       .L0804896D
.L08048B31:
	.p2align 4,,10
	.p2align 3
.L08048B38:
	movl      $1, %edi
	jmp       .L08048A40
.L08048B42:
	.p2align 4,,10
	.p2align 3
.L08048B48:
	movb      $104, -41(%ebp)
	jmp       .L08048A40
.L08048B51:
	.p2align 4,,10
	.p2align 3
.L08048B58:
	cmpb      $0, 2(%eax)
	jne       .L08048A20
.L08048B62:
	movb      $102, -41(%ebp)
	jmp       .L08048A40
.L08048B6B:
	movl      $1, %edi
	xorl      %esi, %esi
	jmp       .L08048904
.L08048B77:
	subl      $12, %esp
	pushl     stdout
	call      fileno
.L08048B85:
	popl      %esi
	leal      -44(%ebp), %edx
	popl      %edi
	pushl     %edx
	pushl     %eax
	call      gzdopen
.L08048B91:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048BF3
.L08048B98:
	pushl     %ebx
	pushl     %ebx
	pushl     %eax
	pushl     stdin
	call      gz_compress
.L08048BA6:
	addl      $16, %esp
	jmp       .L080489F0
.L08048BAE:
	pushl     (%ebx)
	pushl     prog
	pushl     $.LC0805861F
	pushl     stderr
	call      fprintf
.L08048BC6:
	addl      $16, %esp
	movl      -60(%ebp), %edx
	jmp       .L0804896D
.L08048BD1:
	subl      $12, %esp
	pushl     (%ebx)
	call      perror
.L08048BDB:
	addl      $16, %esp
	movl      -60(%ebp), %edx
	jmp       .L0804896D
.L08048BE6:
	subl      $12, %esp
	pushl     $.LC08058643
	call      error
.L08048BF3:
	subl      $12, %esp
	pushl     $.LC08058657
	call      error
	.size	main, .-main
# ----------------------
	.globl	error
	.type	error, @function
error:
	subl      $12, %esp
	pushl     16(%esp)
	pushl     prog
	pushl     $.LC080585C8
	pushl     stderr
	call      fprintf
.L08048D1D:
	movl      $1, (%esp)
	call      exit
	.size	error, .-error
# ----------------------
.L08048D29:
	.p2align 4
# ----------------------
	.globl	gz_compress
	.type	gz_compress, @function
gz_compress:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16412, %esp
	movl      16432(%esp), %esi
	movl      16436(%esp), %ebp
	leal      16(%esp), %edi
	jmp       .L08048D62
.L08048D4E:
	.p2align 4,,10
	.p2align 3
.L08048D50:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     %ebp
	call      gzwrite
.L08048D5B:
	addl      $16, %esp
	cmpl      %ebx, %eax
	jne       .L08048DC1
.L08048D62:
	pushl     %esi
	pushl     $16384
	pushl     $1
	pushl     %edi
	call      fread
.L08048D70:
	movl      %esi, (%esp)
	movl      %eax, %ebx
	call      ferror
.L08048D7A:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048DA8
.L08048D81:
	testl     %ebx, %ebx
	jne       .L08048D50
.L08048D85:
	subl      $12, %esp
	pushl     %esi
	call      fclose
.L08048D8E:
	movl      %ebp, (%esp)
	call      gzclose
.L08048D96:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048DD7
.L08048D9D:
	addl      $16412, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08048DA8:
	subl      $12, %esp
	pushl     $.LC080585D0
	call      perror
.L08048DB5:
	movl      $1, (%esp)
	call      exit
.L08048DC1:
	subl      $8, %esp
	leal      20(%esp), %eax
	pushl     %eax
	pushl     %ebp
	call      gzerror
.L08048DCF:
	movl      %eax, (%esp)
	call      error
.L08048DD7:
	subl      $12, %esp
	pushl     $.LC080585D6
	call      error
	.size	gz_compress, .-gz_compress
# ----------------------
.L08048DE4:
	.p2align 4
# ----------------------
	.globl	gz_uncompress
	.type	gz_uncompress, @function
gz_uncompress:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16412, %esp
	movl      16432(%esp), %edi
	movl      16436(%esp), %ebp
	leal      16(%esp), %esi
	jmp       .L08048E21
.L08048E0E:
	.p2align 4,,10
	.p2align 3
.L08048E10:
	pushl     %ebp
	pushl     %eax
	pushl     $1
	pushl     %esi
	call      fwrite
.L08048E1A:
	addl      $16, %esp
	cmpl      %ebx, %eax
	jne       .L08048E7C
.L08048E21:
	subl      $4, %esp
	pushl     $16384
	pushl     %esi
	pushl     %edi
	call      gzread
.L08048E30:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	js        .L08048E66
.L08048E39:
	jne       .L08048E10
.L08048E3B:
	subl      $12, %esp
	pushl     %ebp
	call      fclose
.L08048E44:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048E96
.L08048E4B:
	subl      $12, %esp
	pushl     %edi
	call      gzclose
.L08048E54:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048E89
.L08048E5B:
	addl      $16412, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08048E66:
	subl      $8, %esp
	leal      20(%esp), %eax
	pushl     %eax
	pushl     %edi
	call      gzerror
.L08048E74:
	movl      %eax, (%esp)
	call      error
.L08048E7C:
	subl      $12, %esp
	pushl     $.LC080585E5
	call      error
.L08048E89:
	subl      $12, %esp
	pushl     $.LC080585D6
	call      error
.L08048E96:
	subl      $12, %esp
	pushl     $.LC080585F3
	call      error
	.size	gz_uncompress, .-gz_uncompress
# ----------------------
.L08048EA3:
	.p2align 4
# ----------------------
	.globl	file_compress
	.type	file_compress, @function
file_compress:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1036, %esp
	movl      1052(%esp), %ebx
	pushl     %ebx
	call      strlen
.L08048EC6:
	addl      $3, %eax
	addl      $16, %esp
	cmpl      $1023, %eax
	ja        .L08048F3A
.L08048ED3:
	subl      $12, %esp
	pushl     $.LC08058618
	pushl     %ebx
	pushl     $.LC08058687
	pushl     $1024
	leal      28(%esp), %esi
	pushl     %esi
	call      snprintf
.L08048EF0:
	addl      $24, %esp
	pushl     $.LC0805861C
	pushl     %ebx
	call      fopen
.L08048EFE:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L08048F80
.L08048F07:
	subl      $8, %esp
	pushl     1052(%esp)
	pushl     %esi
	call      gzopen
.L08048F17:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048F5D
.L08048F1E:
	subl      $8, %esp
	pushl     %eax
	pushl     %edi
	call      gz_compress
.L08048F28:
	movl      %ebx, (%esp)
	call      unlink
.L08048F30:
	addl      $1040, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08048F3A:
	pushl     %eax
	pushl     prog
	pushl     $.LC08058601
	pushl     stderr
	call      fprintf
.L08048F51:
	movl      $1, (%esp)
	call      exit
.L08048F5D:
	pushl     %esi
	pushl     prog
	pushl     $.LC0805861F
	pushl     stderr
	call      fprintf
.L08048F74:
	movl      $1, (%esp)
	call      exit
.L08048F80:
	subl      $12, %esp
	pushl     %ebx
	call      perror
.L08048F89:
	movl      $1, (%esp)
	call      exit
	.size	file_compress, .-file_compress
# ----------------------
.L08048F95:
	.p2align 4
# ----------------------
	.globl	file_uncompress
	.type	file_uncompress, @function
file_uncompress:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1048, %esp
	movl      1068(%esp), %esi
	pushl     %esi
	call      strlen
.L08048FB7:
	movl      %eax, %ebx
	leal      3(%eax), %eax
	addl      $16, %esp
	cmpl      $1023, %eax
	ja        .L080490A0
.L08048FCA:
	pushl     %esi
	pushl     $.LC08058689
	pushl     $1024
	leal      12(%esp), %edi
	pushl     %edi
	call      snprintf
.L08048FDF:
	addl      $16, %esp
	cmpl      $3, %ebx
	jbe       .L08048FF2
.L08048FE7:
	leal      -3(%ebx), %edx
	leal      (%esi,%edx), %eax
	cmpb      $46, (%eax)
	je        .L08049060
.L08048FF2:
	movl      $1024, %eax
	pushl     $.LC08058618
	pushl     $.LC08058689
	subl      %ebx, %eax
	addl      %edi, %ebx
	movl      %esi, %ebp
	pushl     %eax
	pushl     %ebx
	movl      %edi, %ebx
	call      snprintf
.L08049010:
	addl      $16, %esp
.L08049013:
	subl      $8, %esp
	pushl     $.LC0805861C
	pushl     %ebx
	call      gzopen
.L08049021:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L0804907D
.L0804902A:
	subl      $8, %esp
	pushl     $.LC08058634
	pushl     %ebp
	call      fopen
.L08049038:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L080490C3
.L08049043:
	subl      $8, %esp
	pushl     %eax
	pushl     %edi
	call      gz_uncompress
.L0804904D:
	movl      %ebx, (%esp)
	call      unlink
.L08049055:
	addl      $1052, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049060:
	cmpb      $103, 1(%eax)
	jne       .L08048FF2
.L08049066:
	cmpb      $122, 2(%eax)
	jne       .L08048FF2
.L0804906C:
	cmpb      $0, 3(%eax)
	jne       .L08048FF2
.L08049072:
	movb      $0, -3(%esp,%ebx)
	movl      %edi, %ebp
	movl      %esi, %ebx
	jmp       .L08049013
.L0804907D:
	pushl     %ebx
	pushl     prog
	pushl     $.LC0805861F
	pushl     stderr
	call      fprintf
.L08049094:
	movl      $1, (%esp)
	call      exit
.L080490A0:
	pushl     %eax
	pushl     prog
	pushl     $.LC08058601
	pushl     stderr
	call      fprintf
.L080490B7:
	movl      $1, (%esp)
	call      exit
.L080490C3:
	subl      $12, %esp
	pushl     %esi
	call      perror
.L080490CC:
	movl      $1, (%esp)
	call      exit
	.size	file_uncompress, .-file_uncompress
# ----------------------
.L080490D8:
	.p2align 4
# ----------------------
	.globl	gzclose
	.type	gzclose, @function
gzclose:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L08049105
.L080490E8:
	cmpl      $7247, 16(%eax)
	je        .L08049100
.L080490F1:
	movl      %eax, 4(%esp)
	jmp       gzclose_w
.L080490FA:
	.p2align 4,,10
	.p2align 3
.L08049100:
	jmp       gzclose_r
.L08049105:
	movl      $-2, %eax
	ret       
	.size	gzclose, .-gzclose
# ----------------------
.L0804910B:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	gz_open
	.type	gz_open, @function
gz_open:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %esi
	subl      $28, %esp
	testl     %eax, %eax
	je        .L080493E2
.L08049121:
	subl      $12, %esp
	movl      %ecx, %ebp
	movl      %edx, %edi
	pushl     $152
	call      malloc
.L08049132:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ecx
	je        .L080493E2
.L0804913F:
	movsbl    (%ebp), %ebx
	movl      $0, 28(%eax)
	movl      $8192, 32(%eax)
	movl      $0, 92(%eax)
	movl      $0, 16(%eax)
	movl      $-1, 68(%eax)
	movl      $0, 72(%eax)
	movl      $0, 44(%eax)
	testb     %bl, %bl
	je        .L080491C0
.L08049178:
	movl      $0, 8(%esp)
	movl      $0, 4(%esp)
	jmp       .L080491A1
.L0804918A:
	.p2align 4,,10
	.p2align 3
.L08049190:
	subl      $48, %ebx
	movl      %ebx, 68(%ecx)
.L08049196:
	addl      $1, %ebp
	movsbl    (%ebp), %ebx
	testb     %bl, %bl
	je        .L080491F8
.L080491A1:
	leal      -48(%ebx), %eax
	cmpb      $9, %al
	jbe       .L08049190
.L080491A8:
	subl      $43, %ebx
	cmpb      $77, %bl
	ja        .L08049196
.L080491B0:
	movzbl    %bl, %ebx
	jmp       *.LC0805868C(,%ebx,4)
.L080491BA:
	.p2align 4,,10
	.p2align 3
.L080491C0:
	subl      $12, %esp
	pushl     %ecx
	call      free
.L080491C9:
	addl      $16, %esp
	xorl      %eax, %eax
.L080491CE:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080491D6:
	.p2align 4
.L080491E0:
	addl      $1, %ebp
	movsbl    (%ebp), %ebx
	movl      $31153, 16(%ecx)
	testb     %bl, %bl
	jne       .L080491A1
.L080491F2:
	.p2align 4,,10
	.p2align 3
.L080491F8:
	movl      16(%ecx), %eax
	testl     %eax, %eax
	je        .L080491C0
.L080491FF:
	cmpl      $7247, %eax
	jne       .L08049214
.L08049206:
	movl      44(%ecx), %eax
	testl     %eax, %eax
	jne       .L080491C0
.L0804920D:
	movl      $1, 44(%ecx)
.L08049214:
	movl      %ecx, 12(%esp)
	subl      $12, %esp
	pushl     %esi
	call      strlen
.L08049221:
	leal      1(%eax), %ebx
	movl      %ebx, (%esp)
	call      malloc
.L0804922C:
	movl      28(%esp), %ecx
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 24(%ecx)
	je        .L080491C0
.L0804923A:
	movl      %ecx, 12(%esp)
	pushl     %esi
	pushl     $.LC08058689
	pushl     %ebx
	pushl     %eax
	call      snprintf
.L0804924B:
	addl      $16, %esp
	movl      12(%esp), %ecx
	cmpl      $1, 4(%esp)
	movl      16(%ecx), %edx
	sbbl      %eax, %eax
	andl      $-524288, %eax
	addl      $557056, %eax
	cmpl      $7247, %edx
	je        .L0804929C
.L0804926E:
	movl      8(%esp), %ebp
	cmpl      $1, %ebp
	sbbl      %ebx, %ebx
	andl      $-128, %ebx
	addl      $705, %ebx
	cmpl      $1, %ebp
	sbbl      %ebp, %ebp
	andl      $-128, %ebp
	addl      $1217, %ebp
	cmpl      $31153, %edx
	je        .L080493AC
.L0804929A:
	orl       %ebp, %eax
.L0804929C:
	testl     %edi, %edi
	js        .L0804943B
.L080492A4:
	movl      %edi, 20(%ecx)
	movl      %edi, %eax
.L080492A9:
	cmpl      $1, %edx
	je        .L080493B8
.L080492B2:
	cmpl      $7247, %edx
	je        .L080493E9
.L080492BE:
	movl      $0, (%ecx)
.L080492C4:
	movl      92(%ecx), %eax
	movl      $0, 84(%ecx)
	testl     %eax, %eax
	je        .L080492F3
.L080492D2:
	cmpl      $-4, 88(%ecx)
	je        .L080492EC
.L080492D8:
	movl      %ecx, 4(%esp)
	subl      $12, %esp
	pushl     %eax
	call      free
.L080492E5:
	addl      $16, %esp
	movl      4(%esp), %ecx
.L080492EC:
	movl      $0, 92(%ecx)
.L080492F3:
	movl      $0, 88(%ecx)
	movl      $0, 8(%ecx)
	movl      %ecx, %eax
	movl      $0, 12(%ecx)
	movl      $0, 100(%ecx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049319:
	.p2align 4
.L08049320:
	movl      $7247, 16(%ecx)
	jmp       .L08049196
.L0804932C:
	.p2align 4,,10
	.p2align 3
.L08049330:
	movl      $2, 72(%ecx)
	jmp       .L08049196
.L0804933C:
	.p2align 4,,10
	.p2align 3
.L08049340:
	movl      $1, 72(%ecx)
	jmp       .L08049196
.L0804934C:
	.p2align 4,,10
	.p2align 3
.L08049350:
	movl      $1, 4(%esp)
	jmp       .L08049196
.L0804935D:
	.p2align 4,,10
	.p2align 3
.L08049360:
	movl      $1, 8(%esp)
	jmp       .L08049196
.L0804936D:
	.p2align 4,,10
	.p2align 3
.L08049370:
	movl      $1, 16(%ecx)
	jmp       .L08049196
.L0804937C:
	.p2align 4,,10
	.p2align 3
.L08049380:
	movl      $1, 44(%ecx)
	jmp       .L08049196
.L0804938C:
	.p2align 4,,10
	.p2align 3
.L08049390:
	movl      $3, 72(%ecx)
	jmp       .L08049196
.L0804939C:
	.p2align 4,,10
	.p2align 3
.L080493A0:
	movl      $4, 72(%ecx)
	jmp       .L08049196
.L080493AC:
	movl      %ebx, %ebp
	jmp       .L0804929A
.L080493B3:
	.p2align 4,,10
	.p2align 3
.L080493B8:
	movl      $31153, 16(%ecx)
	jmp       .L080492BE
.L080493C4:
	subl      $12, %esp
	pushl     24(%ecx)
	movl      %ecx, 20(%esp)
	call      free
.L080493D3:
	movl      20(%esp), %ecx
	movl      %ecx, (%esp)
	call      free
.L080493DF:
	addl      $16, %esp
.L080493E2:
	xorl      %eax, %eax
	jmp       .L080491CE
.L080493E9:
	movl      %ecx, 4(%esp)
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     %eax
	call      lseek64
.L080493F9:
	movl      20(%esp), %ecx
	addl      $16, %esp
	movl      %edx, 56(%ecx)
	andl      %eax, %edx
	movl      %eax, 52(%ecx)
	cmpl      $-1, %edx
	je        .L08049469
.L0804940D:
	movl      16(%ecx), %eax
	movl      $0, (%ecx)
	cmpl      $7247, %eax
	jne       .L080492C4
.L08049421:
	movl      $0, 60(%ecx)
	movl      $0, 64(%ecx)
	movl      $0, 48(%ecx)
	jmp       .L080492C4
.L0804943B:
	movl      %ecx, 4(%esp)
	subl      $4, %esp
	pushl     $438
	pushl     %eax
	pushl     %esi
	call      open
.L0804944E:
	movl      20(%esp), %ecx
	addl      $16, %esp
	cmpl      $-1, %eax
	movl      %eax, 20(%ecx)
	je        .L080493C4
.L08049461:
	movl      16(%ecx), %edx
	jmp       .L080492A9
.L08049469:
	movl      $0, 52(%ecx)
	movl      $0, 56(%ecx)
	jmp       .L0804940D
	.size	gz_open, .-gz_open
# ----------------------
.L08049479:
	.p2align 4
# ----------------------
	.globl	gzopen
	.type	gzopen, @function
gzopen:
	movl      8(%esp), %ecx
	movl      4(%esp), %eax
	movl      $-1, %edx
	jmp       gz_open
	.size	gzopen, .-gzopen
# ----------------------
.L08049492:
	.p2align 4
# ----------------------
	.globl	gzopen64
	.type	gzopen64, @function
gzopen64:
	movl      8(%esp), %ecx
	movl      4(%esp), %eax
	movl      $-1, %edx
	jmp       gz_open
	.size	gzopen64, .-gzopen64
# ----------------------
.L080494B2:
	.p2align 4
# ----------------------
	.globl	gzdopen
	.type	gzdopen, @function
gzdopen:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %esi
	cmpl      $-1, %esi
	je        .L08049518
.L080494CE:
	subl      $12, %esp
	pushl     $19
	call      malloc
.L080494D8:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L08049518
.L080494E1:
	pushl     %esi
	pushl     $.LC0805866C
	pushl     $19
	pushl     %eax
	call      snprintf
.L080494EF:
	movl      36(%esp), %ecx
	movl      %esi, %edx
	movl      %ebx, %eax
	call      gz_open
.L080494FC:
	movl      %ebx, (%esp)
	movl      %eax, %esi
	call      free
.L08049506:
	addl      $16, %esp
	movl      %esi, %eax
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08049511:
	.p2align 4,,10
	.p2align 3
.L08049518:
	addl      $4, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
	.size	gzdopen, .-gzdopen
# ----------------------
	.globl	gzbuffer
	.type	gzbuffer, @function
gzbuffer:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	testl     %eax, %eax
	je        .L08049568
.L0804952C:
	movl      16(%eax), %ecx
	cmpl      $31153, %ecx
	je        .L0804953F
.L08049537:
	cmpl      $7247, %ecx
	jne       .L08049568
.L0804953F:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L08049568
.L08049546:
	cmpl      $1, %edx
	jbe       .L08049558
.L0804954B:
	movl      %edx, 32(%eax)
	xorl      %eax, %eax
	ret       
.L08049551:
	.p2align 4,,10
	.p2align 3
.L08049558:
	movl      $2, %edx
	movl      %edx, 32(%eax)
	xorl      %eax, %eax
	ret       
.L08049563:
	.p2align 4,,10
	.p2align 3
.L08049568:
	movl      $-1, %eax
	ret       
	.size	gzbuffer, .-gzbuffer
# ----------------------
.L0804956E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzrewind
	.type	gzrewind, @function
gzrewind:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08049630
.L08049580:
	cmpl      $7247, 16(%ebx)
	jne       .L08049630
.L0804958D:
	movl      88(%ebx), %eax
	cmpl      $-5, %eax
	je        .L0804959D
.L08049595:
	testl     %eax, %eax
	jne       .L08049630
.L0804959D:
	pushl     $0
	pushl     56(%ebx)
	pushl     52(%ebx)
	pushl     20(%ebx)
	call      lseek64
.L080495AD:
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049630
.L080495B7:
	cmpl      $7247, 16(%ebx)
	movl      $0, (%ebx)
	je        .L08049610
.L080495C6:
	movl      92(%ebx), %eax
	movl      $0, 84(%ebx)
	testl     %eax, %eax
	je        .L080495ED
.L080495D4:
	cmpl      $-4, 88(%ebx)
	je        .L080495E6
.L080495DA:
	subl      $12, %esp
	pushl     %eax
	call      free
.L080495E3:
	addl      $16, %esp
.L080495E6:
	movl      $0, 92(%ebx)
.L080495ED:
	movl      $0, 88(%ebx)
	movl      $0, 8(%ebx)
	xorl      %eax, %eax
	movl      $0, 12(%ebx)
	movl      $0, 100(%ebx)
	addl      $8, %esp
	popl      %ebx
	ret       
.L08049610:
	movl      $0, 60(%ebx)
	movl      $0, 64(%ebx)
	movl      $0, 48(%ebx)
	jmp       .L080495C6
.L08049627:
	.p2align 4
.L08049630:
	addl      $8, %esp
	movl      $-1, %eax
	popl      %ebx
	ret       
	.size	gzrewind, .-gzrewind
# ----------------------
.L0804963A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzseek64
	.type	gzseek64, @function
gzseek64:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %eax
	movl      52(%esp), %esi
	movl      56(%esp), %edi
	movl      60(%esp), %ebp
	testl     %eax, %eax
	je        .L08049740
.L0804965F:
	movl      48(%esp), %eax
	movl      16(%eax), %eax
	cmpl      $7247, %eax
	setne     %dl
	cmpl      $31153, %eax
	je        .L0804967D
.L08049675:
	testb     %dl, %dl
	jne       .L08049740
.L0804967D:
	movl      48(%esp), %ebx
	movl      88(%ebx), %ecx
	cmpl      $-5, %ecx
	je        .L08049691
.L08049689:
	testl     %ecx, %ecx
	jne       .L08049740
.L08049691:
	cmpl      $1, %ebp
	ja        .L08049740
.L0804969A:
	testl     %ebp, %ebp
	je        .L08049700
.L0804969E:
	movl      48(%esp), %ecx
	movl      84(%ecx), %ebx
	testl     %ebx, %ebx
	je        .L080496AF
.L080496A9:
	addl      76(%ecx), %esi
	adcl      80(%ecx), %edi
.L080496AF:
	movl      48(%esp), %ebx
	cmpl      $7247, %eax
	movl      $0, 84(%ebx)
	je        .L08049710
.L080496C1:
	testl     %edi, %edi
	js        .L08049758
.L080496C9:
	movl      48(%esp), %eax
	movl      12(%eax), %edx
	movl      8(%eax), %eax
.L080496D3:
	movl      %edi, %ebx
	orl       %esi, %ebx
	je        .L080496EA
.L080496D9:
	movl      48(%esp), %ebx
	movl      $1, 84(%ebx)
	movl      %esi, 76(%ebx)
	movl      %edi, 80(%ebx)
.L080496EA:
	addl      %esi, %eax
	adcl      %edi, %edx
.L080496EE:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080496F6:
	.p2align 4
.L08049700:
	movl      48(%esp), %ebx
	subl      8(%ebx), %esi
	sbbl      12(%ebx), %edi
	jmp       .L080496AF
.L0804970C:
	.p2align 4,,10
	.p2align 3
.L08049710:
	cmpl      $1, 48(%ebx)
	jne       .L08049888
.L0804971A:
	movl      8(%ebx), %ecx
	movl      12(%ebx), %ebx
	movl      %ecx, %eax
	movl      %ebx, %edx
	addl      %esi, %eax
	adcl      %edi, %edx
	testl     %edx, %edx
	jns       .L080498A8
.L08049730:
	testl     %edi, %edi
	jns       .L08049826
.L08049738:
	.p2align 4
.L08049740:
	addl      $28, %esp
	movl      $-1, %eax
	movl      $-1, %edx
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049752:
	.p2align 4,,10
	.p2align 3
.L08049758:
	testb     %dl, %dl
	jne       .L08049740
.L0804975C:
	movl      48(%esp), %eax
	movl      8(%eax), %ecx
	movl      12(%eax), %ebx
.L08049766:
	addl      %ecx, %esi
	adcl      %ebx, %edi
	testl     %edi, %edi
	js        .L08049740
.L0804976E:
	pushl     $0
	movl      52(%esp), %eax
	pushl     56(%eax)
	pushl     52(%eax)
	movl      60(%esp), %eax
	pushl     20(%eax)
	call      lseek64
.L08049786:
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049740
.L08049790:
	movl      48(%esp), %eax
	movl      $0, (%eax)
	movl      16(%eax), %eax
	cmpl      $7247, %eax
	jne       .L080497BD
.L080497A4:
	movl      48(%esp), %edx
	movl      $0, 60(%edx)
	movl      $0, 64(%edx)
	movl      $0, 48(%edx)
.L080497BD:
	movl      48(%esp), %edx
	movl      $0, 84(%edx)
	movl      92(%edx), %edx
	testl     %edx, %edx
	je        .L080497F7
.L080497CF:
	movl      48(%esp), %ebx
	cmpl      $-4, 88(%ebx)
	je        .L080497EC
.L080497D9:
	subl      $12, %esp
	pushl     %edx
	call      free
.L080497E2:
	movl      64(%esp), %eax
	addl      $16, %esp
	movl      16(%eax), %eax
.L080497EC:
	movl      48(%esp), %edx
	movl      $0, 92(%edx)
.L080497F7:
	movl      48(%esp), %edx
	cmpl      $7247, %eax
	movl      $0, 88(%edx)
	movl      $0, 8(%edx)
	movl      $0, 12(%edx)
	movl      $0, 100(%edx)
	jne       .L08049948
.L08049822:
	xorl      %ecx, %ecx
	xorl      %ebx, %ebx
.L08049826:
	movl      48(%esp), %eax
	cmpl      $0, %edi
	movl      $0, 12(%esp)
	movl      (%eax), %eax
	movl      %eax, 8(%esp)
	jg        .L080498A0
.L0804983D:
	jl        .L08049845
.L0804983F:
	cmpl      8(%esp), %esi
	jae       .L080498A0
.L08049845:
	subl      %esi, %eax
	movl      %esi, 8(%esp)
	movl      $0, 12(%esp)
	movl      %eax, %ebp
	movl      %esi, %eax
.L08049857:
	movl      48(%esp), %edx
	addl      %eax, 4(%edx)
	movl      %ecx, %eax
	movl      8(%esp), %ecx
	movl      %ebp, (%edx)
	movl      %ebx, %edx
	movl      12(%esp), %ebx
	movl      48(%esp), %ebp
	addl      %ecx, %eax
	adcl      %ebx, %edx
	subl      %ecx, %esi
	movl      %eax, 8(%ebp)
	movl      %edx, 12(%ebp)
	sbbl      %ebx, %edi
	jmp       .L080496D3
.L08049883:
	.p2align 4,,10
	.p2align 3
.L08049888:
	movl      48(%esp), %eax
	testl     %edi, %edi
	movl      8(%eax), %ecx
	movl      12(%eax), %ebx
	jns       .L08049826
.L08049896:
	jmp       .L08049766
.L0804989B:
	.p2align 4,,10
	.p2align 3
.L080498A0:
	xorl      %ebp, %ebp
	jmp       .L08049857
.L080498A4:
	.p2align 4,,10
	.p2align 3
.L080498A8:
	pushl     $1
	movl      52(%esp), %eax
	movl      %esi, %ecx
	xorl      %edx, %edx
	movl      %edi, %ebx
	movl      (%eax), %eax
	subl      %eax, %ecx
	sbbl      %edx, %ebx
	pushl     %ebx
	pushl     %ecx
	movl      60(%esp), %eax
	pushl     20(%eax)
	call      lseek64
.L080498C8:
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049740
.L080498D6:
	movl      48(%esp), %eax
	movl      $0, (%eax)
	movl      $0, 60(%eax)
	movl      $0, 64(%eax)
	movl      $0, 84(%eax)
	movl      92(%eax), %eax
	testl     %eax, %eax
	je        .L0804991D
.L080498FC:
	movl      48(%esp), %edx
	cmpl      $-4, 88(%edx)
	je        .L08049912
.L08049906:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804990F:
	addl      $16, %esp
.L08049912:
	movl      48(%esp), %eax
	movl      $0, 92(%eax)
.L0804991D:
	movl      48(%esp), %eax
	movl      %edi, %edx
	movl      48(%esp), %edi
	movl      $0, 88(%eax)
	movl      $0, 100(%eax)
	movl      %esi, %eax
	addl      8(%edi), %eax
	adcl      12(%edi), %edx
	movl      %eax, 8(%edi)
	movl      %edx, 12(%edi)
	jmp       .L080496EE
.L08049948:
	xorl      %eax, %eax
	xorl      %edx, %edx
	jmp       .L080496D3
	.size	gzseek64, .-gzseek64
# ----------------------
.L08049951:
	.p2align 4
# ----------------------
	.globl	gzseek
	.type	gzseek, @function
gzseek:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	movl      48(%esp), %ebx
	movl      56(%esp), %ebp
	movl      %esi, %edi
	sarl      $31, %edi
	testl     %ebx, %ebx
	je        .L08049A80
.L08049980:
	movl      48(%esp), %eax
	movl      16(%eax), %eax
	cmpl      $7247, %eax
	setne     %dl
	cmpl      $31153, %eax
	je        .L0804999E
.L08049996:
	testb     %dl, %dl
	jne       .L08049A80
.L0804999E:
	movl      48(%esp), %ebx
	movl      88(%ebx), %ecx
	cmpl      $-5, %ecx
	je        .L080499B2
.L080499AA:
	testl     %ecx, %ecx
	jne       .L08049A80
.L080499B2:
	cmpl      $1, %ebp
	ja        .L08049A80
.L080499BB:
	testl     %ebp, %ebp
	movl      48(%esp), %ebx
	je        .L08049A30
.L080499C3:
	movl      84(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L080499D4
.L080499CA:
	addl      76(%ebx), %esi
	adcl      80(%ebx), %edi
	movl      48(%esp), %ebx
.L080499D4:
	cmpl      $7247, %eax
	movl      $0, 84(%ebx)
	je        .L08049A44
.L080499E2:
	testl     %edi, %edi
	js        .L08049A90
.L080499EA:
	movl      48(%esp), %eax
	movl      12(%eax), %edx
	movl      8(%eax), %eax
.L080499F4:
	movl      %edi, %ecx
	orl       %esi, %ecx
	je        .L08049A0B
.L080499FA:
	movl      48(%esp), %ebx
	movl      $1, 84(%ebx)
	movl      %esi, 76(%ebx)
	movl      %edi, 80(%ebx)
.L08049A0B:
	addl      %eax, %esi
	adcl      %edx, %edi
.L08049A0F:
	movl      %esi, %ebx
	xorl      %eax, %eax
	movl      %esi, %edx
	sarl      $31, %ebx
	cmpl      %edi, %ebx
	sete      %al
	addl      $28, %esp
	subl      $1, %eax
	orl       %eax, %edx
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049A2C:
	.p2align 4,,10
	.p2align 3
.L08049A30:
	subl      8(%ebx), %esi
	movl      $0, 84(%ebx)
	sbbl      12(%ebx), %edi
	cmpl      $7247, %eax
	jne       .L080499E2
.L08049A44:
	cmpl      $1, 48(%ebx)
	je        .L08049A60
.L08049A4A:
	movl      48(%esp), %eax
	testl     %edi, %edi
	movl      8(%eax), %ecx
	movl      12(%eax), %ebx
	jns       .L08049B5C
.L08049A5C:
	jmp       .L08049A9E
.L08049A5E:
	.p2align 4,,10
	.p2align 3
.L08049A60:
	movl      8(%ebx), %ecx
	movl      12(%ebx), %ebx
	movl      %ecx, %eax
	movl      %ebx, %edx
	addl      %esi, %eax
	adcl      %edi, %edx
	testl     %edx, %edx
	jns       .L08049BC8
.L08049A76:
	testl     %edi, %edi
	jns       .L08049B5C
.L08049A7E:
	.p2align 4,,10
	.p2align 3
.L08049A80:
	addl      $28, %esp
	movl      $-1, %edx
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049A8F:
	.p2align 4,,10
	.p2align 3
.L08049A90:
	testb     %dl, %dl
	jne       .L08049A80
.L08049A94:
	movl      48(%esp), %eax
	movl      8(%eax), %ecx
	movl      12(%eax), %ebx
.L08049A9E:
	addl      %ecx, %esi
	adcl      %ebx, %edi
	testl     %edi, %edi
	js        .L08049A80
.L08049AA6:
	pushl     $0
	movl      52(%esp), %eax
	pushl     56(%eax)
	pushl     52(%eax)
	movl      60(%esp), %eax
	pushl     20(%eax)
	call      lseek64
.L08049ABE:
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049A80
.L08049AC8:
	movl      48(%esp), %eax
	movl      $0, (%eax)
	movl      16(%eax), %eax
	cmpl      $7247, %eax
	jne       .L08049AF5
.L08049ADC:
	movl      48(%esp), %ecx
	movl      $0, 60(%ecx)
	movl      $0, 64(%ecx)
	movl      $0, 48(%ecx)
.L08049AF5:
	movl      48(%esp), %edx
	movl      $0, 84(%edx)
	movl      %edx, %ebx
	movl      92(%edx), %edx
	testl     %edx, %edx
	je        .L08049B2D
.L08049B09:
	cmpl      $-4, 88(%ebx)
	je        .L08049B22
.L08049B0F:
	subl      $12, %esp
	pushl     %edx
	call      free
.L08049B18:
	movl      64(%esp), %eax
	addl      $16, %esp
	movl      16(%eax), %eax
.L08049B22:
	movl      48(%esp), %ebx
	movl      $0, 92(%ebx)
.L08049B2D:
	movl      48(%esp), %edx
	cmpl      $7247, %eax
	movl      $0, 88(%edx)
	movl      $0, 8(%edx)
	movl      $0, 12(%edx)
	movl      $0, 100(%edx)
	jne       .L08049C60
.L08049B58:
	xorl      %ecx, %ecx
	xorl      %ebx, %ebx
.L08049B5C:
	movl      48(%esp), %eax
	movl      $0, 12(%esp)
	cmpl      %edi, 12(%esp)
	movl      (%eax), %eax
	movl      %eax, 8(%esp)
	jl        .L08049BC0
.L08049B74:
	jg        .L08049B7C
.L08049B76:
	cmpl      %esi, 8(%esp)
	jbe       .L08049BC0
.L08049B7C:
	subl      %esi, %eax
	movl      %esi, 8(%esp)
	movl      $0, 12(%esp)
	movl      %eax, %ebp
	movl      %esi, %eax
.L08049B8E:
	movl      48(%esp), %edx
	addl      %eax, 4(%edx)
	movl      %ecx, %eax
	movl      8(%esp), %ecx
	movl      %ebp, (%edx)
	movl      %ebx, %edx
	movl      12(%esp), %ebx
	movl      48(%esp), %ebp
	addl      %ecx, %eax
	adcl      %ebx, %edx
	subl      %ecx, %esi
	movl      %eax, 8(%ebp)
	movl      %edx, 12(%ebp)
	sbbl      %ebx, %edi
	jmp       .L080499F4
.L08049BBA:
	.p2align 4,,10
	.p2align 3
.L08049BC0:
	xorl      %ebp, %ebp
	jmp       .L08049B8E
.L08049BC4:
	.p2align 4,,10
	.p2align 3
.L08049BC8:
	pushl     $1
	movl      52(%esp), %eax
	movl      %esi, %ecx
	xorl      %edx, %edx
	movl      %edi, %ebx
	movl      (%eax), %eax
	subl      %eax, %ecx
	sbbl      %edx, %ebx
	pushl     %ebx
	pushl     %ecx
	movl      60(%esp), %eax
	pushl     20(%eax)
	call      lseek64
.L08049BE8:
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049A80
.L08049BF6:
	movl      48(%esp), %eax
	movl      $0, (%eax)
	movl      $0, 60(%eax)
	movl      $0, 64(%eax)
	movl      $0, 84(%eax)
	movl      92(%eax), %eax
	testl     %eax, %eax
	je        .L08049C3D
.L08049C1C:
	movl      48(%esp), %edx
	cmpl      $-4, 88(%edx)
	je        .L08049C32
.L08049C26:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08049C2F:
	addl      $16, %esp
.L08049C32:
	movl      48(%esp), %eax
	movl      $0, 92(%eax)
.L08049C3D:
	movl      48(%esp), %eax
	addl      8(%eax), %esi
	movl      $0, 88(%eax)
	adcl      12(%eax), %edi
	movl      $0, 100(%eax)
	movl      %esi, 8(%eax)
	movl      %edi, 12(%eax)
	jmp       .L08049A0F
.L08049C60:
	xorl      %eax, %eax
	xorl      %edx, %edx
	jmp       .L080499F4
	.size	gzseek, .-gzseek
# ----------------------
.L08049C69:
	.p2align 4
# ----------------------
	.globl	gztell64
	.type	gztell64, @function
gztell64:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edx
	testl     %edx, %edx
	je        .L08049CC0
.L08049C7B:
	movl      16(%edx), %eax
	cmpl      $31153, %eax
	je        .L08049C8C
.L08049C85:
	cmpl      $7247, %eax
	jne       .L08049CC0
.L08049C8C:
	movl      84(%edx), %eax
	xorl      %ecx, %ecx
	xorl      %ebx, %ebx
	movl      8(%edx), %esi
	movl      12(%edx), %edi
	testl     %eax, %eax
	jne       .L08049CB0
.L08049C9D:
	movl      %esi, %eax
	movl      %edi, %edx
	addl      %ecx, %eax
	adcl      %ebx, %edx
.L08049CA5:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08049CA9:
	.p2align 4
.L08049CB0:
	movl      76(%edx), %ecx
	movl      80(%edx), %ebx
	jmp       .L08049C9D
.L08049CB8:
	.p2align 4
.L08049CC0:
	movl      $-1, %eax
	movl      $-1, %edx
	jmp       .L08049CA5
	.size	gztell64, .-gztell64
# ----------------------
.L08049CCC:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gztell
	.type	gztell, @function
gztell:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %edx
	testl     %edx, %edx
	je        .L08049D38
.L08049CDB:
	movl      16(%edx), %ecx
	cmpl      $31153, %ecx
	je        .L08049D00
.L08049CE6:
	cmpl      $7247, %ecx
	movl      $-1, %eax
	je        .L08049D00
.L08049CF3:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08049CF7:
	.p2align 4
.L08049D00:
	movl      84(%edx), %eax
	xorl      %ecx, %ecx
	xorl      %ebx, %ebx
	movl      8(%edx), %esi
	movl      12(%edx), %edi
	testl     %eax, %eax
	je        .L08049D17
.L08049D11:
	movl      76(%edx), %ecx
	movl      80(%edx), %ebx
.L08049D17:
	movl      %esi, %eax
	movl      %edi, %edx
	addl      %ecx, %eax
	adcl      %ebx, %edx
	movl      %eax, %ebx
	sarl      $31, %ebx
	cmpl      %edx, %ebx
	sete      %dl
	movzbl    %dl, %edx
	subl      $1, %edx
	popl      %ebx
	orl       %edx, %eax
	popl      %esi
	popl      %edi
	ret       
.L08049D35:
	.p2align 4,,10
	.p2align 3
.L08049D38:
	popl      %ebx
	movl      $-1, %eax
	popl      %esi
	popl      %edi
	ret       
	.size	gztell, .-gztell
# ----------------------
.L08049D41:
	.p2align 4
# ----------------------
	.globl	gzoffset64
	.type	gzoffset64, @function
gzoffset64:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08049DB0
.L08049D5D:
	movl      16(%ebx), %eax
	cmpl      $31153, %eax
	je        .L08049D6E
.L08049D67:
	cmpl      $7247, %eax
	jne       .L08049DB0
.L08049D6E:
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     20(%ebx)
	call      lseek64
.L08049D7C:
	movl      %eax, %esi
	andl      %edx, %eax
	addl      $16, %esp
	cmpl      $-1, %eax
	je        .L08049DB0
.L08049D88:
	cmpl      $7247, 16(%ebx)
	movl      %esi, %eax
	je        .L08049DA0
.L08049D93:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08049D99:
	.p2align 4
.L08049DA0:
	movl      100(%ebx), %ecx
	xorl      %ebx, %ebx
	subl      %ecx, %eax
	sbbl      %ebx, %edx
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08049DAF:
	.p2align 4,,10
	.p2align 3
.L08049DB0:
	addl      $4, %esp
	movl      $-1, %eax
	movl      $-1, %edx
	popl      %ebx
	popl      %esi
	ret       
	.size	gzoffset64, .-gzoffset64
# ----------------------
	.globl	gzoffset
	.type	gzoffset, @function
gzoffset:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08049E30
.L08049DCC:
	movl      16(%ebx), %eax
	cmpl      $31153, %eax
	je        .L08049DDD
.L08049DD6:
	cmpl      $7247, %eax
	jne       .L08049E30
.L08049DDD:
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     20(%ebx)
	call      lseek64
.L08049DEB:
	movl      %eax, %ecx
	addl      $16, %esp
	andl      %edx, %ecx
	cmpl      $-1, %ecx
	je        .L08049E30
.L08049DF7:
	cmpl      $7247, 16(%ebx)
	je        .L08049E20
.L08049E00:
	movl      %eax, %ecx
	movl      %edx, %ebx
.L08049E04:
	movl      %ecx, %eax
	cltd      
	xorl      %eax, %eax
	cmpl      %edx, %ebx
	sete      %al
	addl      $8, %esp
	subl      $1, %eax
	orl       %ecx, %eax
	popl      %ebx
	ret       
.L08049E18:
	.p2align 4
.L08049E20:
	movl      100(%ebx), %ecx
	xorl      %ebx, %ebx
	subl      %ecx, %eax
	sbbl      %ebx, %edx
	movl      %eax, %ecx
	movl      %edx, %ebx
	jmp       .L08049E04
.L08049E2F:
	.p2align 4,,10
	.p2align 3
.L08049E30:
	addl      $8, %esp
	movl      $-1, %eax
	popl      %ebx
	ret       
	.size	gzoffset, .-gzoffset
# ----------------------
.L08049E3A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzeof
	.type	gzeof, @function
gzeof:
	movl      4(%esp), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L08049E53
.L08049E4A:
	cmpl      $7247, 16(%edx)
	je        .L08049E58
.L08049E53:
	rep; ret       
.L08049E55:
	.p2align 4,,10
	.p2align 3
.L08049E58:
	movl      64(%edx), %eax
	ret       
	.size	gzeof, .-gzeof
# ----------------------
.L08049E5C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzerror
	.type	gzerror, @function
gzerror:
	movl      4(%esp), %edx
	movl      8(%esp), %eax
	testl     %edx, %edx
	je        .L08049EB0
.L08049E6C:
	movl      16(%edx), %ecx
	cmpl      $31153, %ecx
	je        .L08049E7F
.L08049E77:
	cmpl      $7247, %ecx
	jne       .L08049EB0
.L08049E7F:
	testl     %eax, %eax
	je        .L08049E88
.L08049E83:
	movl      88(%edx), %ecx
	movl      %ecx, (%eax)
.L08049E88:
	cmpl      $-4, 88(%edx)
	movl      $.LC08058674, %eax
	je        .L08049EA5
.L08049E93:
	movl      92(%edx), %eax
	testl     %eax, %eax
	je        .L08049EA0
.L08049E9A:
	rep; ret       
.L08049E9C:
	.p2align 4,,10
	.p2align 3
.L08049EA0:
	movl      $.LC08058617, %eax
.L08049EA5:
	rep; ret       
.L08049EA7:
	.p2align 4
.L08049EB0:
	xorl      %eax, %eax
	ret       
	.size	gzerror, .-gzerror
# ----------------------
.L08049EB3:
	.p2align 4
# ----------------------
	.globl	gzclearerr
	.type	gzclearerr, @function
gzclearerr:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08049EDD
.L08049ECC:
	movl      16(%ebx), %eax
	cmpl      $31153, %eax
	je        .L08049EE8
.L08049ED6:
	cmpl      $7247, %eax
	je        .L08049EE8
.L08049EDD:
	addl      $8, %esp
	popl      %ebx
	ret       
.L08049EE2:
	.p2align 4,,10
	.p2align 3
.L08049EE8:
	cmpl      $7247, %eax
	je        .L08049F20
.L08049EEF:
	movl      92(%ebx), %eax
	testl     %eax, %eax
	je        .L08049F0F
.L08049EF6:
	cmpl      $-4, 88(%ebx)
	je        .L08049F08
.L08049EFC:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08049F05:
	addl      $16, %esp
.L08049F08:
	movl      $0, 92(%ebx)
.L08049F0F:
	movl      $0, 88(%ebx)
	addl      $8, %esp
	popl      %ebx
	ret       
.L08049F1B:
	.p2align 4,,10
	.p2align 3
.L08049F20:
	movl      92(%ebx), %eax
	movl      $0, 60(%ebx)
	movl      $0, 64(%ebx)
	testl     %eax, %eax
	jne       .L08049EF6
.L08049F35:
	jmp       .L08049F0F
	.size	gzclearerr, .-gzclearerr
# ----------------------
.L08049F37:
	.p2align 4
# ----------------------
	.hidden	gz_error
	.globl	gz_error
	.type	gz_error, @function
gz_error:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %ebx
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	movl      92(%ebx), %eax
	testl     %eax, %eax
	je        .L08049F73
.L08049F5A:
	cmpl      $-4, 88(%ebx)
	je        .L08049F6C
.L08049F60:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08049F69:
	addl      $16, %esp
.L08049F6C:
	movl      $0, 92(%ebx)
.L08049F73:
	cmpl      $-5, %esi
	je        .L08049F82
.L08049F78:
	testl     %esi, %esi
	je        .L08049F82
.L08049F7C:
	movl      $0, (%ebx)
.L08049F82:
	cmpl      $-4, %esi
	movl      %esi, 88(%ebx)
	je        .L08049FEB
.L08049F8A:
	testl     %edi, %edi
	je        .L08049FEB
.L08049F8E:
	movl      24(%ebx), %ebp
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L08049F9A:
	movl      %eax, %esi
	movl      %edi, (%esp)
	call      strlen
.L08049FA4:
	leal      3(%esi,%eax), %eax
	movl      %eax, (%esp)
	call      malloc
.L08049FB0:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	movl      %eax, 92(%ebx)
	je        .L08049FF8
.L08049FBC:
	subl      $12, %esp
	pushl     %ebp
	call      strlen
.L08049FC5:
	movl      %eax, %ebx
	movl      %edi, (%esp)
	call      strlen
.L08049FCF:
	popl      %edx
	leal      3(%ebx,%eax), %eax
	popl      %ecx
	pushl     %edi
	pushl     $.LC08058682
	pushl     %ebp
	pushl     $.LC08058685
	pushl     %eax
	pushl     %esi
	call      snprintf
.L08049FE8:
	addl      $32, %esp
.L08049FEB:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08049FF3:
	.p2align 4,,10
	.p2align 3
.L08049FF8:
	movl      $-4, 88(%ebx)
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	gz_error, .-gz_error
# ----------------------
.L0804A007:
	.p2align 4
# ----------------------
	.local	gz_look
	.type	gz_look, @function
gz_look:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	leal      96(%eax), %eax
	subl      $28, %esp
	movl      28(%ebx), %ebp
	movl      %eax, 8(%esp)
	testl     %ebp, %ebp
	je        .L0804A0A0
.L0804A027:
	movl      100(%ebx), %ebp
	cmpl      $1, %ebp
	jbe       .L0804A190
.L0804A033:
	movl      96(%ebx), %eax
	cmpb      $31, (%eax)
	je        .L0804A160
.L0804A03F:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	je        .L0804A080
.L0804A046:
	movl      40(%ebx), %edx
	movl      %edx, 4(%ebx)
.L0804A04C:
	subl      $4, %esp
	pushl     %ebp
	pushl     %eax
	pushl     %edx
	call      memcpy
.L0804A057:
	movl      100(%ebx), %eax
	addl      $16, %esp
	movl      $0, 100(%ebx)
	movl      $1, 48(%ebx)
	movl      $1, 44(%ebx)
	movl      %eax, (%ebx)
	addl      $28, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A07E:
	.p2align 4,,10
	.p2align 3
.L0804A080:
	movl      $0, 100(%ebx)
	movl      $1, 60(%ebx)
	xorl      %eax, %eax
	movl      $0, (%ebx)
.L0804A096:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A09E:
	.p2align 4,,10
	.p2align 3
.L0804A0A0:
	movl      32(%ebx), %esi
	subl      $12, %esp
	pushl     %esi
	call      malloc
.L0804A0AC:
	movl      %eax, %ebp
	movl      %eax, 36(%ebx)
	leal      (%esi,%esi), %eax
	movl      %eax, (%esp)
	call      malloc
.L0804A0BC:
	addl      $16, %esp
	testl     %ebp, %ebp
	movl      %eax, 40(%ebx)
	je        .L0804A267
.L0804A0CA:
	testl     %eax, %eax
	je        .L0804A253
.L0804A0D2:
	pushl     $56
	pushl     $.LC080587C4
	pushl     $31
	pushl     20(%esp)
	movl      %esi, 28(%ebx)
	movl      $0, 128(%ebx)
	movl      $0, 132(%ebx)
	movl      $0, 136(%ebx)
	movl      $0, 100(%ebx)
	movl      $0, 96(%ebx)
	call      inflateInit2_
.L0804A113:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804A027
.L0804A11E:
	subl      $12, %esp
	pushl     40(%ebx)
	call      free
.L0804A129:
	popl      %edi
	pushl     36(%ebx)
	call      free
.L0804A132:
	movl      $0, 28(%ebx)
	addl      $12, %esp
.L0804A13C:
	pushl     $.LC08058674
	pushl     $-4
	pushl     %ebx
	call      gz_error
.L0804A149:
	addl      $16, %esp
.L0804A14C:
	movl      $-1, %eax
	jmp       .L0804A096
.L0804A156:
	.p2align 4
.L0804A160:
	cmpb      $139, 1(%eax)
	jne       .L0804A03F
.L0804A16A:
	subl      $12, %esp
	pushl     20(%esp)
	call      inflateReset
.L0804A176:
	movl      $2, 48(%ebx)
	movl      $0, 44(%ebx)
	addl      $16, %esp
	xorl      %eax, %eax
	jmp       .L0804A096
.L0804A18E:
	.p2align 4,,10
	.p2align 3
.L0804A190:
	movl      88(%ebx), %eax
	cmpl      $-5, %eax
	je        .L0804A19C
.L0804A198:
	testl     %eax, %eax
	jne       .L0804A14C
.L0804A19C:
	movl      60(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804A248
.L0804A1A7:
	testl     %ebp, %ebp
	jne       .L0804A230
.L0804A1AF:
	movl      28(%ebx), %esi
	movl      36(%ebx), %eax
	xorl      %edi, %edi
	subl      %ebp, %esi
	movl      %eax, 12(%esp)
	jmp       .L0804A1C6
.L0804A1BF:
	.p2align 4,,10
	.p2align 3
.L0804A1C0:
	addl      %eax, %edi
	cmpl      %edi, %esi
	jbe       .L0804A1F3
.L0804A1C6:
	movl      %esi, %eax
	subl      $4, %esp
	subl      %edi, %eax
	pushl     %eax
	leal      (%edi,%ebp), %eax
	addl      20(%esp), %eax
	pushl     %eax
	pushl     20(%ebx)
	call      read
.L0804A1DE:
	addl      $16, %esp
	cmpl      $0, %eax
	jg        .L0804A1C0
.L0804A1E6:
	jne       .L0804A279
.L0804A1EC:
	movl      $1, 60(%ebx)
.L0804A1F3:
	addl      100(%ebx), %edi
	movl      36(%ebx), %eax
	movl      %eax, 96(%ebx)
	testl     %edi, %edi
	movl      %edi, %ebp
	movl      %edi, 100(%ebx)
	je        .L0804A24C
.L0804A205:
	cmpl      $1, %ebp
	jne       .L0804A033
.L0804A20E:
	movl      44(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A080
.L0804A219:
	movl      40(%ebx), %edx
	movl      $1, %ebp
	movl      96(%ebx), %eax
	movl      %edx, 4(%ebx)
	jmp       .L0804A04C
.L0804A22C:
	.p2align 4,,10
	.p2align 3
.L0804A230:
	movl      96(%ebx), %edx
	movl      36(%ebx), %eax
	movzbl    (%edx), %edx
	movb      %dl, (%eax)
	movl      100(%ebx), %ebp
	jmp       .L0804A1AF
.L0804A243:
	.p2align 4,,10
	.p2align 3
.L0804A248:
	testl     %ebp, %ebp
	jne       .L0804A20E
.L0804A24C:
	xorl      %eax, %eax
	jmp       .L0804A096
.L0804A253:
	subl      $12, %esp
	pushl     %ebp
	call      free
.L0804A25C:
	addl      $16, %esp
.L0804A25F:
	subl      $4, %esp
	jmp       .L0804A13C
.L0804A267:
	testl     %eax, %eax
	je        .L0804A25F
.L0804A26B:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804A274:
	addl      $16, %esp
	jmp       .L0804A25F
.L0804A279:
	call      __errno_location
.L0804A27E:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804A288:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804A294:
	addl      $16, %esp
	orl       $-1, %eax
	jmp       .L0804A096
	.size	gz_look, .-gz_look
# ----------------------
.L0804A29F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	gz_decomp
	.type	gz_decomp, @function
gz_decomp:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %ebp
	pushl     %esi
	pushl     %ebx
	leal      96(%eax), %eax
	subl      $28, %esp
	movl      %eax, 8(%esp)
	movl      112(%ebp), %eax
	movl      %eax, 12(%esp)
	jmp       .L0804A303
.L0804A2B9:
	.p2align 4
.L0804A2C0:
	subl      $8, %esp
	pushl     $0
	pushl     20(%esp)
	call      inflate
.L0804A2CE:
	leal      2(%eax), %edx
	addl      $16, %esp
	andl      $-5, %edx
	je        .L0804A3A9
.L0804A2DD:
	cmpl      $-4, %eax
	je        .L0804A3CB
.L0804A2E6:
	cmpl      $-3, %eax
	je        .L0804A3ED
.L0804A2EF:
	movl      112(%ebp), %edx
	testl     %edx, %edx
	je        .L0804A412
.L0804A2FA:
	cmpl      $1, %eax
	je        .L0804A442
.L0804A303:
	movl      100(%ebp), %edx
	testl     %edx, %edx
	jne       .L0804A2C0
.L0804A30A:
	movl      88(%ebp), %eax
	cmpl      $-5, %eax
	je        .L0804A31A
.L0804A312:
	testl     %eax, %eax
	jne       .L0804A45E
.L0804A31A:
	movl      60(%ebp), %eax
	testl     %eax, %eax
	jne       .L0804A378
.L0804A321:
	movl      28(%ebp), %ebx
	movl      36(%ebp), %esi
	xorl      %edi, %edi
	jmp       .L0804A336
.L0804A32B:
	.p2align 4,,10
	.p2align 3
.L0804A330:
	addl      %eax, %edi
	cmpl      %edi, %ebx
	jbe       .L0804A35F
.L0804A336:
	movl      %ebx, %eax
	subl      $4, %esp
	subl      %edi, %eax
	pushl     %eax
	leal      (%esi,%edi), %eax
	pushl     %eax
	pushl     20(%ebp)
	call      read
.L0804A34A:
	addl      $16, %esp
	cmpl      $0, %eax
	jg        .L0804A330
.L0804A352:
	jne       .L0804A46F
.L0804A358:
	movl      $1, 60(%ebp)
.L0804A35F:
	movl      100(%ebp), %edx
	movl      36(%ebp), %eax
	addl      %edi, %edx
	movl      %eax, 96(%ebp)
	testl     %edx, %edx
	movl      %edx, 100(%ebp)
	jne       .L0804A2C0
.L0804A375:
	.p2align 4,,10
	.p2align 3
.L0804A378:
	subl      $4, %esp
	pushl     $.LC080587E0
	pushl     $-5
	pushl     %ebp
	call      gz_error
.L0804A388:
	movl      28(%esp), %eax
	subl      112(%ebp), %eax
	addl      $16, %esp
	movl      108(%ebp), %ecx
	xorl      %edx, %edx
	subl      %eax, %ecx
	movl      %eax, (%ebp)
	movl      %ecx, 4(%ebp)
.L0804A39F:
	addl      $28, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A3A9:
	subl      $4, %esp
	pushl     $.LC080587F8
	pushl     $-2
	pushl     %ebp
	call      gz_error
.L0804A3B9:
	addl      $16, %esp
	movl      $-1, %edx
	addl      $28, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A3CB:
	subl      $4, %esp
	pushl     $.LC08058674
	pushl     $-4
	pushl     %ebp
	call      gz_error
.L0804A3DB:
	addl      $16, %esp
	movl      $-1, %edx
	addl      $28, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A3ED:
	movl      120(%ebp), %eax
	testl     %eax, %eax
	je        .L0804A468
.L0804A3F4:
	subl      $4, %esp
	pushl     %eax
	pushl     $-3
	pushl     %ebp
	call      gz_error
.L0804A400:
	addl      $16, %esp
	movl      $-1, %edx
	addl      $28, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A412:
	movl      12(%esp), %ecx
	movl      108(%ebp), %edx
	subl      %ecx, %edx
	movl      %ecx, (%ebp)
	movl      %edx, 4(%ebp)
	xorl      %edx, %edx
	cmpl      $1, %eax
	jne       .L0804A39F
.L0804A42C:
	movl      $0, 48(%ebp)
	xorl      %edx, %edx
	.p2align 4,,10
	.p2align 3
.L0804A438:
	addl      $28, %esp
	movl      %edx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A442:
	movl      12(%esp), %eax
	movl      108(%ebp), %ecx
	movl      $0, 48(%ebp)
	subl      %edx, %eax
	xorl      %edx, %edx
	subl      %eax, %ecx
	movl      %eax, (%ebp)
	movl      %ecx, 4(%ebp)
	jmp       .L0804A438
.L0804A45E:
	movl      $-1, %edx
	jmp       .L0804A39F
.L0804A468:
	movl      $.LC080587CA, %eax
	jmp       .L0804A3F4
.L0804A46F:
	call      __errno_location
.L0804A474:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804A47E:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebp
	call      gz_error
.L0804A48A:
	addl      $16, %esp
	movl      $-1, %edx
	jmp       .L0804A39F
	.size	gz_decomp, .-gz_decomp
# ----------------------
.L0804A497:
	.p2align 4
# ----------------------
	.local	gz_fetch
	.type	gz_fetch, @function
gz_fetch:
	pushl     %edi
	pushl     %esi
	movl      %eax, %edi
	pushl     %ebx
.L0804A4A5:
	movl      48(%edi), %eax
	cmpl      $1, %eax
	je        .L0804A520
.L0804A4AD:
	cmpl      $2, %eax
	je        .L0804A4F8
.L0804A4B2:
	testl     %eax, %eax
	je        .L0804A4E0
.L0804A4B6:
	movl      (%edi), %ecx
	testl     %ecx, %ecx
	jne       .L0804A4D0
.L0804A4BC:
	movl      60(%edi), %edx
	testl     %edx, %edx
	je        .L0804A4A5
.L0804A4C3:
	movl      100(%edi), %eax
	testl     %eax, %eax
	jne       .L0804A4A5
.L0804A4CA:
	.p2align 4,,10
	.p2align 3
.L0804A4D0:
	xorl      %eax, %eax
.L0804A4D2:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0804A4D6:
	.p2align 4
.L0804A4E0:
	movl      %edi, %eax
	call      gz_look
.L0804A4E7:
	cmpl      $-1, %eax
	je        .L0804A512
.L0804A4EC:
	movl      48(%edi), %ebx
	testl     %ebx, %ebx
	jne       .L0804A4B6
.L0804A4F3:
	jmp       .L0804A4D0
.L0804A4F5:
	.p2align 4,,10
	.p2align 3
.L0804A4F8:
	movl      28(%edi), %eax
	addl      %eax, %eax
	movl      %eax, 112(%edi)
	movl      40(%edi), %eax
	movl      %eax, 108(%edi)
	movl      %edi, %eax
	call      gz_decomp
.L0804A50D:
	cmpl      $-1, %eax
	jne       .L0804A4B6
.L0804A512:
	movl      $-1, %eax
	jmp       .L0804A4D2
.L0804A519:
	.p2align 4
.L0804A520:
	movl      28(%edi), %eax
	movl      40(%edi), %esi
	xorl      %edx, %edx
	movl      $0, (%edi)
	leal      (%eax,%eax), %ebx
	jmp       .L0804A542
.L0804A533:
	.p2align 4,,10
	.p2align 3
.L0804A538:
	addl      (%edi), %eax
	cmpl      %eax, %ebx
	movl      %eax, %edx
	movl      %eax, (%edi)
	jbe       .L0804A566
.L0804A542:
	movl      %ebx, %eax
	subl      $4, %esp
	subl      %edx, %eax
	addl      %esi, %edx
	pushl     %eax
	pushl     %edx
	pushl     20(%edi)
	call      read
.L0804A555:
	addl      $16, %esp
	cmpl      $0, %eax
	jg        .L0804A538
.L0804A55D:
	jne       .L0804A571
.L0804A55F:
	movl      $1, 60(%edi)
.L0804A566:
	movl      40(%edi), %eax
	movl      %eax, 4(%edi)
	jmp       .L0804A4D0
.L0804A571:
	call      __errno_location
.L0804A576:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804A580:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %edi
	call      gz_error
.L0804A58C:
	addl      $16, %esp
	jmp       .L0804A512
	.size	gz_fetch, .-gz_fetch
# ----------------------
.L0804A591:
	.p2align 4
# ----------------------
	.globl	gzread
	.type	gzread, @function
gzread:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	movl      52(%esp), %edi
	movl      56(%esp), %esi
	testl     %ebp, %ebp
	je        .L0804A6F0
.L0804A5BB:
	cmpl      $7247, 16(%ebp)
	jne       .L0804A6F0
.L0804A5C8:
	movl      88(%ebp), %eax
	cmpl      $-5, %eax
	je        .L0804A5D8
.L0804A5D0:
	testl     %eax, %eax
	jne       .L0804A6F0
.L0804A5D8:
	testl     %esi, %esi
	js        .L0804A6A0
.L0804A5E0:
	movl      $0, %eax
	je        .L0804A6C0
.L0804A5EB:
	movl      84(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L0804A7B0
.L0804A5F6:
	movl      (%ebp), %ecx
.L0804A5F9:
	movl      $0, 12(%esp)
	jmp       .L0804A678
.L0804A603:
	.p2align 4,,10
	.p2align 3
.L0804A608:
	movl      60(%ebp), %edx
	testl     %edx, %edx
	je        .L0804A61A
.L0804A60F:
	movl      100(%ebp), %eax
	testl     %eax, %eax
	je        .L0804A793
.L0804A61A:
	movl      48(%ebp), %edx
	testl     %edx, %edx
	je        .L0804A700
.L0804A625:
	movl      28(%ebp), %eax
	addl      %eax, %eax
	cmpl      %eax, %esi
	jb        .L0804A700
.L0804A632:
	cmpl      $1, %edx
	je        .L0804A718
.L0804A63B:
	movl      %esi, 112(%ebp)
	movl      %edi, 108(%ebp)
	movl      %ebp, %eax
	call      gz_decomp
.L0804A648:
	cmpl      $-1, %eax
	je        .L0804A6F0
.L0804A651:
	movl      (%ebp), %ebx
	movl      $0, (%ebp)
	addl      %ebx, %edi
	subl      %ebx, %esi
.L0804A65F:
	addl      %ebx, 12(%esp)
	movl      %ebx, %ecx
	xorl      %ebx, %ebx
	addl      %ecx, 8(%ebp)
	adcl      %ebx, 12(%ebp)
	testl     %esi, %esi
	je        .L0804A79A
.L0804A675:
	movl      (%ebp), %ecx
.L0804A678:
	testl     %ecx, %ecx
	je        .L0804A608
.L0804A67C:
	cmpl      %esi, %ecx
	movl      %ecx, %ebx
	jbe       .L0804A684
.L0804A682:
	movl      %esi, %ebx
.L0804A684:
	subl      $4, %esp
	subl      %ebx, %esi
	pushl     %ebx
	pushl     4(%ebp)
	pushl     %edi
	addl      %ebx, %edi
	call      memcpy
.L0804A695:
	addl      %ebx, 4(%ebp)
	subl      %ebx, (%ebp)
	addl      $16, %esp
	jmp       .L0804A65F
.L0804A6A0:
	subl      $4, %esp
	pushl     $.LC08058820
	pushl     $-3
	pushl     %ebp
	call      gz_error
.L0804A6B0:
	addl      $16, %esp
	movl      $-1, %eax
	.p2align 4
.L0804A6C0:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A6C8:
	call      __errno_location
.L0804A6CD:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804A6D7:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebp
	call      gz_error
.L0804A6E3:
	addl      $16, %esp
	.p2align 4
.L0804A6F0:
	addl      $28, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A6FD:
	.p2align 4,,10
	.p2align 3
.L0804A700:
	movl      %ebp, %eax
	call      gz_fetch
.L0804A707:
	cmpl      $-1, %eax
	jne       .L0804A675
.L0804A710:
	jmp       .L0804A6F0
.L0804A712:
	.p2align 4,,10
	.p2align 3
.L0804A718:
	movl      %edi, 52(%esp)
	xorl      %ebx, %ebx
	movl      %ebp, 48(%esp)
	movl      %esi, %edi
	jmp       .L0804A736
.L0804A726:
	.p2align 4
.L0804A730:
	addl      %eax, %ebx
	cmpl      %ebx, %edi
	jbe       .L0804A780
.L0804A736:
	movl      52(%esp), %ebp
	movl      %edi, %esi
	subl      $4, %esp
	subl      %ebx, %esi
	pushl     %esi
	addl      %ebx, %ebp
	pushl     %ebp
	movl      60(%esp), %eax
	pushl     20(%eax)
	call      read
.L0804A751:
	addl      $16, %esp
	cmpl      $0, %eax
	jg        .L0804A730
.L0804A759:
	movl      %ebp, %edx
	movl      %esi, %eax
	movl      48(%esp), %ebp
	jne       .L0804A6C8
.L0804A767:
	movl      $1, 60(%ebp)
.L0804A76E:
	movl      %edx, %edi
	movl      %eax, %esi
	jmp       .L0804A65F
.L0804A777:
	.p2align 4
.L0804A780:
	movl      %edi, %esi
	movl      52(%esp), %edi
	movl      48(%esp), %ebp
	subl      %ebx, %esi
	movl      %esi, %eax
	leal      (%edi,%ebx), %edx
	jmp       .L0804A76E
.L0804A793:
	movl      $1, 64(%ebp)
.L0804A79A:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A7A6:
	.p2align 4
.L0804A7B0:
	movl      80(%ebp), %edx
	movl      76(%ebp), %eax
	movl      $0, 84(%ebp)
	movl      %edx, %ecx
	orl       %eax, %ecx
	je        .L0804A5F6
.L0804A7C7:
	movl      (%ebp), %ebx
	movl      %edi, 52(%esp)
	movl      %edx, %edi
	movl      %esi, 56(%esp)
	movl      %eax, %esi
	testl     %ebx, %ebx
	je        .L0804A814
.L0804A7DA:
	.p2align 4,,10
	.p2align 3
.L0804A7E0:
	xorl      %edx, %edx
	movl      %ebx, %eax
	cmpl      %edi, %edx
	jl        .L0804A850
.L0804A7E8:
	jg        .L0804A7EE
.L0804A7EA:
	cmpl      %esi, %ebx
	jbe       .L0804A850
.L0804A7EE:
	subl      %esi, %ebx
	movl      %esi, %eax
	xorl      %edx, %edx
	movl      %ebx, %ecx
	movl      %esi, %ebx
.L0804A7F8:
	addl      %ebx, 4(%ebp)
	addl      %eax, 8(%ebp)
	movl      %ecx, (%ebp)
	adcl      %edx, 12(%ebp)
	subl      %eax, %esi
	sbbl      %edx, %edi
	movl      %edi, %eax
	orl       %esi, %eax
	je        .L0804A839
.L0804A80E:
	movl      %ecx, %ebx
.L0804A810:
	testl     %ebx, %ebx
	jne       .L0804A7E0
.L0804A814:
	movl      60(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804A822
.L0804A81B:
	movl      100(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804A839
.L0804A822:
	movl      %ebp, %eax
	call      gz_fetch
.L0804A829:
	cmpl      $-1, %eax
	je        .L0804A6F0
.L0804A832:
	movl      (%ebp), %ecx
	movl      %ecx, %ebx
	jmp       .L0804A810
.L0804A839:
	movl      52(%esp), %edi
	movl      56(%esp), %esi
	jmp       .L0804A5F9
.L0804A846:
	.p2align 4
.L0804A850:
	xorl      %ecx, %ecx
	jmp       .L0804A7F8
	.size	gzread, .-gzread
# ----------------------
.L0804A854:
	.p2align 4
# ----------------------
	.globl	gzgetc
	.type	gzgetc, @function
gzgetc:
	subl      $28, %esp
	movl      32(%esp), %eax
	testl     %eax, %eax
	je        .L0804A8D0
.L0804A86B:
	cmpl      $7247, 16(%eax)
	jne       .L0804A8D0
.L0804A874:
	movl      88(%eax), %edx
	cmpl      $-5, %edx
	je        .L0804A880
.L0804A87C:
	testl     %edx, %edx
	jne       .L0804A8D0
.L0804A880:
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0804A8A8
.L0804A886:
	subl      $1, %edx
	addl      $1, 8(%eax)
	movl      %edx, (%eax)
	movl      4(%eax), %edx
	adcl      $0, 12(%eax)
	leal      1(%edx), %ecx
	movl      %ecx, 4(%eax)
	movzbl    (%edx), %eax
.L0804A89F:
	addl      $28, %esp
	ret       
.L0804A8A3:
	.p2align 4,,10
	.p2align 3
.L0804A8A8:
	subl      $4, %esp
	pushl     $1
	leal      23(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      gzread
.L0804A8B8:
	movl      %eax, %edx
	addl      $16, %esp
	movl      $-1, %eax
	testl     %edx, %edx
	jle       .L0804A89F
.L0804A8C6:
	movzbl    15(%esp), %eax
	addl      $28, %esp
	ret       
.L0804A8CF:
	.p2align 4,,10
	.p2align 3
.L0804A8D0:
	movl      $-1, %eax
	addl      $28, %esp
	ret       
	.size	gzgetc, .-gzgetc
# ----------------------
.L0804A8D9:
	.p2align 4
# ----------------------
	.globl	gzgetc_
	.type	gzgetc_, @function
gzgetc_:
	subl      $28, %esp
	movl      32(%esp), %eax
	testl     %eax, %eax
	je        .L0804A950
.L0804A8EB:
	cmpl      $7247, 16(%eax)
	jne       .L0804A950
.L0804A8F4:
	movl      88(%eax), %edx
	cmpl      $-5, %edx
	je        .L0804A900
.L0804A8FC:
	testl     %edx, %edx
	jne       .L0804A950
.L0804A900:
	movl      (%eax), %edx
	testl     %edx, %edx
	je        .L0804A928
.L0804A906:
	subl      $1, %edx
	addl      $1, 8(%eax)
	movl      %edx, (%eax)
	movl      4(%eax), %edx
	adcl      $0, 12(%eax)
	leal      1(%edx), %ecx
	movl      %ecx, 4(%eax)
	movzbl    (%edx), %eax
.L0804A91F:
	addl      $28, %esp
	ret       
.L0804A923:
	.p2align 4,,10
	.p2align 3
.L0804A928:
	subl      $4, %esp
	pushl     $1
	leal      23(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      gzread
.L0804A938:
	movl      %eax, %edx
	addl      $16, %esp
	movl      $-1, %eax
	testl     %edx, %edx
	jle       .L0804A91F
.L0804A946:
	movzbl    15(%esp), %eax
	addl      $28, %esp
	ret       
.L0804A94F:
	.p2align 4,,10
	.p2align 3
.L0804A950:
	movl      $-1, %eax
	addl      $28, %esp
	ret       
	.size	gzgetc_, .-gzgetc_
# ----------------------
.L0804A959:
	.p2align 4
# ----------------------
	.globl	gzungetc
	.type	gzungetc, @function
gzungetc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      36(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804AA00
.L0804A973:
	cmpl      $7247, 16(%ebx)
	jne       .L0804AA00
.L0804A980:
	movl      88(%ebx), %eax
	cmpl      $-5, %eax
	je        .L0804A98C
.L0804A988:
	testl     %eax, %eax
	jne       .L0804AA00
.L0804A98C:
	movl      84(%ebx), %edi
	testl     %edi, %edi
	jne       .L0804AA58
.L0804A997:
	movl      32(%esp), %esi
	testl     %esi, %esi
	js        .L0804AA00
.L0804A99F:
	movl      (%ebx), %edx
	testl     %edx, %edx
	je        .L0804AA20
.L0804A9A5:
	movl      28(%ebx), %eax
	addl      %eax, %eax
	cmpl      %eax, %edx
	je        .L0804A9E8
.L0804A9AE:
	movl      4(%ebx), %esi
	cmpl      40(%ebx), %esi
	je        .L0804AAD8
.L0804A9BA:
	leal      -1(%esi), %eax
	addl      $1, %edx
	movl      %edx, (%ebx)
	movl      %eax, 4(%ebx)
	movzbl    32(%esp), %eax
	movb      %al, -1(%esi)
	addl      $-1, 8(%ebx)
	adcl      $-1, 12(%ebx)
	movl      $0, 64(%ebx)
	movl      32(%esp), %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804A9E8:
	subl      $4, %esp
	pushl     $.LC08058848
	pushl     $-3
	pushl     %ebx
	call      gz_error
.L0804A9F8:
	addl      $16, %esp
	.p2align 4,,10
	.p2align 3
.L0804AA00:
	addl      $12, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804AA0D:
	.p2align 4,,10
	.p2align 3
.L0804AA10:
	movl      32(%esp), %eax
	testl     %eax, %eax
	js        .L0804AA00
.L0804AA18:
	.p2align 4
.L0804AA20:
	movl      28(%ebx), %eax
	movzbl    32(%esp), %edx
	movl      $1, (%ebx)
	leal      -1(%eax,%eax), %eax
	addl      40(%ebx), %eax
	movl      %eax, 4(%ebx)
	movb      %dl, (%eax)
	addl      $-1, 8(%ebx)
	movl      $0, 64(%ebx)
	adcl      $-1, 12(%ebx)
	movl      32(%esp), %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804AA55:
	.p2align 4,,10
	.p2align 3
.L0804AA58:
	movl      80(%ebx), %edi
	movl      76(%ebx), %esi
	movl      $0, 84(%ebx)
	movl      %edi, %eax
	orl       %esi, %eax
	je        .L0804A997
.L0804AA6F:
	.p2align 4,,10
	.p2align 3
.L0804AA70:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804AAAD
.L0804AA76:
	xorl      %edx, %edx
	movl      %ecx, %eax
	cmpl      %edi, %edx
	jl        .L0804AAD0
.L0804AA7E:
	jg        .L0804AA84
.L0804AA80:
	cmpl      %esi, %ecx
	jbe       .L0804AAD0
.L0804AA84:
	subl      %esi, %ecx
	movl      %esi, %eax
	xorl      %edx, %edx
	movl      %ecx, %ebp
	movl      %esi, %ecx
.L0804AA8E:
	addl      %ecx, 4(%ebx)
	addl      %eax, 8(%ebx)
	movl      %ebp, (%ebx)
	adcl      %edx, 12(%ebx)
	subl      %eax, %esi
	sbbl      %edx, %edi
	movl      %edi, %eax
	orl       %esi, %eax
	je        .L0804A997
.L0804AAA7:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804AA76
.L0804AAAD:
	movl      60(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804AABF
.L0804AAB4:
	movl      100(%ebx), %edx
	testl     %edx, %edx
	je        .L0804AA10
.L0804AABF:
	movl      %ebx, %eax
	call      gz_fetch
.L0804AAC6:
	cmpl      $-1, %eax
	jne       .L0804AA70
.L0804AACB:
	jmp       .L0804AA00
.L0804AAD0:
	xorl      %ebp, %ebp
	jmp       .L0804AA8E
.L0804AAD4:
	.p2align 4,,10
	.p2align 3
.L0804AAD8:
	leal      (%esi,%edx), %ecx
	addl      %esi, %eax
	cmpl      %ecx, %esi
	jae       .L0804AAFA
.L0804AAE1:
	.p2align 4,,10
	.p2align 3
.L0804AAE8:
	subl      $1, %ecx
	movzbl    (%ecx), %edx
	subl      $1, %eax
	movb      %dl, (%eax)
	cmpl      %ecx, 40(%ebx)
	jb        .L0804AAE8
.L0804AAF8:
	movl      (%ebx), %edx
.L0804AAFA:
	movl      %eax, %esi
	jmp       .L0804A9BA
	.size	gzungetc, .-gzungetc
# ----------------------
.L0804AB01:
	.p2align 4
# ----------------------
	.globl	gzgets
	.type	gzgets, @function
gzgets:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %esi
	movl      56(%esp), %edi
	movl      48(%esp), %ebp
	testl     %esi, %esi
	sete      %dl
	testl     %edi, %edi
	setle     %al
	orb       %al, %dl
	jne       .L0804AC50
.L0804AB35:
	testl     %ebp, %ebp
	je        .L0804AC50
.L0804AB3D:
	cmpl      $7247, 16(%ebp)
	jne       .L0804AC50
.L0804AB4A:
	movl      88(%ebp), %eax
	cmpl      $-5, %eax
	je        .L0804AB5A
.L0804AB52:
	testl     %eax, %eax
	jne       .L0804AC50
.L0804AB5A:
	movl      84(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L0804AC60
.L0804AB65:
	movl      56(%esp), %eax
	subl      $1, %eax
	movl      %eax, %edi
	je        .L0804AC50
.L0804AB74:
	movl      (%ebp), %eax
	movl      52(%esp), %esi
	movl      %eax, 8(%esp)
	jmp       .L0804ABF0
.L0804AB81:
	.p2align 4,,10
	.p2align 3
.L0804AB88:
	movl      8(%esp), %ebx
	cmpl      %edi, %ebx
	jbe       .L0804AB92
.L0804AB90:
	movl      %edi, %ebx
.L0804AB92:
	movl      4(%ebp), %edx
	subl      $4, %esp
	pushl     %ebx
	pushl     $10
	pushl     %edx
	movl      %edx, 24(%esp)
	call      memchr
.L0804ABA5:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ecx
	movl      8(%esp), %edx
	je        .L0804ABB9
.L0804ABB2:
	movl      %eax, %ebx
	subl      %edx, %ebx
	addl      $1, %ebx
.L0804ABB9:
	movl      %ecx, 12(%esp)
	subl      $4, %esp
	pushl     %ebx
	pushl     %edx
	pushl     %esi
	call      memcpy
.L0804ABC8:
	movl      (%ebp), %edx
	addl      %ebx, 4(%ebp)
	subl      %ebx, %edx
	movl      %edx, 24(%esp)
	movl      %edx, (%ebp)
	xorl      %edx, %edx
	addl      %ebx, 8(%ebp)
	adcl      %edx, 12(%ebp)
	addl      %ebx, %esi
	addl      $16, %esp
	subl      %ebx, %edi
	je        .L0804AC1A
.L0804ABE8:
	movl      12(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0804AC1A
.L0804ABF0:
	movl      8(%esp), %eax
	testl     %eax, %eax
	jne       .L0804AB88
.L0804ABF8:
	movl      %ebp, %eax
	call      gz_fetch
.L0804ABFF:
	cmpl      $-1, %eax
	je        .L0804AC50
.L0804AC04:
	movl      (%ebp), %eax
	testl     %eax, %eax
	movl      %eax, 8(%esp)
	jne       .L0804AB88
.L0804AC13:
	movl      $1, 64(%ebp)
.L0804AC1A:
	cmpl      52(%esp), %esi
	je        .L0804AC50
.L0804AC20:
	movb      $0, (%esi)
	movl      52(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804AC2F:
	.p2align 4,,10
	.p2align 3
.L0804AC30:
	movl      60(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804AC42
.L0804AC37:
	movl      100(%ebp), %edx
	testl     %edx, %edx
	je        .L0804AB65
.L0804AC42:
	movl      %ebp, %eax
	call      gz_fetch
.L0804AC49:
	cmpl      $-1, %eax
	jne       .L0804AC80
.L0804AC4E:
	.p2align 4,,10
	.p2align 3
.L0804AC50:
	addl      $28, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804AC5A:
	.p2align 4,,10
	.p2align 3
.L0804AC60:
	movl      80(%ebp), %edi
	movl      76(%ebp), %esi
	movl      $0, 84(%ebp)
	movl      %edi, %eax
	orl       %esi, %eax
	je        .L0804AB65
.L0804AC77:
	.p2align 4
.L0804AC80:
	movl      (%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804AC30
.L0804AC87:
	xorl      %edx, %edx
	movl      %ecx, %eax
	cmpl      %edi, %edx
	jl        .L0804ACC0
.L0804AC8F:
	jg        .L0804AC95
.L0804AC91:
	cmpl      %esi, %ecx
	jbe       .L0804ACC0
.L0804AC95:
	subl      %esi, %ecx
	movl      %esi, %eax
	xorl      %edx, %edx
	movl      %ecx, %ebx
	movl      %esi, %ecx
.L0804AC9F:
	addl      %ecx, 4(%ebp)
	addl      %eax, 8(%ebp)
	movl      %ebx, (%ebp)
	adcl      %edx, 12(%ebp)
	subl      %eax, %esi
	sbbl      %edx, %edi
	movl      %edi, %eax
	orl       %esi, %eax
	jne       .L0804AC80
.L0804ACB5:
	jmp       .L0804AB65
.L0804ACBA:
	.p2align 4,,10
	.p2align 3
.L0804ACC0:
	xorl      %ebx, %ebx
	jmp       .L0804AC9F
	.size	gzgets, .-gzgets
# ----------------------
.L0804ACC4:
	.p2align 4
# ----------------------
	.globl	gzdirect
	.type	gzdirect, @function
gzdirect:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804AD10
.L0804ACDC:
	cmpl      $7247, 16(%ebx)
	je        .L0804ACF0
.L0804ACE5:
	movl      44(%ebx), %eax
	addl      $8, %esp
	popl      %ebx
	ret       
.L0804ACED:
	.p2align 4,,10
	.p2align 3
.L0804ACF0:
	movl      48(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804ACE5
.L0804ACF7:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L0804ACE5
.L0804ACFD:
	movl      %ebx, %eax
	call      gz_look
.L0804AD04:
	jmp       .L0804ACE5
.L0804AD06:
	.p2align 4
.L0804AD10:
	addl      $8, %esp
	xorl      %eax, %eax
	popl      %ebx
	ret       
	.size	gzdirect, .-gzdirect
# ----------------------
.L0804AD17:
	.p2align 4
# ----------------------
	.globl	gzclose_r
	.type	gzclose_r, @function
gzclose_r:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804ADB8
.L0804AD2F:
	cmpl      $7247, 16(%ebx)
	jne       .L0804ADB8
.L0804AD3C:
	movl      28(%ebx), %edi
	testl     %edi, %edi
	jne       .L0804AD90
.L0804AD43:
	xorl      %eax, %eax
	cmpl      $-5, 88(%ebx)
	setne     %al
	subl      $4, %esp
	pushl     $0
	pushl     $0
	movl      %eax, %esi
	pushl     %ebx
	leal      -5(%esi,%esi,4), %esi
	call      gz_error
.L0804AD5F:
	popl      %eax
	pushl     24(%ebx)
	call      free
.L0804AD68:
	popl      %edx
	pushl     20(%ebx)
	call      close
.L0804AD71:
	movl      %eax, %edi
	movl      %ebx, (%esp)
	call      free
.L0804AD7B:
	addl      $16, %esp
	cmpl      $1, %edi
	movl      %esi, %eax
	sbbl      %edx, %edx
	notl      %edx
	popl      %ebx
	orl       %edx, %eax
	popl      %esi
	popl      %edi
	ret       
.L0804AD8D:
	.p2align 4,,10
	.p2align 3
.L0804AD90:
	leal      96(%ebx), %eax
	subl      $12, %esp
	pushl     %eax
	call      inflateEnd
.L0804AD9C:
	popl      %ecx
	pushl     40(%ebx)
	call      free
.L0804ADA5:
	popl      %esi
	pushl     36(%ebx)
	call      free
.L0804ADAE:
	addl      $16, %esp
	jmp       .L0804AD43
.L0804ADB3:
	.p2align 4,,10
	.p2align 3
.L0804ADB8:
	popl      %ebx
	movl      $-2, %eax
	popl      %esi
	popl      %edi
	ret       
	.size	gzclose_r, .-gzclose_r
# ----------------------
.L0804ADC1:
	.p2align 4
# ----------------------
	.local	gz_init
	.type	gz_init, @function
gz_init:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      32(%eax), %edi
	movl      %eax, %ebx
	subl      $12, %esp
	pushl     %edi
	call      malloc
.L0804ADE1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	movl      %eax, 36(%ebx)
	je        .L0804AEAE
.L0804ADF1:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	je        .L0804AE08
.L0804ADF8:
	movl      %edi, 28(%ebx)
.L0804ADFB:
	xorl      %eax, %eax
.L0804ADFD:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0804AE01:
	.p2align 4,,10
	.p2align 3
.L0804AE08:
	subl      $12, %esp
	pushl     %edi
	call      malloc
.L0804AE11:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 40(%ebx)
	je        .L0804AEB3
.L0804AE1F:
	leal      96(%ebx), %eax
	pushl     $56
	pushl     $.LC080587C4
	pushl     72(%ebx)
	pushl     $8
	pushl     $31
	pushl     $8
	pushl     68(%ebx)
	pushl     %eax
	movl      $0, 128(%ebx)
	movl      $0, 132(%ebx)
	movl      $0, 136(%ebx)
	call      deflateInit2_
.L0804AE59:
	addl      $32, %esp
	testl     %eax, %eax
	jne       .L0804AE7D
.L0804AE60:
	movl      44(%ebx), %eax
	movl      32(%ebx), %edx
	testl     %eax, %eax
	movl      %edx, 28(%ebx)
	jne       .L0804ADFB
.L0804AE6D:
	movl      %edx, 112(%ebx)
	movl      40(%ebx), %edx
	movl      %edx, 108(%ebx)
	movl      %edx, 4(%ebx)
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0804AE7D:
	subl      $12, %esp
	pushl     40(%ebx)
	call      free
.L0804AE88:
	popl      %eax
	pushl     36(%ebx)
.L0804AE8C:
	call      free
.L0804AE91:
	addl      $12, %esp
.L0804AE94:
	pushl     $.LC08058674
	pushl     $-4
	pushl     %ebx
	call      gz_error
.L0804AEA1:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L0804ADFD
.L0804AEAE:
	subl      $4, %esp
	jmp       .L0804AE94
.L0804AEB3:
	subl      $12, %esp
	pushl     %esi
	jmp       .L0804AE8C
	.size	gz_init, .-gz_init
# ----------------------
.L0804AEB9:
	.p2align 4
# ----------------------
	.local	gz_comp
	.type	gz_comp, @function
gz_comp:
	pushl     %ebp
	pushl     %edi
	movl      %edx, %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $28, %esp
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0804B090
.L0804AED6:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	movl      %eax, 12(%esp)
	jne       .L0804AFD0
.L0804AEE5:
	testl     %edi, %edi
	leal      96(%ebx), %esi
	movl      112(%ebx), %ecx
	je        .L0804AF97
.L0804AEF3:
	xorl      %eax, %eax
	jmp       .L0804AF39
.L0804AEF7:
	.p2align 4
.L0804AF00:
	cmpl      $4, %edi
	jne       .L0804B048
.L0804AF09:
	cmpl      $1, %eax
	movl      %ecx, %ebp
	je        .L0804B048
.L0804AF14:
	.p2align 4,,10
	.p2align 3
.L0804AF18:
	subl      $8, %esp
	pushl     %edi
	pushl     %esi
	call      deflate
.L0804AF22:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B060
.L0804AF2E:
	movl      112(%ebx), %ecx
	cmpl      %ebp, %ecx
	je        .L0804B0B0
.L0804AF39:
	testl     %ecx, %ecx
	jne       .L0804AF00
.L0804AF3D:
	movl      4(%ebx), %edx
	movl      108(%ebx), %ebp
	subl      %edx, %ebp
	jne       .L0804B010
.L0804AF4B:
	movl      28(%ebx), %ebp
	movl      40(%ebx), %eax
	movl      %ebp, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804AF57:
	movl      %eax, 4(%ebx)
	jmp       .L0804AF18
.L0804AF5C:
	.p2align 4,,10
	.p2align 3
.L0804AF60:
	movl      4(%ebx), %eax
	movl      108(%ebx), %edi
	subl      %eax, %edi
	jne       .L0804AFA0
.L0804AF6A:
	movl      28(%ebx), %edi
	movl      40(%ebx), %eax
	movl      %edi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804AF76:
	movl      %eax, 4(%ebx)
.L0804AF79:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      deflate
.L0804AF84:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B060
.L0804AF90:
	movl      112(%ebx), %ecx
	cmpl      %edi, %ecx
	je        .L0804B004
.L0804AF97:
	testl     %ecx, %ecx
	je        .L0804AF60
.L0804AF9B:
	movl      %ecx, %edi
	jmp       .L0804AF79
.L0804AF9F:
	.p2align 4,,10
	.p2align 3
.L0804AFA0:
	subl      $4, %esp
	pushl     %edi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804AFAD:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B0D0
.L0804AFB8:
	cmpl      %eax, %edi
	jne       .L0804B0D0
.L0804AFC0:
	movl      112(%ebx), %edi
	testl     %edi, %edi
	je        .L0804AF6A
.L0804AFC7:
	movl      108(%ebx), %eax
	jmp       .L0804AF76
.L0804AFCC:
	.p2align 4,,10
	.p2align 3
.L0804AFD0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804AFE1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B0D0
.L0804AFEC:
	cmpl      100(%ebx), %eax
	jne       .L0804B0D0
.L0804AFF5:
	movl      $0, 100(%ebx)
	movl      $0, 12(%esp)
.L0804B004:
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B010:
	subl      $4, %esp
	pushl     %ebp
	pushl     %edx
	pushl     20(%ebx)
	call      write
.L0804B01D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B0D0
.L0804B028:
	cmpl      %ebp, %eax
	jne       .L0804B0D0
.L0804B030:
	movl      112(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L0804AF4B
.L0804B03B:
	movl      108(%ebx), %eax
	jmp       .L0804AF57
.L0804B043:
	.p2align 4,,10
	.p2align 3
.L0804B048:
	movl      108(%ebx), %eax
	movl      4(%ebx), %edx
	movl      %eax, %ebp
	subl      %edx, %ebp
	jne       .L0804B010
.L0804B054:
	movl      %ecx, %ebp
	jmp       .L0804AF57
.L0804B05B:
	.p2align 4,,10
	.p2align 3
.L0804B060:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804B070:
	addl      $16, %esp
	movl      $-1, 12(%esp)
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B087:
	.p2align 4
.L0804B090:
	movl      %ebx, %eax
	call      gz_init
.L0804B097:
	cmpl      $-1, %eax
	movl      %eax, 12(%esp)
	jne       .L0804AED6
.L0804B0A4:
	jmp       .L0804B004
.L0804B0A9:
	.p2align 4
.L0804B0B0:
	cmpl      $4, %edi
	jne       .L0804B004
.L0804B0B9:
	subl      $12, %esp
	pushl     %esi
	call      deflateReset
.L0804B0C2:
	addl      $16, %esp
	jmp       .L0804B004
.L0804B0CA:
	.p2align 4,,10
	.p2align 3
.L0804B0D0:
	call      __errno_location
.L0804B0D5:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804B0DF:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804B0EB:
	addl      $16, %esp
	movl      $-1, 12(%esp)
	movl      12(%esp), %eax
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	gz_comp, .-gz_comp
# ----------------------
.L0804B102:
	.p2align 4
# ----------------------
	.local	gz_comp.constprop.2
	.type	gz_comp.constprop.2, @function
gz_comp.constprop.2:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %ebx
	subl      $12, %esp
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0804B208
.L0804B124:
	movl      44(%ebx), %edi
	testl     %edi, %edi
	jne       .L0804B1B0
.L0804B12F:
	movl      112(%ebx), %edx
	leal      96(%ebx), %esi
	jmp       .L0804B160
.L0804B137:
	.p2align 4
.L0804B140:
	movl      %edx, %ebp
.L0804B142:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      deflate
.L0804B14D:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B1E0
.L0804B159:
	movl      112(%ebx), %edx
	cmpl      %ebp, %edx
	je        .L0804B1D6
.L0804B160:
	testl     %edx, %edx
	jne       .L0804B140
.L0804B164:
	movl      4(%ebx), %eax
	movl      108(%ebx), %ebp
	subl      %eax, %ebp
	jne       .L0804B180
.L0804B16E:
	movl      28(%ebx), %ebp
	movl      40(%ebx), %eax
	movl      %ebp, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804B17A:
	movl      %eax, 4(%ebx)
	jmp       .L0804B142
.L0804B17F:
	.p2align 4,,10
	.p2align 3
.L0804B180:
	subl      $4, %esp
	pushl     %ebp
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804B18D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B220
.L0804B198:
	cmpl      %eax, %ebp
	jne       .L0804B220
.L0804B1A0:
	movl      112(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L0804B16E
.L0804B1A7:
	movl      108(%ebx), %eax
	jmp       .L0804B17A
.L0804B1AC:
	.p2align 4,,10
	.p2align 3
.L0804B1B0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804B1C1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B220
.L0804B1C8:
	cmpl      100(%ebx), %eax
	jne       .L0804B220
.L0804B1CD:
	movl      $0, 100(%ebx)
	xorl      %edi, %edi
.L0804B1D6:
	addl      $12, %esp
	movl      %edi, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B1E0:
	subl      $4, %esp
	movl      $-1, %edi
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804B1F5:
	addl      $16, %esp
	movl      %edi, %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B202:
	.p2align 4,,10
	.p2align 3
.L0804B208:
	movl      %ebx, %eax
	call      gz_init
.L0804B20F:
	cmpl      $-1, %eax
	movl      %eax, %edi
	jne       .L0804B124
.L0804B21A:
	jmp       .L0804B1D6
.L0804B21C:
	.p2align 4,,10
	.p2align 3
.L0804B220:
	call      __errno_location
.L0804B225:
	subl      $12, %esp
	pushl     (%eax)
	movl      $-1, %edi
	call      strerror
.L0804B234:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804B240:
	addl      $16, %esp
	movl      %edi, %eax
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	gz_comp.constprop.2, .-gz_comp.constprop.2
# ----------------------
.L0804B24D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzwrite
	.type	gzwrite, @function
gzwrite:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804B268
.L0804B25F:
	cmpl      $31153, 16(%ebx)
	je        .L0804B280
.L0804B268:
	movl      $0, 24(%esp)
.L0804B270:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B27C:
	.p2align 4,,10
	.p2align 3
.L0804B280:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804B268
.L0804B287:
	movl      72(%esp), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	js        .L0804B376
.L0804B297:
	movl      72(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0804B268
.L0804B29F:
	movl      28(%ebx), %edi
	testl     %edi, %edi
	je        .L0804B396
.L0804B2AA:
	movl      84(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804B3AB
.L0804B2B5:
	movl      28(%ebx), %esi
	cmpl      %esi, 72(%esp)
	jae       .L0804B330
.L0804B2BE:
	movl      %ebx, %ebp
	movl      72(%esp), %edi
	movl      100(%ebp), %eax
	testl     %eax, %eax
	je        .L0804B326
.L0804B2CB:
	.p2align 4,,10
	.p2align 3
.L0804B2D0:
	movl      36(%ebp), %ecx
	movl      96(%ebp), %ebx
.L0804B2D6:
	addl      %ebx, %eax
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %edx, %esi
	cmpl      %edi, %esi
	jbe       .L0804B2E4
.L0804B2E2:
	movl      %edi, %esi
.L0804B2E4:
	subl      $4, %esp
	xorl      %ebx, %ebx
	pushl     %esi
	pushl     76(%esp)
	pushl     %eax
	call      memcpy
.L0804B2F4:
	addl      %esi, 100(%ebp)
	addl      %esi, 8(%ebp)
	adcl      %ebx, 12(%ebp)
	addl      $16, %esp
	subl      %esi, %edi
	je        .L0804B270
.L0804B308:
	movl      %ebp, %eax
	call      gz_comp.constprop.2
.L0804B30F:
	cmpl      $-1, %eax
	je        .L0804B268
.L0804B318:
	movl      100(%ebp), %eax
	addl      %esi, 68(%esp)
	movl      28(%ebp), %esi
	testl     %eax, %eax
	jne       .L0804B2D0
.L0804B326:
	movl      36(%ebp), %ebx
	movl      %ebx, 96(%ebp)
	movl      %ebx, %ecx
	jmp       .L0804B2D6
.L0804B330:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	je        .L0804B347
.L0804B337:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B33E:
	cmpl      $-1, %eax
	je        .L0804B268
.L0804B347:
	movl      72(%esp), %eax
	xorl      %edx, %edx
	movl      %eax, 100(%ebx)
	movl      68(%esp), %eax
	movl      %eax, 96(%ebx)
	movl      72(%esp), %eax
	addl      %eax, 8(%ebx)
	movl      %ebx, %eax
	adcl      %edx, 12(%ebx)
	call      gz_comp.constprop.2
.L0804B368:
	cmpl      $-1, %eax
	jne       .L0804B270
.L0804B371:
	jmp       .L0804B268
.L0804B376:
	subl      $4, %esp
	pushl     $.LC08058820
	pushl     $-3
	pushl     %ebx
	call      gz_error
.L0804B386:
	addl      $16, %esp
	movl      $0, 24(%esp)
	jmp       .L0804B270
.L0804B396:
	movl      %ebx, %eax
	call      gz_init
.L0804B39D:
	cmpl      $-1, %eax
	jne       .L0804B2AA
.L0804B3A6:
	jmp       .L0804B268
.L0804B3AB:
	movl      100(%ebx), %ecx
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	testl     %ecx, %ecx
	movl      %eax, 16(%esp)
	movl      %edx, 20(%esp)
	jne       .L0804B59C
.L0804B3CB:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
	.p2align 4,,10
	.p2align 3
.L0804B3D8:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804B2B5
.L0804B3EA:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804B518
.L0804B403:
	jg        .L0804B40F
.L0804B405:
	cmpl      16(%esp), %eax
	jbe       .L0804B518
.L0804B40F:
	movl      16(%esp), %esi
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
.L0804B421:
	testl     %ecx, %ecx
	jne       .L0804B558
.L0804B429:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804B540
.L0804B448:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804B4D0
.L0804B453:
	movl      112(%ebx), %eax
	jmp       .L0804B497
.L0804B458:
	.p2align 4
.L0804B460:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804B4A0
.L0804B46A:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804B476:
	movl      %eax, 4(%ebx)
.L0804B479:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804B484:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B520
.L0804B490:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804B4FC
.L0804B497:
	testl     %eax, %eax
	je        .L0804B460
.L0804B49B:
	movl      %eax, %esi
	jmp       .L0804B479
.L0804B49F:
	.p2align 4,,10
	.p2align 3
.L0804B4A0:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804B4AD:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B579
.L0804B4B8:
	cmpl      %eax, %esi
	jne       .L0804B579
.L0804B4C0:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804B46A
.L0804B4C7:
	movl      108(%ebx), %eax
	jmp       .L0804B476
.L0804B4CC:
	.p2align 4,,10
	.p2align 3
.L0804B4D0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804B4E1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B579
.L0804B4EC:
	cmpl      100(%ebx), %eax
	jne       .L0804B579
.L0804B4F5:
	movl      $0, 100(%ebx)
.L0804B4FC:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804B3D8
.L0804B513:
	.p2align 4,,10
	.p2align 3
.L0804B518:
	movl      %eax, %edx
	jmp       .L0804B421
.L0804B51F:
	.p2align 4,,10
	.p2align 3
.L0804B520:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804B530:
	addl      $16, %esp
	jmp       .L0804B268
.L0804B538:
	.p2align 4
.L0804B540:
	movl      %ebx, %eax
	call      gz_init
.L0804B547:
	cmpl      $-1, %eax
	jne       .L0804B448
.L0804B550:
	jmp       .L0804B268
.L0804B555:
	.p2align 4,,10
	.p2align 3
.L0804B558:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804B56A:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804B429
.L0804B579:
	call      __errno_location
.L0804B57E:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804B588:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804B594:
	addl      $16, %esp
	jmp       .L0804B268
.L0804B59C:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B5A3:
	cmpl      $-1, %eax
	jne       .L0804B3CB
.L0804B5AC:
	jmp       .L0804B268
	.size	gzwrite, .-gzwrite
# ----------------------
.L0804B5B1:
	.p2align 4
# ----------------------
	.globl	gzputc
	.type	gzputc, @function
gzputc:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804B648
.L0804B5CF:
	cmpl      $31153, 16(%ebx)
	jne       .L0804B648
.L0804B5D8:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804B648
.L0804B5DF:
	movl      84(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804B70D
.L0804B5EA:
	movl      28(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804B630
.L0804B5F1:
	movl      100(%ebx), %eax
	movl      36(%ebx), %edx
	testl     %eax, %eax
	je        .L0804B655
.L0804B5FB:
	movl      96(%ebx), %esi
.L0804B5FE:
	addl      %esi, %eax
	movl      %eax, %edi
	subl      %edx, %edi
	cmpl      %edi, %ecx
	jbe       .L0804B630
.L0804B608:
	movzbl    84(%esp), %ecx
	movb      %cl, (%eax)
	addl      $1, 100(%ebx)
	movzbl    %cl, %eax
	addl      $1, 8(%ebx)
	adcl      $0, 12(%ebx)
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B626:
	.p2align 4
.L0804B630:
	movzbl    84(%esp), %eax
	cmpl      $31153, 16(%ebx)
	movb      %al, 47(%esp)
	je        .L0804B65C
.L0804B642:
	.p2align 4,,10
	.p2align 3
.L0804B648:
	addl      $60, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B655:
	movl      %edx, 96(%ebx)
	movl      %edx, %esi
	jmp       .L0804B5FE
.L0804B65C:
	movl      88(%ebx), %edi
	testl     %edi, %edi
	jne       .L0804B648
.L0804B663:
	testl     %ecx, %ecx
	je        .L0804BAF0
.L0804B66B:
	movl      84(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804B952
.L0804B676:
	movl      28(%ebx), %esi
	cmpl      $1, %esi
	jbe       .L0804B910
.L0804B682:
	movl      100(%ebx), %eax
	movl      36(%ebx), %edx
	testl     %eax, %eax
	je        .L0804B6DB
.L0804B68C:
	movl      96(%ebx), %ecx
	addl      %ecx, %eax
	movl      %eax, %ecx
	subl      %edx, %ecx
	subl      %ecx, %esi
	cmpl      $1, %esi
	ja        .L0804B6ED
.L0804B69C:
	subl      $4, %esp
	pushl     %esi
	leal      55(%esp), %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L0804B6AB:
	xorl      %edx, %edx
	addl      %esi, 100(%ebx)
	addl      %esi, 8(%ebx)
	adcl      %edx, 12(%ebx)
	addl      $16, %esp
	cmpl      $1, %esi
	je        .L0804B700
.L0804B6BE:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B6C5:
	cmpl      $-1, %eax
	je        .L0804B648
.L0804B6CE:
	movl      100(%ebx), %eax
	movl      28(%ebx), %esi
	movl      36(%ebx), %edx
	testl     %eax, %eax
	jne       .L0804B68C
.L0804B6DB:
	movl      %edx, %ecx
	movl      %edx, 96(%ebx)
	addl      %ecx, %eax
	movl      %eax, %ecx
	subl      %edx, %ecx
	subl      %ecx, %esi
	cmpl      $1, %esi
	jbe       .L0804B69C
.L0804B6ED:
	movzbl    47(%esp), %edx
	movb      %dl, (%eax)
	addl      $1, 100(%ebx)
	addl      $1, 8(%ebx)
	adcl      $0, 12(%ebx)
.L0804B700:
	movzbl    84(%esp), %eax
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804B70D:
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	movl      %eax, 16(%esp)
	movl      100(%ebx), %eax
	movl      %edx, 20(%esp)
	testl     %eax, %eax
	jne       .L0804B8FB
.L0804B72D:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
	.p2align 4,,10
	.p2align 3
.L0804B738:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804B5EA
.L0804B74A:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804B878
.L0804B763:
	jg        .L0804B76F
.L0804B765:
	cmpl      16(%esp), %eax
	jbe       .L0804B878
.L0804B76F:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804B882
.L0804B789:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804B8C0
.L0804B7A8:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804B830
.L0804B7B3:
	movl      112(%ebx), %eax
	jmp       .L0804B7F7
.L0804B7B8:
	.p2align 4
.L0804B7C0:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804B800
.L0804B7CA:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804B7D6:
	movl      %eax, 4(%ebx)
.L0804B7D9:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804B7E4:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B8A8
.L0804B7F0:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804B85C
.L0804B7F7:
	testl     %eax, %eax
	je        .L0804B7C0
.L0804B7FB:
	movl      %eax, %esi
	jmp       .L0804B7D9
.L0804B7FF:
	.p2align 4,,10
	.p2align 3
.L0804B800:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804B80D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B8D8
.L0804B818:
	cmpl      %eax, %esi
	jne       .L0804B8D8
.L0804B820:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804B7CA
.L0804B827:
	movl      108(%ebx), %eax
	jmp       .L0804B7D6
.L0804B82C:
	.p2align 4,,10
	.p2align 3
.L0804B830:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804B841:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B8D8
.L0804B84C:
	cmpl      100(%ebx), %eax
	jne       .L0804B8D8
.L0804B855:
	movl      $0, 100(%ebx)
.L0804B85C:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804B738
.L0804B873:
	.p2align 4,,10
	.p2align 3
.L0804B878:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804B789
.L0804B882:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804B894:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804B789
.L0804B8A3:
	.p2align 4,,10
	.p2align 3
.L0804B8A8:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804B8B8:
	addl      $16, %esp
	jmp       .L0804B648
.L0804B8C0:
	movl      %ebx, %eax
	call      gz_init
.L0804B8C7:
	cmpl      $-1, %eax
	jne       .L0804B7A8
.L0804B8D0:
	jmp       .L0804B648
.L0804B8D5:
	.p2align 4,,10
	.p2align 3
.L0804B8D8:
	call      __errno_location
.L0804B8DD:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804B8E7:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804B8F3:
	addl      $16, %esp
	jmp       .L0804B648
.L0804B8FB:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B902:
	cmpl      $-1, %eax
	jne       .L0804B72D
.L0804B90B:
	jmp       .L0804B648
.L0804B910:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	je        .L0804B927
.L0804B917:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B91E:
	cmpl      $-1, %eax
	je        .L0804B648
.L0804B927:
	addl      $1, 8(%ebx)
	leal      47(%esp), %eax
	movl      $1, 100(%ebx)
	adcl      $0, 12(%ebx)
	movl      %eax, 96(%ebx)
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804B944:
	cmpl      $-1, %eax
	jne       .L0804B700
.L0804B94D:
	jmp       .L0804B648
.L0804B952:
	movl      100(%ebx), %ecx
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	testl     %ecx, %ecx
	movl      %eax, 16(%esp)
	movl      %edx, 20(%esp)
	jne       .L0804BB05
.L0804B972:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
.L0804B97A:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804B676
.L0804B98C:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804BAAF
.L0804B9A5:
	jg        .L0804B9B1
.L0804B9A7:
	cmpl      16(%esp), %eax
	jbe       .L0804BAAF
.L0804B9B1:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804BAB9
.L0804B9CB:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804BADA
.L0804B9EA:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804BA6C
.L0804B9F1:
	movl      112(%ebx), %eax
	jmp       .L0804BA37
.L0804B9F6:
	.p2align 4
.L0804BA00:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804BA40
.L0804BA0A:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804BA16:
	movl      %eax, 4(%ebx)
.L0804BA19:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804BA24:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804B8A8
.L0804BA30:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804BA98
.L0804BA37:
	testl     %eax, %eax
	je        .L0804BA00
.L0804BA3B:
	movl      %eax, %esi
	jmp       .L0804BA19
.L0804BA3F:
	.p2align 4,,10
	.p2align 3
.L0804BA40:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804BA4D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B8D8
.L0804BA58:
	cmpl      %eax, %esi
	jne       .L0804B8D8
.L0804BA60:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804BA0A
.L0804BA67:
	movl      108(%ebx), %eax
	jmp       .L0804BA16
.L0804BA6C:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804BA7D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804B8D8
.L0804BA88:
	cmpl      100(%ebx), %eax
	jne       .L0804B8D8
.L0804BA91:
	movl      $0, 100(%ebx)
.L0804BA98:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804B97A
.L0804BAAF:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804B9CB
.L0804BAB9:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804BACB:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804B9CB
.L0804BADA:
	movl      %ebx, %eax
	call      gz_init
.L0804BAE1:
	cmpl      $-1, %eax
	jne       .L0804B9EA
.L0804BAEA:
	jmp       .L0804B648
.L0804BAEF:
	.p2align 4,,10
	.p2align 3
.L0804BAF0:
	movl      %ebx, %eax
	call      gz_init
.L0804BAF7:
	cmpl      $-1, %eax
	jne       .L0804B66B
.L0804BB00:
	jmp       .L0804B648
.L0804BB05:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BB0C:
	cmpl      $-1, %eax
	jne       .L0804B972
.L0804BB15:
	jmp       .L0804B648
	.size	gzputc, .-gzputc
# ----------------------
.L0804BB1A:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	gzputs
	.type	gzputs, @function
gzputs:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $56, %esp
	movl      76(%esp), %ebx
	pushl     80(%esp)
	call      strlen
.L0804BB34:
	addl      $16, %esp
	testl     %ebx, %ebx
	movl      %eax, %esi
	movl      $0, 24(%esp)
	je        .L0804BB4E
.L0804BB45:
	cmpl      $31153, 16(%ebx)
	je        .L0804BB68
.L0804BB4E:
	testl     %esi, %esi
	jne       .L0804BC40
.L0804BB56:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804BB62:
	.p2align 4,,10
	.p2align 3
.L0804BB68:
	movl      88(%ebx), %ebp
	testl     %ebp, %ebp
	jne       .L0804BB4E
.L0804BB6F:
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	js        .L0804BC98
.L0804BB7B:
	je        .L0804BB56
.L0804BB7D:
	movl      28(%ebx), %edi
	testl     %edi, %edi
	je        .L0804BC30
.L0804BB88:
	movl      84(%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804BCC0
.L0804BB93:
	movl      28(%ebx), %edi
	cmpl      %edi, %esi
	jae       .L0804BC00
.L0804BB9A:
	movl      %esi, 8(%esp)
	movl      %ebx, %ebp
.L0804BBA0:
	movl      100(%ebp), %eax
	movl      36(%ebp), %ecx
	testl     %eax, %eax
	je        .L0804BC50
.L0804BBAE:
	movl      96(%ebp), %ebx
.L0804BBB1:
	addl      %ebx, %eax
	movl      %eax, %edx
	subl      %ecx, %edx
	subl      %edx, %edi
	cmpl      %esi, %edi
	jbe       .L0804BBBF
.L0804BBBD:
	movl      %esi, %edi
.L0804BBBF:
	subl      $4, %esp
	xorl      %ebx, %ebx
	pushl     %edi
	pushl     76(%esp)
	pushl     %eax
	call      memcpy
.L0804BBCF:
	addl      %edi, 100(%ebp)
	addl      %edi, 8(%ebp)
	adcl      %ebx, 12(%ebp)
	addl      $16, %esp
	subl      %edi, %esi
	jne       .L0804BC60
.L0804BBE3:
	movl      8(%esp), %esi
	testl     %esi, %esi
	setne     %al
.L0804BBEC:
	testb     %al, %al
	je        .L0804BB4E
.L0804BBF4:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804BC00:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804BC80
.L0804BC07:
	xorl      %edx, %edx
	addl      %esi, 8(%ebx)
	movl      68(%esp), %eax
	adcl      %edx, 12(%ebx)
	movl      %esi, 100(%ebx)
	movl      %eax, 96(%ebx)
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BC20:
	cmpl      $-1, %eax
	je        .L0804BC40
.L0804BC25:
	testl     %esi, %esi
	setne     %al
	jmp       .L0804BBEC
.L0804BC2C:
	.p2align 4,,10
	.p2align 3
.L0804BC30:
	movl      %ebx, %eax
	call      gz_init
.L0804BC37:
	cmpl      $-1, %eax
	jne       .L0804BB88
.L0804BC40:
	movl      $-1, 24(%esp)
	jmp       .L0804BB56
.L0804BC4D:
	.p2align 4,,10
	.p2align 3
.L0804BC50:
	movl      %ecx, 96(%ebp)
	movl      %ecx, %ebx
	jmp       .L0804BBB1
.L0804BC5A:
	.p2align 4,,10
	.p2align 3
.L0804BC60:
	movl      %ebp, %eax
	call      gz_comp.constprop.2
.L0804BC67:
	cmpl      $-1, %eax
	je        .L0804BC40
.L0804BC6C:
	addl      %edi, 68(%esp)
	movl      28(%ebp), %edi
	jmp       .L0804BBA0
.L0804BC78:
	.p2align 4
.L0804BC80:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BC87:
	cmpl      $-1, %eax
	jne       .L0804BC07
.L0804BC90:
	jmp       .L0804BC40
.L0804BC92:
	.p2align 4,,10
	.p2align 3
.L0804BC98:
	subl      $4, %esp
	pushl     $.LC08058820
	pushl     $-3
	pushl     %ebx
	call      gz_error
.L0804BCA8:
	addl      $16, %esp
	movl      $0, 24(%esp)
	jmp       .L0804BB4E
.L0804BCB8:
	.p2align 4
.L0804BCC0:
	movl      80(%ebx), %edx
	movl      76(%ebx), %eax
	movl      $0, 84(%ebx)
	movl      %edx, 12(%esp)
	movl      100(%ebx), %edx
	movl      %eax, 8(%esp)
	testl     %edx, %edx
	jne       .L0804BDA3
.L0804BCE0:
	movl      12(%esp), %ecx
	movl      8(%esp), %edx
	movl      $1, %eax
	movl      %ecx, %edi
	orl       %edx, %edi
	je        .L0804BB93
.L0804BCF7:
	movl      %esi, 28(%esp)
	movl      %ebx, %ebp
	movl      8(%esp), %esi
	movl      12(%esp), %edi
	jmp       .L0804BD4B
.L0804BD07:
	.p2align 4
.L0804BD10:
	addl      %ecx, 8(%ebp)
	movl      36(%ebp), %eax
	adcl      %ebx, 12(%ebp)
	movl      %edx, 100(%ebp)
	movl      %ecx, 8(%esp)
	movl      %ebx, 12(%esp)
	movl      %eax, 96(%ebp)
	movl      %ebp, %eax
	call      gz_comp.constprop.2
.L0804BD2E:
	cmpl      $-1, %eax
	je        .L0804BC40
.L0804BD37:
	movl      8(%esp), %ecx
	movl      12(%esp), %ebx
	subl      %ecx, %esi
	sbbl      %ebx, %edi
	xorl      %eax, %eax
	movl      %edi, %edx
	orl       %esi, %edx
	je        .L0804BD98
.L0804BD4B:
	movl      28(%ebp), %edx
	xorl      %ebx, %ebx
	cmpl      $0, %edi
	movl      %edx, %ecx
	jg        .L0804BD63
.L0804BD57:
	jl        .L0804BD5D
.L0804BD59:
	cmpl      %edx, %esi
	jae       .L0804BD63
.L0804BD5D:
	movl      %esi, %edx
	movl      %esi, %ecx
	xorl      %ebx, %ebx
.L0804BD63:
	testl     %eax, %eax
	je        .L0804BD10
.L0804BD67:
	movl      %ecx, 16(%esp)
	movl      %ebx, 20(%esp)
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 16(%esp)
	pushl     $0
	pushl     36(%ebp)
	call      memset
.L0804BD81:
	addl      $16, %esp
	movl      16(%esp), %ecx
	movl      20(%esp), %ebx
	movl      8(%esp), %edx
	jmp       .L0804BD10
.L0804BD95:
	.p2align 4,,10
	.p2align 3
.L0804BD98:
	movl      %ebp, %ebx
	movl      28(%esp), %esi
	jmp       .L0804BB93
.L0804BDA3:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BDAA:
	cmpl      $-1, %eax
	jne       .L0804BCE0
.L0804BDB3:
	jmp       .L0804BC40
	.size	gzputs, .-gzputs
# ----------------------
.L0804BDB8:
	.p2align 4
# ----------------------
	.globl	gzvprintf
	.type	gzvprintf, @function
gzvprintf:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804C0AF
.L0804BDD3:
	cmpl      $31153, 16(%ebx)
	je        .L0804BDF0
.L0804BDDC:
	movl      $0, 24(%esp)
	movl      24(%esp), %eax
.L0804BDE8:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804BDF0:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	jne       .L0804BDDC
.L0804BDFB:
	movl      28(%ebx), %edi
	testl     %edi, %edi
	je        .L0804BE64
.L0804BE02:
	movl      84(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804BE75
.L0804BE09:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	je        .L0804BE1C
.L0804BE10:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BE17:
	cmpl      $-1, %eax
	je        .L0804BDDC
.L0804BE1C:
	movl      28(%ebx), %esi
	movl      36(%ebx), %eax
	movb      $0, -1(%eax,%esi)
	pushl     72(%esp)
	pushl     72(%esp)
	pushl     %esi
	pushl     36(%ebx)
	call      vsnprintf
.L0804BE38:
	addl      $16, %esp
	cmpl      %eax, %esi
	jle       .L0804BDDC
.L0804BE3F:
	testl     %eax, %eax
	jle       .L0804BDDC
.L0804BE43:
	movl      36(%ebx), %edx
	cmpb      $0, -1(%edx,%esi)
	jne       .L0804BDDC
.L0804BE4D:
	movl      %eax, %edi
	movl      %eax, 100(%ebx)
	movl      %edx, 96(%ebx)
	sarl      $31, %edi
	addl      %eax, 8(%ebx)
	movl      %eax, 24(%esp)
	adcl      %edi, 12(%ebx)
	jmp       .L0804BDE8
.L0804BE64:
	movl      %ebx, %eax
	call      gz_init
.L0804BE6B:
	cmpl      $-1, %eax
	jne       .L0804BE02
.L0804BE70:
	jmp       .L0804BDDC
.L0804BE75:
	movl      100(%ebx), %ecx
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	testl     %ecx, %ecx
	movl      %eax, 16(%esp)
	movl      %edx, 20(%esp)
	jne       .L0804BF5B
.L0804BE95:
	movl      %edx, %ecx
	orl       %eax, %ecx
	je        .L0804BE1C
.L0804BE9B:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
.L0804BEA3:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804C018
.L0804BEBC:
	jg        .L0804BEC8
.L0804BEBE:
	cmpl      16(%esp), %eax
	jbe       .L0804C018
.L0804BEC8:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804C022
.L0804BEE2:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804C070
.L0804BF01:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804BFC0
.L0804BF0C:
	movl      112(%ebx), %eax
	jmp       .L0804BF53
.L0804BF11:
	.p2align 4,,10
	.p2align 3
.L0804BF18:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804BF88
.L0804BF22:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804BF2E:
	movl      %eax, 4(%ebx)
.L0804BF31:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804BF3C:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804C048
.L0804BF48:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804BFEC
.L0804BF53:
	testl     %eax, %eax
	je        .L0804BF18
.L0804BF57:
	movl      %eax, %esi
	jmp       .L0804BF31
.L0804BF5B:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804BF62:
	cmpl      $-1, %eax
	je        .L0804BDDC
.L0804BF6B:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %ecx
	orl       %eax, %ecx
	jne       .L0804BE9B
.L0804BF7D:
	jmp       .L0804BE09
.L0804BF82:
	.p2align 4,,10
	.p2align 3
.L0804BF88:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804BF95:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C088
.L0804BFA0:
	cmpl      %eax, %esi
	jne       .L0804C088
.L0804BFA8:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804BF22
.L0804BFB3:
	movl      108(%ebx), %eax
	jmp       .L0804BF2E
.L0804BFBB:
	.p2align 4,,10
	.p2align 3
.L0804BFC0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804BFD1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C088
.L0804BFDC:
	cmpl      100(%ebx), %eax
	jne       .L0804C088
.L0804BFE5:
	movl      $0, 100(%ebx)
.L0804BFEC:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	jne       .L0804BEA3
.L0804C010:
	jmp       .L0804BE09
.L0804C015:
	.p2align 4,,10
	.p2align 3
.L0804C018:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804BEE2
.L0804C022:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804C034:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804BEE2
.L0804C043:
	.p2align 4,,10
	.p2align 3
.L0804C048:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804C058:
	addl      $16, %esp
.L0804C05B:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C067:
	.p2align 4
.L0804C070:
	movl      %ebx, %eax
	call      gz_init
.L0804C077:
	cmpl      $-1, %eax
	jne       .L0804BF01
.L0804C080:
	jmp       .L0804C05B
.L0804C082:
	.p2align 4,,10
	.p2align 3
.L0804C088:
	call      __errno_location
.L0804C08D:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804C097:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804C0A3:
	addl      $16, %esp
	movl      24(%esp), %eax
	jmp       .L0804BDE8
.L0804C0AF:
	movl      $-1, 24(%esp)
	movl      24(%esp), %eax
	jmp       .L0804BDE8
	.size	gzvprintf, .-gzvprintf
# ----------------------
	.globl	gzprintf
	.type	gzprintf, @function
gzprintf:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804C3AF
.L0804C0D3:
	cmpl      $31153, 16(%ebx)
	je        .L0804C0F0
.L0804C0DC:
	movl      $0, 24(%esp)
	movl      24(%esp), %eax
.L0804C0E8:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C0F0:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	jne       .L0804C0DC
.L0804C0FB:
	movl      28(%ebx), %edi
	testl     %edi, %edi
	je        .L0804C165
.L0804C102:
	movl      84(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804C176
.L0804C109:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	je        .L0804C11C
.L0804C110:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804C117:
	cmpl      $-1, %eax
	je        .L0804C0DC
.L0804C11C:
	movl      28(%ebx), %esi
	movl      36(%ebx), %eax
	movb      $0, -1(%eax,%esi)
	leal      72(%esp), %eax
	pushl     %eax
	pushl     72(%esp)
	pushl     %esi
	pushl     36(%ebx)
	call      vsnprintf
.L0804C139:
	addl      $16, %esp
	cmpl      %eax, %esi
	jle       .L0804C0DC
.L0804C140:
	testl     %eax, %eax
	jle       .L0804C0DC
.L0804C144:
	movl      36(%ebx), %edx
	cmpb      $0, -1(%edx,%esi)
	jne       .L0804C0DC
.L0804C14E:
	movl      %eax, %edi
	movl      %eax, 100(%ebx)
	movl      %edx, 96(%ebx)
	sarl      $31, %edi
	addl      %eax, 8(%ebx)
	movl      %eax, 24(%esp)
	adcl      %edi, 12(%ebx)
	jmp       .L0804C0E8
.L0804C165:
	movl      %ebx, %eax
	call      gz_init
.L0804C16C:
	cmpl      $-1, %eax
	jne       .L0804C102
.L0804C171:
	jmp       .L0804C0DC
.L0804C176:
	movl      100(%ebx), %ecx
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	testl     %ecx, %ecx
	movl      %eax, 16(%esp)
	movl      %edx, 20(%esp)
	jne       .L0804C25B
.L0804C196:
	movl      %edx, %ecx
	orl       %eax, %ecx
	je        .L0804C11C
.L0804C19C:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
.L0804C1A4:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804C318
.L0804C1BD:
	jg        .L0804C1C9
.L0804C1BF:
	cmpl      16(%esp), %eax
	jbe       .L0804C318
.L0804C1C9:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804C322
.L0804C1E3:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804C370
.L0804C202:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804C2C0
.L0804C20D:
	movl      112(%ebx), %eax
	jmp       .L0804C253
.L0804C212:
	.p2align 4,,10
	.p2align 3
.L0804C218:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804C288
.L0804C222:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804C22E:
	movl      %eax, 4(%ebx)
.L0804C231:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804C23C:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804C348
.L0804C248:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804C2EC
.L0804C253:
	testl     %eax, %eax
	je        .L0804C218
.L0804C257:
	movl      %eax, %esi
	jmp       .L0804C231
.L0804C25B:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804C262:
	cmpl      $-1, %eax
	je        .L0804C0DC
.L0804C26B:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %ecx
	orl       %eax, %ecx
	jne       .L0804C19C
.L0804C27D:
	jmp       .L0804C109
.L0804C282:
	.p2align 4,,10
	.p2align 3
.L0804C288:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804C295:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C388
.L0804C2A0:
	cmpl      %eax, %esi
	jne       .L0804C388
.L0804C2A8:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804C222
.L0804C2B3:
	movl      108(%ebx), %eax
	jmp       .L0804C22E
.L0804C2BB:
	.p2align 4,,10
	.p2align 3
.L0804C2C0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804C2D1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C388
.L0804C2DC:
	cmpl      100(%ebx), %eax
	jne       .L0804C388
.L0804C2E5:
	movl      $0, 100(%ebx)
.L0804C2EC:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	jne       .L0804C1A4
.L0804C310:
	jmp       .L0804C109
.L0804C315:
	.p2align 4,,10
	.p2align 3
.L0804C318:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804C1E3
.L0804C322:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804C334:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804C1E3
.L0804C343:
	.p2align 4,,10
	.p2align 3
.L0804C348:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804C358:
	addl      $16, %esp
.L0804C35B:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C367:
	.p2align 4
.L0804C370:
	movl      %ebx, %eax
	call      gz_init
.L0804C377:
	cmpl      $-1, %eax
	jne       .L0804C202
.L0804C380:
	jmp       .L0804C35B
.L0804C382:
	.p2align 4,,10
	.p2align 3
.L0804C388:
	call      __errno_location
.L0804C38D:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804C397:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804C3A3:
	addl      $16, %esp
	movl      24(%esp), %eax
	jmp       .L0804C0E8
.L0804C3AF:
	movl      $-1, 24(%esp)
	movl      24(%esp), %eax
	jmp       .L0804C0E8
	.size	gzprintf, .-gzprintf
# ----------------------
	.globl	gzflush
	.type	gzflush, @function
gzflush:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804C52E
.L0804C3D3:
	cmpl      $31153, 16(%ebx)
	jne       .L0804C615
.L0804C3E0:
	movl      88(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804C615
.L0804C3EB:
	cmpl      $4, 68(%esp)
	ja        .L0804C615
.L0804C3F6:
	movl      84(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804C4F7
.L0804C401:
	movl      80(%ebx), %edx
	movl      76(%ebx), %eax
	movl      $0, 84(%ebx)
	movl      %edx, 20(%esp)
	movl      100(%ebx), %edx
	movl      %eax, 16(%esp)
	testl     %edx, %edx
	jne       .L0804C61F
.L0804C421:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
	.p2align 4
.L0804C430:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804C4F7
.L0804C442:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804C5B0
.L0804C45B:
	jg        .L0804C467
.L0804C45D:
	cmpl      16(%esp), %eax
	jbe       .L0804C5B0
.L0804C467:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804C5BA
.L0804C481:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804C600
.L0804C4A0:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804C570
.L0804C4AB:
	movl      112(%ebx), %eax
	jmp       .L0804C4EF
.L0804C4B0:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804C540
.L0804C4BE:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804C4CA:
	movl      %eax, 4(%ebx)
.L0804C4CD:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804C4D8:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804C5E0
.L0804C4E4:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804C594
.L0804C4EF:
	testl     %eax, %eax
	je        .L0804C4B0
.L0804C4F3:
	movl      %eax, %esi
	jmp       .L0804C4CD
.L0804C4F7:
	movl      68(%esp), %edx
	movl      %ebx, %eax
	call      gz_comp
.L0804C502:
	movl      88(%ebx), %eax
.L0804C505:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C50D:
	.p2align 4,,10
	.p2align 3
.L0804C510:
	call      __errno_location
.L0804C515:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804C51F:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804C52B:
	addl      $16, %esp
.L0804C52E:
	movl      $-1, %eax
.L0804C533:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C53B:
	.p2align 4,,10
	.p2align 3
.L0804C540:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804C54D:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C510
.L0804C554:
	cmpl      %eax, %esi
	jne       .L0804C510
.L0804C558:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804C4BE
.L0804C563:
	movl      108(%ebx), %eax
	jmp       .L0804C4CA
.L0804C56B:
	.p2align 4,,10
	.p2align 3
.L0804C570:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804C581:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C510
.L0804C588:
	cmpl      100(%ebx), %eax
	jne       .L0804C510
.L0804C58D:
	movl      $0, 100(%ebx)
.L0804C594:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804C430
.L0804C5AB:
	.p2align 4,,10
	.p2align 3
.L0804C5B0:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804C481
.L0804C5BA:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804C5CC:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804C481
.L0804C5DB:
	.p2align 4,,10
	.p2align 3
.L0804C5E0:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804C5F0:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L0804C533
.L0804C5FD:
	.p2align 4,,10
	.p2align 3
.L0804C600:
	movl      %ebx, %eax
	call      gz_init
.L0804C607:
	cmpl      $-1, %eax
	jne       .L0804C4A0
.L0804C610:
	jmp       .L0804C52E
.L0804C615:
	movl      $-2, %eax
	jmp       .L0804C505
.L0804C61F:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804C626:
	cmpl      $-1, %eax
	jne       .L0804C421
.L0804C62F:
	jmp       .L0804C52E
	.size	gzflush, .-gzflush
# ----------------------
.L0804C634:
	.p2align 4
# ----------------------
	.globl	gzsetparams
	.type	gzsetparams, @function
gzsetparams:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804C8F0
.L0804C653:
	cmpl      $31153, 16(%ebx)
	leal      96(%ebx), %ebp
	jne       .L0804C8F0
.L0804C663:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	movl      %eax, 24(%esp)
	jne       .L0804C8F0
.L0804C672:
	movl      68(%esp), %eax
	cmpl      %eax, 68(%ebx)
	je        .L0804C6D8
.L0804C67B:
	movl      84(%ebx), %edi
	testl     %edi, %edi
	jne       .L0804C6E8
.L0804C682:
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L0804C6B9
.L0804C689:
	movl      100(%ebx), %eax
	testl     %eax, %eax
	je        .L0804C6A5
.L0804C690:
	movl      $1, %edx
	movl      %ebx, %eax
	call      gz_comp
.L0804C69C:
	cmpl      $-1, %eax
	je        .L0804C8FD
.L0804C6A5:
	subl      $4, %esp
	pushl     76(%esp)
	pushl     76(%esp)
	pushl     %ebp
	call      deflateParams
.L0804C6B6:
	addl      $16, %esp
.L0804C6B9:
	movl      68(%esp), %eax
	movl      %eax, 68(%ebx)
	movl      72(%esp), %eax
	movl      %eax, 72(%ebx)
.L0804C6C7:
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C6D3:
	.p2align 4,,10
	.p2align 3
.L0804C6D8:
	movl      72(%esp), %eax
	cmpl      %eax, 72(%ebx)
	je        .L0804C6C7
.L0804C6E1:
	movl      84(%ebx), %edi
	testl     %edi, %edi
	je        .L0804C682
.L0804C6E8:
	movl      100(%ebx), %esi
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	testl     %esi, %esi
	movl      %eax, 16(%esp)
	movl      %edx, 20(%esp)
	jne       .L0804C8D8
.L0804C708:
	movl      $1, %ecx
	.p2align 4,,10
	.p2align 3
.L0804C710:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804C682
.L0804C722:
	movl      20(%esp), %edx
	movl      28(%ebx), %eax
	xorl      %edi, %edi
	movl      %edi, 12(%esp)
	cmpl      %edx, %edi
	movl      %eax, 8(%esp)
	jl        .L0804C848
.L0804C73B:
	jg        .L0804C747
.L0804C73D:
	cmpl      16(%esp), %eax
	jbe       .L0804C848
.L0804C747:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804C852
.L0804C761:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804C8A0
.L0804C780:
	movl      44(%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804C800
.L0804C787:
	movl      112(%ebx), %eax
	jmp       .L0804C7C7
.L0804C78C:
	.p2align 4,,10
	.p2align 3
.L0804C790:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804C7D0
.L0804C79A:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804C7A6:
	movl      %eax, 4(%ebx)
.L0804C7A9:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804C7B4:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804C878
.L0804C7C0:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804C82C
.L0804C7C7:
	testl     %eax, %eax
	je        .L0804C790
.L0804C7CB:
	movl      %eax, %esi
	jmp       .L0804C7A9
.L0804C7CF:
	.p2align 4,,10
	.p2align 3
.L0804C7D0:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804C7DD:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C8B8
.L0804C7E8:
	cmpl      %eax, %esi
	jne       .L0804C8B8
.L0804C7F0:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804C79A
.L0804C7F7:
	movl      108(%ebx), %eax
	jmp       .L0804C7A6
.L0804C7FC:
	.p2align 4,,10
	.p2align 3
.L0804C800:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804C811:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804C8B8
.L0804C81C:
	cmpl      100(%ebx), %eax
	jne       .L0804C8B8
.L0804C825:
	movl      $0, 100(%ebx)
.L0804C82C:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804C710
.L0804C843:
	.p2align 4,,10
	.p2align 3
.L0804C848:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804C761
.L0804C852:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804C864:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804C761
.L0804C873:
	.p2align 4,,10
	.p2align 3
.L0804C878:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804C888:
	addl      $16, %esp
.L0804C88B:
	movl      $-1, 24(%esp)
	movl      24(%esp), %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804C89F:
	.p2align 4,,10
	.p2align 3
.L0804C8A0:
	movl      %ebx, %eax
	call      gz_init
.L0804C8A7:
	cmpl      $-1, %eax
	jne       .L0804C780
.L0804C8B0:
	jmp       .L0804C88B
.L0804C8B2:
	.p2align 4,,10
	.p2align 3
.L0804C8B8:
	call      __errno_location
.L0804C8BD:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804C8C7:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804C8D3:
	addl      $16, %esp
	jmp       .L0804C88B
.L0804C8D8:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804C8DF:
	cmpl      $-1, %eax
	jne       .L0804C708
.L0804C8E8:
	jmp       .L0804C88B
.L0804C8EA:
	.p2align 4,,10
	.p2align 3
.L0804C8F0:
	movl      $-2, 24(%esp)
	jmp       .L0804C6C7
.L0804C8FD:
	movl      88(%ebx), %eax
	movl      %eax, 24(%esp)
	jmp       .L0804C6C7
	.size	gzsetparams, .-gzsetparams
# ----------------------
.L0804C909:
	.p2align 4
# ----------------------
	.globl	gzclose_w
	.type	gzclose_w, @function
gzclose_w:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804CD10
.L0804C923:
	cmpl      $31153, 16(%ebx)
	jne       .L0804CD10
.L0804C930:
	movl      84(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804CAA8
.L0804C93B:
	leal      96(%ebx), %ebp
.L0804C93E:
	movl      %ebp, 24(%esp)
	xorl      %esi, %esi
.L0804C944:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L0804CA8E
.L0804C94F:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804CA5D
.L0804C95A:
	movl      112(%ebx), %edx
	xorl      %eax, %eax
	movl      24(%esp), %edi
	jmp       .L0804C98D
.L0804C965:
	.p2align 4,,10
	.p2align 3
.L0804C968:
	cmpl      $1, %eax
	movl      %edx, %ebp
	je        .L0804C991
.L0804C96F:
	subl      $8, %esp
	pushl     $4
	pushl     %edi
	call      deflate
.L0804C97A:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804C9E5
.L0804C982:
	movl      112(%ebx), %edx
	cmpl      %ebp, %edx
	je        .L0804CCA0
.L0804C98D:
	testl     %edx, %edx
	jne       .L0804C968
.L0804C991:
	movl      4(%ebx), %eax
	movl      108(%ebx), %ebp
	subl      %eax, %ebp
	jne       .L0804C9C0
.L0804C99B:
	testl     %edx, %edx
	je        .L0804C9B0
.L0804C99F:
	movl      108(%ebx), %eax
	movl      %edx, %ebp
.L0804C9A4:
	movl      %eax, 4(%ebx)
	jmp       .L0804C96F
.L0804C9A9:
	.p2align 4
.L0804C9B0:
	movl      28(%ebx), %ebp
	movl      40(%ebx), %eax
	movl      %ebp, 112(%ebx)
	movl      %eax, 108(%ebx)
	jmp       .L0804C9A4
.L0804C9BE:
	.p2align 4,,10
	.p2align 3
.L0804C9C0:
	subl      $4, %esp
	pushl     %ebp
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804C9CD:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804CCD0
.L0804C9D8:
	cmpl      %eax, %ebp
	jne       .L0804CCD0
.L0804C9E0:
	movl      112(%ebx), %edx
	jmp       .L0804C99B
.L0804C9E5:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804C9F5:
	addl      $16, %esp
.L0804C9F8:
	movl      88(%ebx), %esi
.L0804C9FB:
	movl      28(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L0804CA1B
.L0804CA02:
	movl      44(%ebx), %edi
	testl     %edi, %edi
	je        .L0804CCF3
.L0804CA0D:
	subl      $12, %esp
	pushl     36(%ebx)
	call      free
.L0804CA18:
	addl      $16, %esp
.L0804CA1B:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     %ebx
	call      gz_error
.L0804CA28:
	popl      %eax
	pushl     24(%ebx)
	call      free
.L0804CA31:
	popl      %edx
	pushl     20(%ebx)
	call      close
.L0804CA3A:
	cmpl      $-1, %eax
	movl      %ebx, (%esp)
	setne     %al
	movzbl    %al, %eax
	subl      $1, %eax
	orl       %eax, %esi
	call      free
.L0804CA50:
	addl      $16, %esp
	movl      %esi, %eax
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804CA5D:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804CA6E:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804CCD0
.L0804CA79:
	cmpl      100(%ebx), %eax
	jne       .L0804CCD0
.L0804CA82:
	movl      $0, 100(%ebx)
	jmp       .L0804C9FB
.L0804CA8E:
	movl      %ebx, %eax
	call      gz_init
.L0804CA95:
	cmpl      $-1, %eax
	jne       .L0804C94F
.L0804CA9E:
	jmp       .L0804C9F8
.L0804CAA3:
	.p2align 4,,10
	.p2align 3
.L0804CAA8:
	movl      76(%ebx), %eax
	movl      80(%ebx), %edx
	movl      $0, 84(%ebx)
	movl      %eax, 16(%esp)
	movl      100(%ebx), %eax
	movl      %edx, 20(%esp)
	testl     %eax, %eax
	jne       .L0804CCB4
.L0804CAC8:
	leal      96(%ebx), %ebp
	movl      $1, %ecx
	movl      %ebp, 24(%esp)
	.p2align 4,,10
	.p2align 3
.L0804CAD8:
	movl      20(%esp), %edx
	movl      16(%esp), %eax
	movl      %edx, %edi
	orl       %eax, %edi
	je        .L0804C93E
.L0804CAEA:
	cmpl      $0, 20(%esp)
	movl      28(%ebx), %eax
	movl      $0, 12(%esp)
	movl      %eax, 8(%esp)
	jg        .L0804CC18
.L0804CB04:
	jl        .L0804CB10
.L0804CB06:
	cmpl      %eax, 16(%esp)
	jae       .L0804CC18
.L0804CB10:
	movl      16(%esp), %esi
	testl     %ecx, %ecx
	movl      $0, 12(%esp)
	movl      %esi, %edx
	movl      %esi, 8(%esp)
	jne       .L0804CC22
.L0804CB2A:
	movl      %edx, 100(%ebx)
	movl      36(%ebx), %edx
	movl      12(%esp), %ecx
	movl      %edx, 96(%ebx)
	movl      8(%esp), %edx
	addl      %edx, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	testl     %eax, %eax
	je        .L0804CC68
.L0804CB49:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804CBD0
.L0804CB54:
	movl      112(%ebx), %eax
	jmp       .L0804CB97
.L0804CB59:
	.p2align 4
.L0804CB60:
	movl      4(%ebx), %eax
	movl      108(%ebx), %esi
	subl      %eax, %esi
	jne       .L0804CBA0
.L0804CB6A:
	movl      28(%ebx), %esi
	movl      40(%ebx), %eax
	movl      %esi, 112(%ebx)
	movl      %eax, 108(%ebx)
.L0804CB76:
	movl      %eax, 4(%ebx)
.L0804CB79:
	subl      $8, %esp
	pushl     $0
	pushl     %ebp
	call      deflate
.L0804CB84:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804CC48
.L0804CB90:
	movl      112(%ebx), %eax
	cmpl      %esi, %eax
	je        .L0804CBFC
.L0804CB97:
	testl     %eax, %eax
	je        .L0804CB60
.L0804CB9B:
	movl      %eax, %esi
	jmp       .L0804CB79
.L0804CB9F:
	.p2align 4,,10
	.p2align 3
.L0804CBA0:
	subl      $4, %esp
	pushl     %esi
	pushl     %eax
	pushl     20(%ebx)
	call      write
.L0804CBAD:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804CC80
.L0804CBB8:
	cmpl      %eax, %esi
	jne       .L0804CC80
.L0804CBC0:
	movl      112(%ebx), %esi
	testl     %esi, %esi
	je        .L0804CB6A
.L0804CBC7:
	movl      108(%ebx), %eax
	jmp       .L0804CB76
.L0804CBCC:
	.p2align 4,,10
	.p2align 3
.L0804CBD0:
	subl      $4, %esp
	pushl     100(%ebx)
	pushl     96(%ebx)
	pushl     20(%ebx)
	call      write
.L0804CBE1:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804CC80
.L0804CBEC:
	cmpl      100(%ebx), %eax
	jne       .L0804CC80
.L0804CBF5:
	movl      $0, 100(%ebx)
.L0804CBFC:
	movl      8(%esp), %eax
	subl      %eax, 16(%esp)
	movl      12(%esp), %edx
	sbbl      %edx, 20(%esp)
	xorl      %ecx, %ecx
	jmp       .L0804CAD8
.L0804CC13:
	.p2align 4,,10
	.p2align 3
.L0804CC18:
	testl     %ecx, %ecx
	movl      %eax, %edx
	je        .L0804CB2A
.L0804CC22:
	subl      $4, %esp
	pushl     %edx
	movl      %edx, 36(%esp)
	pushl     $0
	pushl     36(%ebx)
	call      memset
.L0804CC34:
	addl      $16, %esp
	movl      28(%ebx), %eax
	movl      28(%esp), %edx
	jmp       .L0804CB2A
.L0804CC43:
	.p2align 4,,10
	.p2align 3
.L0804CC48:
	subl      $4, %esp
	pushl     $.LC08058868
	pushl     $-2
	pushl     %ebx
	call      gz_error
.L0804CC58:
	addl      $16, %esp
.L0804CC5B:
	movl      88(%ebx), %esi
	jmp       .L0804C944
.L0804CC63:
	.p2align 4,,10
	.p2align 3
.L0804CC68:
	movl      %ebx, %eax
	call      gz_init
.L0804CC6F:
	cmpl      $-1, %eax
	jne       .L0804CB49
.L0804CC78:
	jmp       .L0804CC5B
.L0804CC7A:
	.p2align 4,,10
	.p2align 3
.L0804CC80:
	call      __errno_location
.L0804CC85:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804CC8F:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804CC9B:
	addl      $16, %esp
	jmp       .L0804CC5B
.L0804CCA0:
	subl      $12, %esp
	pushl     36(%esp)
	call      deflateReset
.L0804CCAC:
	addl      $16, %esp
	jmp       .L0804C9FB
.L0804CCB4:
	movl      %ebx, %eax
	call      gz_comp.constprop.2
.L0804CCBB:
	cmpl      $-1, %eax
	jne       .L0804CAC8
.L0804CCC4:
	leal      96(%ebx), %eax
	movl      %eax, 24(%esp)
	jmp       .L0804CC5B
.L0804CCCD:
	.p2align 4,,10
	.p2align 3
.L0804CCD0:
	call      __errno_location
.L0804CCD5:
	subl      $12, %esp
	pushl     (%eax)
	call      strerror
.L0804CCDF:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804CCEB:
	addl      $16, %esp
	jmp       .L0804C9F8
.L0804CCF3:
	subl      $12, %esp
	pushl     36(%esp)
	call      deflateEnd
.L0804CCFF:
	popl      %ecx
	pushl     40(%ebx)
	call      free
.L0804CD08:
	addl      $16, %esp
	jmp       .L0804CA0D
.L0804CD10:
	addl      $44, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	gzclose_w, .-gzclose_w
# ----------------------
.L0804CD1D:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %esi
	subl      $40, %esp
	movl      108(%eax), %ebx
	movl      56(%eax), %edi
	movl      %edx, (%esp)
	movl      144(%esi), %edx
	movl      44(%esi), %esi
	movl      %eax, 24(%esp)
	movl      124(%eax), %ebp
	movl      120(%eax), %eax
	leal      (%edi,%ebx), %ecx
	movl      %edx, 32(%esp)
	movl      $0, 4(%esp)
	leal      -262(%esi), %edx
	movl      %ecx, 20(%esp)
	movl      %eax, %ecx
	cmpl      %edx, %ebx
	jbe       .L0804CD70
.L0804CD64:
	leal      262(%ebx), %edx
	subl      %esi, %edx
	movl      %edx, 4(%esp)
.L0804CD70:
	movl      24(%esp), %esi
	leal      258(%edi,%ebx), %ebx
	movl      %ebx, 36(%esp)
	movl      64(%esi), %edx
	cmpl      140(%esi), %eax
	movl      %edx, 8(%esp)
	movl      52(%esi), %edx
	movl      %edx, 12(%esp)
	movl      20(%esp), %edx
	movzbl    -1(%edx,%eax), %ebx
	movb      %bl, 18(%esp)
	movzbl    (%edx,%eax), %ebx
	movb      %bl, 16(%esp)
	jb        .L0804CDAD
.L0804CDAA:
	shrl      $2, %ebp
.L0804CDAD:
	movl      24(%esp), %eax
	movl      (%esp), %edx
	movl      116(%eax), %eax
	cmpl      %eax, 32(%esp)
	movl      %eax, 28(%esp)
	jbe       .L0804CDEF
.L0804CDC1:
	movl      %eax, 32(%esp)
	movl      (%esp), %edx
	jmp       .L0804CDEF
.L0804CDCA:
	.p2align 4,,10
	.p2align 3
.L0804CDD0:
	andl      12(%esp), %edx
	movl      8(%esp), %eax
	movzwl    (%eax,%edx,2), %edx
	cmpl      %edx, 4(%esp)
	jae       .L0804CF20
.L0804CDE6:
	subl      $1, %ebp
	je        .L0804CF20
.L0804CDEF:
	leal      (%edi,%edx), %eax
	movl      %ecx, %esi
	movzbl    (%eax,%ecx), %ebx
	movl      %eax, (%esp)
	movzbl    16(%esp), %eax
	movb      %bl, 17(%esp)
	cmpb      %al, %bl
	jne       .L0804CDD0
.L0804CE08:
	movl      (%esp), %eax
	movzbl    -1(%eax,%ecx), %ebx
	cmpb      18(%esp), %bl
	movb      %bl, 19(%esp)
	jne       .L0804CDD0
.L0804CE1A:
	movl      20(%esp), %ebx
	movzbl    (%ebx), %ebx
	cmpb      %bl, (%eax)
	jne       .L0804CDD0
.L0804CE25:
	movl      20(%esp), %ebx
	movzbl    1(%ebx), %ebx
	cmpb      %bl, 1(%eax)
	jne       .L0804CDD0
.L0804CE32:
	movl      20(%esp), %esi
	addl      $2, %eax
	movzbl    17(%esp), %ebx
	movl      %edx, (%esp)
	addl      $2, %esi
	jmp       .L0804CEB9
.L0804CE46:
	.p2align 4
.L0804CE50:
	movzbl    2(%eax), %edx
	cmpb      %dl, 2(%esi)
	jne       .L0804CF98
.L0804CE5D:
	movzbl    3(%eax), %edx
	cmpb      %dl, 3(%esi)
	jne       .L0804CF89
.L0804CE6A:
	movzbl    4(%eax), %edx
	cmpb      %dl, 4(%esi)
	jne       .L0804CF7A
.L0804CE77:
	movzbl    5(%eax), %edx
	cmpb      %dl, 5(%esi)
	jne       .L0804CF6B
.L0804CE84:
	movzbl    6(%eax), %edx
	cmpb      %dl, 6(%esi)
	jne       .L0804CF5C
.L0804CE91:
	movzbl    7(%eax), %edx
	cmpb      %dl, 7(%esi)
	jne       .L0804CF4D
.L0804CE9E:
	addl      $8, %eax
	addl      $8, %esi
	movzbl    (%eax), %edx
	cmpb      %dl, (%esi)
	jne       .L0804CFA7
.L0804CEAF:
	cmpl      36(%esp), %esi
	jae       .L0804CFA7
.L0804CEB9:
	movzbl    1(%eax), %edx
	cmpb      %dl, 1(%esi)
	je        .L0804CE50
.L0804CEC2:
	movl      (%esp), %edx
	movb      %bl, 17(%esp)
	addl      $1, %esi
.L0804CECC:
	movl      36(%esp), %eax
	subl      %eax, %esi
	subl      $258, %eax
	addl      $258, %esi
	movl      %eax, 20(%esp)
	cmpl      %esi, %ecx
	jge       .L0804CF34
.L0804CEE5:
	cmpl      %esi, 32(%esp)
	movl      24(%esp), %eax
	movl      %edx, 112(%eax)
	jle       .L0804CF20
.L0804CEF2:
	movl      20(%esp), %eax
	movl      %esi, %ecx
	movzbl    -1(%eax,%esi), %eax
	movb      %al, 18(%esp)
	movl      36(%esp), %eax
	movzbl    -258(%eax,%esi), %eax
	movb      %al, 16(%esp)
	jmp       .L0804CDD0
.L0804CF16:
	.p2align 4
.L0804CF20:
	cmpl      28(%esp), %esi
	movl      %esi, %eax
	jbe       .L0804CF2C
.L0804CF28:
	movl      28(%esp), %eax
.L0804CF2C:
	addl      $40, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804CF34:
	movzbl    17(%esp), %eax
	movl      %ecx, %esi
	movb      %al, 16(%esp)
	movzbl    19(%esp), %eax
	movb      %al, 18(%esp)
	jmp       .L0804CDD0
.L0804CF4D:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $7, %esi
	jmp       .L0804CECC
.L0804CF5C:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $6, %esi
	jmp       .L0804CECC
.L0804CF6B:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $5, %esi
	jmp       .L0804CECC
.L0804CF7A:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $4, %esi
	jmp       .L0804CECC
.L0804CF89:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $3, %esi
	jmp       .L0804CECC
.L0804CF98:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	addl      $2, %esi
	jmp       .L0804CECC
.L0804CFA7:
	movb      %bl, 17(%esp)
	movl      (%esp), %edx
	jmp       .L0804CECC
	.size	longest_match, .-longest_match
# ----------------------
.L0804CFB3:
	.p2align 4
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      44(%eax), %eax
	movl      116(%ebp), %esi
	leal      (%eax,%eax), %edx
	movl      %eax, 24(%esp)
	movl      %esi, 4(%esp)
	movl      %edx, 28(%esp)
	movl      %eax, %edx
	subl      $262, %eax
	movl      %eax, 20(%esp)
	.p2align 4
.L0804CFF0:
	movl      60(%ebp), %eax
	addl      20(%esp), %edx
	subl      4(%esp), %eax
	movl      108(%ebp), %edi
	subl      %edi, %eax
	cmpl      %edx, %edi
	movl      %eax, (%esp)
	jae       .L0804D150
.L0804D00B:
	movl      (%ebp), %esi
	movl      4(%esi), %ebx
	testl     %ebx, %ebx
	je        .L0804D1E0
.L0804D019:
	cmpl      %ebx, (%esp)
	movl      56(%ebp), %edx
	movl      116(%ebp), %eax
	jae       .L0804D110
.L0804D028:
	movl      (%esp), %ecx
	testl     %ecx, %ecx
	jne       .L0804D2E4
.L0804D033:
	xorl      %ebx, %ebx
.L0804D035:
	movl      5812(%ebp), %edx
	addl      %ebx, %eax
	movl      %eax, 4(%esp)
	movl      %eax, 116(%ebp)
	addl      %edx, %eax
	cmpl      $2, %eax
	jbe       .L0804D0E3
.L0804D04F:
	movl      108(%ebp), %ebx
	movl      56(%ebp), %eax
	movl      88(%ebp), %edi
	subl      %edx, %ebx
	movl      %eax, 12(%esp)
	movzbl    (%eax,%ebx), %esi
	movl      %edi, %ecx
	movl      %edi, 16(%esp)
	movl      84(%ebp), %edi
	movl      %esi, 72(%ebp)
	movl      %edi, 8(%esp)
	sall      %cl, %esi
	movzbl    1(%eax,%ebx), %edi
	movl      8(%esp), %eax
	xorl      %edi, %esi
	andl      %esi, %eax
	movl      %eax, 72(%ebp)
	movl      %eax, (%esp)
	jmp       .L0804D0DF
.L0804D089:
	.p2align 4
.L0804D090:
	movl      12(%esp), %edi
	movzbl    16(%esp), %ecx
	subl      $1, %edx
	movl      (%esp), %eax
	movzbl    2(%edi,%ebx), %esi
	movl      52(%ebp), %edi
	sall      %cl, %eax
	movl      68(%ebp), %ecx
	andl      %ebx, %edi
	xorl      %esi, %eax
	andl      8(%esp), %eax
	movl      64(%ebp), %esi
	leal      (%ecx,%eax,2), %ecx
	movl      %eax, 72(%ebp)
	movl      %eax, (%esp)
	movzwl    (%ecx), %eax
	movw      %ax, (%esi,%edi,2)
	movl      4(%esp), %eax
	movw      %bx, (%ecx)
	addl      $1, %ebx
	movl      %edx, 5812(%ebp)
	leal      (%edx,%eax), %ecx
	cmpl      $2, %ecx
	jbe       .L0804D0E3
.L0804D0DF:
	testl     %edx, %edx
	jne       .L0804D090
.L0804D0E3:
	cmpl      $261, 4(%esp)
	ja        .L0804D1E0
.L0804D0F1:
	movl      (%ebp), %eax
	movl      4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L0804D1E0
.L0804D0FF:
	movl      44(%ebp), %edx
	jmp       .L0804CFF0
.L0804D107:
	.p2align 4
.L0804D110:
	xorl      %ecx, %ecx
.L0804D112:
	addl      %eax, %edi
	subl      $4, %esp
	movl      %ecx, 4(%esi)
	addl      %edx, %edi
	pushl     %ebx
	pushl     (%esi)
	pushl     %edi
	call      memcpy
.L0804D125:
	movl      28(%esi), %eax
	addl      $16, %esp
	movl      24(%eax), %eax
	cmpl      $1, %eax
	je        .L0804D235
.L0804D137:
	cmpl      $2, %eax
	je        .L0804D24D
.L0804D140:
	addl      %ebx, (%esi)
	addl      %ebx, 8(%esi)
	movl      116(%ebp), %eax
	jmp       .L0804D035
.L0804D14D:
	.p2align 4,,10
	.p2align 3
.L0804D150:
	movl      24(%esp), %ebx
	movl      56(%ebp), %eax
	subl      $4, %esp
	leal      (%eax,%ebx), %edx
	pushl     %ebx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L0804D165:
	movl      108(%ebp), %edi
	subl      %ebx, 112(%ebp)
	movl      %ebx, %edx
	subl      %ebx, 92(%ebp)
	movl      68(%ebp), %eax
	addl      $16, %esp
	subl      %ebx, %edi
	movl      76(%ebp), %ebx
	movl      %edi, 108(%ebp)
	leal      (%eax,%ebx,2), %ecx
	.p2align 4,,10
	.p2align 3
.L0804D188:
	subl      $2, %ecx
	movzwl    (%ecx), %esi
	movl      %esi, %eax
	subl      %edx, %eax
	cmpl      %edx, %esi
	sbbl      %esi, %esi
	notl      %esi
	andl      %esi, %eax
	subl      $1, %ebx
	movw      %ax, (%ecx)
	jne       .L0804D188
.L0804D1A2:
	movl      28(%esp), %ecx
	movl      24(%esp), %edx
	addl      64(%ebp), %ecx
	movl      %edx, %ebx
	.p2align 4,,10
	.p2align 3
.L0804D1B0:
	subl      $2, %ecx
	movzwl    (%ecx), %esi
	movl      %esi, %eax
	subl      %edx, %eax
	cmpl      %edx, %esi
	sbbl      %esi, %esi
	notl      %esi
	andl      %esi, %eax
	subl      $1, %ebx
	movw      %ax, (%ecx)
	jne       .L0804D1B0
.L0804D1CA:
	movl      (%ebp), %esi
	movl      24(%esp), %edx
	addl      %edx, (%esp)
	movl      4(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L0804D019
.L0804D1DF:
	.p2align 4,,10
	.p2align 3
.L0804D1E0:
	movl      5824(%ebp), %ecx
	movl      60(%ebp), %eax
	cmpl      %eax, %ecx
	jae       .L0804D22D
.L0804D1ED:
	movl      108(%ebp), %ebx
	addl      116(%ebp), %ebx
	cmpl      %ebx, %ecx
	jae       .L0804D265
.L0804D1F7:
	subl      %ebx, %eax
	cmpl      $258, %eax
	movl      %eax, %edx
	ja        .L0804D2C4
.L0804D206:
	movl      56(%ebp), %eax
	addl      %ebx, %eax
	cmpl      $4, %edx
	jae       .L0804D29F
.L0804D214:
	testl     %edx, %edx
	je        .L0804D224
.L0804D218:
	testb     $2, %dl
	movb      $0, (%eax)
	jne       .L0804D2D8
.L0804D224:
	leal      (%edx,%ebx), %eax
	movl      %eax, 5824(%ebp)
.L0804D22D:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D235:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     48(%esi)
	call      adler32
.L0804D242:
	addl      $16, %esp
	movl      %eax, 48(%esi)
	jmp       .L0804D140
.L0804D24D:
	subl      $4, %esp
	pushl     %ebx
	pushl     %edi
	pushl     48(%esi)
	call      crc32
.L0804D25A:
	addl      $16, %esp
	movl      %eax, 48(%esi)
	jmp       .L0804D140
.L0804D265:
	leal      258(%ebx), %edx
	cmpl      %edx, %ecx
	jae       .L0804D22D
.L0804D26F:
	subl      %ecx, %ebx
	subl      %ecx, %eax
	addl      $258, %ebx
	cmpl      %eax, %ebx
	jbe       .L0804D27F
.L0804D27D:
	movl      %eax, %ebx
.L0804D27F:
	addl      56(%ebp), %ecx
	subl      $4, %esp
	pushl     %ebx
	pushl     $0
	pushl     %ecx
	call      memset
.L0804D28E:
	addl      $16, %esp
	addl      %ebx, 5824(%ebp)
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D29F:
	leal      4(%eax), %edi
	movl      $0, (%eax)
	movl      $0, -4(%edx,%eax)
	andl      $-4, %edi
	subl      %edi, %eax
	leal      (%edx,%eax), %ecx
	xorl      %eax, %eax
	shrl      $2, %ecx
	rep stosl     
	jmp       .L0804D224
.L0804D2C4:
	movl      56(%ebp), %eax
	movl      $258, %edx
	addl      %ebx, %eax
	cmpl      $4, %edx
	jae       .L0804D29F
.L0804D2D3:
	jmp       .L0804D214
.L0804D2D8:
	xorl      %ecx, %ecx
	movw      %cx, -2(%edx,%eax)
	jmp       .L0804D224
.L0804D2E4:
	movl      %ebx, %ecx
	movl      (%esp), %ebx
	subl      %ebx, %ecx
	jmp       .L0804D112
	.size	fill_window, .-fill_window
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ebp
.L0804D2FB:
	movl      116(%ebp), %eax
	movl      %eax, %edi
.L0804D300:
	cmpl      $261, %edi
	jbe       .L0804D5B8
.L0804D30C:
	movl      108(%ebp), %ebx
	movl      56(%ebp), %eax
	movl      88(%ebp), %ecx
	movl      52(%ebp), %esi
	movzbl    2(%eax,%ebx), %edx
	movl      72(%ebp), %eax
	andl      %ebx, %esi
	sall      %cl, %eax
	movl      64(%ebp), %ecx
	xorl      %edx, %eax
	andl      84(%ebp), %eax
	movl      68(%ebp), %edx
	movl      %eax, 72(%ebp)
	leal      (%edx,%eax,2), %eax
	movzwl    (%eax), %edx
	testl     %edx, %edx
	movw      %dx, (%ecx,%esi,2)
	movw      %bx, (%eax)
	je        .L0804D357
.L0804D343:
	movl      44(%ebp), %eax
	movl      %ebx, %ecx
	subl      %edx, %ecx
	subl      $262, %eax
	cmpl      %eax, %ecx
	jbe       .L0804D610
.L0804D357:
	movl      96(%ebp), %eax
.L0804D35A:
	cmpl      $2, %eax
	jbe       .L0804D518
.L0804D363:
	subw      112(%ebp), %bx
	movl      5792(%ebp), %edx
	subl      $3, %eax
	movl      5796(%ebp), %ecx
	leal      1(%edx), %esi
	movw      %bx, (%ecx,%edx,2)
	movl      5784(%ebp), %ecx
	subl      $1, %ebx
	movl      %esi, 5792(%ebp)
	movb      %al, (%ecx,%edx)
	movzbl    %al, %eax
	movzbl    _length_code(%eax), %eax
	addw      $1, 1176(%ebp,%eax,4)
	cmpw      $255, %bx
	ja        .L0804D5F8
.L0804D3AD:
	movzwl    %bx, %ebx
	movzbl    _dist_code(%ebx), %eax
.L0804D3B7:
	addw      $1, 2440(%ebp,%eax,4)
	movl      5788(%ebp), %eax
	movl      116(%ebp), %edi
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 8(%esp)
	movl      96(%ebp), %eax
	subl      %eax, %edi
	movl      %eax, 36(%esp)
	cmpl      $2, %edi
	movl      %edi, 116(%ebp)
	jbe       .L0804D580
.L0804D3F1:
	cmpl      128(%ebp), %eax
	ja        .L0804D580
.L0804D3FD:
	movl      64(%ebp), %ecx
	leal      -1(%eax), %esi
	movl      108(%ebp), %eax
	movl      84(%ebp), %edx
	movl      %edi, 44(%esp)
	movl      %esi, 96(%ebp)
	movl      %esi, 4(%esp)
	movl      %ecx, 12(%esp)
	movl      52(%ebp), %ecx
	movl      %eax, %ebx
	movl      %eax, 40(%esp)
	movl      72(%ebp), %eax
	movl      %edx, 28(%esp)
	leal      1(%ebx), %edx
	movl      %ecx, 16(%esp)
	movl      68(%ebp), %ecx
	movl      %ecx, 20(%esp)
	movl      56(%ebp), %ecx
	movl      %ecx, 24(%esp)
	movl      88(%ebp), %ecx
	movl      %ecx, 32(%esp)
	.p2align 4,,10
	.p2align 3
.L0804D448:
	movl      24(%esp), %edi
	movzbl    32(%esp), %ecx
	movl      %edx, 108(%ebp)
	subl      $1, 4(%esp)
	movzbl    2(%edi,%edx), %ebx
	movl      20(%esp), %edi
	sall      %cl, %eax
	movl      12(%esp), %ecx
	xorl      %ebx, %eax
	andl      28(%esp), %eax
	leal      (%edi,%eax,2), %ebx
	movl      16(%esp), %edi
	movl      %eax, 72(%ebp)
	movzwl    (%ebx), %esi
	andl      %edx, %edi
	movw      %si, (%ecx,%edi,2)
	movl      4(%esp), %esi
	movw      %dx, (%ebx)
	addl      $1, %edx
	testl     %esi, %esi
	movl      %esi, 96(%ebp)
	jne       .L0804D448
.L0804D492:
	movl      40(%esp), %esi
	addl      36(%esp), %esi
	movl      44(%esp), %edi
	movl      %esi, 108(%ebp)
	.p2align 4,,10
	.p2align 3
.L0804D4A8:
	movl      8(%esp), %eax
	testl     %eax, %eax
	je        .L0804D300
.L0804D4B4:
	movl      92(%ebp), %eax
	xorl      %edx, %edx
	subl      %eax, %esi
	testl     %eax, %eax
	js        .L0804D4C4
.L0804D4BF:
	addl      56(%ebp), %eax
	movl      %eax, %edx
.L0804D4C4:
	pushl     $0
	pushl     %esi
	pushl     %edx
	pushl     %ebp
	call      _tr_flush_block
.L0804D4CE:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804D4E2:
	movl      20(%edi), %eax
	movl      16(%esi), %ebx
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L0804D4F1
.L0804D4EF:
	movl      %eax, %ebx
.L0804D4F1:
	testl     %ebx, %ebx
	jne       .L0804D622
.L0804D4F9:
	movl      (%ebp), %eax
	movl      16(%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0804D2FB
.L0804D507:
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D511:
	.p2align 4,,10
	.p2align 3
.L0804D518:
	movl      56(%ebp), %eax
	movl      5792(%ebp), %edx
	movl      5796(%ebp), %ecx
	movzbl    (%eax,%ebx), %eax
	xorl      %ebx, %ebx
	movw      %bx, (%ecx,%edx,2)
	movl      5784(%ebp), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 5792(%ebp)
	movb      %al, (%ecx,%edx)
	addw      $1, 148(%ebp,%eax,4)
	movl      5788(%ebp), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	sete      %al
	movzbl    %al, %eax
	movl      %eax, 8(%esp)
	movl      116(%ebp), %eax
	leal      -1(%eax), %edi
	movl      108(%ebp), %eax
	movl      %edi, 116(%ebp)
	leal      1(%eax), %esi
	movl      %esi, 108(%ebp)
	jmp       .L0804D4A8
.L0804D57C:
	.p2align 4,,10
	.p2align 3
.L0804D580:
	movl      36(%esp), %esi
	addl      108(%ebp), %esi
	movl      56(%ebp), %edx
	movl      $0, 96(%ebp)
	movl      88(%ebp), %ecx
	movl      %esi, 108(%ebp)
	movzbl    (%edx,%esi), %eax
	movl      %eax, 72(%ebp)
	movzbl    1(%edx,%esi), %edx
	sall      %cl, %eax
	xorl      %eax, %edx
	andl      84(%ebp), %edx
	movl      %edx, 72(%ebp)
	jmp       .L0804D4A8
.L0804D5B2:
	.p2align 4,,10
	.p2align 3
.L0804D5B8:
	movl      %ebp, %eax
	call      fill_window
.L0804D5BF:
	movl      116(%ebp), %eax
	cmpl      $261, %eax
	ja        .L0804D30C
.L0804D5CD:
	movl      84(%esp), %esi
	testl     %esi, %esi
	je        .L0804D507
.L0804D5D9:
	testl     %eax, %eax
	je        .L0804D65B
.L0804D5DD:
	cmpl      $2, %eax
	ja        .L0804D30C
.L0804D5E6:
	movl      96(%ebp), %eax
	movl      108(%ebp), %ebx
	jmp       .L0804D35A
.L0804D5F1:
	.p2align 4,,10
	.p2align 3
.L0804D5F8:
	shrw      $7, %bx
	movzwl    %bx, %ebx
	movzbl    _dist_code+256(%ebx), %eax
	jmp       .L0804D3B7
.L0804D60B:
	.p2align 4,,10
	.p2align 3
.L0804D610:
	movl      %ebp, %eax
	call      longest_match
.L0804D617:
	movl      108(%ebp), %ebx
	movl      %eax, 96(%ebp)
	jmp       .L0804D35A
.L0804D622:
	subl      $4, %esp
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804D631:
	movl      20(%edi), %eax
	addl      %ebx, 12(%esi)
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%esi)
	subl      %ebx, %eax
	subl      %ebx, 16(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804D4F9
.L0804D650:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804D4F9
.L0804D65B:
	movl      108(%ebp), %edx
	cmpl      $2, %edx
	movl      %edx, %eax
	ja        .L0804D6DE
.L0804D665:
	cmpl      $4, 84(%esp)
	movl      %eax, 5812(%ebp)
	je        .L0804D6F0
.L0804D672:
	movl      5792(%ebp), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L0804D6D6
.L0804D681:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L0804D691
.L0804D68C:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L0804D691:
	pushl     $0
	pushl     %edx
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804D69B:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %ebx
	movl      %eax, 92(%ebp)
	movl      %ebx, (%esp)
	call      _tr_flush_bits
.L0804D6AF:
	movl      20(%ebx), %eax
	movl      16(%edi), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	ja        .L0804D745
.L0804D6C0:
	testl     %esi, %esi
	jne       .L0804D74F
.L0804D6C8:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
.L0804D6D6:
	addl      $60, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D6DE:
	cmpl      $4, 84(%esp)
	movl      $2, %eax
	movl      %eax, 5812(%ebp)
	jne       .L0804D672
.L0804D6F0:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L0804D700
.L0804D6FB:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L0804D700:
	pushl     $1
	pushl     %edx
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804D70A:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %ebx
	movl      %eax, 92(%ebp)
	movl      %ebx, (%esp)
	call      _tr_flush_bits
.L0804D71E:
	movl      20(%ebx), %eax
	movl      16(%edi), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804D72D
.L0804D72B:
	movl      %eax, %esi
.L0804D72D:
	testl     %esi, %esi
	jne       .L0804D788
.L0804D731:
	movl      (%ebp), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $60, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D745:
	movl      %eax, %esi
	testl     %esi, %esi
	je        .L0804D6C8
.L0804D74F:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%ebx)
	pushl     12(%edi)
	call      memcpy
.L0804D75E:
	movl      20(%ebx), %eax
	addl      %esi, 12(%edi)
	addl      $16, %esp
	addl      %esi, 16(%ebx)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%ebx)
	jne       .L0804D6C8
.L0804D77D:
	movl      8(%ebx), %eax
	movl      %eax, 16(%ebx)
	jmp       .L0804D6C8
.L0804D788:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%ebx)
	pushl     12(%edi)
	call      memcpy
.L0804D797:
	movl      20(%ebx), %eax
	addl      %esi, 12(%edi)
	addl      $16, %esp
	addl      %esi, 16(%ebx)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%ebx)
	jne       .L0804D731
.L0804D7B6:
	movl      8(%ebx), %eax
	movl      %eax, 16(%ebx)
	jmp       .L0804D731
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L0804D7C1:
	.p2align 4
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      64(%esp), %ebp
.L0804D7DB:
	movl      116(%ebp), %esi
	.p2align 4,,10
	.p2align 3
.L0804D7E0:
	cmpl      $261, %esi
	jbe       .L0804DA78
.L0804D7EC:
	movl      108(%ebp), %ebx
	movl      56(%ebp), %eax
	movl      88(%ebp), %ecx
	movl      52(%ebp), %esi
	movzbl    2(%eax,%ebx), %edx
	movl      72(%ebp), %eax
	andl      %ebx, %esi
	sall      %cl, %eax
	movl      64(%ebp), %ecx
	xorl      %edx, %eax
	andl      84(%ebp), %eax
	movl      68(%ebp), %edx
	movl      %eax, 72(%ebp)
	leal      (%edx,%eax,2), %eax
	movzwl    (%eax), %edx
	movw      %dx, (%ecx,%esi,2)
	movw      %bx, (%eax)
	testl     %edx, %edx
	movl      96(%ebp), %ecx
	movl      112(%ebp), %eax
	movl      $2, 96(%ebp)
	movl      %eax, 100(%ebp)
	movl      %ecx, 120(%ebp)
	movl      $2, %eax
	je        .L0804D860
.L0804D83B:
	cmpl      128(%ebp), %ecx
	jae       .L0804D860
.L0804D843:
	movl      44(%ebp), %esi
	movl      %ebx, %edi
	subl      %edx, %edi
	subl      $262, %esi
	cmpl      %esi, %edi
	jbe       .L0804DB90
.L0804D858:
	.p2align 4
.L0804D860:
	cmpl      $2, %ecx
	jbe       .L0804DA00
.L0804D869:
	cmpl      %eax, %ecx
	jb        .L0804DA00
.L0804D871:
	movl      116(%ebp), %eax
	movl      5796(%ebp), %edx
	subl      $3, %ecx
	leal      -3(%ebx,%eax), %eax
	subw      100(%ebp), %bx
	movl      %eax, %edi
	movl      5792(%ebp), %eax
	leal      -1(%ebx), %esi
	subl      $2, %ebx
	movw      %si, (%edx,%eax,2)
	movl      5784(%ebp), %edx
	leal      1(%eax), %esi
	movl      %esi, 5792(%ebp)
	movb      %cl, (%edx,%eax)
	movzbl    %cl, %ecx
	movzbl    _length_code(%ecx), %eax
	addw      $1, 1176(%ebp,%eax,4)
	cmpw      $255, %bx
	ja        .L0804DAF0
.L0804D8C7:
	movzwl    %bx, %ebx
	movzbl    _dist_code(%ebx), %eax
.L0804D8D1:
	addw      $1, 2440(%ebp,%eax,4)
	movl      5792(%ebp), %eax
	movl      116(%ebp), %ebx
	movl      %edi, 8(%esp)
	movl      %eax, 12(%esp)
	leal      1(%ebx), %esi
	movl      5788(%ebp), %eax
	subl      $1, %eax
	movl      %eax, 16(%esp)
	movl      120(%ebp), %eax
	subl      %eax, %esi
	leal      -2(%eax), %edx
	movl      %eax, 20(%esp)
	movl      108(%ebp), %eax
	movl      %esi, 116(%ebp)
	movl      %edx, 120(%ebp)
	movl      %esi, 28(%esp)
	movl      %eax, 24(%esp)
	movl      %eax, %ecx
	.p2align 4,,10
	.p2align 3
.L0804D920:
	leal      1(%ecx), %eax
	cmpl      %eax, 8(%esp)
	movl      %eax, 108(%ebp)
	jb        .L0804D95E
.L0804D92C:
	movl      56(%ebp), %esi
	movl      72(%ebp), %edi
	movzbl    3(%esi,%ecx), %esi
	movl      88(%ebp), %ecx
	sall      %cl, %edi
	movl      %edi, %ecx
	movl      52(%ebp), %edi
	xorl      %esi, %ecx
	andl      84(%ebp), %ecx
	movl      68(%ebp), %esi
	andl      %eax, %edi
	movl      %ecx, 72(%ebp)
	leal      (%esi,%ecx,2), %ecx
	movl      64(%ebp), %esi
	movzwl    (%ecx), %ebx
	movw      %bx, (%esi,%edi,2)
	movw      %ax, (%ecx)
.L0804D95E:
	subl      $1, %edx
	movl      %eax, %ecx
	testl     %edx, %edx
	movl      %edx, 120(%ebp)
	jne       .L0804D920
.L0804D96A:
	movl      20(%esp), %eax
	movl      24(%esp), %ebx
	movl      16(%esp), %edi
	cmpl      %edi, 12(%esp)
	movl      28(%esp), %esi
	movl      $0, 104(%ebp)
	leal      -1(%eax,%ebx), %eax
	movl      $2, 96(%ebp)
	movl      %eax, 108(%ebp)
	jne       .L0804D7E0
.L0804D999:
	movl      92(%ebp), %edx
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804D9A9
.L0804D9A4:
	addl      56(%ebp), %edx
	movl      %edx, %ecx
.L0804D9A9:
	pushl     $0
	pushl     %eax
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804D9B3:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804D9C7:
	movl      20(%edi), %eax
	movl      16(%esi), %ebx
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L0804D9D6
.L0804D9D4:
	movl      %eax, %ebx
.L0804D9D6:
	testl     %ebx, %ebx
	jne       .L0804DBB8
.L0804D9DE:
	movl      (%ebp), %eax
	movl      16(%eax), %edi
	testl     %edi, %edi
	jne       .L0804D7DB
.L0804D9EC:
	xorl      %eax, %eax
.L0804D9EE:
	addl      $44, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804D9F6:
	.p2align 4
.L0804DA00:
	movl      104(%ebp), %esi
	testl     %esi, %esi
	je        .L0804DAD0
.L0804DA0B:
	movl      56(%ebp), %eax
	movl      5792(%ebp), %edx
	movl      5796(%ebp), %ecx
	movzbl    -1(%eax,%ebx), %eax
	xorl      %ebx, %ebx
	movw      %bx, (%ecx,%edx,2)
	movl      5784(%ebp), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 5792(%ebp)
	movb      %al, (%ecx,%edx)
	addw      $1, 148(%ebp,%eax,4)
	movl      5788(%ebp), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebp)
	je        .L0804DB08
.L0804DA55:
	movl      116(%ebp), %eax
	addl      $1, 108(%ebp)
	leal      -1(%eax), %esi
	movl      (%ebp), %eax
	movl      %esi, 116(%ebp)
	movl      16(%eax), %edi
	testl     %edi, %edi
	je        .L0804D9EC
.L0804DA6C:
	cmpl      $261, %esi
	ja        .L0804D7EC
.L0804DA78:
	movl      %ebp, %eax
	call      fill_window
.L0804DA7F:
	movl      116(%ebp), %eax
	cmpl      $261, %eax
	ja        .L0804D7EC
.L0804DA8D:
	movl      68(%esp), %edx
	testl     %edx, %edx
	je        .L0804D9EC
.L0804DA99:
	testl     %eax, %eax
	je        .L0804DC20
.L0804DAA1:
	cmpl      $2, %eax
	ja        .L0804D7EC
.L0804DAAA:
	movl      96(%ebp), %ecx
	movl      112(%ebp), %eax
	movl      $2, 96(%ebp)
	movl      108(%ebp), %ebx
	movl      %eax, 100(%ebp)
	movl      %ecx, 120(%ebp)
	movl      $2, %eax
	jmp       .L0804D860
.L0804DACA:
	.p2align 4,,10
	.p2align 3
.L0804DAD0:
	movl      116(%ebp), %eax
	addl      $1, %ebx
	movl      $1, 104(%ebp)
	movl      %ebx, 108(%ebp)
	leal      -1(%eax), %esi
	movl      %esi, 116(%ebp)
	jmp       .L0804D7E0
.L0804DAEB:
	.p2align 4,,10
	.p2align 3
.L0804DAF0:
	shrw      $7, %bx
	movzwl    %bx, %ebx
	movzbl    _dist_code+256(%ebx), %eax
	jmp       .L0804D8D1
.L0804DB03:
	.p2align 4,,10
	.p2align 3
.L0804DB08:
	movl      92(%ebp), %edx
	movl      108(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804DB1B
.L0804DB16:
	addl      56(%ebp), %edx
	movl      %edx, %ecx
.L0804DB1B:
	pushl     $0
	pushl     %eax
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804DB25:
	movl      (%ebp), %esi
	movl      108(%ebp), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804DB39:
	movl      20(%edi), %eax
	movl      16(%esi), %ebx
	addl      $16, %esp
	cmpl      %eax, %ebx
	jbe       .L0804DB48
.L0804DB46:
	movl      %eax, %ebx
.L0804DB48:
	testl     %ebx, %ebx
	je        .L0804DA55
.L0804DB50:
	subl      $4, %esp
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804DB5F:
	movl      20(%edi), %eax
	addl      %ebx, 12(%esi)
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%esi)
	subl      %ebx, %eax
	subl      %ebx, 16(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804DA55
.L0804DB7E:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804DA55
.L0804DB89:
	.p2align 4
.L0804DB90:
	movl      %ebp, %eax
	call      longest_match
.L0804DB97:
	cmpl      $5, %eax
	movl      %eax, 96(%ebp)
	ja        .L0804DBAD
.L0804DB9F:
	cmpl      $1, 136(%ebp)
	je        .L0804DBF1
.L0804DBA8:
	cmpl      $3, %eax
	je        .L0804DC08
.L0804DBAD:
	movl      120(%ebp), %ecx
	movl      108(%ebp), %ebx
	jmp       .L0804D860
.L0804DBB8:
	subl      $4, %esp
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804DBC7:
	movl      20(%edi), %eax
	addl      %ebx, 12(%esi)
	addl      $16, %esp
	addl      %ebx, 16(%edi)
	addl      %ebx, 20(%esi)
	subl      %ebx, %eax
	subl      %ebx, 16(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804D9DE
.L0804DBE6:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804D9DE
.L0804DBF1:
	movl      108(%ebp), %ebx
.L0804DBF4:
	movl      $2, 96(%ebp)
	movl      120(%ebp), %ecx
	movl      $2, %eax
	jmp       .L0804D860
.L0804DC08:
	movl      108(%ebp), %ebx
	movl      %ebx, %edx
	subl      112(%ebp), %edx
	cmpl      $4096, %edx
	ja        .L0804DBF4
.L0804DC18:
	movl      120(%ebp), %ecx
	jmp       .L0804D860
.L0804DC20:
	movl      104(%ebp), %esi
	testl     %esi, %esi
	je        .L0804DC66
.L0804DC27:
	movl      56(%ebp), %edx
	movl      108(%ebp), %eax
	xorl      %ebx, %ebx
	movl      5796(%ebp), %ecx
	movzbl    -1(%edx,%eax), %eax
	movl      5792(%ebp), %edx
	movw      %bx, (%ecx,%edx,2)
	movl      5784(%ebp), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 5792(%ebp)
	movb      %al, (%ecx,%edx)
	addw      $1, 148(%ebp,%eax,4)
	movl      $0, 104(%ebp)
.L0804DC66:
	movl      108(%ebp), %edx
	cmpl      $2, %edx
	movl      %edx, %eax
	ja        .L0804DCE7
.L0804DC70:
	cmpl      $4, 68(%esp)
	movl      %eax, 5812(%ebp)
	je        .L0804DCF9
.L0804DC7D:
	movl      5792(%ebp), %ecx
	movl      $1, %eax
	testl     %ecx, %ecx
	je        .L0804D9EE
.L0804DC90:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L0804DCA0
.L0804DC9B:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L0804DCA0:
	pushl     $0
	pushl     %edx
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804DCAA:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %ebx
	movl      %eax, 92(%ebp)
	movl      %ebx, (%esp)
	call      _tr_flush_bits
.L0804DCBE:
	movl      20(%ebx), %eax
	movl      16(%edi), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804DCCD
.L0804DCCB:
	movl      %eax, %esi
.L0804DCCD:
	testl     %esi, %esi
	jne       .L0804DD4E
.L0804DCD1:
	movl      (%ebp), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	addl      $44, %esp
	popl      %ebx
	movzbl    %al, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804DCE7:
	cmpl      $4, 68(%esp)
	movl      $2, %eax
	movl      %eax, 5812(%ebp)
	jne       .L0804DC7D
.L0804DCF9:
	movl      92(%ebp), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L0804DD09
.L0804DD04:
	addl      56(%ebp), %eax
	movl      %eax, %ecx
.L0804DD09:
	pushl     $1
	pushl     %edx
	pushl     %ecx
	pushl     %ebp
	call      _tr_flush_block
.L0804DD13:
	movl      (%ebp), %edi
	movl      108(%ebp), %eax
	movl      28(%edi), %ebx
	movl      %eax, 92(%ebp)
	movl      %ebx, (%esp)
	call      _tr_flush_bits
.L0804DD27:
	movl      20(%ebx), %eax
	movl      16(%edi), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804DD36
.L0804DD34:
	movl      %eax, %esi
.L0804DD36:
	testl     %esi, %esi
	jne       .L0804DD87
.L0804DD3A:
	movl      (%ebp), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $44, %esp
	popl      %ebx
	addl      $3, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804DD4E:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%ebx)
	pushl     12(%edi)
	call      memcpy
.L0804DD5D:
	movl      20(%ebx), %eax
	addl      %esi, 12(%edi)
	addl      $16, %esp
	addl      %esi, 16(%ebx)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%ebx)
	jne       .L0804DCD1
.L0804DD7C:
	movl      8(%ebx), %eax
	movl      %eax, 16(%ebx)
	jmp       .L0804DCD1
.L0804DD87:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%ebx)
	pushl     12(%edi)
	call      memcpy
.L0804DD96:
	movl      20(%ebx), %eax
	addl      %esi, 12(%edi)
	addl      $16, %esp
	addl      %esi, 16(%ebx)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%ebx)
	jne       .L0804DD3A
.L0804DDB1:
	movl      8(%ebx), %eax
	movl      %eax, 16(%ebx)
	jmp       .L0804DD3A
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L0804DDB9:
	.p2align 4
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      12(%ebx), %eax
	subl      $5, %eax
	cmpl      $65534, %eax
	movl      %eax, 8(%esp)
	jbe       .L0804DE07
.L0804DDDC:
	movl      $65535, 8(%esp)
	jmp       .L0804DE07
.L0804DDE6:
	.p2align 4
.L0804DDF0:
	cmpl      %ecx, %eax
	jae       .L0804DE2E
.L0804DDF4:
	movl      44(%ebx), %edi
	subl      %edx, %eax
	leal      -262(%edi), %ecx
	cmpl      %ecx, %eax
	jae       .L0804DE99
.L0804DE07:
	movl      116(%ebx), %eax
	cmpl      $1, %eax
	jbe       .L0804DF40
.L0804DE13:
	addl      108(%ebx), %eax
	movl      92(%ebx), %edx
	movl      8(%esp), %esi
	movl      $0, 116(%ebx)
	testl     %eax, %eax
	movl      %eax, 108(%ebx)
	leal      (%esi,%edx), %ecx
	jne       .L0804DDF0
.L0804DE2E:
	subl      %ecx, %eax
	movl      %ecx, 108(%ebx)
	subl      %edx, %ecx
	movl      %eax, 116(%ebx)
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804DE43
.L0804DE3E:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L0804DE43:
	pushl     $0
	pushl     %ecx
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L0804DE4D:
	movl      (%ebx), %esi
	movl      108(%ebx), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804DE60:
	movl      20(%edi), %eax
	movl      16(%esi), %ebp
	addl      $16, %esp
	cmpl      %eax, %ebp
	jbe       .L0804DE6F
.L0804DE6D:
	movl      %eax, %ebp
.L0804DE6F:
	testl     %ebp, %ebp
	jne       .L0804DF00
.L0804DE77:
	movl      (%ebx), %eax
	movl      16(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0804DEF0
.L0804DE80:
	movl      44(%ebx), %edi
	movl      108(%ebx), %eax
	movl      92(%ebx), %edx
	leal      -262(%edi), %ecx
	subl      %edx, %eax
	cmpl      %ecx, %eax
	jb        .L0804DE07
.L0804DE99:
	xorl      %ecx, %ecx
	testl     %edx, %edx
	js        .L0804DEA4
.L0804DE9F:
	addl      56(%ebx), %edx
	movl      %edx, %ecx
.L0804DEA4:
	pushl     $0
	pushl     %eax
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804DEAE:
	movl      (%ebx), %edx
	movl      108(%ebx), %eax
	movl      28(%edx), %edi
	movl      %eax, 92(%ebx)
	movl      %edx, 28(%esp)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804DEC5:
	movl      28(%esp), %edx
	movl      20(%edi), %eax
	addl      $16, %esp
	movl      16(%edx), %ebp
	cmpl      %eax, %ebp
	jbe       .L0804DED8
.L0804DED6:
	movl      %eax, %ebp
.L0804DED8:
	testl     %ebp, %ebp
	jne       .L0804DFD7
.L0804DEE0:
	movl      (%ebx), %eax
	movl      16(%eax), %edx
	testl     %edx, %edx
	jne       .L0804DE07
.L0804DEED:
	.p2align 4,,10
	.p2align 3
.L0804DEF0:
	xorl      %eax, %eax
.L0804DEF2:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804DEFA:
	.p2align 4,,10
	.p2align 3
.L0804DF00:
	subl      $4, %esp
	pushl     %ebp
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804DF0F:
	movl      20(%edi), %eax
	addl      %ebp, 12(%esi)
	addl      $16, %esp
	addl      %ebp, 16(%edi)
	addl      %ebp, 20(%esi)
	subl      %ebp, %eax
	subl      %ebp, 16(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804DE77
.L0804DF2E:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804DE77
.L0804DF39:
	.p2align 4
.L0804DF40:
	movl      %ebx, %eax
	call      fill_window
.L0804DF47:
	movl      116(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804DE13
.L0804DF52:
	movl      52(%esp), %esi
	testl     %esi, %esi
	je        .L0804DEF0
.L0804DF5A:
	cmpl      $4, 52(%esp)
	movl      $0, 5812(%ebx)
	je        .L0804E018
.L0804DF6F:
	movl      108(%ebx), %edx
	movl      92(%ebx), %ecx
	movl      $1, %eax
	cmpl      %ecx, %edx
	jle       .L0804DEF2
.L0804DF82:
	subl      %ecx, %edx
	xorb      %al, %al
	testl     %ecx, %ecx
	js        .L0804DF8F
.L0804DF8A:
	movl      56(%ebx), %eax
	addl      %ecx, %eax
.L0804DF8F:
	pushl     $0
	pushl     %edx
	pushl     %eax
	pushl     %ebx
	call      _tr_flush_block
.L0804DF99:
	movl      (%ebx), %ebp
	movl      108(%ebx), %eax
	movl      28(%ebp), %esi
	movl      %eax, 92(%ebx)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0804DFAC:
	movl      20(%esi), %eax
	movl      16(%ebp), %edi
	addl      $16, %esp
	cmpl      %eax, %edi
	ja        .L0804E06B
.L0804DFBD:
	testl     %edi, %edi
	jne       .L0804E072
.L0804DFC5:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	jmp       .L0804DEF2
.L0804DFD7:
	subl      $4, %esp
	pushl     %ebp
	pushl     16(%edi)
	pushl     12(%edx)
	movl      %edx, 28(%esp)
	call      memcpy
.L0804DFEA:
	movl      20(%edi), %eax
	movl      28(%esp), %edx
	addl      $16, %esp
	subl      %ebp, %eax
	addl      %ebp, 12(%edx)
	addl      %ebp, 16(%edi)
	addl      %ebp, 20(%edx)
	subl      %ebp, 16(%edx)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804DEE0
.L0804E00D:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804DEE0
.L0804E018:
	movl      92(%ebx), %edx
	movl      108(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804E02B
.L0804E026:
	addl      56(%ebx), %edx
	movl      %edx, %ecx
.L0804E02B:
	pushl     $1
	pushl     %eax
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804E035:
	movl      (%ebx), %ebp
	movl      108(%ebx), %eax
	movl      28(%ebp), %esi
	movl      %eax, 92(%ebx)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0804E048:
	movl      20(%esi), %eax
	movl      16(%ebp), %edi
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L0804E057
.L0804E055:
	movl      %eax, %edi
.L0804E057:
	testl     %edi, %edi
	jne       .L0804E0AB
.L0804E05B:
	movl      (%ebx), %eax
	cmpl      $1, 16(%eax)
	sbbl      %eax, %eax
	addl      $3, %eax
	jmp       .L0804DEF2
.L0804E06B:
	movl      %eax, %edi
	jmp       .L0804DFBD
.L0804E072:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%ebp)
	call      memcpy
.L0804E081:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebp)
	addl      $16, %esp
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebp)
	subl      %edi, %eax
	subl      %edi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804DFC5
.L0804E0A0:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0804DFC5
.L0804E0AB:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%ebp)
	call      memcpy
.L0804E0BA:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebp)
	addl      $16, %esp
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebp)
	subl      %edi, %eax
	subl      %edi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804E05B
.L0804E0D5:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0804E05B
	.size	deflate_stored, .-deflate_stored
# ----------------------
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      80(%esp), %ecx
	movl      84(%esp), %esi
	movl      88(%esp), %ebx
	testl     %ecx, %ecx
	je        .L0804E2EF
.L0804E0FB:
	movl      80(%esp), %eax
	testl     %esi, %esi
	movl      28(%eax), %edi
	je        .L0804E2EF
.L0804E10A:
	testl     %edi, %edi
	je        .L0804E2EF
.L0804E112:
	movl      24(%edi), %eax
	cmpl      $2, %eax
	movl      %eax, 36(%esp)
	je        .L0804E2EF
.L0804E122:
	cmpl      $1, %eax
	je        .L0804E271
.L0804E12B:
	movl      116(%edi), %eax
	testl     %eax, %eax
	jne       .L0804E2EF
.L0804E136:
	movl      44(%edi), %eax
	movl      $0, 24(%edi)
	cmpl      %eax, %ebx
	jae       .L0804E25E
.L0804E148:
	movl      80(%esp), %eax
	movl      4(%eax), %eax
	movl      %eax, 40(%esp)
	movl      80(%esp), %eax
	movl      (%eax), %eax
	movl      %eax, 44(%esp)
	movl      80(%esp), %eax
	movl      %ebx, 4(%eax)
	movl      %esi, (%eax)
	movl      %edi, %eax
	call      fill_window
.L0804E16D:
	movl      116(%edi), %ebx
	cmpl      $2, %ebx
	jbe       .L0804E20F
.L0804E179:
	.p2align 4
.L0804E180:
	movl      88(%edi), %eax
	movl      108(%edi), %esi
	movl      72(%edi), %edx
	movl      64(%edi), %ebp
	movl      %eax, 16(%esp)
	movl      56(%edi), %eax
	leal      -2(%esi,%ebx), %ebx
	movl      %ebx, 12(%esp)
	movl      %eax, 20(%esp)
	movl      84(%edi), %eax
	movl      %eax, 24(%esp)
	movl      52(%edi), %eax
	movl      %eax, 28(%esp)
	movl      68(%edi), %eax
	movl      %eax, 32(%esp)
	.p2align 4,,10
	.p2align 3
.L0804E1B8:
	movl      20(%esp), %ecx
	movl      32(%esp), %eax
	movzbl    2(%ecx,%esi), %ebx
	movzbl    16(%esp), %ecx
	sall      %cl, %edx
	xorl      %ebx, %edx
	andl      24(%esp), %edx
	movl      28(%esp), %ebx
	andl      %esi, %ebx
	leal      (%eax,%edx,2), %ecx
	movl      %edx, 72(%edi)
	movzwl    (%ecx), %eax
	movw      %ax, (%ebp,%ebx,2)
	movw      %si, (%ecx)
	addl      $1, %esi
	cmpl      12(%esp), %esi
	jne       .L0804E1B8
.L0804E1F2:
	movl      %esi, 108(%edi)
	movl      $2, 116(%edi)
	movl      %edi, %eax
	call      fill_window
.L0804E203:
	movl      116(%edi), %ebx
	cmpl      $2, %ebx
	ja        .L0804E180
.L0804E20F:
	movl      108(%edi), %eax
	movl      44(%esp), %esi
	movl      %ebx, 5812(%edi)
	movl      $0, 116(%edi)
	movl      $2, 120(%edi)
	movl      $2, 96(%edi)
	addl      %ebx, %eax
	movl      $0, 104(%edi)
	movl      %eax, 108(%edi)
	movl      %eax, 92(%edi)
	movl      80(%esp), %eax
	movl      %esi, (%eax)
	movl      40(%esp), %esi
	movl      %esi, 4(%eax)
	movl      36(%esp), %eax
	movl      %eax, 24(%edi)
	addl      $60, %esp
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E25E:
	movl      36(%esp), %edx
	testl     %edx, %edx
	je        .L0804E2AC
.L0804E266:
	subl      %eax, %ebx
	addl      %ebx, %esi
	movl      %eax, %ebx
	jmp       .L0804E148
.L0804E271:
	cmpl      $42, 4(%edi)
	jne       .L0804E2EF
.L0804E277:
	movl      116(%edi), %edx
	testl     %edx, %edx
	jne       .L0804E2EF
.L0804E27E:
	subl      $4, %esp
	pushl     %ebx
	pushl     %esi
	movl      92(%esp), %eax
	pushl     48(%eax)
	call      adler32
.L0804E28F:
	movl      96(%esp), %edx
	addl      $16, %esp
	movl      %eax, 48(%edx)
	movl      44(%edi), %eax
	movl      $0, 24(%edi)
	cmpl      %eax, %ebx
	jae       .L0804E266
.L0804E2A7:
	jmp       .L0804E148
.L0804E2AC:
	movl      76(%edi), %eax
	movl      68(%edi), %edx
	subl      $4, %esp
	xorl      %ebp, %ebp
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      %bp, (%edx,%eax,2)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L0804E2CC:
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	addl      $16, %esp
	movl      $0, 5812(%edi)
	movl      44(%edi), %eax
	jmp       .L0804E266
.L0804E2EF:
	addl      $60, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
.L0804E2FC:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804E3C8
.L0804E311:
	movl      28(%ebx), %esi
	testl     %esi, %esi
	je        .L0804E3C8
.L0804E31C:
	movl      32(%ebx), %edx
	testl     %edx, %edx
	je        .L0804E3C8
.L0804E327:
	movl      36(%ebx), %eax
	testl     %eax, %eax
	je        .L0804E3C8
.L0804E332:
	movl      8(%esi), %eax
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	movl      $2, 44(%ebx)
	movl      $0, 20(%esi)
	movl      %eax, 16(%esi)
	movl      24(%esi), %eax
	testl     %eax, %eax
	js        .L0804E3A0
.L0804E362:
	jne       .L0804E3A5
.L0804E364:
	movl      $113, 4(%esi)
.L0804E36B:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804E379:
	addl      $16, %esp
.L0804E37C:
	subl      $12, %esp
	movl      %eax, 48(%ebx)
	movl      $0, 40(%esi)
	pushl     %esi
	call      _tr_init
.L0804E38F:
	addl      $16, %esp
	xorl      %eax, %eax
.L0804E394:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0804E39A:
	.p2align 4,,10
	.p2align 3
.L0804E3A0:
	negl      %eax
	movl      %eax, 24(%esi)
.L0804E3A5:
	cmpl      $2, %eax
	movl      $42, 4(%esi)
	jne       .L0804E36B
.L0804E3B1:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804E3BF:
	addl      $16, %esp
	jmp       .L0804E37C
.L0804E3C4:
	.p2align 4,,10
	.p2align 3
.L0804E3C8:
	movl      $-2, %eax
	jmp       .L0804E394
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
.L0804E3CF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804E548
.L0804E3E1:
	movl      28(%ebx), %esi
	testl     %esi, %esi
	je        .L0804E548
.L0804E3EC:
	movl      32(%ebx), %eax
	testl     %eax, %eax
	je        .L0804E548
.L0804E3F7:
	movl      36(%ebx), %eax
	testl     %eax, %eax
	je        .L0804E548
.L0804E402:
	movl      8(%esi), %eax
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	movl      $2, 44(%ebx)
	movl      $0, 20(%esi)
	movl      %eax, 16(%esi)
	movl      24(%esi), %eax
	testl     %eax, %eax
	js        .L0804E518
.L0804E436:
	jne       .L0804E51D
.L0804E43C:
	movl      $113, 4(%esi)
.L0804E443:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804E451:
	addl      $16, %esp
.L0804E454:
	subl      $12, %esp
	movl      %eax, 48(%ebx)
	movl      $0, 40(%esi)
	pushl     %esi
	xorl      %esi, %esi
	call      _tr_init
.L0804E469:
	movl      28(%ebx), %ebx
	addl      $12, %esp
	movl      44(%ebx), %eax
	movl      68(%ebx), %edx
	addl      %eax, %eax
	movl      %eax, 60(%ebx)
	movl      76(%ebx), %eax
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      %si, (%edx,%eax,2)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L0804E492:
	movl      132(%ebx), %eax
	movl      $0, 108(%ebx)
	addl      $16, %esp
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	leal      (%eax,%eax,2), %eax
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	sall      $2, %eax
	leal      configuration_table(%eax), %edx
	movzwl    configuration_table+2(%eax), %ecx
	movzwl    configuration_table(%eax), %eax
	movl      %eax, 140(%ebx)
	movzwl    4(%edx), %eax
	movl      %ecx, 128(%ebx)
	movl      %eax, 144(%ebx)
	movzwl    6(%edx), %eax
	movl      %eax, 124(%ebx)
	xorl      %eax, %eax
.L0804E50F:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0804E515:
	.p2align 4,,10
	.p2align 3
.L0804E518:
	negl      %eax
	movl      %eax, 24(%esi)
.L0804E51D:
	cmpl      $2, %eax
	movl      $42, 4(%esi)
	jne       .L0804E443
.L0804E52D:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804E53B:
	addl      $16, %esp
	jmp       .L0804E454
.L0804E543:
	.p2align 4,,10
	.p2align 3
.L0804E548:
	movl      $-2, %eax
	jmp       .L0804E50F
	.size	deflateReset, .-deflateReset
# ----------------------
.L0804E54F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L0804E570
.L0804E558:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0804E570
.L0804E55F:
	cmpl      $2, 24(%eax)
	jne       .L0804E570
.L0804E565:
	movl      8(%esp), %edx
	movl      %edx, 28(%eax)
	xorl      %eax, %eax
	ret       
.L0804E56F:
	.p2align 4,,10
	.p2align 3
.L0804E570:
	movl      $-2, %eax
	ret       
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L0804E576:
	.p2align 4
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %ebx
	movl      8(%esp), %eax
	movl      12(%esp), %ecx
	movl      16(%esp), %edx
	testl     %eax, %eax
	je        .L0804E5C0
.L0804E591:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0804E5C0
.L0804E598:
	testl     %ecx, %ecx
	je        .L0804E5A1
.L0804E59C:
	movl      20(%eax), %ebx
	movl      %ebx, (%ecx)
.L0804E5A1:
	testl     %edx, %edx
	je        .L0804E5B8
.L0804E5A5:
	movl      5820(%eax), %eax
	movl      %eax, (%edx)
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L0804E5B1:
	.p2align 4,,10
	.p2align 3
.L0804E5B8:
	xorl      %eax, %eax
	popl      %ebx
	ret       
.L0804E5BC:
	.p2align 4,,10
	.p2align 3
.L0804E5C0:
	movl      $-2, %eax
	popl      %ebx
	ret       
	.size	deflatePending, .-deflatePending
# ----------------------
.L0804E5C7:
	.p2align 4
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %eax
	movl      36(%esp), %edi
	movl      40(%esp), %ebp
	testl     %eax, %eax
	je        .L0804E65B
.L0804E5E7:
	movl      28(%eax), %esi
	testl     %esi, %esi
	je        .L0804E65B
.L0804E5EE:
	movl      16(%esi), %eax
	addl      $2, %eax
	cmpl      %eax, 5796(%esi)
	jb        .L0804E654
.L0804E5FC:
	.p2align 4,,10
	.p2align 3
.L0804E600:
	movl      5820(%esi), %edx
	movl      $16, %eax
	movl      %edi, %ebx
	subl      %edx, %eax
	cmpl      %eax, %edi
	jle       .L0804E615
.L0804E613:
	movl      %eax, %ebx
.L0804E615:
	movl      %ebx, %ecx
	movl      $1, %eax
	subl      $12, %esp
	sall      %cl, %eax
	movl      %edx, %ecx
	addl      %ebx, %edx
	subl      $1, %eax
	movl      %edx, 5820(%esi)
	andl      %ebp, %eax
	sall      %cl, %eax
	orw       %ax, 5816(%esi)
	pushl     %esi
	call      _tr_flush_bits
.L0804E63F:
	movl      %ebx, %ecx
	addl      $16, %esp
	sarl      %cl, %ebp
	subl      %ebx, %edi
	jne       .L0804E600
.L0804E64A:
	xorl      %eax, %eax
.L0804E64C:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E654:
	movl      $-5, %eax
	jmp       .L0804E64C
.L0804E65B:
	movl      $-2, %eax
	jmp       .L0804E64C
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L0804E662:
	.p2align 4
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L0804E6B0
.L0804E678:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L0804E6B0
.L0804E67F:
	movl      8(%esp), %edx
	movl      %edx, 140(%eax)
	movl      12(%esp), %edx
	movl      %edx, 128(%eax)
	movl      16(%esp), %edx
	movl      %edx, 144(%eax)
	movl      20(%esp), %edx
	movl      %edx, 124(%eax)
	xorl      %eax, %eax
	ret       
.L0804E6A7:
	.p2align 4
.L0804E6B0:
	movl      $-2, %eax
	ret       
	.size	deflateTune, .-deflateTune
# ----------------------
.L0804E6B6:
	.p2align 4
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      24(%esp), %ecx
	movl      20(%esp), %esi
	leal      7(%ecx), %ebx
	leal      63(%ecx), %eax
	movl      %ebx, %edx
	shrl      $6, %eax
	shrl      $3, %edx
	addl      %edx, %eax
	addl      %ecx, %eax
	testl     %esi, %esi
	je        .L0804E7C0
.L0804E6E6:
	movl      28(%esi), %esi
	testl     %esi, %esi
	je        .L0804E7C0
.L0804E6F1:
	movl      24(%esi), %edx
	cmpl      $1, %edx
	je        .L0804E7A8
.L0804E6FD:
	cmpl      $2, %edx
	je        .L0804E720
.L0804E702:
	cmpl      $1, %edx
	sbbl      %edx, %edx
	notl      %edx
	andl      $6, %edx
.L0804E70C:
	cmpl      $15, 48(%esi)
	je        .L0804E780
.L0804E712:
	popl      %ebx
	leal      5(%edx,%eax), %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E71B:
	.p2align 4,,10
	.p2align 3
.L0804E720:
	movl      28(%esi), %ebp
	testl     %ebp, %ebp
	je        .L0804E7D0
.L0804E72B:
	movl      16(%ebp), %edx
	testl     %edx, %edx
	je        .L0804E7E0
.L0804E736:
	movl      20(%ebp), %edi
	leal      20(%edi), %edx
.L0804E73C:
	movl      28(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E752
.L0804E743:
	subl      %edx, %edi
	.p2align 4,,10
	.p2align 3
.L0804E748:
	addl      $1, %edx
	cmpb      $0, -1(%edi,%edx)
	jne       .L0804E748
.L0804E752:
	movl      36(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E76A
.L0804E759:
	subl      %edx, %edi
	.p2align 4,,10
	.p2align 3
.L0804E760:
	addl      $1, %edx
	cmpb      $0, -1(%edi,%edx)
	jne       .L0804E760
.L0804E76A:
	movl      44(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E70C
.L0804E771:
	addl      $2, %edx
	jmp       .L0804E70C
.L0804E776:
	.p2align 4
.L0804E780:
	cmpl      $15, 80(%esi)
	jne       .L0804E712
.L0804E786:
	movl      %ecx, %eax
	shrl      $12, %eax
	addl      %eax, %ebx
	movl      %ecx, %eax
	shrl      $25, %ecx
	shrl      $14, %eax
	addl      %eax, %ebx
	leal      (%ebx,%ecx), %eax
	popl      %ebx
	addl      %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E7A1:
	.p2align 4,,10
	.p2align 3
.L0804E7A8:
	cmpl      $1, 108(%esi)
	sbbl      %edx, %edx
	andl      $-4, %edx
	addl      $10, %edx
	jmp       .L0804E70C
.L0804E7B9:
	.p2align 4
.L0804E7C0:
	popl      %ebx
	addl      $11, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E7C8:
	.p2align 4
.L0804E7D0:
	movl      $18, %edx
	jmp       .L0804E70C
.L0804E7DA:
	.p2align 4,,10
	.p2align 3
.L0804E7E0:
	movl      $18, %edx
	jmp       .L0804E73C
	.size	deflateBound, .-deflateBound
# ----------------------
.L0804E7EA:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0804F5E4
.L0804E803:
	movl      28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F5E4
.L0804E80E:
	cmpl      $5, 52(%esp)
	ja        .L0804F5E4
.L0804E819:
	movl      12(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F3A3
.L0804E824:
	movl      (%ebp), %eax
	testl     %eax, %eax
	je        .L0804F398
.L0804E82F:
	cmpl      $4, 52(%esp)
	movl      4(%ebx), %eax
	setne     7(%esp)
	je        .L0804E849
.L0804E83E:
	cmpl      $666, %eax
	je        .L0804F3A3
.L0804E849:
	movl      16(%ebp), %esi
	testl     %esi, %esi
	je        .L0804EC80
.L0804E854:
	movl      40(%ebx), %edi
	cmpl      $42, %eax
	movl      %ebp, (%ebx)
	movl      %edi, 8(%esp)
	movl      52(%esp), %edi
	movl      %edi, 40(%ebx)
	je        .L0804EA78
.L0804E86D:
	cmpl      $69, %eax
	je        .L0804EB65
.L0804E876:
	cmpl      $73, %eax
	movl      20(%ebx), %esi
	je        .L0804EC68
.L0804E882:
	cmpl      $91, %eax
	je        .L0804F42C
.L0804E88B:
	cmpl      $103, %eax
	je        .L0804F434
.L0804E894:
	testl     %esi, %esi
	jne       .L0804EA28
.L0804E89C:
	movl      4(%ebp), %eax
	testl     %eax, %eax
	je        .L0804E910
.L0804E8A3:
	cmpl      $666, 4(%ebx)
	je        .L0804EC80
.L0804E8B0:
	movl      136(%ebx), %eax
	cmpl      $2, %eax
	je        .L0804F4C8
.L0804E8BF:
	cmpl      $3, %eax
	je        .L0804F088
.L0804E8C8:
	movl      132(%ebx), %eax
	subl      $8, %esp
	pushl     60(%esp)
	pushl     %ebx
	leal      (%eax,%eax,2), %eax
	call      *configuration_table+8(,%eax,4)
.L0804E8E0:
	leal      -2(%eax), %edx
	addl      $16, %esp
	cmpl      $1, %edx
	jbe       .L0804F3B8
.L0804E8EF:
	movl      %eax, %edx
	andl      $-3, %edx
.L0804E8F4:
	testl     %edx, %edx
	jne       .L0804E970
.L0804E8F8:
	movl      16(%ebp), %ebp
	testl     %ebp, %ebp
	je        .L0804EC98
.L0804E903:
	xorl      %eax, %eax
.L0804E905:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804E90D:
	.p2align 4,,10
	.p2align 3
.L0804E910:
	movl      52(%esp), %eax
	movl      8(%esp), %edi
	cmpl      $5, %eax
	leal      (%eax,%eax), %edx
	sete      %al
	xorl      %ecx, %ecx
	movzbl    %al, %eax
	leal      (%eax,%eax,8), %eax
	subl      %eax, %edx
	movl      %edi, %eax
	addl      %eax, %eax
	cmpl      $4, %edi
	setg      %cl
	leal      (%ecx,%ecx,8), %ecx
	subl      %ecx, %eax
	cmpl      %eax, %edx
	jg        .L0804E949
.L0804E93E:
	cmpb      $0, 7(%esp)
	jne       .L0804EC80
.L0804E949:
	movl      4(%ebx), %eax
.L0804E94C:
	movl      116(%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804E8B0
.L0804E957:
	movl      52(%esp), %edx
	testl     %edx, %edx
	je        .L0804E903
.L0804E95F:
	cmpl      $666, %eax
	jne       .L0804E8B0
.L0804E96A:
	jmp       .L0804E979
.L0804E96C:
	.p2align 4,,10
	.p2align 3
.L0804E970:
	cmpl      $1, %eax
	je        .L0804ECF8
.L0804E979:
	cmpb      $0, 7(%esp)
	jne       .L0804E903
.L0804E980:
	movl      24(%ebx), %eax
	testl     %eax, %eax
	jle       .L0804F9D0
.L0804E98B:
	cmpl      $2, %eax
	je        .L0804F790
.L0804E994:
	movl      20(%ebx), %edx
	movl      48(%ebp), %eax
	movl      8(%ebx), %esi
	leal      1(%edx), %edi
	movl      %eax, %ecx
	shrl      $24, %eax
	shrl      $16, %ecx
	movl      %edi, 20(%ebx)
	movb      %al, (%esi,%edx)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebx)
	movb      %cl, (%edx,%eax)
	movzwl    48(%ebp), %edx
	movl      20(%ebx), %eax
	movl      8(%ebx), %edi
	leal      1(%eax), %esi
	movl      %edx, %ecx
	shrl      $8, %ecx
	movl      %esi, 20(%ebx)
	movb      %cl, (%edi,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebx)
	movb      %dl, (%ecx,%eax)
.L0804E9E4:
	movl      28(%ebp), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L0804E9F0:
	movl      20(%edi), %eax
	movl      16(%ebp), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804E9FF
.L0804E9FD:
	movl      %eax, %esi
.L0804E9FF:
	testl     %esi, %esi
	jne       .L0804F636
.L0804EA07:
	movl      24(%ebx), %eax
	testl     %eax, %eax
	jle       .L0804EA13
.L0804EA0E:
	negl      %eax
	movl      %eax, 24(%ebx)
.L0804EA13:
	movl      20(%ebx), %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	sete      %al
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804EA25:
	.p2align 4,,10
	.p2align 3
.L0804EA28:
	movl      28(%ebp), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804EA34:
	movl      16(%ebp), %eax
	movl      20(%esi), %edx
	addl      $16, %esp
	cmpl      %edx, %eax
	movl      %eax, %edi
	ja        .L0804ECA8
.L0804EA47:
	testl     %edi, %edi
	jne       .L0804ECB2
.L0804EA4F:
	testl     %eax, %eax
	je        .L0804ED8F
.L0804EA57:
	movl      4(%ebx), %eax
	cmpl      $666, %eax
	je        .L0804EC70
.L0804EA65:
	movl      4(%ebp), %esi
	testl     %esi, %esi
	je        .L0804E94C
.L0804EA70:
	jmp       .L0804E8B0
.L0804EA75:
	.p2align 4,,10
	.p2align 3
.L0804EA78:
	cmpl      $2, 24(%ebx)
	je        .L0804F82F
.L0804EA82:
	movl      48(%ebx), %eax
	xorl      %ecx, %ecx
	sall      $12, %eax
	subl      $30720, %eax
	cmpl      $1, 136(%ebx)
	jle       .L0804EE30
.L0804EA9C:
	movl      108(%ebx), %esi
	orl       %eax, %ecx
	testl     %esi, %esi
	je        .L0804EAA8
.L0804EAA5:
	orl       $32, %ecx
.L0804EAA8:
	movl      %ecx, %eax
	movl      $138547333, %edx
	movl      8(%ebx), %esi
	mull      %edx
	movl      $113, 4(%ebx)
	subl      %edx, %ecx
	shrl      $1, %ecx
	addl      %ecx, %edx
	shrl      $4, %edx
	movl      %edx, %eax
	sall      $5, %eax
	subl      %edx, %eax
	movl      20(%ebx), %edx
	addl      $31, %eax
	leal      1(%edx), %ecx
	movl      %ecx, 20(%ebx)
	movl      %eax, %ecx
	shrl      $8, %ecx
	movb      %cl, (%esi,%edx)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %esi
	movl      %esi, 20(%ebx)
	movb      %al, (%ecx,%edx)
	movl      108(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804EB45
.L0804EAF5:
	movl      20(%ebx), %edx
	movl      48(%ebp), %eax
	movl      8(%ebx), %edi
	leal      1(%edx), %esi
	movl      %eax, %ecx
	shrl      $24, %eax
	shrl      $16, %ecx
	movl      %esi, 20(%ebx)
	movb      %al, (%edi,%edx)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebx)
	movb      %cl, (%edx,%eax)
	movl      20(%ebx), %eax
	movzwl    48(%ebp), %edx
	movl      8(%ebx), %esi
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movl      %edx, %ecx
	shrl      $8, %ecx
	movb      %cl, (%esi,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %esi
	movl      %esi, 20(%ebx)
	movb      %dl, (%ecx,%eax)
.L0804EB45:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804EB53:
	movl      %eax, 48(%ebp)
	movl      4(%ebx), %eax
	addl      $16, %esp
	cmpl      $69, %eax
	jne       .L0804E876
.L0804EB65:
	movl      28(%ebx), %eax
.L0804EB68:
	movl      16(%eax), %edx
	testl     %edx, %edx
	je        .L0804F700
.L0804EB73:
	movl      20(%eax), %ecx
	movl      32(%ebx), %edx
	movl      20(%ebx), %esi
	movzwl    %cx, %edi
	cmpl      %edx, %edi
	movl      %esi, (%esp)
	jbe       .L0804EC50
.L0804EB8A:
	movl      %esi, %ecx
	jmp       .L0804EBBC
.L0804EB8E:
	.p2align 4,,10
	.p2align 3
.L0804EB90:
	movl      16(%eax), %eax
	leal      1(%ecx), %edi
	movl      %edi, 20(%ebx)
	movl      8(%ebx), %edi
	movzbl    (%eax,%edx), %eax
	movb      %al, (%edi,%ecx)
	movl      32(%ebx), %eax
	leal      1(%eax), %edx
	movl      28(%ebx), %eax
	movl      %edx, 32(%ebx)
	movl      20(%eax), %ecx
	movzwl    %cx, %edi
	cmpl      %edx, %edi
	jbe       .L0804EC10
.L0804EBB9:
	movl      20(%ebx), %ecx
.L0804EBBC:
	cmpl      %ecx, 12(%ebx)
	jne       .L0804EB90
.L0804EBC1:
	cmpl      %esi, %ecx
	jbe       .L0804EBD0
.L0804EBC5:
	movl      44(%eax), %edi
	testl     %edi, %edi
	jne       .L0804F378
.L0804EBD0:
	movl      28(%ebp), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L0804EBDC:
	movl      20(%edi), %eax
	movl      16(%ebp), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804EBEB
.L0804EBE9:
	movl      %eax, %esi
.L0804EBEB:
	testl     %esi, %esi
	jne       .L0804EEA0
.L0804EBF3:
	movl      20(%ebx), %esi
	cmpl      12(%ebx), %esi
	movl      %esi, (%esp)
	je        .L0804F68C
.L0804EC02:
	movl      28(%ebx), %eax
	movl      32(%ebx), %edx
	movl      %esi, %ecx
	jmp       .L0804EB90
.L0804EC0C:
	.p2align 4,,10
	.p2align 3
.L0804EC10:
	movl      44(%eax), %esi
	testl     %esi, %esi
	movl      20(%ebx), %esi
	je        .L0804EC50
.L0804EC1A:
	cmpl      (%esp), %esi
	jbe       .L0804EC50
.L0804EC1F:
	subl      $4, %esp
	movl      4(%esp), %eax
	subl      %eax, %esi
	addl      8(%ebx), %eax
	pushl     %esi
	pushl     %eax
	pushl     48(%ebp)
	call      crc32
.L0804EC35:
	movl      %eax, 48(%ebp)
	movl      28(%ebx), %eax
	addl      $16, %esp
	movl      32(%ebx), %edx
	movl      20(%ebx), %esi
	movl      20(%eax), %ecx
	.p2align 4
.L0804EC50:
	cmpl      %ecx, %edx
	je        .L0804ED9E
.L0804EC58:
	movl      4(%ebx), %eax
	cmpl      $73, %eax
	jne       .L0804E882
.L0804EC64:
	.p2align 4,,10
	.p2align 3
.L0804EC68:
	movl      28(%ebx), %eax
	jmp       .L0804EDAC
.L0804EC70:
	movl      4(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E94C
.L0804EC7B:
	.p2align 4,,10
	.p2align 3
.L0804EC80:
	movl      z_errmsg+28, %eax
	movl      %eax, 24(%ebp)
	addl      $28, %esp
	movl      $-5, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804EC95:
	.p2align 4,,10
	.p2align 3
.L0804EC98:
	movl      $-1, 40(%ebx)
	jmp       .L0804E903
.L0804ECA4:
	.p2align 4,,10
	.p2align 3
.L0804ECA8:
	movl      %edx, %edi
	testl     %edi, %edi
	je        .L0804EA4F
.L0804ECB2:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%ebp)
	call      memcpy
.L0804ECC1:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebp)
	addl      $16, %esp
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebp)
	subl      %edi, %eax
	subl      %edi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804ECE2
.L0804ECDC:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
.L0804ECE2:
	movl      16(%ebp), %eax
	testl     %eax, %eax
	jne       .L0804EA57
.L0804ECED:
	jmp       .L0804ED8F
.L0804ECF2:
	.p2align 4,,10
	.p2align 3
.L0804ECF8:
	cmpl      $1, 52(%esp)
	je        .L0804FA5B
.L0804ED03:
	cmpl      $5, 52(%esp)
	je        .L0804ED62
.L0804ED0A:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %ebx
	call      _tr_stored_block
.L0804ED16:
	addl      $16, %esp
	cmpl      $3, 52(%esp)
	jne       .L0804ED62
.L0804ED20:
	movl      76(%ebx), %eax
	movl      68(%ebx), %edx
	subl      $4, %esp
	xorl      %esi, %esi
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      %si, (%edx,%eax,2)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L0804ED40:
	movl      116(%ebx), %edi
	addl      $16, %esp
	testl     %edi, %edi
	jne       .L0804ED62
.L0804ED4A:
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 5812(%ebx)
.L0804ED62:
	movl      28(%ebp), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804ED6E:
	movl      16(%ebp), %eax
	movl      20(%esi), %edx
	addl      $16, %esp
	cmpl      %edx, %eax
	movl      %eax, %edi
	jbe       .L0804ED7F
.L0804ED7D:
	movl      %edx, %edi
.L0804ED7F:
	testl     %edi, %edi
	jne       .L0804F758
.L0804ED87:
	testl     %eax, %eax
	jne       .L0804E979
.L0804ED8F:
	movl      $-1, 40(%ebx)
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804ED9E:
	movl      $0, 32(%ebx)
	movl      $73, 4(%ebx)
.L0804EDAC:
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L0804F70F
.L0804EDB7:
	movl      %esi, %edx
	jmp       .L0804EDEA
.L0804EDBB:
	.p2align 4,,10
	.p2align 3
.L0804EDC0:
	movl      28(%eax), %ecx
	movl      32(%ebx), %eax
	leal      1(%eax), %edi
	movl      %edi, 32(%ebx)
	movzbl    (%ecx,%eax), %eax
	leal      1(%edx), %edi
	movl      8(%ebx), %ecx
	movl      %edi, 20(%ebx)
	testb     %al, %al
	movb      %al, (%ecx,%edx)
	je        .L0804EEE0
.L0804EDE4:
	movl      20(%ebx), %edx
	movl      28(%ebx), %eax
.L0804EDEA:
	cmpl      %edx, 12(%ebx)
	jne       .L0804EDC0
.L0804EDEF:
	cmpl      %edx, %esi
	jae       .L0804EDFE
.L0804EDF3:
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0804F358
.L0804EDFE:
	movl      28(%ebp), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L0804EE0A:
	movl      20(%edi), %eax
	movl      16(%ebp), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804EE19
.L0804EE17:
	movl      %eax, %esi
.L0804EE19:
	testl     %esi, %esi
	jne       .L0804EE68
.L0804EE1D:
	movl      20(%ebx), %esi
	cmpl      12(%ebx), %esi
	movl      28(%ebx), %eax
	je        .L0804F684
.L0804EE2C:
	movl      %esi, %edx
	jmp       .L0804EDC0
.L0804EE30:
	movl      132(%ebx), %edx
	cmpl      $1, %edx
	jle       .L0804EA9C
.L0804EE3F:
	cmpl      $5, %edx
	movb      $64, %cl
	jle       .L0804EA9C
.L0804EE4A:
	xorl      %ecx, %ecx
	cmpl      $6, %edx
	setne     %cl
	subl      $1, %ecx
	andl      $-64, %ecx
	addl      $192, %ecx
	jmp       .L0804EA9C
.L0804EE63:
	.p2align 4,,10
	.p2align 3
.L0804EE68:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%edi)
	pushl     12(%ebp)
	call      memcpy
.L0804EE77:
	movl      20(%edi), %eax
	addl      %esi, 12(%ebp)
	addl      $16, %esp
	addl      %esi, 16(%edi)
	addl      %esi, 20(%ebp)
	subl      %esi, %eax
	subl      %esi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804EE1D
.L0804EE92:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804EE1D
.L0804EE9D:
	.p2align 4,,10
	.p2align 3
.L0804EEA0:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%edi)
	pushl     12(%ebp)
	call      memcpy
.L0804EEAF:
	movl      20(%edi), %eax
	addl      %esi, 12(%ebp)
	addl      $16, %esp
	addl      %esi, 16(%edi)
	addl      %esi, 20(%ebp)
	subl      %esi, %eax
	subl      %esi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804EBF3
.L0804EECE:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804EBF3
.L0804EED9:
	.p2align 4
.L0804EEE0:
	movl      28(%ebx), %eax
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	movl      20(%ebx), %ecx
	je        .L0804EF10
.L0804EEED:
	cmpl      %esi, %ecx
	jbe       .L0804EF10
.L0804EEF1:
	subl      %esi, %ecx
	addl      8(%ebx), %esi
	subl      $4, %esp
	pushl     %ecx
	pushl     %esi
	pushl     48(%ebp)
	call      crc32
.L0804EF03:
	movl      20(%ebx), %ecx
	movl      %eax, 48(%ebp)
	addl      $16, %esp
	movl      28(%ebx), %eax
	.p2align 4,,10
	.p2align 3
.L0804EF10:
	movl      $0, 32(%ebx)
	movl      $91, 4(%ebx)
.L0804EF1E:
	movl      %ecx, %esi
.L0804EF20:
	movl      36(%eax), %edx
	testl     %edx, %edx
	je        .L0804F020
.L0804EF2B:
	movl      %esi, %ecx
	movl      %esi, %edx
	jmp       .L0804EF62
.L0804EF31:
	.p2align 4,,10
	.p2align 3
.L0804EF38:
	movl      36(%eax), %esi
	movl      32(%ebx), %eax
	leal      1(%eax), %edi
	movl      %edi, 32(%ebx)
	movzbl    (%esi,%eax), %eax
	leal      1(%edx), %edi
	movl      8(%ebx), %esi
	movl      %edi, 20(%ebx)
	testb     %al, %al
	movb      %al, (%esi,%edx)
	je        .L0804EFE8
.L0804EF5C:
	movl      20(%ebx), %edx
	movl      28(%ebx), %eax
.L0804EF62:
	cmpl      %edx, 12(%ebx)
	jne       .L0804EF38
.L0804EF67:
	cmpl      %edx, %ecx
	jae       .L0804EF76
.L0804EF6B:
	movl      44(%eax), %eax
	testl     %eax, %eax
	jne       .L0804F338
.L0804EF76:
	movl      28(%ebp), %edi
	subl      $12, %esp
	pushl     %edi
	call      _tr_flush_bits
.L0804EF82:
	movl      20(%edi), %eax
	movl      16(%ebp), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804EF91
.L0804EF8F:
	movl      %eax, %esi
.L0804EF91:
	testl     %esi, %esi
	jne       .L0804EFB0
.L0804EF95:
	movl      20(%ebx), %ecx
	cmpl      12(%ebx), %ecx
	movl      28(%ebx), %eax
	je        .L0804F66F
.L0804EFA4:
	movl      %ecx, %edx
	jmp       .L0804EF38
.L0804EFA8:
	.p2align 4
.L0804EFB0:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%edi)
	pushl     12(%ebp)
	call      memcpy
.L0804EFBF:
	movl      20(%edi), %eax
	addl      %esi, 12(%ebp)
	addl      $16, %esp
	addl      %esi, 16(%edi)
	addl      %esi, 20(%ebp)
	subl      %esi, %eax
	subl      %esi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804EF95
.L0804EFDA:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804EF95
.L0804EFE2:
	.p2align 4,,10
	.p2align 3
.L0804EFE8:
	movl      28(%ebx), %eax
	movl      20(%ebx), %esi
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L0804F020
.L0804EFF5:
	cmpl      %ecx, %esi
	jbe       .L0804F020
.L0804EFF9:
	subl      %ecx, %esi
	addl      8(%ebx), %ecx
	subl      $4, %esp
	pushl     %esi
	pushl     %ecx
	pushl     48(%ebp)
	call      crc32
.L0804F00B:
	movl      20(%ebx), %esi
	movl      %eax, 48(%ebp)
	addl      $16, %esp
	movl      28(%ebx), %eax
	.p2align 4
.L0804F020:
	movl      $103, 4(%ebx)
.L0804F027:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L0804F420
.L0804F032:
	leal      2(%esi), %eax
	cmpl      12(%ebx), %eax
	ja        .L0804F71D
.L0804F03E:
	leal      1(%esi), %edx
	movl      8(%ebx), %eax
	subl      $4, %esp
	movl      %edx, 20(%ebx)
	movl      48(%ebp), %edx
	movb      %dl, (%eax,%esi)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      48(%ebp), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804F070:
	movl      20(%ebx), %esi
	movl      %eax, 48(%ebp)
	addl      $16, %esp
	movl      $113, 4(%ebx)
	jmp       .L0804E894
.L0804F085:
	.p2align 4,,10
	.p2align 3
.L0804F088:
	movzbl    _dist_code, %eax
	movl      %ebp, 48(%esp)
	leal      0(,%eax,4), %edi
	movl      %edi, %ebp
.L0804F09C:
	movl      116(%ebx), %esi
	jmp       .L0804F132
.L0804F0A4:
	.p2align 4,,10
	.p2align 3
.L0804F0A8:
	movl      $0, 96(%ebx)
.L0804F0AF:
	movl      108(%ebx), %eax
	movl      56(%ebx), %edi
	testl     %eax, %eax
	movl      %edi, (%esp)
	je        .L0804F0D0
.L0804F0BC:
	leal      -1(%edi,%eax), %ecx
	movzbl    (%ecx), %edx
	movzbl    (%ecx), %edi
	cmpb      %dl, 1(%ecx)
	je        .L0804F190
.L0804F0CF:
	.p2align 4,,10
	.p2align 3
.L0804F0D0:
	movl      (%esp), %edi
	movl      5792(%ebx), %edx
	xorl      %esi, %esi
	movl      5796(%ebx), %ecx
	movzbl    (%edi,%eax), %eax
	movw      %si, (%ecx,%edx,2)
	movl      5784(%ebx), %ecx
	leal      1(%edx), %esi
	movl      %esi, 5792(%ebx)
	movb      %al, (%ecx,%edx)
	addw      $1, 148(%ebx,%eax,4)
	xorl      %edx, %edx
	movl      5788(%ebx), %eax
	subl      $1, %eax
	cmpl      %eax, 5792(%ebx)
	movl      116(%ebx), %eax
	leal      -1(%eax), %esi
	movl      108(%ebx), %eax
	sete      %dl
	movl      %esi, 116(%ebx)
	addl      $1, %eax
	testl     %edx, %edx
	movl      %eax, 108(%ebx)
	jne       .L0804F2D2
.L0804F132:
	cmpl      $258, %esi
	ja        .L0804F0A8
.L0804F13E:
	movl      %ebx, %eax
	call      fill_window
.L0804F145:
	movl      116(%ebx), %esi
	cmpl      $258, %esi
	ja        .L0804F0A8
.L0804F154:
	movl      52(%esp), %eax
	testl     %eax, %eax
	je        .L0804F32B
.L0804F160:
	testl     %esi, %esi
	je        .L0804F43C
.L0804F168:
	cmpl      $2, %esi
	movl      $0, 96(%ebx)
	ja        .L0804F0AF
.L0804F178:
	movl      56(%ebx), %edi
	movl      108(%ebx), %eax
	movl      %edi, (%esp)
	jmp       .L0804F0D0
.L0804F186:
	.p2align 4
.L0804F190:
	movzbl    2(%ecx), %edx
	cmpl      %edx, %edi
	jne       .L0804F0D0
.L0804F19C:
	movzbl    3(%ecx), %edx
	cmpl      %edx, %edi
	jne       .L0804F0D0
.L0804F1A8:
	movl      (%esp), %edx
	addl      $3, %ecx
	movl      %ebx, 12(%esp)
	leal      258(%edx,%eax), %edx
	movl      %edx, 8(%esp)
	movl      (%esp), %edx
	jmp       .L0804F228
.L0804F1C2:
	.p2align 4,,10
	.p2align 3
.L0804F1C8:
	movzbl    2(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FA8B
.L0804F1D4:
	movzbl    3(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FAEE
.L0804F1E0:
	movzbl    4(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FADD
.L0804F1EC:
	movzbl    5(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FACC
.L0804F1F8:
	movzbl    6(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FABB
.L0804F204:
	movzbl    7(%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FAAA
.L0804F210:
	addl      $8, %ecx
	movzbl    (%ecx), %ebx
	cmpl      %ebx, %edi
	jne       .L0804FA9C
.L0804F21E:
	cmpl      8(%esp), %ecx
	jae       .L0804FA9C
.L0804F228:
	movzbl    1(%ecx), %ebx
	cmpl      %ebx, %edi
	je        .L0804F1C8
.L0804F230:
	movl      12(%esp), %ebx
	movl      %ecx, %edi
	movl      %edx, (%esp)
	addl      $1, %edi
.L0804F23C:
	movl      %edi, %ecx
	subl      8(%esp), %ecx
	addl      $258, %ecx
	cmpl      %esi, %ecx
	movl      %ecx, 96(%ebx)
	jbe       .L0804F9C1
.L0804F253:
	movl      %esi, 96(%ebx)
	movl      %esi, %ecx
.L0804F258:
	movl      5792(%ebx), %edx
	leal      -3(%ecx), %eax
	movl      5796(%ebx), %ecx
	movl      $1, %edi
	movw      %di, (%ecx,%edx,2)
	movl      5784(%ebx), %ecx
	leal      1(%edx), %esi
	movl      %esi, 5792(%ebx)
	movb      %al, (%ecx,%edx)
	movzbl    %al, %eax
	xorl      %edx, %edx
	movzbl    _length_code(%eax), %eax
	addw      $1, 1176(%ebx,%eax,4)
	addw      $1, 2440(%ebx,%ebp)
	movl      5788(%ebx), %eax
	movl      116(%ebx), %esi
	subl      $1, %eax
	cmpl      %eax, 5792(%ebx)
	movl      96(%ebx), %eax
	movl      $0, 96(%ebx)
	sete      %dl
	subl      %eax, %esi
	addl      108(%ebx), %eax
	testl     %edx, %edx
	movl      %esi, 116(%ebx)
	movl      %eax, 108(%ebx)
	je        .L0804F132
.L0804F2D2:
	movl      92(%ebx), %edx
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804F2E2
.L0804F2DD:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L0804F2E2:
	pushl     $0
	pushl     %eax
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804F2EC:
	movl      (%ebx), %edi
	movl      108(%ebx), %eax
	movl      28(%edi), %edx
	movl      %eax, 92(%ebx)
	movl      %edx, 16(%esp)
	movl      %edx, (%esp)
	call      _tr_flush_bits
.L0804F303:
	movl      16(%esp), %edx
	movl      16(%edi), %esi
	addl      $16, %esp
	movl      20(%edx), %eax
	cmpl      %eax, %esi
	jbe       .L0804F316
.L0804F314:
	movl      %eax, %esi
.L0804F316:
	testl     %esi, %esi
	jne       .L0804F3D0
.L0804F31E:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L0804F09C
.L0804F32B:
	movl      48(%esp), %ebp
	jmp       .L0804E8F8
.L0804F334:
	.p2align 4,,10
	.p2align 3
.L0804F338:
	subl      %ecx, %edx
	addl      8(%ebx), %ecx
	subl      $4, %esp
	pushl     %edx
	pushl     %ecx
	pushl     48(%ebp)
	call      crc32
.L0804F34A:
	addl      $16, %esp
	movl      %eax, 48(%ebp)
	jmp       .L0804EF76
.L0804F355:
	.p2align 4,,10
	.p2align 3
.L0804F358:
	subl      %esi, %edx
	addl      8(%ebx), %esi
	subl      $4, %esp
	pushl     %edx
	pushl     %esi
	pushl     48(%ebp)
	call      crc32
.L0804F36A:
	addl      $16, %esp
	movl      %eax, 48(%ebp)
	jmp       .L0804EDFE
.L0804F375:
	.p2align 4,,10
	.p2align 3
.L0804F378:
	subl      %esi, %ecx
	addl      8(%ebx), %esi
	subl      $4, %esp
	pushl     %ecx
	pushl     %esi
	pushl     48(%ebp)
	call      crc32
.L0804F38A:
	addl      $16, %esp
	movl      %eax, 48(%ebp)
	jmp       .L0804EBD0
.L0804F395:
	.p2align 4,,10
	.p2align 3
.L0804F398:
	movl      4(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E82F
.L0804F3A3:
	movl      z_errmsg+16, %eax
	movl      %eax, 24(%ebp)
	movl      $-2, %eax
	jmp       .L0804E905
.L0804F3B5:
	.p2align 4,,10
	.p2align 3
.L0804F3B8:
	andl      $-3, %eax
.L0804F3BB:
	testl     %eax, %eax
	movl      $666, 4(%ebx)
	je        .L0804E8F8
.L0804F3CA:
	jmp       .L0804E979
.L0804F3CF:
	.p2align 4,,10
	.p2align 3
.L0804F3D0:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%edx)
	movl      %edx, 12(%esp)
	pushl     12(%edi)
	call      memcpy
.L0804F3E3:
	movl      16(%esp), %edx
	addl      %esi, 12(%edi)
	addl      $16, %esp
	movl      20(%edx), %eax
	addl      %esi, 16(%edx)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%edx)
	jne       .L0804F31E
.L0804F406:
	movl      8(%edx), %eax
	movl      %eax, 16(%edx)
	jmp       .L0804F31E
.L0804F411:
	cmpl      $103, 4(%ebx)
	movl      %ecx, %esi
	jne       .L0804E894
.L0804F41D:
	.p2align 4,,10
	.p2align 3
.L0804F420:
	movl      $113, 4(%ebx)
	jmp       .L0804E894
.L0804F42C:
	movl      28(%ebx), %eax
	jmp       .L0804EF20
.L0804F434:
	movl      28(%ebx), %eax
	jmp       .L0804F027
.L0804F43C:
	movl      48(%esp), %ebp
.L0804F440:
	cmpl      $4, 52(%esp)
	movl      $0, 5812(%ebx)
	je        .L0804F69A
.L0804F455:
	movl      5792(%ebx), %eax
	testl     %eax, %eax
	je        .L0804ECF8
.L0804F463:
	movl      92(%ebx), %edx
	movl      108(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804F476
.L0804F471:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L0804F476:
	pushl     $0
	pushl     %eax
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804F480:
	movl      (%ebx), %edx
	movl      108(%ebx), %eax
	movl      28(%edx), %esi
	movl      %eax, 92(%ebx)
	movl      %edx, 16(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0804F497:
	movl      16(%esp), %edx
	movl      20(%esi), %eax
	addl      $16, %esp
	movl      16(%edx), %edi
	cmpl      %eax, %edi
	ja        .L0804F5EE
.L0804F4AC:
	testl     %edi, %edi
	jne       .L0804F5F5
.L0804F4B4:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	setne     %al
	movzbl    %al, %eax
	movl      %eax, %edx
	jmp       .L0804E8F4
.L0804F4C8:
	movl      %ebp, 48(%esp)
.L0804F4CC:
	movl      116(%ebx), %eax
	jmp       .L0804F539
.L0804F4D1:
	.p2align 4,,10
	.p2align 3
.L0804F4D8:
	movl      56(%ebx), %edx
	movl      108(%ebx), %eax
	xorl      %esi, %esi
	movl      $0, 96(%ebx)
	movl      5796(%ebx), %ecx
	movzbl    (%edx,%eax), %eax
	movl      5792(%ebx), %edx
	movw      %si, (%ecx,%edx,2)
	movl      5784(%ebx), %ecx
	leal      1(%edx), %esi
	movl      %esi, 5792(%ebx)
	movb      %al, (%ecx,%edx)
	addw      $1, 148(%ebx,%eax,4)
	movl      5788(%ebx), %eax
	movl      108(%ebx), %edi
	leal      -1(%eax), %ecx
	movl      116(%ebx), %eax
	leal      1(%edi), %edx
	movl      %edx, 108(%ebx)
	subl      $1, %eax
	cmpl      %ecx, 5792(%ebx)
	movl      %eax, 116(%ebx)
	je        .L0804F560
.L0804F539:
	testl     %eax, %eax
	jne       .L0804F4D8
.L0804F53D:
	movl      %ebx, %eax
	call      fill_window
.L0804F544:
	movl      116(%ebx), %ebp
	testl     %ebp, %ebp
	jne       .L0804F4D8
.L0804F54B:
	movl      52(%esp), %edi
	movl      48(%esp), %ebp
	testl     %edi, %edi
	jne       .L0804F440
.L0804F55B:
	jmp       .L0804E8F8
.L0804F560:
	movl      92(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %eax, %edx
	testl     %eax, %eax
	js        .L0804F570
.L0804F56B:
	addl      56(%ebx), %eax
	movl      %eax, %ecx
.L0804F570:
	pushl     $0
	pushl     %edx
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804F57A:
	movl      (%ebx), %edi
	movl      108(%ebx), %eax
	movl      28(%edi), %ebp
	movl      %eax, 92(%ebx)
	movl      %ebp, (%esp)
	call      _tr_flush_bits
.L0804F58D:
	movl      20(%ebp), %eax
	movl      16(%edi), %esi
	addl      $16, %esp
	cmpl      %eax, %esi
	jbe       .L0804F59C
.L0804F59A:
	movl      %eax, %esi
.L0804F59C:
	testl     %esi, %esi
	jne       .L0804F5B2
.L0804F5A0:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	jne       .L0804F4CC
.L0804F5AD:
	jmp       .L0804F32B
.L0804F5B2:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%ebp)
	pushl     12(%edi)
	call      memcpy
.L0804F5C1:
	movl      20(%ebp), %eax
	addl      %esi, 12(%edi)
	addl      $16, %esp
	addl      %esi, 16(%ebp)
	addl      %esi, 20(%edi)
	subl      %esi, %eax
	subl      %esi, 16(%edi)
	testl     %eax, %eax
	movl      %eax, 20(%ebp)
	jne       .L0804F5A0
.L0804F5DC:
	movl      8(%ebp), %eax
	movl      %eax, 16(%ebp)
	jmp       .L0804F5A0
.L0804F5E4:
	movl      $-2, %eax
	jmp       .L0804E905
.L0804F5EE:
	movl      %eax, %edi
	jmp       .L0804F4AC
.L0804F5F5:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%edx)
	movl      %edx, 16(%esp)
	call      memcpy
.L0804F608:
	movl      16(%esp), %edx
	addl      $16, %esp
	addl      %edi, 12(%edx)
	addl      %edi, 16(%esi)
	subl      %edi, 16(%edx)
	movl      20(%esi), %eax
	subl      %edi, %eax
	addl      %edi, 20(%edx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804F4B4
.L0804F62B:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0804F4B4
.L0804F636:
	subl      $4, %esp
	pushl     %esi
	pushl     16(%edi)
	pushl     12(%ebp)
	call      memcpy
.L0804F645:
	movl      20(%edi), %eax
	addl      %esi, 12(%ebp)
	addl      $16, %esp
	addl      %esi, 16(%edi)
	addl      %esi, 20(%ebp)
	subl      %esi, %eax
	subl      %esi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804EA07
.L0804F664:
	movl      8(%edi), %eax
	movl      %eax, 16(%edi)
	jmp       .L0804EA07
.L0804F66F:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L0804F411
.L0804F67A:
	movl      %ecx, %esi
	movl      4(%ebx), %eax
	jmp       .L0804E88B
.L0804F684:
	movl      4(%ebx), %eax
	jmp       .L0804E882
.L0804F68C:
	movl      28(%ebx), %eax
	movl      32(%ebx), %edx
	movl      20(%eax), %ecx
	jmp       .L0804EC50
.L0804F69A:
	movl      92(%ebx), %edx
	movl      108(%ebx), %eax
	xorl      %ecx, %ecx
	subl      %edx, %eax
	testl     %edx, %edx
	js        .L0804F6AD
.L0804F6A8:
	movl      56(%ebx), %ecx
	addl      %edx, %ecx
.L0804F6AD:
	pushl     $1
	pushl     %eax
	pushl     %ecx
	pushl     %ebx
	call      _tr_flush_block
.L0804F6B7:
	movl      (%ebx), %edx
	movl      108(%ebx), %eax
	movl      28(%edx), %esi
	movl      %eax, 92(%ebx)
	movl      %edx, 16(%esp)
	movl      %esi, (%esp)
	call      _tr_flush_bits
.L0804F6CE:
	movl      16(%esp), %edx
	movl      20(%esi), %eax
	addl      $16, %esp
	movl      16(%edx), %edi
	cmpl      %eax, %edi
	jbe       .L0804F6E1
.L0804F6DF:
	movl      %eax, %edi
.L0804F6E1:
	testl     %edi, %edi
	jne       .L0804F9E1
.L0804F6E9:
	movl      (%ebx), %eax
	movl      16(%eax), %eax
	testl     %eax, %eax
	je        .L0804F9DA
.L0804F6F6:
	movl      $1, %eax
	jmp       .L0804F3BB
.L0804F700:
	movl      $73, 4(%ebx)
	movl      20(%ebx), %esi
	jmp       .L0804EDAC
.L0804F70F:
	movl      $91, 4(%ebx)
	movl      %esi, %ecx
	jmp       .L0804EF1E
.L0804F71D:
	movl      28(%ebp), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804F729:
	movl      20(%esi), %eax
	movl      16(%ebp), %edi
	addl      $16, %esp
	cmpl      %eax, %edi
	jbe       .L0804F738
.L0804F736:
	movl      %eax, %edi
.L0804F738:
	testl     %edi, %edi
	jne       .L0804FA22
.L0804F740:
	movl      20(%ebx), %esi
	leal      2(%esi), %eax
	cmpl      12(%ebx), %eax
	ja        .L0804E894
.L0804F74F:
	jmp       .L0804F03E
.L0804F754:
	.p2align 4,,10
	.p2align 3
.L0804F758:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%ebp)
	call      memcpy
.L0804F767:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebp)
	addl      $16, %esp
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebp)
	subl      %edi, %eax
	subl      %edi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804F788
.L0804F782:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
.L0804F788:
	movl      16(%ebp), %eax
	jmp       .L0804ED87
.L0804F790:
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      48(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      48(%ebp), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movzwl    50(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movzbl    51(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      8(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      8(%ebp), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movzwl    10(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movzbl    11(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	jmp       .L0804E9E4
.L0804F82F:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804F83D:
	movl      %eax, 48(%ebp)
	movl      20(%ebx), %eax
	addl      $16, %esp
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $31, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $139, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $8, (%edx,%eax)
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L0804FAFF
.L0804F87E:
	movl      (%edx), %ecx
	movl      20(%ebx), %esi
	movl      8(%ebx), %edi
	testl     %ecx, %ecx
	leal      1(%esi), %eax
	setne     %cl
	cmpl      $1, 44(%edx)
	movl      %eax, 20(%ebx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $2, %eax
	addl      %eax, %ecx
	cmpl      $1, 16(%edx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $4, %eax
	addl      %eax, %ecx
	cmpl      $1, 28(%edx)
	sbbl      %eax, %eax
	notl      %eax
	andl      $8, %eax
	addl      %ecx, %eax
	cmpl      $1, 36(%edx)
	sbbl      %edx, %edx
	notl      %edx
	andl      $16, %edx
	addl      %edx, %eax
	movb      %al, (%edi,%esi)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      28(%ebx), %edx
	movl      4(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      28(%ebx), %eax
	movl      4(%eax), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      28(%ebx), %edx
	movzwl    6(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      28(%ebx), %edx
	movzbl    7(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebx), %eax
	movl      132(%ebx), %ecx
	leal      1(%eax), %edx
	addl      8(%ebx), %eax
	cmpl      $9, %ecx
	movl      %edx, 20(%ebx)
	movl      $2, %edx
	je        .L0804F955
.L0804F93D:
	cmpl      $1, 136(%ebx)
	jg        .L0804FBA1
.L0804F94A:
	cmpl      $1, %ecx
	jle       .L0804FBA1
.L0804F953:
	xorl      %edx, %edx
.L0804F955:
	movb      %dl, (%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebx)
	movl      28(%ebx), %edx
	movl      12(%edx), %edx
	movb      %dl, (%ecx,%eax)
	movl      28(%ebx), %eax
	movl      16(%eax), %edx
	testl     %edx, %edx
	je        .L0804F9A3
.L0804F976:
	movl      20(%ebx), %edx
	movl      20(%eax), %eax
	movl      8(%ebx), %esi
	leal      1(%edx), %ecx
	movl      %ecx, 20(%ebx)
	movb      %al, (%esi,%edx)
	movl      20(%ebx), %edx
	movl      8(%ebx), %ecx
	leal      1(%edx), %eax
	movl      %eax, 20(%ebx)
	movl      28(%ebx), %eax
	movl      20(%eax), %eax
	shrl      $8, %eax
	movb      %al, (%ecx,%edx)
	movl      28(%ebx), %eax
.L0804F9A3:
	movl      44(%eax), %edi
	testl     %edi, %edi
	jne       .L0804FA6C
.L0804F9AE:
	movl      $0, 32(%ebx)
	movl      $69, 4(%ebx)
	jmp       .L0804EB68
.L0804F9C1:
	cmpl      $2, %ecx
	ja        .L0804F258
.L0804F9CA:
	jmp       .L0804F0D0
.L0804F9CF:
	.p2align 4,,10
	.p2align 3
.L0804F9D0:
	movl      $1, %eax
	jmp       .L0804E905
.L0804F9DA:
	xorl      %eax, %eax
	jmp       .L0804F3BB
.L0804F9E1:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%edx)
	movl      %edx, 16(%esp)
	call      memcpy
.L0804F9F4:
	movl      16(%esp), %edx
	addl      $16, %esp
	addl      %edi, 12(%edx)
	addl      %edi, 16(%esi)
	subl      %edi, 16(%edx)
	movl      20(%esi), %eax
	subl      %edi, %eax
	addl      %edi, 20(%edx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804F6E9
.L0804FA17:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0804F6E9
.L0804FA22:
	subl      $4, %esp
	pushl     %edi
	pushl     16(%esi)
	pushl     12(%ebp)
	call      memcpy
.L0804FA31:
	movl      20(%esi), %eax
	addl      %edi, 12(%ebp)
	addl      $16, %esp
	addl      %edi, 16(%esi)
	addl      %edi, 20(%ebp)
	subl      %edi, %eax
	subl      %edi, 16(%ebp)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804F740
.L0804FA50:
	movl      8(%esi), %eax
	movl      %eax, 16(%esi)
	jmp       .L0804F740
.L0804FA5B:
	subl      $12, %esp
	pushl     %ebx
	call      _tr_align
.L0804FA64:
	addl      $16, %esp
	jmp       .L0804ED62
.L0804FA6C:
	subl      $4, %esp
	pushl     20(%ebx)
	pushl     8(%ebx)
	pushl     48(%ebp)
	call      crc32
.L0804FA7D:
	addl      $16, %esp
	movl      %eax, 48(%ebp)
	movl      28(%ebx), %eax
	jmp       .L0804F9AE
.L0804FA8B:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $2, %edi
	jmp       .L0804F23C
.L0804FA9C:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	jmp       .L0804F23C
.L0804FAAA:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $7, %edi
	jmp       .L0804F23C
.L0804FABB:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $6, %edi
	jmp       .L0804F23C
.L0804FACC:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $5, %edi
	jmp       .L0804F23C
.L0804FADD:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $4, %edi
	jmp       .L0804F23C
.L0804FAEE:
	movl      %ecx, %edi
	movl      12(%esp), %ebx
	movl      %edx, (%esp)
	addl      $3, %edi
	jmp       .L0804F23C
.L0804FAFF:
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $0, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $0, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $0, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $0, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $0, (%edx,%eax)
	movl      20(%ebx), %eax
	movl      132(%ebx), %ecx
	leal      1(%eax), %edx
	addl      8(%ebx), %eax
	cmpl      $9, %ecx
	movl      %edx, 20(%ebx)
	movl      $2, %edx
	je        .L0804FB7B
.L0804FB6B:
	cmpl      $1, 136(%ebx)
	jg        .L0804FBAB
.L0804FB74:
	cmpl      $1, %ecx
	jle       .L0804FBAB
.L0804FB79:
	xorl      %edx, %edx
.L0804FB7B:
	movb      %dl, (%eax)
	movl      20(%ebx), %eax
	movl      8(%ebx), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebx)
	movb      $3, (%edx,%eax)
	movl      $113, %eax
	movl      $113, 4(%ebx)
	movl      20(%ebx), %esi
	jmp       .L0804E882
.L0804FBA1:
	movl      $4, %edx
	jmp       .L0804F955
.L0804FBAB:
	movl      $4, %edx
	jmp       .L0804FB7B
	.size	deflate, .-deflate
# ----------------------
.L0804FBB2:
	.p2align 4
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %edx
	movl      36(%esp), %esi
	movl      40(%esp), %edi
	testl     %edx, %edx
	je        .L0804FCE0
.L0804FBDB:
	movl      28(%edx), %ebx
	testl     %ebx, %ebx
	je        .L0804FCE0
.L0804FBE6:
	cmpl      $-1, %esi
	je        .L0804FC78
.L0804FBEF:
	cmpl      $9, %esi
	ja        .L0804FCE0
.L0804FBF8:
	cmpl      $4, %edi
	ja        .L0804FCE0
.L0804FC01:
	movl      132(%ebx), %ecx
	cmpl      %edi, 136(%ebx)
	leal      (%ecx,%ecx,2), %eax
	movl      configuration_table+8(,%eax,4), %eax
	je        .L0804FC88
.L0804FC19:
	movl      8(%edx), %ebp
	xorl      %eax, %eax
	testl     %ebp, %ebp
	jne       .L0804FCA0
.L0804FC22:
	cmpl      %ecx, %esi
	je        .L0804FC63
.L0804FC26:
	leal      (%esi,%esi,2), %edx
	movl      %esi, 132(%ebx)
	sall      $2, %edx
	leal      configuration_table(%edx), %ecx
	movzwl    configuration_table+2(%edx), %esi
	movzwl    configuration_table(%edx), %edx
	movl      %edx, 140(%ebx)
	movzwl    4(%ecx), %edx
	movl      %esi, 128(%ebx)
	movl      %edx, 144(%ebx)
	movzwl    6(%ecx), %edx
	movl      %edx, 124(%ebx)
.L0804FC63:
	movl      %edi, 136(%ebx)
.L0804FC69:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0804FC71:
	.p2align 4,,10
	.p2align 3
.L0804FC78:
	movl      $6, %esi
	jmp       .L0804FBF8
.L0804FC82:
	.p2align 4,,10
	.p2align 3
.L0804FC88:
	leal      (%esi,%esi,2), %ebp
	cmpl      %eax, configuration_table+8(,%ebp,4)
	jne       .L0804FC19
.L0804FC94:
	xorl      %eax, %eax
	jmp       .L0804FC22
.L0804FC98:
	.p2align 4
.L0804FCA0:
	subl      $8, %esp
	pushl     $5
	pushl     %edx
	call      deflate
.L0804FCAB:
	addl      $16, %esp
	cmpl      $-5, %eax
	je        .L0804FCC0
.L0804FCB3:
	movl      132(%ebx), %ecx
	jmp       .L0804FC22
.L0804FCBE:
	.p2align 4,,10
	.p2align 3
.L0804FCC0:
	movl      20(%ebx), %edx
	movl      132(%ebx), %ecx
	testl     %edx, %edx
	jne       .L0804FC22
.L0804FCD1:
	xorl      %eax, %eax
	jmp       .L0804FC22
.L0804FCD8:
	.p2align 4
.L0804FCE0:
	movl      $-2, %eax
	jmp       .L0804FC69
	.size	deflateParams, .-deflateParams
# ----------------------
.L0804FCE7:
	.p2align 4
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L0804FDC8
.L0804FD01:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L0804FDC8
.L0804FD0C:
	movl      4(%eax), %esi
	cmpl      $42, %esi
	je        .L0804FD40
.L0804FD14:
	leal      -69(%esi), %edx
	andl      $-5, %edx
	je        .L0804FD40
.L0804FD1C:
	cmpl      $91, %esi
	je        .L0804FD40
.L0804FD21:
	cmpl      $103, %esi
	setne     %cl
	cmpl      $113, %esi
	setne     %dl
	testb     %dl, %cl
	je        .L0804FD40
.L0804FD31:
	cmpl      $666, %esi
	jne       .L0804FDC8
.L0804FD3D:
	.p2align 4,,10
	.p2align 3
.L0804FD40:
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L0804FD57
.L0804FD47:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804FD51:
	movl      28(%ebx), %eax
	addl      $16, %esp
.L0804FD57:
	movl      68(%eax), %edx
	testl     %edx, %edx
	je        .L0804FD6E
.L0804FD5E:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804FD68:
	movl      28(%ebx), %eax
	addl      $16, %esp
.L0804FD6E:
	movl      64(%eax), %edx
	testl     %edx, %edx
	je        .L0804FD85
.L0804FD75:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804FD7F:
	movl      28(%ebx), %eax
	addl      $16, %esp
.L0804FD85:
	movl      56(%eax), %edx
	testl     %edx, %edx
	je        .L0804FD9C
.L0804FD8C:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804FD96:
	movl      28(%ebx), %eax
	addl      $16, %esp
.L0804FD9C:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804FDA6:
	xorl      %eax, %eax
	addl      $16, %esp
	cmpl      $113, %esi
	setne     %al
	movl      $0, 28(%ebx)
	leal      -3(%eax,%eax,2), %eax
.L0804FDBC:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L0804FDC2:
	.p2align 4,,10
	.p2align 3
.L0804FDC8:
	movl      $-2, %eax
	jmp       .L0804FDBC
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L0804FDCF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      72(%esp), %eax
	movl      48(%esp), %esi
	movl      60(%esp), %ebp
	testl     %eax, %eax
	je        .L080501B0
.L0804FDEB:
	cmpb      $49, (%eax)
	jne       .L080501B0
.L0804FDF4:
	cmpl      $56, 76(%esp)
	jne       .L080501B0
.L0804FDFF:
	testl     %esi, %esi
	je        .L080501A0
.L0804FE07:
	movl      32(%esi), %eax
	movl      $0, 24(%esi)
	testl     %eax, %eax
	je        .L08050170
.L0804FE19:
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L08050190
.L0804FE24:
	cmpl      $-1, 52(%esp)
	je        .L08050140
.L0804FE2F:
	testl     %ebp, %ebp
	js        .L08050150
.L0804FE37:
	cmpl      $15, %ebp
	movl      $1, %edi
	jg        .L08050100
.L0804FE45:
	movl      64(%esp), %ecx
	leal      -1(%ecx), %edx
	cmpl      $8, %edx
	ja        .L080501A0
.L0804FE55:
	cmpl      $8, 56(%esp)
	jne       .L080501A0
.L0804FE60:
	leal      -8(%ebp), %edx
	cmpl      $7, %edx
	ja        .L080501A0
.L0804FE6C:
	cmpl      $4, 68(%esp)
	ja        .L080501A0
.L0804FE77:
	cmpl      $9, 52(%esp)
	ja        .L080501A0
.L0804FE82:
	cmpl      $8, %ebp
	movl      %ebp, %edx
	je        .L08050160
.L0804FE8D:
	movl      %edx, 12(%esp)
	subl      $4, %esp
	pushl     $5828
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L0804FEA0:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L080501E8
.L0804FEAD:
	movl      12(%esp), %edx
	movl      %eax, 28(%esi)
	movl      %ebp, %ecx
	movl      %edi, 24(%eax)
	movl      $1, %edi
	movl      %esi, (%eax)
	movl      $0, 28(%eax)
	subl      $4, %esp
	movl      %edx, 48(%eax)
	movl      %edi, %eax
	movl      $-1431655765, %edx
	sall      %cl, %eax
	movl      %eax, 44(%ebx)
	movl      %eax, %ebp
	leal      -1(%eax), %eax
	movl      %eax, 52(%ebx)
	movl      68(%esp), %eax
	leal      7(%eax), %ecx
	movl      %edi, %eax
	sall      %cl, %eax
	movl      %ecx, 80(%ebx)
	movl      %eax, 76(%ebx)
	subl      $1, %eax
	movl      %eax, 84(%ebx)
	movl      68(%esp), %eax
	addl      $9, %eax
	mull      %edx
	shrl      $1, %edx
	movl      %edx, 88(%ebx)
	pushl     $2
	pushl     %ebp
	pushl     40(%esi)
	call      *32(%esi)
.L0804FF0F:
	addl      $12, %esp
	movl      %eax, 56(%ebx)
	pushl     $2
	pushl     44(%ebx)
	pushl     40(%esi)
	call      *32(%esi)
.L0804FF20:
	addl      $12, %esp
	movl      %eax, 64(%ebx)
	pushl     $2
	pushl     76(%ebx)
	pushl     40(%esi)
	call      *32(%esi)
.L0804FF31:
	movl      %eax, 68(%ebx)
	movl      80(%esp), %eax
	addl      $12, %esp
	movl      $0, 5824(%ebx)
	leal      6(%eax), %ecx
	sall      %cl, %edi
	movl      %edi, 5788(%ebx)
	pushl     $4
	pushl     %edi
	pushl     40(%esi)
	call      *32(%esi)
.L0804FF59:
	movl      5788(%ebx), %edx
	movl      56(%ebx), %ebp
	addl      $16, %esp
	movl      %eax, 8(%ebx)
	leal      0(,%edx,4), %ecx
	testl     %ebp, %ebp
	movl      %ecx, 12(%ebx)
	je        .L080501C0
.L0804FF7A:
	movl      64(%ebx), %edi
	testl     %edi, %edi
	je        .L080501C0
.L0804FF85:
	testl     %eax, %eax
	je        .L080501C0
.L0804FF8D:
	movl      68(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L080501C0
.L0804FF98:
	movl      %edx, %ecx
	leal      (%edx,%edx,2), %edx
	movb      $8, 36(%ebx)
	andl      $-2, %ecx
	addl      %eax, %ecx
	addl      %edx, %eax
	movl      %eax, 5784(%ebx)
	movl      52(%esp), %eax
	movl      %ecx, 5796(%ebx)
	movl      %eax, 132(%ebx)
	movl      68(%esp), %eax
	movl      %eax, 136(%ebx)
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L080501A0
.L0804FFD3:
	movl      32(%esi), %ebp
	testl     %ebp, %ebp
	je        .L080501A0
.L0804FFDE:
	movl      36(%esi), %edi
	testl     %edi, %edi
	je        .L080501A0
.L0804FFE9:
	movl      8(%ebx), %eax
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $2, 44(%esi)
	movl      $0, 20(%ebx)
	movl      %eax, 16(%ebx)
	movl      24(%ebx), %eax
	testl     %eax, %eax
	js        .L08050110
.L0805001D:
	jne       .L08050115
.L08050023:
	movl      $113, 4(%ebx)
.L0805002A:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L08050038:
	addl      $16, %esp
.L0805003B:
	subl      $12, %esp
	movl      %eax, 48(%esi)
	movl      $0, 40(%ebx)
	pushl     %ebx
	call      _tr_init
.L0805004E:
	movl      28(%esi), %ebx
	addl      $12, %esp
	xorl      %esi, %esi
	movl      44(%ebx), %eax
	movl      68(%ebx), %edx
	addl      %eax, %eax
	movl      %eax, 60(%ebx)
	movl      76(%ebx), %eax
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      %si, (%edx,%eax,2)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L08050079:
	movl      132(%ebx), %eax
	movl      $0, 108(%ebx)
	addl      $16, %esp
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	leal      (%eax,%eax,2), %eax
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	sall      $2, %eax
	leal      configuration_table(%eax), %edx
	movzwl    configuration_table+2(%eax), %ecx
	movzwl    configuration_table(%eax), %eax
	movl      %eax, 140(%ebx)
	movzwl    4(%edx), %eax
	movl      %ecx, 128(%ebx)
	movl      %eax, 144(%ebx)
	movzwl    6(%edx), %eax
	movl      %eax, 124(%ebx)
	xorl      %eax, %eax
.L080500F6:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080500FE:
	.p2align 4,,10
	.p2align 3
.L08050100:
	subl      $16, %ebp
	movw      $2, %di
	jmp       .L0804FE45
.L0805010C:
	.p2align 4,,10
	.p2align 3
.L08050110:
	negl      %eax
	movl      %eax, 24(%ebx)
.L08050115:
	cmpl      $2, %eax
	movl      $42, 4(%ebx)
	jne       .L0805002A
.L08050125:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L08050133:
	addl      $16, %esp
	jmp       .L0805003B
.L0805013B:
	.p2align 4,,10
	.p2align 3
.L08050140:
	testl     %ebp, %ebp
	movl      $6, 52(%esp)
	jns       .L0804FE37
.L08050150:
	negl      %ebp
	xorl      %edi, %edi
	jmp       .L0804FE45
.L08050159:
	.p2align 4
.L08050160:
	movl      $9, %edx
	movw      $9, %bp
	jmp       .L0804FE8D
.L0805016E:
	.p2align 4,,10
	.p2align 3
.L08050170:
	movl      36(%esi), %edx
	movl      $zcalloc, 32(%esi)
	movl      $zcalloc, %eax
	movl      $0, 40(%esi)
	testl     %edx, %edx
	jne       .L0804FE24
.L0805018E:
	.p2align 4,,10
	.p2align 3
.L08050190:
	movl      $zcfree, 36(%esi)
	jmp       .L0804FE24
.L0805019C:
	.p2align 4,,10
	.p2align 3
.L080501A0:
	addl      $28, %esp
	movl      $-2, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080501AD:
	.p2align 4,,10
	.p2align 3
.L080501B0:
	addl      $28, %esp
	movl      $-6, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080501BD:
	.p2align 4,,10
	.p2align 3
.L080501C0:
	movl      z_errmsg+24, %eax
	subl      $12, %esp
	movl      $666, 4(%ebx)
	movl      %eax, 24(%esi)
	pushl     %esi
	call      deflateEnd
.L080501D8:
	addl      $16, %esp
	movl      $-4, %eax
	jmp       .L080500F6
.L080501E5:
	.p2align 4,,10
	.p2align 3
.L080501E8:
	movl      $-4, %eax
	jmp       .L080500F6
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L080501F2:
	.p2align 4
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      24(%esp), %eax
	movl      16(%esp), %esi
	movl      20(%esp), %edi
	testl     %eax, %eax
	je        .L08050530
.L08050217:
	cmpb      $49, (%eax)
	jne       .L08050530
.L08050220:
	cmpl      $56, 28(%esp)
	jne       .L08050530
.L0805022B:
	testl     %esi, %esi
	je        .L08050540
.L08050233:
	movl      32(%esi), %eax
	movl      $0, 24(%esi)
	testl     %eax, %eax
	je        .L08050500
.L08050245:
	movl      36(%esi), %ebx
	testl     %ebx, %ebx
	je        .L08050520
.L08050250:
	cmpl      $-1, %edi
	je        .L080504F0
.L08050259:
	cmpl      $9, %edi
	ja        .L08050540
.L08050262:
	subl      $4, %esp
	pushl     $5828
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L08050271:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L08050578
.L0805027E:
	subl      $4, %esp
	movl      %eax, 28(%esi)
	movl      %esi, (%eax)
	movl      $1, 24(%eax)
	movl      $0, 28(%eax)
	movl      $15, 48(%eax)
	movl      $32768, 44(%eax)
	movl      $32767, 52(%eax)
	movl      $15, 80(%eax)
	movl      $32768, 76(%eax)
	movl      $32767, 84(%eax)
	movl      $5, 88(%eax)
	pushl     $2
	pushl     $32768
	pushl     40(%esi)
	call      *32(%esi)
.L080502D2:
	addl      $12, %esp
	movl      %eax, 56(%ebx)
	pushl     $2
	pushl     44(%ebx)
	pushl     40(%esi)
	call      *32(%esi)
.L080502E3:
	addl      $12, %esp
	movl      %eax, 64(%ebx)
	pushl     $2
	pushl     76(%ebx)
	pushl     40(%esi)
	call      *32(%esi)
.L080502F4:
	addl      $12, %esp
	movl      %eax, 68(%ebx)
	movl      $0, 5824(%ebx)
	movl      $16384, 5788(%ebx)
	pushl     $4
	pushl     $16384
	pushl     40(%esi)
	call      *32(%esi)
.L0805031B:
	movl      5788(%ebx), %edx
	addl      $16, %esp
	movl      %eax, 8(%ebx)
	leal      0(,%edx,4), %ecx
	movl      %ecx, 12(%ebx)
	movl      56(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08050550
.L0805033C:
	movl      64(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08050550
.L08050347:
	testl     %eax, %eax
	je        .L08050550
.L0805034F:
	movl      68(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08050550
.L0805035A:
	movl      %edx, %ecx
	leal      (%edx,%edx,2), %edx
	movl      %edi, 132(%ebx)
	andl      $-2, %ecx
	movl      $0, 136(%ebx)
	movb      $8, 36(%ebx)
	addl      %eax, %ecx
	addl      %edx, %eax
	movl      %ecx, 5796(%ebx)
	movl      %eax, 5784(%ebx)
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L08050540
.L08050391:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L08050540
.L0805039C:
	movl      36(%esi), %edi
	testl     %edi, %edi
	je        .L08050540
.L080503A7:
	movl      8(%ebx), %eax
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $2, 44(%esi)
	movl      $0, 20(%ebx)
	movl      %eax, 16(%ebx)
	movl      24(%ebx), %eax
	testl     %eax, %eax
	js        .L080504C0
.L080503DB:
	jne       .L080504C5
.L080503E1:
	movl      $113, 4(%ebx)
.L080503E8:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L080503F6:
	addl      $16, %esp
.L080503F9:
	subl      $12, %esp
	movl      %eax, 48(%esi)
	movl      $0, 40(%ebx)
	pushl     %ebx
	call      _tr_init
.L0805040C:
	movl      28(%esi), %ebx
	addl      $12, %esp
	xorl      %esi, %esi
	movl      44(%ebx), %eax
	movl      68(%ebx), %edx
	addl      %eax, %eax
	movl      %eax, 60(%ebx)
	movl      76(%ebx), %eax
	addl      $2147483647, %eax
	leal      (%eax,%eax), %ecx
	movw      %si, (%edx,%eax,2)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L08050437:
	movl      132(%ebx), %eax
	movl      $0, 108(%ebx)
	addl      $16, %esp
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	leal      (%eax,%eax,2), %eax
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	sall      $2, %eax
	leal      configuration_table(%eax), %edx
	movzwl    configuration_table+2(%eax), %ecx
	movzwl    configuration_table(%eax), %eax
	movl      %eax, 140(%ebx)
	movzwl    4(%edx), %eax
	movl      %ecx, 128(%ebx)
	movl      %eax, 144(%ebx)
	movzwl    6(%edx), %eax
	movl      %eax, 124(%ebx)
	xorl      %eax, %eax
.L080504B4:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L080504B8:
	.p2align 4
.L080504C0:
	negl      %eax
	movl      %eax, 24(%ebx)
.L080504C5:
	cmpl      $2, %eax
	movl      $42, 4(%ebx)
	jne       .L080503E8
.L080504D5:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L080504E3:
	addl      $16, %esp
	jmp       .L080503F9
.L080504EB:
	.p2align 4,,10
	.p2align 3
.L080504F0:
	movl      $6, %edi
	jmp       .L08050262
.L080504FA:
	.p2align 4,,10
	.p2align 3
.L08050500:
	movl      36(%esi), %ebx
	movl      $zcalloc, 32(%esi)
	movl      $zcalloc, %eax
	movl      $0, 40(%esi)
	testl     %ebx, %ebx
	jne       .L08050250
.L0805051E:
	.p2align 4,,10
	.p2align 3
.L08050520:
	movl      $zcfree, 36(%esi)
	jmp       .L08050250
.L0805052C:
	.p2align 4,,10
	.p2align 3
.L08050530:
	popl      %ebx
	movl      $-6, %eax
	popl      %esi
	popl      %edi
	ret       
.L08050539:
	.p2align 4
.L08050540:
	movl      $-2, %eax
	jmp       .L080504B4
.L0805054A:
	.p2align 4,,10
	.p2align 3
.L08050550:
	movl      z_errmsg+24, %eax
	subl      $12, %esp
	movl      $666, 4(%ebx)
	movl      %eax, 24(%esi)
	pushl     %esi
	call      deflateEnd
.L08050568:
	addl      $16, %esp
	movl      $-4, %eax
	jmp       .L080504B4
.L08050575:
	.p2align 4,,10
	.p2align 3
.L08050578:
	movl      $-4, %eax
	jmp       .L080504B4
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L08050582:
	.p2align 4
# ----------------------
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      52(%esp), %eax
	movl      48(%esp), %ebp
	testl     %eax, %eax
	je        .L080507A8
.L080505A7:
	testl     %ebp, %ebp
	je        .L080507A8
.L080505AF:
	movl      28(%eax), %edx
	testl     %edx, %edx
	movl      %edx, 12(%esp)
	je        .L080507A8
.L080505BE:
	movl      (%eax), %ecx
	subl      $4, %esp
	movl      %ecx, (%ebp)
	movl      4(%eax), %ecx
	movl      %ecx, 4(%ebp)
	movl      8(%eax), %ecx
	movl      %ecx, 8(%ebp)
	movl      12(%eax), %ecx
	movl      %ecx, 12(%ebp)
	movl      16(%eax), %ecx
	movl      %ecx, 16(%ebp)
	movl      20(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      24(%eax), %ecx
	movl      %ecx, 24(%ebp)
	movl      28(%eax), %ecx
	movl      %ecx, 28(%ebp)
	movl      32(%eax), %ecx
	movl      %ecx, 32(%ebp)
	movl      36(%eax), %ebx
	movl      %ebx, 36(%ebp)
	movl      40(%eax), %ebx
	movl      %ebx, 40(%ebp)
	movl      44(%eax), %esi
	movl      %esi, 44(%ebp)
	movl      48(%eax), %esi
	movl      %esi, 48(%ebp)
	movl      52(%eax), %eax
	movl      %eax, 52(%ebp)
	pushl     $5828
	pushl     $1
	pushl     %ebx
	call      *%ecx
.L0805061E:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	je        .L080507C8
.L0805062B:
	movl      12(%esp), %edx
	movl      %eax, 28(%ebp)
	leal      4(%ebx), %edi
	movl      %ebx, %ecx
	subl      $4, %esp
	andl      $-4, %edi
	movl      (%edx), %eax
	movl      %edx, %esi
	subl      %edi, %ecx
	subl      %ecx, %esi
	addl      $5828, %ecx
	shrl      $2, %ecx
	movl      %eax, (%ebx)
	movl      5824(%edx), %eax
	movl      %eax, 5824(%ebx)
	movl      %edx, 16(%esp)
	rep movsl     
	movl      %ebp, (%ebx)
	pushl     $2
	pushl     44(%ebx)
	pushl     40(%ebp)
	call      *32(%ebp)
.L0805066F:
	addl      $12, %esp
	movl      %eax, 56(%ebx)
	pushl     $2
	pushl     44(%ebx)
	pushl     40(%ebp)
	call      *32(%ebp)
.L08050680:
	addl      $12, %esp
	movl      %eax, 64(%ebx)
	pushl     $2
	pushl     76(%ebx)
	pushl     40(%ebp)
	call      *32(%ebp)
.L08050691:
	addl      $12, %esp
	movl      %eax, 68(%ebx)
	pushl     $4
	pushl     5788(%ebx)
	pushl     40(%ebp)
	call      *32(%ebp)
.L080506A5:
	movl      56(%ebx), %ecx
	addl      $16, %esp
	movl      %eax, %esi
	movl      %eax, 8(%ebx)
	testl     %ecx, %ecx
	je        .L080507B0
.L080506B8:
	movl      64(%ebx), %edx
	testl     %edx, %edx
	je        .L080507B0
.L080506C3:
	testl     %eax, %eax
	je        .L080507B0
.L080506CB:
	movl      68(%ebx), %eax
	movl      12(%esp), %edx
	testl     %eax, %eax
	je        .L080507B0
.L080506DA:
	movl      44(%ebx), %eax
	subl      $4, %esp
	addl      %eax, %eax
	pushl     %eax
	pushl     56(%edx)
	movl      %edx, 24(%esp)
	pushl     %ecx
	call      memcpy
.L080506F0:
	movl      44(%ebx), %eax
	addl      $12, %esp
	addl      %eax, %eax
	pushl     %eax
	movl      20(%esp), %edx
	pushl     64(%edx)
	movl      %edx, 24(%esp)
	pushl     64(%ebx)
	call      memcpy
.L0805070C:
	movl      76(%ebx), %eax
	addl      $12, %esp
	addl      %eax, %eax
	pushl     %eax
	movl      20(%esp), %edx
	pushl     68(%edx)
	movl      %edx, 24(%esp)
	pushl     68(%ebx)
	call      memcpy
.L08050728:
	addl      $12, %esp
	pushl     12(%ebx)
	movl      20(%esp), %edx
	pushl     8(%edx)
	movl      %edx, 24(%esp)
	pushl     8(%ebx)
	call      memcpy
.L08050741:
	movl      28(%esp), %edx
	movl      8(%ebx), %ecx
	addl      $16, %esp
	movl      %ecx, %eax
	addl      16(%edx), %eax
	subl      8(%edx), %eax
	movl      5788(%ebx), %edx
	movl      %eax, 16(%ebx)
	movl      %edx, %eax
	andl      $-2, %eax
	addl      %eax, %esi
	leal      (%edx,%edx,2), %eax
	movl      %esi, 5796(%ebx)
	addl      %ecx, %eax
	movl      %eax, 5784(%ebx)
	leal      148(%ebx), %eax
	movl      %eax, 2840(%ebx)
	leal      2440(%ebx), %eax
	movl      %eax, 2852(%ebx)
	leal      2684(%ebx), %eax
	movl      %eax, 2864(%ebx)
	xorl      %eax, %eax
.L0805079A:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080507A2:
	.p2align 4,,10
	.p2align 3
.L080507A8:
	movl      $-2, %eax
	jmp       .L0805079A
.L080507AF:
	.p2align 4,,10
	.p2align 3
.L080507B0:
	subl      $12, %esp
	pushl     %ebp
	call      deflateEnd
.L080507B9:
	addl      $16, %esp
	movl      $-4, %eax
	jmp       .L0805079A
.L080507C3:
	.p2align 4,,10
	.p2align 3
.L080507C8:
	movl      $-4, %eax
	jmp       .L0805079A
	.size	deflateCopy, .-deflateCopy
# ----------------------
.L080507CF:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
	movl      4(%esp), %edx
	testl     %edx, %edx
	je        .L08050870
.L080507DC:
	movl      28(%edx), %eax
	testl     %eax, %eax
	je        .L08050870
.L080507E7:
	movl      8(%eax), %ecx
	movl      $0, 28(%eax)
	movl      $0, 20(%edx)
	movl      $0, 8(%edx)
	movl      $0, 24(%edx)
	testl     %ecx, %ecx
	je        .L08050810
.L0805080A:
	andl      $1, %ecx
	movl      %ecx, 48(%edx)
.L08050810:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	ret       
.L08050866:
	.p2align 4
.L08050870:
	movl      $-2, %eax
	ret       
	.size	inflateResetKeep, .-inflateResetKeep
# ----------------------
.L08050876:
	.p2align 4
# ----------------------
	.globl	inflateReset
	.type	inflateReset, @function
inflateReset:
	movl      4(%esp), %edx
	testl     %edx, %edx
	je        .L08050930
.L0805088C:
	movl      28(%edx), %eax
	testl     %eax, %eax
	je        .L08050930
.L08050897:
	movl      8(%eax), %ecx
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%edx)
	testl     %ecx, %ecx
	movl      $0, 8(%edx)
	movl      $0, 24(%edx)
	je        .L080508D5
.L080508CF:
	andl      $1, %ecx
	movl      %ecx, 48(%edx)
.L080508D5:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	ret       
.L0805092B:
	.p2align 4,,10
	.p2align 3
.L08050930:
	movl      $-2, %eax
	ret       
	.size	inflateReset, .-inflateReset
# ----------------------
.L08050936:
	.p2align 4
# ----------------------
	.globl	inflateReset2
	.type	inflateReset2, @function
inflateReset2:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%esp), %esi
	movl      36(%esp), %ebx
	testl     %esi, %esi
	je        .L080509AC
.L08050953:
	movl      28(%esi), %edi
	testl     %edi, %edi
	je        .L080509AC
.L0805095A:
	testl     %ebx, %ebx
	js        .L08050A80
.L08050962:
	movl      %ebx, %ebp
	sarl      $4, %ebp
	addl      $1, %ebp
	cmpl      $47, %ebx
	jle       .L08050A70
.L08050973:
	leal      -8(%ebx), %eax
	cmpl      $7, %eax
	jbe       .L0805097F
.L0805097B:
	testl     %ebx, %ebx
	jne       .L080509AC
.L0805097F:
	movl      52(%edi), %eax
	testl     %eax, %eax
	je        .L080509C0
.L08050986:
	cmpl      36(%edi), %ebx
	je        .L080509C0
.L0805098B:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L08050995:
	movl      28(%esi), %eax
	addl      $16, %esp
	movl      $0, 52(%edi)
	movl      %ebp, 8(%edi)
	movl      %ebx, 36(%edi)
	testl     %eax, %eax
	jne       .L080509C8
.L080509AC:
	movl      $-2, %eax
	jmp       .L08050A55
.L080509B6:
	.p2align 4
.L080509C0:
	movl      %ebp, 8(%edi)
	movl      %ebx, 36(%edi)
	movl      %edi, %eax
.L080509C8:
	movl      8(%eax), %edx
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%esi)
	testl     %edx, %edx
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	jne       .L08050A60
.L08050A00:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
.L08050A55:
	addl      $12, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08050A5D:
	.p2align 4,,10
	.p2align 3
.L08050A60:
	andl      $1, %edx
	movl      %edx, 48(%esi)
	jmp       .L08050A00
.L08050A68:
	.p2align 4
.L08050A70:
	andl      $15, %ebx
	jmp       .L08050973
.L08050A78:
	.p2align 4
.L08050A80:
	negl      %ebx
	xorl      %ebp, %ebp
	jmp       .L08050973
	.size	inflateReset2, .-inflateReset2
# ----------------------
.L08050A89:
	.p2align 4
# ----------------------
	.globl	inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
	pushl     %esi
	pushl     %ebx
	subl      $4, %esp
	movl      24(%esp), %eax
	movl      16(%esp), %ebx
	movl      20(%esp), %esi
	testl     %eax, %eax
	je        .L08050C20
.L08050AA9:
	cmpb      $49, (%eax)
	jne       .L08050C20
.L08050AB2:
	cmpl      $56, 28(%esp)
	jne       .L08050C20
.L08050ABD:
	testl     %ebx, %ebx
	je        .L08050C5A
.L08050AC5:
	movl      32(%ebx), %eax
	movl      $0, 24(%ebx)
	testl     %eax, %eax
	je        .L08050C00
.L08050AD7:
	movl      40(%ebx), %edx
.L08050ADA:
	movl      36(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L08050BF0
.L08050AE5:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     %edx
	call      *%eax
.L08050AF2:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08050C50
.L08050AFD:
	testl     %esi, %esi
	movl      %eax, 28(%ebx)
	movl      $0, 52(%eax)
	js        .L08050BD3
.L08050B0F:
	movl      %esi, %edx
	sarl      $4, %edx
	addl      $1, %edx
	cmpl      $47, %esi
	jg        .L08050B1F
.L08050B1C:
	andl      $15, %esi
.L08050B1F:
	leal      -8(%esi), %ecx
	cmpl      $7, %ecx
	jbe       .L08050B2F
.L08050B27:
	testl     %esi, %esi
	jne       .L08050C30
.L08050B2F:
	testl     %edx, %edx
	movl      %edx, 8(%eax)
	movl      %esi, 36(%eax)
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	jne       .L08050BCB
.L08050B6A:
	.p2align 4,,10
	.p2align 3
.L08050B70:
	leal      1328(%eax), %edx
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
.L08050BC5:
	addl      $4, %esp
	popl      %ebx
	popl      %esi
	ret       
.L08050BCB:
	andl      $1, %edx
	movl      %edx, 48(%ebx)
	jmp       .L08050B70
.L08050BD3:
	negl      %esi
	xorl      %edx, %edx
	leal      -8(%esi), %ecx
	cmpl      $7, %ecx
	ja        .L08050B27
.L08050BE3:
	jmp       .L08050B2F
.L08050BE8:
	.p2align 4
.L08050BF0:
	movl      $zcfree, 36(%ebx)
	jmp       .L08050AE5
.L08050BFC:
	.p2align 4,,10
	.p2align 3
.L08050C00:
	movl      $zcalloc, 32(%ebx)
	movl      $0, 40(%ebx)
	xorl      %edx, %edx
	movl      $zcalloc, %eax
	jmp       .L08050ADA
.L08050C1A:
	.p2align 4,,10
	.p2align 3
.L08050C20:
	addl      $4, %esp
	movl      $-6, %eax
	popl      %ebx
	popl      %esi
	ret       
.L08050C2B:
	.p2align 4,,10
	.p2align 3
.L08050C30:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L08050C3A:
	movl      $0, 28(%ebx)
	addl      $16, %esp
	movl      $-2, %eax
	jmp       .L08050BC5
.L08050C4E:
	.p2align 4,,10
	.p2align 3
.L08050C50:
	movl      $-4, %eax
	jmp       .L08050BC5
.L08050C5A:
	movl      $-2, %eax
	jmp       .L08050BC5
	.size	inflateInit2_, .-inflateInit2_
# ----------------------
.L08050C64:
	.p2align 4
# ----------------------
	.globl	inflateInit_
	.type	inflateInit_, @function
inflateInit_:
	pushl     %ebx
	subl      $8, %esp
	movl      20(%esp), %eax
	movl      16(%esp), %ebx
	testl     %eax, %eax
	je        .L08050DC0
.L08050C84:
	cmpb      $49, (%eax)
	jne       .L08050DC0
.L08050C8D:
	cmpl      $56, 24(%esp)
	jne       .L08050DC0
.L08050C98:
	testl     %ebx, %ebx
	je        .L08050DD7
.L08050CA0:
	movl      32(%ebx), %eax
	movl      $0, 24(%ebx)
	testl     %eax, %eax
	je        .L08050D88
.L08050CB2:
	movl      36(%ebx), %ecx
	movl      40(%ebx), %edx
	testl     %ecx, %ecx
	je        .L08050DB0
.L08050CC0:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     %edx
	call      *%eax
.L08050CCD:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08050DD0
.L08050CD8:
	leal      1328(%eax), %edx
	movl      %eax, 28(%ebx)
	movl      $0, 52(%eax)
	movl      $1, 8(%eax)
	movl      $15, 36(%eax)
	movl      $0, 40(%eax)
	movl      $0, 44(%eax)
	movl      $0, 48(%eax)
	movl      $0, 28(%eax)
	movl      $0, 20(%ebx)
	movl      $0, 8(%ebx)
	movl      $0, 24(%ebx)
	movl      $1, 48(%ebx)
	movl      $0, (%eax)
	movl      $0, 4(%eax)
	movl      $0, 12(%eax)
	movl      $32768, 20(%eax)
	movl      $0, 32(%eax)
	movl      $0, 56(%eax)
	movl      $0, 60(%eax)
	movl      %edx, 108(%eax)
	movl      %edx, 80(%eax)
	movl      %edx, 76(%eax)
	movl      $1, 7104(%eax)
	movl      $-1, 7108(%eax)
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L08050D80:
	addl      $8, %esp
	popl      %ebx
	ret       
.L08050D85:
	.p2align 4,,10
	.p2align 3
.L08050D88:
	movl      36(%ebx), %ecx
	xorl      %edx, %edx
	movl      $zcalloc, 32(%ebx)
	movl      $0, 40(%ebx)
	movl      $zcalloc, %eax
	testl     %ecx, %ecx
	jne       .L08050CC0
.L08050DA8:
	.p2align 4
.L08050DB0:
	movl      $zcfree, 36(%ebx)
	jmp       .L08050CC0
.L08050DBC:
	.p2align 4,,10
	.p2align 3
.L08050DC0:
	addl      $8, %esp
	movl      $-6, %eax
	popl      %ebx
	ret       
.L08050DCA:
	.p2align 4,,10
	.p2align 3
.L08050DD0:
	movl      $-4, %eax
	jmp       .L08050D80
.L08050DD7:
	movl      $-2, %eax
	jmp       .L08050D80
	.size	inflateInit_, .-inflateInit_
# ----------------------
.L08050DDE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflatePrime
	.type	inflatePrime, @function
inflatePrime:
	pushl     %esi
	pushl     %ebx
	movl      12(%esp), %eax
	movl      16(%esp), %ecx
	testl     %eax, %eax
	je        .L08050E48
.L08050DEE:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L08050E48
.L08050DF5:
	testl     %ecx, %ecx
	js        .L08050E30
.L08050DF9:
	cmpl      $16, %ecx
	jg        .L08050E48
.L08050DFE:
	movl      60(%edx), %esi
	leal      (%ecx,%esi), %ebx
	cmpl      $32, %ebx
	ja        .L08050E48
.L08050E09:
	movl      $1, %eax
	movl      %ebx, 60(%edx)
	sall      %cl, %eax
	movl      %esi, %ecx
	subl      $1, %eax
	andl      20(%esp), %eax
	sall      %cl, %eax
	addl      %eax, 56(%edx)
	xorl      %eax, %eax
.L08050E23:
	popl      %ebx
	popl      %esi
	ret       
.L08050E26:
	.p2align 4
.L08050E30:
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	xorl      %eax, %eax
	popl      %ebx
	popl      %esi
	ret       
.L08050E43:
	.p2align 4,,10
	.p2align 3
.L08050E48:
	movl      $-2, %eax
	jmp       .L08050E23
	.size	inflatePrime, .-inflatePrime
# ----------------------
.L08050E4F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflate
	.type	inflate, @function
inflate:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $108, %esp
	movl      128(%esp), %eax
	testl     %eax, %eax
	je        .L080525C0
.L08050E66:
	movl      128(%esp), %eax
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L080525C0
.L08050E78:
	movl      12(%eax), %eax
	testl     %eax, %eax
	movl      %eax, 12(%esp)
	je        .L080525C0
.L08050E87:
	movl      128(%esp), %eax
	movl      (%eax), %ebp
	testl     %ebp, %ebp
	je        .L08052520
.L08050E98:
	movl      4(%eax), %eax
	movl      %eax, 24(%esp)
.L08050E9F:
	movl      (%edi), %eax
	cmpl      $11, %eax
	je        .L080510B8
.L08050EAA:
	movl      128(%esp), %ecx
	movl      132(%esp), %edx
	movl      %edi, 4(%esp)
	movl      $0, 28(%esp)
	movl      16(%ecx), %esi
	movl      56(%edi), %ecx
	movl      %esi, %ebx
	movl      %ecx, 8(%esp)
	leal      -5(%edx), %ecx
	movl      %ebx, 20(%esp)
	movl      24(%esp), %ebx
	leal      752(%edi), %edx
	movl      %ecx, 48(%esp)
	leal      1328(%edi), %ecx
	movl      %esi, 16(%esp)
	movl      %edx, 52(%esp)
	movl      60(%edi), %esi
	movl      %ecx, 56(%esp)
	movl      %ebx, %edi
.L08050EFC:
	cmpl      $30, %eax
	ja        .L080525C0
.L08050F05:
	jmp       *.LC08058B80(,%eax,4)
.L08050F0C:
	.p2align 4,,10
	.p2align 3
.L08050F10:
	cmpl      $31, %esi
	ja        .L08050FA3
.L08050F19:
	testl     %edi, %edi
	je        .L080524A8
.L08050F21:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052E0B
.L08050F3F:
	testl     %edx, %edx
	je        .L08052A08
.L08050F47:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052E0B
.L08050F63:
	testl     %edx, %edx
	je        .L08052A08
.L08050F6B:
	movzbl    2(%ebp), %eax
	addl      $24, %esi
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	addl      %eax, 8(%esp)
	cmpl      $31, %esi
	ja        .L08052E0B
.L08050F87:
	testl     %edx, %edx
	je        .L0805308E
.L08050F8F:
	movzbl    3(%ebp), %eax
	movl      %esi, %ecx
	leal      4(%ebp), %ebx
	subl      $4, %edi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08050FA1:
	movl      %ebx, %ebp
.L08050FA3:
	movl      8(%esp), %esi
	movl      128(%esp), %ebx
	movl      $0, 8(%esp)
	movl      %esi, %edx
	movl      %esi, %eax
	shrl      $24, %eax
	sall      $24, %edx
	addl      %eax, %edx
	movl      %esi, %eax
	shrl      $8, %eax
	andl      $65280, %eax
	addl      %eax, %edx
	movl      %esi, %eax
	movl      4(%esp), %esi
	andl      $65280, %eax
	sall      $8, %eax
	addl      %edx, %eax
	movl      %eax, 24(%esi)
	movl      %eax, 48(%ebx)
	movl      $10, (%esi)
	xorl      %esi, %esi
.L08050FEC:
	movl      4(%esp), %eax
	movl      12(%eax), %ecx
	testl     %ecx, %ecx
	je        .L080530D3
.L08050FFB:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L08051009:
	movl      20(%esp), %edx
	movl      144(%esp), %ebx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	movl      %eax, 48(%ebx)
	movl      $11, (%edx)
.L08051023:
	cmpl      $1, 48(%esp)
	jbe       .L080524A8
.L0805102E:
	movl      4(%esp), %eax
	movl      4(%eax), %edx
	testl     %edx, %edx
	jne       .L080510C8
.L0805103D:
	cmpl      $2, %esi
	ja        .L08052F39
.L08051046:
	testl     %edi, %edi
	je        .L080524A8
.L0805104E:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      1(%ebp), %edx
	subl      $1, %edi
	addl      $8, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08051063:
	movl      8(%esp), %ecx
	movl      4(%esp), %ebx
	movl      %ecx, %eax
	shrl      $1, %ecx
	andl      $1, %eax
	movl      %eax, 4(%ebx)
	movl      %ecx, %eax
	andl      $3, %eax
	cmpl      $2, %eax
	je        .L0805294E
.L08051083:
	cmpl      $3, %eax
	je        .L08052CF9
.L0805108C:
	cmpl      $1, %eax
	je        .L08052CBB
.L08051095:
	movl      $13, (%ebx)
	movl      $13, %eax
.L080510A0:
	shrl      $2, %ecx
	subl      $3, %esi
	movl      %edx, %ebp
	movl      %ecx, 8(%esp)
	jmp       .L08050EFC
.L080510B1:
	.p2align 4,,10
	.p2align 3
.L080510B8:
	movl      $12, (%edi)
	movb      $12, %al
	jmp       .L08050EAA
.L080510C5:
	.p2align 4,,10
	.p2align 3
.L080510C8:
	movl      %esi, %ecx
	movl      $26, (%eax)
	andl      $-8, %esi
	andl      $7, %ecx
	movl      $26, %eax
	shrl      %cl, 8(%esp)
	jmp       .L08050F05
.L080510E4:
	.p2align 4,,10
	.p2align 3
.L080510E8:
	movl      4(%esp), %eax
	movl      72(%eax), %ebx
.L080510EF:
	testl     %ebx, %ebx
	je        .L08051160
.L080510F3:
	cmpl      %ebx, %esi
	jae       .L08051133
.L080510F7:
	testl     %edi, %edi
	je        .L080524A8
.L080510FF:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L08051118
.L08051107:
	.p2align 4
.L08051110:
	testl     %edi, %edi
	je        .L08052540
.L08051118:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      %ebx, %ecx
	jb        .L08051110
.L0805112D:
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
.L08051133:
	movl      %ebx, %ecx
	movl      $1, %eax
	movl      8(%esp), %edx
	sall      %cl, %eax
	movl      4(%esp), %ecx
	subl      %ebx, %esi
	subl      $1, %eax
	andl      %edx, %eax
	addl      %eax, 68(%ecx)
	movl      %ebx, %ecx
	shrl      %cl, %edx
	movl      4(%esp), %ecx
	movl      %edx, 8(%esp)
	addl      %ebx, 7108(%ecx)
.L08051160:
	movl      4(%esp), %eax
	movl      $24, (%eax)
.L0805116A:
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080524A8
.L08051176:
	movl      20(%esp), %eax
	subl      %ebx, %eax
	movl      4(%esp), %ebx
	movl      68(%ebx), %edx
	cmpl      %edx, %eax
	jae       .L08052638
.L0805118B:
	subl      %eax, %edx
	cmpl      44(%ebx), %edx
	movl      %edx, %ecx
	ja        .L080528A0
.L08051198:
	movl      4(%esp), %eax
	movl      48(%eax), %eax
	cmpl      %eax, %ecx
	jbe       .L08052A90
.L080511A7:
	movl      4(%esp), %edx
	subl      %eax, %ecx
	movl      40(%edx), %eax
	subl      %ecx, %eax
	addl      52(%edx), %eax
	movl      %eax, 32(%esp)
	movl      %edx, %eax
.L080511BB:
	movl      64(%eax), %edx
	cmpl      %edx, %ecx
	jbe       .L0805264B
.L080511C6:
	movl      %edx, %ecx
	jmp       .L0805264B
.L080511CD:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %eax
	movl      $19, (%eax)
	je        .L080524A8
.L080511E5:
	.p2align 4,,10
	.p2align 3
.L080511E8:
	movl      4(%esp), %eax
	movl      $20, (%eax)
.L080511F2:
	cmpl      $5, %edi
	jbe       .L08051205
.L080511F7:
	cmpl      $257, 16(%esp)
	ja        .L08052750
.L08051205:
	movl      4(%esp), %eax
	movl      84(%eax), %ecx
	movl      76(%eax), %ebx
	movl      $0, 7108(%eax)
	movl      $1, %eax
	sall      %cl, %eax
	movl      %ebx, 32(%esp)
	subl      $1, %eax
	movl      %eax, %edx
	movl      %eax, 40(%esp)
	movl      8(%esp), %eax
	andl      %edx, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 36(%esp)
	movzbl    %dl, %eax
	cmpl      %eax, %esi
	jae       .L080512A3
.L0805124D:
	testl     %edi, %edi
	je        .L080524A8
.L08051255:
	movl      %esi, %ecx
	movl      8(%esp), %esi
	jmp       .L08051268
.L0805125D:
	.p2align 4,,10
	.p2align 3
.L08051260:
	testl     %edi, %edi
	je        .L08052A20
.L08051268:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      32(%esp), %ebx
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %esi
	movl      40(%esp), %eax
	andl      %esi, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 36(%esp)
	movzbl    %dl, %eax
	cmpl      %ecx, %eax
	ja        .L08051260
.L0805129D:
	movl      %esi, 8(%esp)
	movl      %ecx, %esi
.L080512A3:
	testb     %bl, %bl
	jne       .L08052AA8
.L080512AB:
	movl      4(%esp), %ebx
	subl      %eax, %esi
	movl      %edx, %ecx
	shrl      %cl, 8(%esp)
	movl      %eax, 7108(%ebx)
	movzwl    36(%esp), %eax
	movl      %eax, 64(%ebx)
.L080512C5:
	movl      4(%esp), %eax
	movl      $25, (%eax)
	movl      $25, %eax
	jmp       .L08050F05
.L080512D9:
	.p2align 4
.L080512E0:
	movl      4(%esp), %eax
	movl      72(%eax), %ebx
.L080512E7:
	testl     %ebx, %ebx
	jne       .L080527E0
.L080512EF:
	movl      4(%esp), %eax
	movl      4(%esp), %ebx
	movl      64(%eax), %eax
.L080512FA:
	movl      %eax, 7112(%ebx)
	movl      $22, (%ebx)
.L08051306:
	movl      4(%esp), %eax
	movl      88(%eax), %ecx
	movl      80(%eax), %ebx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %ebx, 36(%esp)
	subl      $1, %eax
	movl      %eax, %edx
	movl      %eax, 44(%esp)
	movl      8(%esp), %eax
	andl      %edx, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 32(%esp)
	movzbl    %dl, %eax
	cmpl      %eax, %esi
	movl      %eax, 40(%esp)
	jae       .L080513A9
.L08051348:
	testl     %edi, %edi
	je        .L080524A8
.L08051350:
	movl      %esi, %ecx
	movl      %edi, %esi
	movl      8(%esp), %edi
	jmp       .L08051368
.L0805135A:
	.p2align 4,,10
	.p2align 3
.L08051360:
	testl     %esi, %esi
	je        .L080529F0
.L08051368:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      36(%esp), %ebx
	subl      $1, %esi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edi
	movl      44(%esp), %eax
	andl      %edi, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movw      %ax, 32(%esp)
	movzbl    %dl, %eax
	cmpl      %ecx, %eax
	movl      %eax, 40(%esp)
	ja        .L08051360
.L080513A1:
	movl      %edi, 8(%esp)
	movl      %esi, %edi
	movl      %ecx, %esi
.L080513A9:
	testb     $240, %bl
	jne       .L080528D0
.L080513B2:
	movzwl    32(%esp), %ecx
	movl      %ecx, 40(%esp)
	leal      (%ebx,%eax), %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %edx, %ecx
	leal      -1(%ebx), %ebx
	movl      %ebx, 60(%esp)
	andl      8(%esp), %ebx
	shrl      %cl, %ebx
	movl      40(%esp), %ecx
	leal      (%ebx,%ecx), %edx
	movl      36(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movzwl    2(%edx), %ecx
	movzbl    (%edx), %ebx
	movzbl    1(%edx), %edx
	movw      %cx, 32(%esp)
	leal      (%eax,%edx), %ecx
	movl      %edx, 44(%esp)
	cmpl      %ecx, %esi
	jae       .L08051476
.L080513FD:
	testl     %edi, %edi
	je        .L080524A8
.L08051405:
	movl      %edi, %edx
	movl      8(%esp), %ebx
	movl      %ebp, %edi
	movl      %edx, %ebp
	jmp       .L08051420
.L08051411:
	.p2align 4,,10
	.p2align 3
.L08051418:
	testl     %ebp, %ebp
	je        .L08052B81
.L08051420:
	addl      $1, %edi
	movzbl    -1(%edi), %edx
	movl      %esi, %ecx
	addl      $8, %esi
	subl      $1, %ebp
	sall      %cl, %edx
	movl      %eax, %ecx
	addl      %edx, %ebx
	movl      60(%esp), %edx
	andl      %ebx, %edx
	shrl      %cl, %edx
	addl      40(%esp), %edx
	movl      36(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movzbl    (%edx), %ecx
	movb      %cl, 64(%esp)
	movzwl    2(%edx), %ecx
	movzbl    1(%edx), %edx
	movw      %cx, 32(%esp)
	leal      (%edx,%eax), %ecx
	movl      %edx, 44(%esp)
	cmpl      %esi, %ecx
	ja        .L08051418
.L08051467:
	movl      %ebx, 8(%esp)
	movzbl    64(%esp), %ebx
	movl      %ebp, %ecx
	movl      %edi, %ebp
	movl      %ecx, %edi
.L08051476:
	movl      %eax, %ecx
	shrl      %cl, 8(%esp)
	movl      4(%esp), %ecx
	subl      %eax, %esi
	movl      %edx, 40(%esp)
	addl      7108(%ecx), %eax
	movl      %eax, 36(%esp)
	movl      44(%esp), %eax
	movl      36(%esp), %edx
	jmp       .L080528E2
.L0805149D:
	.p2align 4,,10
	.p2align 3
.L080514A0:
	movl      4(%esp), %eax
	movl      16(%eax), %eax
	testb     $4, %ah
	movl      %eax, %ebx
	je        .L08052024
.L080514B2:
	cmpl      $15, %esi
	movl      8(%esp), %ebx
	ja        .L080514F2
.L080514BB:
	testl     %edi, %edi
	je        .L080524A8
.L080514C3:
	movl      8(%esp), %ebx
	movl      %esi, %ecx
	jmp       .L080514D8
.L080514CB:
	.p2align 4,,10
	.p2align 3
.L080514D0:
	testl     %edi, %edi
	je        .L080525D0
.L080514D8:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      $15, %ecx
	jbe       .L080514D0
.L080514EE:
	movl      %ebx, 8(%esp)
.L080514F2:
	movl      4(%esp), %esi
	movl      32(%esi), %edx
	movl      %ebx, 64(%esi)
	testl     %edx, %edx
	je        .L08051503
.L08051500:
	movl      %ebx, 20(%edx)
.L08051503:
	testb     $2, %ah
	jne       .L08052DC3
.L0805150C:
	movl      %eax, %ebx
	xorl      %esi, %esi
	andl      $1024, %eax
	movl      $0, 8(%esp)
	jmp       .L08052041
.L08051522:
	.p2align 4,,10
	.p2align 3
.L08051528:
	subl      $4, %esp
	movb      $1, %al
	pushl     $1
	movl      36(%esi), %ecx
	sall      %cl, %eax
	pushl     %eax
	movl      140(%esp), %eax
	pushl     40(%eax)
	movl      144(%esp), %eax
	call      *32(%eax)
.L08051549:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 52(%esi)
	jne       .L080515F5
.L08051557:
	movl      $30, (%edi)
	.p2align 4,,10
	.p2align 3
.L08051560:
	movl      $-4, %eax
	.p2align 4,,10
	.p2align 3
.L08051568:
	addl      $108, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08051570:
	movl      %edi, %ebx
	movl      4(%esp), %edi
	movl      $1, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L08051580:
	movl      128(%esp), %eax
	movl      12(%esp), %ecx
	movl      %ecx, 12(%eax)
	movl      %eax, %ecx
	movl      16(%esp), %eax
	movl      %ebx, 4(%ecx)
	movl      %ebp, (%ecx)
	movl      8(%esp), %ebx
	movl      %eax, 16(%ecx)
	movl      40(%edi), %ecx
	movl      %esi, 60(%edi)
	movl      %ebx, 56(%edi)
	testl     %ecx, %ecx
	jne       .L080515D8
.L080515AD:
	cmpl      %eax, 20(%esp)
	je        .L08051668
.L080515B7:
	movl      (%edi), %eax
	cmpl      $28, %eax
	ja        .L08051668
.L080515C2:
	cmpl      $4, 132(%esp)
	jne       .L080515D8
.L080515CC:
	cmpl      $25, %eax
	ja        .L08051668
.L080515D5:
	.p2align 4,,10
	.p2align 3
.L080515D8:
	movl      128(%esp), %eax
	movl      20(%esp), %ebp
	subl      16(%esp), %ebp
	movl      28(%eax), %esi
	movl      52(%esi), %eax
	testl     %eax, %eax
	je        .L08051528
.L080515F5:
	movl      40(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L08051614
.L080515FC:
	movl      36(%esi), %ecx
	movb      $1, %bl
	movl      $0, 48(%esi)
	movl      $0, 44(%esi)
	sall      %cl, %ebx
	movl      %ebx, 40(%esi)
.L08051614:
	cmpl      %ebx, %ebp
	jae       .L08052590
.L0805161C:
	movl      48(%esi), %edx
	subl      %edx, %ebx
	cmpl      %ebp, %ebx
	jbe       .L08051627
.L08051625:
	movl      %ebp, %ebx
.L08051627:
	addl      %edx, %eax
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebp, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L0805163A:
	addl      $16, %esp
	subl      %ebx, %ebp
	jne       .L080525F8
.L08051645:
	movl      48(%esi), %eax
	movl      40(%esi), %edx
	addl      %ebx, %eax
	cmpl      %edx, %eax
	movl      %eax, 48(%esi)
	je        .L080525E8
.L08051658:
	movl      44(%esi), %eax
	cmpl      %eax, %edx
	jbe       .L08051668
.L0805165F:
	addl      %eax, %ebx
	movl      %ebx, 44(%esi)
	.p2align 4,,10
	.p2align 3
.L08051668:
	movl      128(%esp), %eax
	movl      20(%esp), %ebx
	movl      24(%esp), %esi
	subl      16(%eax), %ebx
	subl      4(%eax), %esi
	addl      %esi, 8(%eax)
	addl      %ebx, 20(%eax)
	addl      %ebx, 28(%edi)
	testl     %ebx, %ebx
	je        .L080516C9
.L0805168A:
	movl      8(%edi), %edx
	testl     %edx, %edx
	je        .L080516C9
.L08051691:
	movl      16(%edi), %eax
	testl     %eax, %eax
	je        .L08052558
.L0805169C:
	subl      $4, %esp
	pushl     %ebx
	movl      136(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, 12(%esp)
	subl      %ebx, %eax
	pushl     %eax
	pushl     24(%edi)
	call      crc32
.L080516B9:
	addl      $16, %esp
.L080516BC:
	movl      128(%esp), %edx
	movl      %eax, 24(%edi)
	movl      %eax, 48(%edx)
.L080516C9:
	cmpl      $1, 4(%edi)
	movl      (%edi), %edx
	sbbl      %eax, %eax
	notl      %eax
	andl      $64, %eax
	addl      60(%edi), %eax
	cmpl      $11, %edx
	je        .L080524B8
.L080516E2:
	cmpl      $14, %edx
	je        .L08052498
.L080516EB:
	cmpl      $19, %edx
	je        .L08052498
.L080516F4:
	xorl      %edx, %edx
.L080516F6:
	movl      128(%esp), %edi
	addl      %edx, %eax
	orl       %esi, %ebx
	movl      %eax, 44(%edi)
	je        .L08051718
.L08051706:
	cmpl      $4, 132(%esp)
	movl      28(%esp), %eax
	jne       .L08051568
.L08051718:
	movl      28(%esp), %eax
	testl     %eax, %eax
	jne       .L08051568
.L08051724:
	addl      $108, %esp
	movl      $-5, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08051731:
	.p2align 4,,10
	.p2align 3
.L08051738:
	cmpl      $31, %esi
	ja        .L08051772
.L0805173D:
	testl     %edi, %edi
	je        .L080524A8
.L08051745:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L08051758
.L0805174D:
	.p2align 4,,10
	.p2align 3
.L08051750:
	testl     %edi, %edi
	je        .L08052540
.L08051758:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      $31, %ecx
	jbe       .L08051750
.L0805176E:
	movl      %edx, 8(%esp)
.L08051772:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L08051784
.L0805177D:
	movl      8(%esp), %esi
	movl      %esi, 4(%eax)
.L08051784:
	movl      4(%esp), %eax
	testb     $2, 17(%eax)
	jne       .L08052D79
.L08051792:
	movl      $3, (%eax)
	movl      $0, 8(%esp)
	xorl      %esi, %esi
	jmp       .L08051FA5
.L080517A7:
	.p2align 4
.L080517B0:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	movl      %ebx, %eax
	andl      $1024, %eax
.L080517BE:
	testl     %eax, %eax
	je        .L08051865
.L080517C6:
	movl      4(%esp), %eax
	movl      %edi, %ecx
	movl      64(%eax), %eax
	cmpl      %eax, %edi
	movl      %eax, 32(%esp)
	ja        .L08052740
.L080517DB:
	testl     %ecx, %ecx
	movl      32(%esp), %edx
	je        .L08051856
.L080517E3:
	movl      4(%esp), %eax
	movl      32(%eax), %edx
	testl     %edx, %edx
	je        .L08051837
.L080517EE:
	movl      16(%edx), %eax
	testl     %eax, %eax
	movl      %eax, 36(%esp)
	je        .L08051837
.L080517F9:
	movl      20(%edx), %eax
	subl      32(%esp), %eax
	movl      24(%edx), %ebx
	leal      (%ecx,%eax), %edx
	movl      %edx, 32(%esp)
	cmpl      %ebx, 32(%esp)
	movl      %ecx, %edx
	jbe       .L08051816
.L08051812:
	subl      %eax, %ebx
	movl      %ebx, %edx
.L08051816:
	addl      36(%esp), %eax
	movl      %ecx, 32(%esp)
	subl      $4, %esp
	pushl     %edx
	pushl     %ebp
	pushl     %eax
	call      memcpy
.L08051829:
	movl      20(%esp), %eax
	addl      $16, %esp
	movl      32(%esp), %ecx
	movl      16(%eax), %ebx
.L08051837:
	andb      $2, %bh
	jne       .L08052D2A
.L08051840:
	movl      4(%esp), %eax
	subl      %ecx, %edi
	addl      %ecx, %ebp
	movl      64(%eax), %ebx
	movl      %ebx, %edx
	movl      %ebx, 32(%esp)
	subl      %ecx, %edx
	movl      %edx, 64(%eax)
.L08051856:
	testl     %edx, %edx
	jne       .L080524A8
.L0805185E:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L08051865:
	movl      4(%esp), %eax
	testb     $8, %bh
	movl      $0, 64(%eax)
	movl      $6, (%eax)
	jne       .L08052208
.L0805187F:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L08052294
.L0805188E:
	movl      $0, 28(%eax)
	jmp       .L08052294
.L0805189A:
	.p2align 4,,10
	.p2align 3
.L080518A0:
	movl      4(%esp), %eax
	movl      64(%eax), %eax
.L080518A7:
	movl      4(%esp), %ebx
	movl      $15, (%ebx)
.L080518B1:
	testl     %eax, %eax
	je        .L08052620
.L080518B9:
	cmpl      %eax, %edi
	movl      %edi, %ebx
	ja        .L08052858
.L080518C3:
	cmpl      16(%esp), %ebx
	ja        .L08052860
.L080518CD:
	testl     %ebx, %ebx
	je        .L080524A8
.L080518D5:
	subl      $4, %esp
	subl      %ebx, %edi
	pushl     %ebx
	pushl     %ebp
	addl      %ebx, %ebp
	pushl     24(%esp)
	call      memcpy
.L080518E7:
	movl      20(%esp), %eax
	subl      %ebx, 32(%esp)
	addl      %ebx, 28(%esp)
	addl      $16, %esp
	subl      %ebx, 64(%eax)
	movl      (%eax), %eax
	jmp       .L08050EFC
.L08051900:
	movl      4(%esp), %eax
	movl      64(%eax), %eax
	jmp       .L080518B1
.L08051909:
	.p2align 4
.L08051910:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testb     $16, %bh
	je        .L080522AE
.L08051920:
	testl     %edi, %edi
	je        .L080524A8
.L08051928:
	movl      %esi, 40(%esp)
	xorl      %ebx, %ebx
	movl      %ebp, 32(%esp)
	movl      %edi, 36(%esp)
	movl      4(%esp), %esi
	jmp       .L08051946
.L0805193C:
	.p2align 4,,10
	.p2align 3
.L08051940:
	cmpl      36(%esp), %ebx
	jae       .L08051977
.L08051946:
	movl      32(%esp), %eax
	addl      $1, %ebx
	movzbl    -1(%eax,%ebx), %ebp
	movl      32(%esi), %eax
	testl     %eax, %eax
	movl      %ebp, %edx
	je        .L08051973
.L0805195B:
	movl      36(%eax), %edi
	testl     %edi, %edi
	je        .L08051973
.L08051962:
	movl      64(%esi), %ecx
	cmpl      40(%eax), %ecx
	jae       .L08051973
.L0805196A:
	leal      1(%ecx), %eax
	movl      %eax, 64(%esi)
	movb      %dl, (%edi,%ecx)
.L08051973:
	testl     %ebp, %ebp
	jne       .L08051940
.L08051977:
	movl      4(%esp), %eax
	movl      36(%esp), %edi
	movl      40(%esp), %esi
	movl      %ebp, 36(%esp)
	movl      32(%esp), %ebp
	testb     $2, 17(%eax)
	jne       .L08052A38
.L08051995:
	subl      %ebx, %edi
	addl      %ebx, %ebp
	movl      36(%esp), %ebx
	testl     %ebx, %ebx
	jne       .L080524A8
.L080519A5:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L080519AC:
	movl      4(%esp), %eax
	movl      $8, (%eax)
.L080519B6:
	testb     $2, %bh
	je        .L080524D0
.L080519BF:
	cmpl      $15, %esi
	ja        .L08052E99
.L080519C8:
	testl     %edi, %edi
	je        .L080524A8
.L080519D0:
	leal      1(%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L08052EA2
.L080519F2:
	testl     %edx, %edx
	je        .L0805257D
.L080519FA:
	leal      2(%ebp), %eax
	subl      $2, %edi
	addl      $16, %esi
	movl      %eax, 32(%esp)
	movzbl    1(%ebp), %eax
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08051A11:
	movl      4(%esp), %edx
	movzwl    24(%edx), %eax
	cmpl      8(%esp), %eax
	je        .L080524C0
.L08051A23:
	movl      128(%esp), %eax
	movl      32(%esp), %ebp
	movl      $.LC080589E3, 24(%eax)
	movl      $29, (%edx)
	movl      $29, %eax
	jmp       .L08050F05
.L08051A45:
	.p2align 4,,10
	.p2align 3
.L08051A48:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	jmp       .L080519B6
.L08051A54:
	.p2align 4,,10
	.p2align 3
.L08051A58:
	movl      %edi, %ebx
	movl      $-3, 28(%esp)
	movl      4(%esp), %edi
	jmp       .L08051580
.L08051A6B:
	.p2align 4,,10
	.p2align 3
.L08051A70:
	movl      4(%esp), %eax
	movl      8(%eax), %edx
	testl     %edx, %edx
	je        .L08052890
.L08051A7F:
	cmpl      $15, %esi
	ja        .L08051ACF
.L08051A84:
	testl     %edi, %edi
	je        .L080524A8
.L08051A8C:
	leal      -1(%edi), %eax
	movl      %esi, %ecx
	leal      1(%ebp), %ebx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L08053140
.L08051AAE:
	movl      32(%esp), %eax
	testl     %eax, %eax
	je        .L08052A08
.L08051ABA:
	movzbl    1(%ebp), %eax
	leal      2(%ebp), %ebx
	subl      $2, %edi
	addl      $16, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08051ACD:
	movl      %ebx, %ebp
.L08051ACF:
	cmpl      $35615, 8(%esp)
	jne       .L08051AE2
.L08051AD9:
	testb     $2, %dl
	jne       .L0805314B
.L08051AE2:
	movl      4(%esp), %eax
	movl      $0, 16(%eax)
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L08051AFB
.L08051AF4:
	movl      $-1, 48(%eax)
.L08051AFB:
	andl      $1, %edx
	je        .L08052C99
.L08051B04:
	movl      8(%esp), %ecx
	movl      $138547333, %edx
	movl      %ecx, %eax
	shrl      $8, %ecx
	sall      $8, %eax
	movzwl    %ax, %eax
	addl      %eax, %ecx
	movl      %ecx, %eax
	mull      %edx
	movl      %ecx, %eax
	subl      %edx, %eax
	shrl      $1, %eax
	addl      %edx, %eax
	shrl      $4, %eax
	movl      %eax, %edx
	sall      $5, %edx
	subl      %eax, %edx
	cmpl      %edx, %ecx
	jne       .L08052C99
.L08051B38:
	movl      8(%esp), %eax
	andl      $15, %eax
	cmpl      $8, %eax
	je        .L080531AF
.L08051B48:
	movl      128(%esp), %eax
	movl      $.LC0805899B, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08051B6A:
	.p2align 4,,10
	.p2align 3
.L08051B70:
	cmpl      $15, %esi
	ja        .L08053064
.L08051B79:
	testl     %edi, %edi
	je        .L080524A8
.L08051B81:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $15, %ecx
	ja        .L08053085
.L08051B9F:
	testl     %edx, %edx
	je        .L08052A80
.L08051BA7:
	movzbl    1(%ebp), %eax
	leal      2(%ebp), %ebx
	subl      $2, %edi
	addl      $16, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08051BBA:
	movl      8(%esp), %eax
	movl      4(%esp), %edx
	cmpb      $8, %al
	movl      %eax, 16(%edx)
	je        .L0805295E
.L08051BCD:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC0805899B, 24(%eax)
	movl      $29, (%edx)
	movl      $29, %eax
	jmp       .L08050F05
.L08051BED:
	.p2align 4,,10
	.p2align 3
.L08051BF0:
	movl      4(%esp), %eax
	movl      4(%esp), %ebx
	movl      104(%eax), %eax
	movl      %eax, 36(%esp)
.L08051BFF:
	movl      96(%ebx), %eax
	movl      %ebp, 40(%esp)
	movl      %eax, 60(%esp)
	addl      100(%ebx), %eax
	movl      8(%esp), %ebx
	movl      %eax, 44(%esp)
	movl      %eax, %edx
.L08051C17:
	cmpl      %edx, 36(%esp)
	jae       .L0805309B
.L08051C21:
	movl      4(%esp), %eax
	movl      84(%eax), %ecx
	movl      76(%eax), %edx
	movl      $1, %eax
	sall      %cl, %eax
	movl      %edx, %ebp
	movl      %edx, 32(%esp)
	leal      -1(%eax), %eax
	movl      %eax, 8(%esp)
	andl      %ebx, %eax
	leal      (%ebp,%eax,4), %eax
	movzbl    1(%eax), %ecx
	movzwl    2(%eax), %edx
	movzbl    %cl, %eax
	cmpl      %eax, %esi
	jae       .L08051CA4
.L08051C54:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L08052D1B
.L08051C60:
	movl      %esi, %ecx
	jmp       .L08051C70
.L08051C64:
	.p2align 4,,10
	.p2align 3
.L08051C68:
	testl     %edi, %edi
	je        .L080525D0
.L08051C70:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	movl      32(%esp), %esi
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %ebx
	movl      8(%esp), %eax
	andl      %ebx, %eax
	leal      (%esi,%eax,4), %edx
	movzbl    1(%edx), %esi
	movzwl    2(%edx), %edx
	cmpl      %ecx, %esi
	movl      %esi, %eax
	ja        .L08051C68
.L08051C9C:
	movl      %ecx, %esi
	movl      %ebp, 40(%esp)
	movl      %eax, %ecx
.L08051CA4:
	cmpw      $15, %dx
	jbe       .L08052928
.L08051CAE:
	cmpw      $16, %dx
	je        .L08052E1B
.L08051CB8:
	cmpw      $17, %dx
	je        .L08052EC0
.L08051CC2:
	leal      7(%eax), %edx
	cmpl      %edx, %esi
	jae       .L08051D05
.L08051CC9:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L08052D1B
.L08051CD5:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L08051CE8
.L08051CDD:
	.p2align 4,,10
	.p2align 3
.L08051CE0:
	testl     %edi, %edi
	je        .L080525D0
.L08051CE8:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L08051CE0
.L08051CFD:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L08051D05:
	movl      %eax, %ecx
	subl      $7, %esi
	shrl      %cl, %ebx
	subl      %eax, %esi
	xorl      %eax, %eax
	movl      %ebx, %edx
	shrl      $7, %ebx
	andl      $127, %edx
	addl      $11, %edx
.L08051D1B:
	movl      36(%esp), %ebp
	movl      %ebp, %ecx
	addl      %edx, %ecx
	cmpl      44(%esp), %ecx
	movl      %ecx, 68(%esp)
	ja        .L080532BE
.L08051D31:
	movw      %ax, 8(%esp)
	movl      4(%esp), %eax
	movl      %ebp, %ecx
	addl      $56, %ecx
	movl      %edx, 64(%esp)
	leal      (%eax,%ecx,2), %eax
	sall      $30, %eax
	shrl      $31, %eax
	cmpl      %eax, %edx
	jbe       .L08051D54
.L08051D50:
	movl      %eax, 64(%esp)
.L08051D54:
	cmpl      $6, %edx
	ja        .L08052F99
.L08051D5D:
	movzwl    8(%esp), %ebp
	movl      4(%esp), %eax
	cmpl      $2, %edx
	movw      %bp, (%eax,%ecx,2)
	movl      36(%esp), %ecx
	movw      %bp, 114(%eax,%ecx,2)
	je        .L08051D9B
.L08051D78:
	cmpl      $3, %edx
	movw      %bp, 116(%eax,%ecx,2)
	je        .L08051D9B
.L08051D82:
	cmpl      $4, %edx
	movw      %bp, 118(%eax,%ecx,2)
	je        .L08051D9B
.L08051D8C:
	cmpl      $6, %edx
	movw      %bp, 120(%eax,%ecx,2)
	jne       .L08051D9B
.L08051D96:
	movw      %bp, 122(%eax,%ecx,2)
.L08051D9B:
	movl      4(%esp), %edx
	movl      68(%esp), %eax
	movl      %eax, 104(%edx)
	movl      %eax, 36(%esp)
	movl      44(%esp), %edx
	jmp       .L08051C17
.L08051DB3:
	.p2align 4,,10
	.p2align 3
.L08051DB8:
	cmpl      $13, %esi
	ja        .L0805306B
.L08051DC1:
	testl     %edi, %edi
	je        .L080524A8
.L08051DC9:
	leal      1(%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	movl      %eax, 32(%esp)
	movzbl    (%ebp), %eax
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	movl      8(%esp), %ebx
	cmpl      $13, %ecx
	ja        .L08053078
.L08051DEF:
	testl     %edx, %edx
	je        .L0805257D
.L08051DF7:
	leal      2(%ebp), %eax
	subl      $2, %edi
	addl      $16, %esi
	movl      %eax, 32(%esp)
	movzbl    1(%ebp), %eax
	sall      %cl, %eax
	addl      %eax, %ebx
	movl      %ebx, 8(%esp)
	movl      %ebx, %ecx
.L08051E12:
	movl      %ecx, %eax
	movl      %ecx, %ebx
	movl      4(%esp), %ebp
	shrl      $5, %eax
	movl      %ecx, %edx
	shrl      $10, %ebx
	andl      $31, %eax
	andl      $31, %edx
	andl      $15, %ebx
	addl      $1, %eax
	addl      $257, %edx
	addl      $4, %ebx
	shrl      $14, %ecx
	subl      $14, %esi
	cmpl      $30, %eax
	movl      %edx, 96(%ebp)
	movl      %eax, 100(%ebp)
	movl      %ebx, 92(%ebp)
	movl      %ecx, 8(%esp)
	ja        .L080529C3
.L08051E53:
	cmpl      $286, %edx
	ja        .L080529C3
.L08051E5F:
	movl      4(%esp), %eax
	movl      %esi, %ecx
	xorl      %edx, %edx
	movl      8(%esp), %esi
	movl      %ebx, 8(%esp)
	movl      $0, 104(%eax)
	movl      $17, (%eax)
	jmp       .L08051E9C
.L08051E7E:
	.p2align 4,,10
	.p2align 3
.L08051E80:
	movl      4(%esp), %eax
	movl      92(%eax), %ebx
	movl      104(%eax), %edx
	cmpl      %edx, %ebx
	jbe       .L08051EF7
.L08051E8E:
	movl      %esi, %ecx
	movl      %ebp, 32(%esp)
	movl      8(%esp), %esi
	movl      %ebx, 8(%esp)
.L08051E9C:
	cmpl      $2, %ecx
	ja        .L08051EC5
.L08051EA1:
	testl     %edi, %edi
	je        .L08052EAB
.L08051EA9:
	movl      32(%esp), %eax
	subl      $1, %edi
	movzbl    (%eax), %eax
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %esi
	movl      32(%esp), %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
.L08051EC5:
	addl      $1, %edx
	movl      %esi, %eax
	subl      $3, %ecx
	andl      $7, %eax
	movzwl    lenfix.3430+2046(%edx,%edx), %ebp
	shrl      $3, %esi
	cmpl      8(%esp), %edx
	movl      4(%esp), %ebx
	movl      %edx, 104(%ebx)
	movw      %ax, 112(%ebx,%ebp,2)
	jb        .L08051E9C
.L08051EED:
	movl      32(%esp), %ebp
	movl      %esi, 8(%esp)
	movl      %ecx, %esi
.L08051EF7:
	cmpl      $18, %edx
	leal      order.3459(%edx,%edx), %eax
	movl      4(%esp), %ecx
	ja        .L08051F2F
.L08051F07:
	.p2align 4
.L08051F10:
	movzwl    (%eax), %edx
	addl      $2, %eax
	xorl      %ebx, %ebx
	cmpl      $.LC080594A6, %eax
	movw      %bx, 112(%ecx,%edx,2)
	jne       .L08051F10
.L08051F24:
	movl      4(%esp), %eax
	movl      $19, 104(%eax)
.L08051F2F:
	movl      4(%esp), %eax
	movl      56(%esp), %ebx
	subl      $8, %esp
	movl      %ebx, 108(%eax)
	movl      %ebx, 76(%eax)
	movl      %eax, %ebx
	movl      $7, 84(%eax)
	addl      $84, %eax
	pushl     60(%esp)
	pushl     %eax
	movl      %ebx, %eax
	addl      $108, %eax
	pushl     %eax
	movl      %ebx, %eax
	pushl     $19
	addl      $112, %eax
	pushl     %eax
	pushl     $0
	call      inflate_table
.L08051F66:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L0805303D
.L08051F75:
	movl      128(%esp), %eax
	movl      $.LC08058A27, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08051F97:
	.p2align 4
.L08051FA0:
	cmpl      $15, %esi
	ja        .L08051FDA
.L08051FA5:
	testl     %edi, %edi
	je        .L080524A8
.L08051FAD:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L08051FC0
.L08051FB5:
	.p2align 4,,10
	.p2align 3
.L08051FB8:
	testl     %edi, %edi
	je        .L08052540
.L08051FC0:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      $15, %ecx
	jbe       .L08051FB8
.L08051FD6:
	movl      %edx, 8(%esp)
.L08051FDA:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L08051FF5
.L08051FE5:
	movl      8(%esp), %ebx
	movzbl    %bl, %edx
	shrl      $8, %ebx
	movl      %edx, 8(%eax)
	movl      %ebx, 12(%eax)
.L08051FF5:
	movl      4(%esp), %eax
	movl      16(%eax), %eax
	testb     $2, %ah
	jne       .L08052B4A
.L08052005:
	movl      4(%esp), %esi
	movl      %eax, %ebx
	movl      $0, 8(%esp)
	movl      $4, (%esi)
	xorl      %esi, %esi
	testb     $4, %ah
	jne       .L080514BB
.L08052024:
	movl      4(%esp), %edx
	movl      32(%edx), %edx
	testl     %edx, %edx
	je        .L080529BC
.L08052033:
	movl      %eax, %ebx
	movl      $0, 16(%edx)
	andl      $1024, %eax
.L08052041:
	movl      4(%esp), %edx
	movl      $5, (%edx)
	jmp       .L080517BE
.L08052050:
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L080524A8
.L0805205C:
	movl      4(%esp), %edx
	movl      12(%esp), %ecx
	movl      64(%edx), %eax
	movb      %al, (%ecx)
	movl      %ebx, %eax
	movl      $20, (%edx)
	subl      $1, %eax
	movl      %eax, 16(%esp)
	leal      1(%ecx), %eax
	movl      %eax, 12(%esp)
	movl      $20, %eax
	jmp       .L08050F05
.L08052089:
	.p2align 4
.L08052090:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
	testl     %eax, %eax
	je        .L08052880
.L0805209F:
	cmpl      $31, %esi
	ja        .L08053139
.L080520A8:
	testl     %edi, %edi
	je        .L080524A8
.L080520B0:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08053034
.L080520CE:
	testl     %edx, %edx
	je        .L08052A08
.L080520D6:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08053034
.L080520F2:
	testl     %edx, %edx
	je        .L08052A08
.L080520FA:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08053034
.L08052116:
	testl     %edx, %edx
	je        .L08052A08
.L0805211E:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08052131:
	movl      128(%esp), %edx
	movl      20(%esp), %eax
	subl      16(%esp), %eax
	addl      %eax, 20(%edx)
	movl      4(%esp), %edx
	addl      %eax, 28(%edx)
	testl     %eax, %eax
	je        .L08052188
.L0805214E:
	movl      16(%edx), %edx
	testl     %edx, %edx
	je        .L08053015
.L08052159:
	subl      $4, %esp
	pushl     %eax
	movl      20(%esp), %edx
	subl      %eax, %edx
	pushl     %edx
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L08052170:
	addl      $16, %esp
.L08052173:
	movl      4(%esp), %edx
	movl      %eax, 24(%edx)
	movl      128(%esp), %edx
	movl      %eax, 48(%edx)
	movl      4(%esp), %edx
.L08052188:
	movl      16(%edx), %ebp
	movl      8(%esp), %eax
	testl     %ebp, %ebp
	jne       .L080521BD
.L08052193:
	movl      %eax, %edx
	movl      %eax, %ebp
	shrl      $24, %eax
	sall      $24, %edx
	leal      (%edx,%eax), %ecx
	movl      %ebp, %eax
	shrl      $8, %eax
	andl      $65280, %eax
	leal      (%ecx,%eax), %edx
	movl      %ebp, %eax
	andl      $65280, %eax
	sall      $8, %eax
	addl      %edx, %eax
	movl      4(%esp), %edx
.L080521BD:
	cmpl      24(%edx), %eax
	je        .L08052869
.L080521C6:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC08058ADC, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      16(%esp), %eax
	movl      %eax, 20(%esp)
	movl      $29, %eax
	jmp       .L08050F05
.L080521F2:
	.p2align 4,,10
	.p2align 3
.L080521F8:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testb     $8, %bh
	je        .L0805187F
.L08052208:
	testl     %edi, %edi
	je        .L080524A8
.L08052210:
	movl      %esi, 40(%esp)
	xorl      %ebx, %ebx
	movl      %ebp, 32(%esp)
	movl      %edi, 36(%esp)
	movl      4(%esp), %esi
	jmp       .L0805222E
.L08052224:
	.p2align 4,,10
	.p2align 3
.L08052228:
	cmpl      36(%esp), %ebx
	jae       .L0805225F
.L0805222E:
	movl      32(%esp), %eax
	addl      $1, %ebx
	movzbl    -1(%eax,%ebx), %ebp
	movl      32(%esi), %eax
	testl     %eax, %eax
	movl      %ebp, %edx
	je        .L0805225B
.L08052243:
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L0805225B
.L0805224A:
	movl      64(%esi), %ecx
	cmpl      32(%eax), %ecx
	jae       .L0805225B
.L08052252:
	leal      1(%ecx), %eax
	movl      %eax, 64(%esi)
	movb      %dl, (%edi,%ecx)
.L0805225B:
	testl     %ebp, %ebp
	jne       .L08052228
.L0805225F:
	movl      4(%esp), %eax
	movl      36(%esp), %edi
	movl      40(%esp), %esi
	movl      %ebp, 36(%esp)
	movl      32(%esp), %ebp
	testb     $2, 17(%eax)
	jne       .L08052A60
.L0805227D:
	movl      36(%esp), %eax
	subl      %ebx, %edi
	addl      %ebx, %ebp
	testl     %eax, %eax
	jne       .L080524A8
.L0805228D:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
.L08052294:
	movl      4(%esp), %eax
	testb     $16, %bh
	movl      $0, 64(%eax)
	movl      $7, (%eax)
	jne       .L08051920
.L080522AE:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L080519AC
.L080522BD:
	movl      $0, 36(%eax)
	jmp       .L080519AC
.L080522C9:
	.p2align 4
.L080522D0:
	movl      4(%esp), %eax
	movl      8(%eax), %eax
.L080522D7:
	testl     %eax, %eax
	je        .L08052F80
.L080522DF:
	movl      4(%esp), %eax
	movl      16(%eax), %ebx
	testl     %ebx, %ebx
	je        .L08052F80
.L080522EE:
	cmpl      $31, %esi
	ja        .L08052382
.L080522F7:
	testl     %edi, %edi
	je        .L080524A8
.L080522FF:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052C90
.L0805231D:
	testl     %edx, %edx
	je        .L08052A08
.L08052325:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052C90
.L08052341:
	testl     %edx, %edx
	je        .L08052A08
.L08052349:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052C90
.L08052365:
	testl     %edx, %edx
	je        .L08052A08
.L0805236D:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08052380:
	movl      %ebx, %ebp
.L08052382:
	movl      4(%esp), %eax
	movl      8(%esp), %ebx
	cmpl      %ebx, 28(%eax)
	je        .L0805319A
.L08052393:
	movl      128(%esp), %ebx
	movl      $.LC08058AF1, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L080523B1:
	.p2align 4,,10
	.p2align 3
.L080523B8:
	movl      %esi, %ecx
	andl      $-8, %esi
	andl      $7, %ecx
	shrl      %cl, 8(%esp)
	cmpl      $31, %esi
	ja        .L0805305D
.L080523CD:
	testl     %edi, %edi
	je        .L080524A8
.L080523D5:
	movzbl    (%ebp), %eax
	movl      %esi, %ecx
	leal      -1(%edi), %edx
	leal      1(%ebp), %ebx
	sall      %cl, %eax
	leal      8(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052E12
.L080523F3:
	testl     %edx, %edx
	je        .L08052A08
.L080523FB:
	movzbl    1(%ebp), %eax
	leal      -2(%edi), %edx
	leal      2(%ebp), %ebx
	sall      %cl, %eax
	leal      16(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052E12
.L08052417:
	testl     %edx, %edx
	je        .L08052A08
.L0805241F:
	movzbl    2(%ebp), %eax
	leal      -3(%edi), %edx
	leal      3(%ebp), %ebx
	sall      %cl, %eax
	leal      24(%esi), %ecx
	addl      %eax, 8(%esp)
	cmpl      $31, %ecx
	ja        .L08052E12
.L0805243B:
	testl     %edx, %edx
	je        .L08052A08
.L08052443:
	movzbl    3(%ebp), %eax
	leal      4(%ebp), %ebx
	subl      $4, %edi
	addl      $32, %esi
	sall      %cl, %eax
	addl      %eax, 8(%esp)
.L08052456:
	movl      8(%esp), %edx
	movzwl    %dx, %eax
	shrl      $16, %edx
	xorl      $65535, %edx
	cmpl      %edx, %eax
	je        .L08052990
.L0805246E:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC08058A0A, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08052492:
	.p2align 4,,10
	.p2align 3
.L08052498:
	movl      $256, %edx
	jmp       .L080516F6
.L080524A2:
	.p2align 4,,10
	.p2align 3
.L080524A8:
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L08051580
.L080524B3:
	.p2align 4,,10
	.p2align 3
.L080524B8:
	subl      $-128, %eax
	jmp       .L080516F4
.L080524C0:
	movl      32(%esp), %ebp
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	.p2align 4,,10
	.p2align 3
.L080524D0:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L080524ED
.L080524DB:
	movl      %ebx, %edx
	movl      $1, 48(%eax)
	sarl      $9, %edx
	andl      $1, %edx
	movl      %edx, 44(%eax)
.L080524ED:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L080524FB:
	movl      20(%esp), %ebx
	movl      144(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%ebx)
	movl      %eax, 48(%edx)
	movl      $11, %eax
	movl      $11, (%ebx)
	jmp       .L08050F05
.L0805251F:
	.p2align 4,,10
	.p2align 3
.L08052520:
	movl      4(%eax), %eax
	testl     %eax, %eax
	jne       .L080525C0
.L0805252B:
	movl      $0, 24(%esp)
	jmp       .L08050E9F
.L08052538:
	.p2align 4
.L08052540:
	movl      %edi, %ebx
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L08051580
.L08052551:
	.p2align 4,,10
	.p2align 3
.L08052558:
	subl      $4, %esp
	pushl     %ebx
	movl      136(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, 12(%esp)
	subl      %ebx, %eax
	pushl     %eax
	pushl     24(%edi)
	call      adler32
.L08052575:
	addl      $16, %esp
	jmp       .L080516BC
.L0805257D:
	movl      4(%esp), %edi
	movl      %ecx, %esi
	movl      32(%esp), %ebp
	xorl      %ebx, %ebx
	jmp       .L08051580
.L0805258E:
	.p2align 4,,10
	.p2align 3
.L08052590:
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebx, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L080525A1:
	movl      40(%esi), %eax
	movl      $0, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L08051668
.L080525B6:
	.p2align 4
.L080525C0:
	movl      $-2, %eax
	jmp       .L08051568
.L080525CA:
	.p2align 4,,10
	.p2align 3
.L080525D0:
	movl      %ebx, 8(%esp)
	movl      %ecx, %esi
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L08051580
.L080525E1:
	.p2align 4,,10
	.p2align 3
.L080525E8:
	movl      $0, 48(%esi)
	jmp       .L08051658
.L080525F4:
	.p2align 4,,10
	.p2align 3
.L080525F8:
	movl      12(%esp), %eax
	subl      $4, %esp
	pushl     %ebp
	subl      %ebp, %eax
	pushl     %eax
	pushl     52(%esi)
	call      memcpy
.L0805260B:
	movl      40(%esi), %eax
	movl      %ebp, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L08051668
.L0805261C:
	.p2align 4,,10
	.p2align 3
.L08052620:
	movl      4(%esp), %eax
	movl      $11, (%eax)
	movl      $11, %eax
	jmp       .L08050F05
.L08052634:
	.p2align 4,,10
	.p2align 3
.L08052638:
	movl      12(%esp), %eax
	subl      %edx, %eax
	movl      %eax, 32(%esp)
	movl      4(%esp), %eax
	movl      64(%eax), %ecx
	movl      %ecx, %edx
.L0805264B:
	cmpl      16(%esp), %ecx
	movl      %ecx, %ebx
	jbe       .L08052657
.L08052653:
	movl      16(%esp), %ebx
.L08052657:
	movl      4(%esp), %ecx
	movl      32(%esp), %eax
	subl      %ebx, %edx
	subl      %ebx, 16(%esp)
	movl      %edx, 64(%ecx)
	leal      4(%eax), %edx
	movl      12(%esp), %eax
	cmpl      %edx, %eax
	movl      %eax, %edx
	setae     %cl
	addl      $4, %edx
	cmpl      %edx, 32(%esp)
	setae     %dl
	orl       %ecx, %edx
	cmpl      $9, %ebx
	seta      %cl
	testb     %cl, %dl
	je        .L08052B18
.L08052690:
	movl      %eax, %edx
	movl      32(%esp), %eax
	orl       %eax, %edx
	andl      $3, %edx
	jne       .L08052B18
.L080526A1:
	leal      -4(%ebx), %ecx
	movl      %ebx, 36(%esp)
	movl      12(%esp), %ebx
	movl      %esi, 32(%esp)
	shrl      $2, %ecx
	addl      $1, %ecx
	leal      0(,%ecx,4), %edx
	movl      %edx, 40(%esp)
	xorl      %edx, %edx
.L080526C3:
	movl      (%eax,%edx,4), %esi
	movl      %esi, (%ebx,%edx,4)
	addl      $1, %edx
	cmpl      %ecx, %edx
	jb        .L080526C3
.L080526D0:
	movl      36(%esp), %ebx
	movl      40(%esp), %ecx
	movl      32(%esp), %esi
	movl      %eax, 32(%esp)
	movl      12(%esp), %edx
	movl      %ebx, %eax
	subl      %ecx, %eax
	movl      %eax, 36(%esp)
	movl      32(%esp), %eax
	addl      %ecx, %edx
	addl      %ecx, %eax
	cmpl      %ebx, %ecx
	je        .L08052719
.L080526F8:
	movzbl    (%eax), %ecx
	cmpl      $1, 36(%esp)
	movb      %cl, (%edx)
	je        .L08052719
.L08052704:
	movzbl    1(%eax), %ecx
	cmpl      $2, 36(%esp)
	movb      %cl, 1(%edx)
	je        .L08052719
.L08052712:
	movzbl    2(%eax), %eax
	movb      %al, 2(%edx)
.L08052719:
	movl      4(%esp), %eax
	addl      %ebx, 12(%esp)
	movl      64(%eax), %ecx
	testl     %ecx, %ecx
	je        .L08052730
.L08052728:
	movl      (%eax), %eax
	jmp       .L08050EFC
.L0805272F:
	.p2align 4,,10
	.p2align 3
.L08052730:
	movl      $20, (%eax)
	movl      $20, %eax
	jmp       .L08050F05
.L08052740:
	movl      %eax, %ecx
	jmp       .L080517DB
.L08052747:
	.p2align 4
.L08052750:
	movl      128(%esp), %eax
	movl      12(%esp), %ebx
	subl      $8, %esp
	movl      %ebx, 12(%eax)
	movl      24(%esp), %ebx
	movl      %edi, 4(%eax)
	movl      16(%esp), %edi
	movl      %ebp, (%eax)
	movl      %ebx, 16(%eax)
	movl      12(%esp), %ebx
	movl      %edi, 56(%ebx)
	movl      %esi, 60(%ebx)
	pushl     28(%esp)
	pushl     140(%esp)
	call      inflate_fast
.L0805278B:
	movl      144(%esp), %eax
	movl      56(%ebx), %esi
	movl      12(%eax), %eax
	movl      %esi, 24(%esp)
	movl      60(%ebx), %esi
	movl      %eax, 28(%esp)
	movl      144(%esp), %eax
	movl      16(%eax), %eax
	movl      %eax, 32(%esp)
	movl      144(%esp), %eax
	addl      $16, %esp
	movl      (%eax), %ebp
	movl      4(%eax), %edi
	movl      (%ebx), %eax
	cmpl      $11, %eax
	jne       .L08050EFC
.L080527CB:
	movl      4(%esp), %ebx
	movl      $-1, 7108(%ebx)
	jmp       .L08050F05
.L080527DE:
	.p2align 4,,10
	.p2align 3
.L080527E0:
	cmpl      %ebx, %esi
	jae       .L0805281B
.L080527E4:
	testl     %edi, %edi
	je        .L080524A8
.L080527EC:
	movl      8(%esp), %edx
	movl      %esi, %ecx
	jmp       .L08052800
.L080527F4:
	.p2align 4,,10
	.p2align 3
.L080527F8:
	testl     %edi, %edi
	je        .L08052540
.L08052800:
	addl      $1, %ebp
	movzbl    -1(%ebp), %eax
	subl      $1, %edi
	sall      %cl, %eax
	addl      $8, %ecx
	addl      %eax, %edx
	cmpl      %ebx, %ecx
	jb        .L080527F8
.L08052815:
	movl      %edx, 8(%esp)
	movl      %ecx, %esi
.L0805281B:
	movl      %ebx, %ecx
	movl      $1, %eax
	movl      8(%esp), %edx
	sall      %cl, %eax
	movl      4(%esp), %ecx
	subl      %ebx, %esi
	subl      $1, %eax
	andl      %edx, %eax
	addl      64(%ecx), %eax
	movl      %eax, 64(%ecx)
	movl      %ebx, %ecx
	shrl      %cl, %edx
	movl      4(%esp), %ecx
	movl      %edx, 8(%esp)
	addl      %ebx, 7108(%ecx)
	movl      %ecx, %ebx
	jmp       .L080512FA
.L08052852:
	.p2align 4,,10
	.p2align 3
.L08052858:
	movl      %eax, %ebx
	jmp       .L080518C3
.L0805285F:
	.p2align 4,,10
	.p2align 3
.L08052860:
	movl      16(%esp), %ebx
	jmp       .L080518CD
.L08052869:
	movl      16(%esp), %esi
	movl      8(%edx), %eax
	movl      %ebx, %ebp
	movl      $0, 8(%esp)
	movl      %esi, 20(%esp)
	xorl      %esi, %esi
.L08052880:
	movl      4(%esp), %ebx
	movl      $27, (%ebx)
	jmp       .L080522D7
.L0805288F:
	.p2align 4,,10
	.p2align 3
.L08052890:
	movl      $12, (%eax)
	movl      $12, %eax
	jmp       .L08050F05
.L080528A0:
	movl      7104(%ebx), %eax
	testl     %eax, %eax
	je        .L08051198
.L080528AE:
	movl      128(%esp), %eax
	movl      $.LC08058ABE, 24(%eax)
	movl      $29, (%ebx)
	movl      $29, %eax
	jmp       .L08050F05
.L080528CC:
	.p2align 4,,10
	.p2align 3
.L080528D0:
	movl      4(%esp), %edx
	movl      %eax, 44(%esp)
	movl      7108(%edx), %edx
	movl      %edx, 36(%esp)
.L080528E2:
	addl      %eax, %edx
	movl      %eax, %ecx
	movl      4(%esp), %eax
	shrl      %cl, 8(%esp)
	subl      40(%esp), %esi
	testb     $64, %bl
	movl      %edx, 7108(%eax)
	je        .L08052AF8
.L08052901:
	movl      128(%esp), %eax
	movl      $.LC08058AA8, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08052923:
	.p2align 4,,10
	.p2align 3
.L08052928:
	shrl      %cl, %ebx
	movl      36(%esp), %ecx
	movl      4(%esp), %ebp
	subl      %eax, %esi
	movl      %ecx, %eax
	addl      $1, %eax
	movl      %eax, 104(%ebp)
	movl      %eax, 36(%esp)
	movw      %dx, 112(%ebp,%ecx,2)
	movl      44(%esp), %edx
	jmp       .L08051C17
.L0805294E:
	movl      $16, (%ebx)
	movl      $16, %eax
	jmp       .L080510A0
.L0805295E:
	testl     $57344, 8(%esp)
	je        .L08052F40
.L0805296C:
	movl      128(%esp), %eax
	movl      %ebx, %ebp
	movl      $.LC080589CA, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08052990:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %esi
	movl      %ebx, %ebp
	movl      %eax, 64(%esi)
	movl      $14, (%esi)
	je        .L080532E8
.L080529AD:
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	jmp       .L080518A7
.L080529BC:
	xorl      %eax, %eax
	jmp       .L08052041
.L080529C3:
	movl      128(%esp), %eax
	movl      32(%esp), %ebp
	movl      $.LC08058B08, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L080529E9:
	.p2align 4
.L080529F0:
	movl      %esi, %ebx
	movl      %edi, 8(%esp)
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L08051580
.L08052A01:
	.p2align 4,,10
	.p2align 3
.L08052A08:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	movl      %ecx, %esi
	xorl      %ebx, %ebx
	jmp       .L08051580
.L08052A17:
	.p2align 4
.L08052A20:
	movl      %edi, %ebx
	movl      %esi, 8(%esp)
	movl      4(%esp), %edi
	movl      %ecx, %esi
	jmp       .L08051580
.L08052A31:
	.p2align 4,,10
	.p2align 3
.L08052A38:
	subl      $4, %esp
	pushl     %ebx
	pushl     %ebp
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L08052A49:
	movl      20(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	jmp       .L08051995
.L08052A58:
	.p2align 4
.L08052A60:
	subl      $4, %esp
	pushl     %ebx
	pushl     %ebp
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      crc32
.L08052A71:
	movl      20(%esp), %edx
	addl      $16, %esp
	movl      %eax, 24(%edx)
	jmp       .L0805227D
.L08052A80:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	movl      %ecx, %esi
	xorl      %ebx, %ebx
	jmp       .L08051580
.L08052A8F:
	.p2align 4,,10
	.p2align 3
.L08052A90:
	movl      4(%esp), %ebx
	subl      %ecx, %eax
	addl      52(%ebx), %eax
	movl      %eax, 32(%esp)
	movl      %ebx, %eax
	jmp       .L080511BB
.L08052AA4:
	.p2align 4,,10
	.p2align 3
.L08052AA8:
	testb     $240, %bl
	je        .L08052B92
.L08052AB1:
	movl      %edx, %ecx
	movl      4(%esp), %edx
	subl      %eax, %esi
	shrl      %cl, 8(%esp)
	movl      %eax, 7108(%edx)
	movzwl    36(%esp), %eax
	movl      %eax, 64(%edx)
.L08052ACB:
	testb     $32, %bl
	je        .L08052D4E
.L08052AD4:
	movl      4(%esp), %eax
	movl      $-1, 7108(%eax)
	movl      $11, (%eax)
	movl      $11, %eax
	jmp       .L08050F05
.L08052AF2:
	.p2align 4,,10
	.p2align 3
.L08052AF8:
	movl      %eax, %edx
	movzwl    32(%esp), %eax
	andl      $15, %ebx
	movl      %ebx, 72(%edx)
	movl      $23, (%edx)
	movl      %eax, 68(%edx)
	jmp       .L080510EF
.L08052B13:
	.p2align 4,,10
	.p2align 3
.L08052B18:
	movl      32(%esp), %eax
	movl      12(%esp), %edx
	movl      %ebx, 32(%esp)
	leal      (%eax,%ebx), %ecx
	.p2align 4
.L08052B30:
	addl      $1, %eax
	movzbl    -1(%eax), %ebx
	addl      $1, %edx
	cmpl      %ecx, %eax
	movb      %bl, -1(%edx)
	jne       .L08052B30
.L08052B41:
	movl      32(%esp), %ebx
	jmp       .L08052719
.L08052B4A:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L08052B73:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      16(%esi), %eax
	jmp       .L08052005
.L08052B81:
	movl      %ebx, 8(%esp)
	movl      %ebp, %ebx
	movl      %edi, %ebp
	movl      4(%esp), %edi
	jmp       .L08051580
.L08052B92:
	movzwl    36(%esp), %ecx
	movl      %ecx, 36(%esp)
	leal      (%ebx,%eax), %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %edx, %ecx
	leal      -1(%ebx), %ebx
	movl      %ebx, 44(%esp)
	andl      8(%esp), %ebx
	shrl      %cl, %ebx
	movl      36(%esp), %ecx
	leal      (%ebx,%ecx), %edx
	movl      32(%esp), %ebx
	leal      (%ebx,%edx,4), %edx
	movzwl    2(%edx), %ecx
	movzbl    (%edx), %ebx
	movzbl    1(%edx), %edx
	movw      %cx, 40(%esp)
	leal      (%eax,%edx), %ecx
	movl      %edx, 60(%esp)
	cmpl      %ecx, %esi
	movl      %ecx, 64(%esp)
	jae       .L08052C4C
.L08052BE1:
	testl     %edi, %edi
	je        .L080524A8
.L08052BE9:
	movl      8(%esp), %ebx
	jmp       .L08052BF8
.L08052BEF:
	.p2align 4,,10
	.p2align 3
.L08052BF0:
	testl     %edi, %edi
	je        .L08052D1B
.L08052BF8:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	movl      %esi, %ecx
	addl      $8, %esi
	subl      $1, %edi
	sall      %cl, %edx
	movl      %eax, %ecx
	addl      %edx, %ebx
	movl      44(%esp), %edx
	andl      %ebx, %edx
	shrl      %cl, %edx
	addl      36(%esp), %edx
	movl      32(%esp), %ecx
	leal      (%ecx,%edx,4), %edx
	movzbl    (%edx), %ecx
	movb      %cl, 60(%esp)
	movzwl    2(%edx), %ecx
	movzbl    1(%edx), %edx
	movw      %cx, 40(%esp)
	leal      (%edx,%eax), %ecx
	cmpl      %esi, %ecx
	ja        .L08052BF0
.L08052C3B:
	movl      %ebx, 8(%esp)
	movl      %ecx, 64(%esp)
	movzbl    60(%esp), %ebx
	movl      %edx, 60(%esp)
.L08052C4C:
	subl      %eax, %esi
	movl      %eax, %ecx
	movl      8(%esp), %edx
	movl      %esi, %eax
	movl      60(%esp), %esi
	shrl      %cl, %edx
	subl      %esi, %eax
	movl      %esi, %ecx
	shrl      %cl, %edx
	movl      %eax, %esi
	movzwl    40(%esp), %eax
	movl      %edx, 8(%esp)
	movl      64(%esp), %ecx
	testb     %bl, %bl
	movl      4(%esp), %edx
	movl      %ecx, 7108(%edx)
	movl      %eax, 64(%edx)
	jne       .L08052ACB
.L08052C86:
	jmp       .L080512C5
.L08052C8B:
	.p2align 4,,10
	.p2align 3
.L08052C90:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L08052380
.L08052C99:
	movl      128(%esp), %eax
	movl      $.LC08058984, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08052CBB:
	cmpl      $6, 132(%esp)
	movl      4(%esp), %eax
	movl      $lenfix.3430, 76(%eax)
	movl      $9, 84(%eax)
	movl      $distfix.3431, 80(%eax)
	movl      $5, 88(%eax)
	movl      $19, (%eax)
	je        .L080532FD
.L08052CEF:
	movl      $19, %eax
	jmp       .L080510A0
.L08052CF9:
	movl      128(%esp), %eax
	movl      $.LC080589F7, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L080510A0
.L08052D1B:
	movl      %ebx, 8(%esp)
	movl      %edi, %ebx
	movl      4(%esp), %edi
	jmp       .L08051580
.L08052D2A:
	subl      $4, %esp
	pushl     %ecx
	movl      %ecx, 40(%esp)
	pushl     %ebp
	movl      16(%esp), %ebx
	pushl     24(%ebx)
	call      crc32
.L08052D3F:
	addl      $16, %esp
	movl      %eax, 24(%ebx)
	movl      32(%esp), %ecx
	jmp       .L08051840
.L08052D4E:
	testb     $64, %bl
	je        .L08052F24
.L08052D57:
	movl      128(%esp), %eax
	movl      $.LC08058A8C, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08052D79:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	movl      %esi, %eax
	shrl      $16, %eax
	movb      %al, 98(%esp)
	movl      %esi, %eax
	shrl      $24, %eax
	movb      %al, 99(%esp)
	pushl     $4
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L08052DB4:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      4(%esp), %eax
	jmp       .L08051792
.L08052DC3:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L08052DEC:
	movl      16(%esi), %ebx
	movl      %eax, 24(%esi)
	addl      $16, %esp
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	movl      %ebx, %eax
	andl      $1024, %eax
	jmp       .L08052041
.L08052E0B:
	movl      %edx, %edi
	jmp       .L08050FA1
.L08052E12:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L08052456
.L08052E1B:
	leal      2(%eax), %edx
	cmpl      %edx, %esi
	jae       .L08052E65
.L08052E22:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L08052D1B
.L08052E2E:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L08052E48
.L08052E36:
	.p2align 4
.L08052E40:
	testl     %edi, %edi
	je        .L080525D0
.L08052E48:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L08052E40
.L08052E5D:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L08052E65:
	movl      %eax, %ecx
	subl      %eax, %esi
	movl      36(%esp), %eax
	shrl      %cl, %ebx
	testl     %eax, %eax
	je        .L080532BE
.L08052E77:
	movl      36(%esp), %eax
	movl      4(%esp), %edx
	subl      $2, %esi
	addl      $55, %eax
	movzwl    (%edx,%eax,2), %eax
	movl      %ebx, %edx
	shrl      $2, %ebx
	andl      $3, %edx
	addl      $3, %edx
	jmp       .L08051D1B
.L08052E99:
	movl      %ebp, 32(%esp)
	jmp       .L08051A11
.L08052EA2:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L08051A11
.L08052EAB:
	movl      %edi, %ebx
	movl      %esi, 8(%esp)
	movl      32(%esp), %ebp
	movl      %ecx, %esi
	movl      4(%esp), %edi
	jmp       .L08051580
.L08052EC0:
	leal      3(%eax), %edx
	cmpl      %edx, %esi
	jae       .L08052F05
.L08052EC7:
	testl     %edi, %edi
	movl      40(%esp), %ebp
	je        .L08052D1B
.L08052ED3:
	movl      %esi, %ecx
	movl      %eax, %esi
	movl      %edx, %eax
	jmp       .L08052EE8
.L08052EDB:
	.p2align 4,,10
	.p2align 3
.L08052EE0:
	testl     %edi, %edi
	je        .L080525D0
.L08052EE8:
	addl      $1, %ebp
	movzbl    -1(%ebp), %edx
	subl      $1, %edi
	sall      %cl, %edx
	addl      $8, %ecx
	addl      %edx, %ebx
	cmpl      %eax, %ecx
	jb        .L08052EE0
.L08052EFD:
	movl      %esi, %eax
	movl      %ebp, 40(%esp)
	movl      %ecx, %esi
.L08052F05:
	movl      %eax, %ecx
	shrl      %cl, %ebx
	movl      $-3, %ecx
	movl      %ebx, %edx
	subl      %eax, %ecx
	shrl      $3, %ebx
	andl      $7, %edx
	addl      %ecx, %esi
	xorl      %eax, %eax
	addl      $3, %edx
	jmp       .L08051D1B
.L08052F24:
	movl      4(%esp), %eax
	andl      $15, %ebx
	movl      %ebx, 72(%eax)
	movl      $21, (%eax)
	jmp       .L080512E7
.L08052F39:
	movl      %ebp, %edx
	jmp       .L08051063
.L08052F40:
	movl      4(%esp), %eax
	movl      32(%eax), %eax
	testl     %eax, %eax
	je        .L08052F57
.L08052F4B:
	movl      8(%esp), %edx
	shrl      $8, %edx
	andl      $1, %edx
	movl      %edx, (%eax)
.L08052F57:
	testl     $512, 8(%esp)
	jne       .L08053105
.L08052F65:
	movl      4(%esp), %eax
	movl      %ebx, %ebp
	movl      $0, 8(%esp)
	xorl      %esi, %esi
	movl      $2, (%eax)
	jmp       .L0805173D
.L08052F80:
	movl      %edi, %ebx
	movl      4(%esp), %edi
.L08052F86:
	movl      $28, (%edi)
	movl      $1, 28(%esp)
	jmp       .L08051580
.L08052F99:
	movl      64(%esp), %ebp
	testl     %ebp, %ebp
	jne       .L08053373
.L08052FA5:
	movl      %edx, %eax
	movl      %edx, 76(%esp)
	subl      $2, %eax
	shrl      $1, %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
	addl      %eax, %eax
	movl      %eax, 72(%esp)
.L08052FBD:
	movzwl    8(%esp), %edx
	movl      40(%esp), %ebp
	movl      %edx, %eax
	sall      $16, %eax
	orl       %eax, %edx
	movl      64(%esp), %eax
	addl      %ecx, %eax
	movl      4(%esp), %ecx
	leal      (%ecx,%eax,2), %ecx
	xorl      %eax, %eax
.L08052FDC:
	movl      %edx, (%ecx,%eax,4)
	addl      $1, %eax
	cmpl      32(%esp), %eax
	jb        .L08052FDC
.L08052FE8:
	movl      72(%esp), %edx
	addl      %edx, 36(%esp)
	cmpl      76(%esp), %edx
	movl      %ebp, 40(%esp)
	je        .L08051D9B
.L08052FFE:
	movzwl    8(%esp), %ecx
	movl      4(%esp), %eax
	movl      36(%esp), %edx
	movw      %cx, 112(%eax,%edx,2)
	jmp       .L08051D9B
.L08053015:
	subl      $4, %esp
	pushl     %eax
	movl      20(%esp), %edx
	subl      %eax, %edx
	pushl     %edx
	movl      16(%esp), %eax
	pushl     24(%eax)
	call      adler32
.L0805302C:
	addl      $16, %esp
	jmp       .L08052173
.L08053034:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L08052131
.L0805303D:
	movl      4(%esp), %eax
	movl      $0, 36(%esp)
	movl      $0, 104(%eax)
	movl      $18, (%eax)
	movl      %eax, %ebx
	jmp       .L08051BFF
.L0805305D:
	movl      %ebp, %ebx
	jmp       .L08052456
.L08053064:
	movl      %ebp, %ebx
	jmp       .L08051BBA
.L0805306B:
	movl      %ebp, 32(%esp)
	movl      8(%esp), %ecx
	jmp       .L08051E12
.L08053078:
	movl      %ecx, %esi
	movl      %edx, %edi
	movl      8(%esp), %ecx
	jmp       .L08051E12
.L08053085:
	movl      %ecx, %esi
	movl      %edx, %edi
	jmp       .L08051BBA
.L0805308E:
	movl      %ebx, %ebp
	movl      4(%esp), %edi
	xorl      %ebx, %ebx
	jmp       .L08051580
.L0805309B:
	movl      4(%esp), %eax
	movl      40(%esp), %ebp
	movl      %ebx, 8(%esp)
	cmpw      $0, 624(%eax)
	jne       .L08053226
.L080530B5:
	movl      128(%esp), %ebx
	movl      $.LC08058B2C, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L080530D3:
	movl      %edi, %ebx
	movl      12(%esp), %edx
	movl      %eax, %edi
	movl      128(%esp), %eax
	movl      %edx, 12(%eax)
	movl      16(%esp), %edx
	movl      %ebp, (%eax)
	movl      %ebx, 4(%eax)
	movl      %edx, 16(%eax)
	movl      8(%esp), %eax
	movl      %esi, 60(%edi)
	movl      %eax, 56(%edi)
	movl      $2, %eax
	jmp       .L08051568
.L08053105:
	movl      8(%esp), %esi
	subl      $4, %esp
	movl      %esi, %eax
	movb      %al, 96(%esp)
	movl      %esi, %eax
	shrl      $8, %eax
	movb      %al, 97(%esp)
	pushl     $2
	leal      100(%esp), %eax
	pushl     %eax
	movl      16(%esp), %esi
	pushl     24(%esi)
	call      crc32
.L0805312E:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	jmp       .L08052F65
.L08053139:
	movl      %ebp, %ebx
	jmp       .L08052131
.L08053140:
	movl      %ecx, %esi
	movl      32(%esp), %edi
	jmp       .L08051ACD
.L0805314B:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L08053159:
	movl      20(%esp), %esi
	movb      $31, 108(%esp)
	movb      $139, 109(%esp)
	addl      $12, %esp
	movl      %eax, 24(%esi)
	pushl     $2
	leal      100(%esp), %edx
	pushl     %edx
	pushl     %eax
	call      crc32
.L0805317A:
	addl      $16, %esp
	movl      %eax, 24(%esi)
	movl      $1, (%esi)
	movl      $1, %eax
	xorl      %esi, %esi
	movl      $0, 8(%esp)
	jmp       .L08050F05
.L0805319A:
	movl      %edi, %ebx
	xorl      %esi, %esi
	movl      4(%esp), %edi
	movl      $0, 8(%esp)
	jmp       .L08052F86
.L080531AF:
	shrl      $4, 8(%esp)
	movl      8(%esp), %eax
	andl      $15, %eax
	movl      %eax, %ecx
	movl      4(%esp), %eax
	addl      $8, %ecx
	movl      36(%eax), %eax
	testl     %eax, %eax
	jne       .L08053291
.L080531CF:
	movl      4(%esp), %eax
	movl      %ecx, 36(%eax)
.L080531D6:
	movl      4(%esp), %esi
	movl      $1, %eax
	sall      %cl, %eax
	movl      %eax, 20(%esi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L080531F0:
	movl      24(%esp), %ecx
	movl      144(%esp), %ebx
	addl      $16, %esp
	movl      %eax, 24(%esi)
	andl      $512, %ecx
	movl      %eax, 48(%ebx)
	movl      $0, 8(%esp)
	cmpl      $1, %ecx
	sbbl      %eax, %eax
	andl      $2, %eax
	addl      $9, %eax
	movl      %eax, (%esi)
	xorl      %esi, %esi
	jmp       .L08050EFC
.L08053226:
	movl      4(%esp), %edx
	movl      56(%esp), %ebx
	movl      %ebx, 108(%edx)
	movl      %ebx, 76(%edx)
	movl      %edx, %eax
	leal      108(%edx), %ebx
	addl      $84, %eax
	movl      $9, 84(%edx)
	pushl     %ecx
	pushl     %ecx
	pushl     60(%esp)
	pushl     %eax
	movl      %edx, %eax
	pushl     %ebx
	pushl     80(%esp)
	addl      $112, %eax
	movl      %edx, 28(%esp)
	pushl     %eax
	pushl     $1
	call      inflate_table
.L08053260:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L08053310
.L0805326F:
	movl      4(%esp), %eax
	movl      128(%esp), %ebx
	movl      $.LC08058A5A, 24(%ebx)
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08053291:
	cmpl      %eax, %ecx
	jbe       .L080531D6
.L08053299:
	movl      128(%esp), %eax
	subl      $4, %esi
	movl      $.LC080589B6, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L080532BE:
	movl      128(%esp), %eax
	movl      40(%esp), %ebp
	movl      %ebx, 8(%esp)
	movl      $.LC08058A40, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L080532E8:
	movl      %edi, %ebx
	xorl      %esi, %esi
	movl      4(%esp), %edi
	movl      $0, 8(%esp)
	jmp       .L08051580
.L080532FD:
	movl      %edi, %ebx
	shrl      $3, 8(%esp)
	movl      %eax, %edi
	subl      $3, %esi
	movl      %edx, %ebp
	jmp       .L08051580
.L08053310:
	movl      4(%esp), %edx
	movl      108(%edx), %eax
	movl      $6, 88(%edx)
	movl      %eax, 80(%edx)
	movl      %edx, %eax
	pushl     %ecx
	addl      $88, %eax
	pushl     %ecx
	pushl     60(%esp)
	pushl     %eax
	pushl     %ebx
	pushl     100(%edx)
	movl      96(%edx), %eax
	leal      112(%eax,%eax), %eax
	addl      %edx, %eax
	pushl     %eax
	pushl     $2
	call      inflate_table
.L08053342:
	movl      %eax, 60(%esp)
	addl      $32, %esp
	testl     %eax, %eax
	je        .L080511CD
.L08053351:
	movl      128(%esp), %eax
	movl      $.LC08058A76, 24(%eax)
	movl      4(%esp), %eax
	movl      $29, (%eax)
	movl      $29, %eax
	jmp       .L08050F05
.L08053373:
	movzwl    8(%esp), %ebp
	movl      4(%esp), %eax
	movl      $1, 64(%esp)
	movw      %bp, (%eax,%ecx,2)
	movl      36(%esp), %eax
	addl      $1, %eax
	movl      %eax, 36(%esp)
	leal      -1(%edx), %eax
	movl      %eax, %ebp
	movl      %eax, 76(%esp)
	leal      -3(%edx), %eax
	shrl      $1, %eax
	addl      $1, %eax
	movl      %eax, 32(%esp)
	addl      %eax, %eax
	movl      %eax, 72(%esp)
	movl      %ebp, %eax
	subl      $1, %eax
	je        .L08052FFE
.L080533B9:
	jmp       .L08052FBD
	.size	inflate, .-inflate
# ----------------------
.L080533BE:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflateEnd
	.type	inflateEnd, @function
inflateEnd:
	pushl     %ebx
	subl      $8, %esp
	movl      16(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08053410
.L080533CC:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L08053410
.L080533D3:
	movl      36(%ebx), %edx
	testl     %edx, %edx
	je        .L08053410
.L080533DA:
	movl      52(%eax), %ecx
	testl     %ecx, %ecx
	je        .L080533F3
.L080533E1:
	subl      $8, %esp
	pushl     %ecx
	pushl     40(%ebx)
	call      *%edx
.L080533EA:
	movl      36(%ebx), %edx
	movl      28(%ebx), %eax
	addl      $16, %esp
.L080533F3:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *%edx
.L080533FC:
	movl      $0, 28(%ebx)
	addl      $16, %esp
	xorl      %eax, %eax
.L08053408:
	addl      $8, %esp
	popl      %ebx
	ret       
.L0805340D:
	.p2align 4,,10
	.p2align 3
.L08053410:
	movl      $-2, %eax
	jmp       .L08053408
	.size	inflateEnd, .-inflateEnd
# ----------------------
.L08053417:
	.p2align 4
# ----------------------
	.globl	inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %eax
	movl      20(%esp), %esi
	movl      24(%esp), %edi
	testl     %eax, %eax
	je        .L08053488
.L08053433:
	movl      28(%eax), %ebx
	testl     %ebx, %ebx
	je        .L08053488
.L0805343A:
	testl     %esi, %esi
	movl      44(%ebx), %eax
	je        .L08053470
.L08053441:
	testl     %eax, %eax
	je        .L08053470
.L08053445:
	movl      48(%ebx), %edx
	subl      $4, %esp
	subl      %edx, %eax
	addl      52(%ebx), %edx
	pushl     %eax
	pushl     %edx
	pushl     %esi
	call      memcpy
.L08053458:
	movl      48(%ebx), %eax
	addl      $12, %esp
	subl      %eax, %esi
	addl      44(%ebx), %esi
	pushl     %eax
	pushl     52(%ebx)
	pushl     %esi
	call      memcpy
.L0805346D:
	addl      $16, %esp
.L08053470:
	testl     %edi, %edi
	je        .L08053480
.L08053474:
	movl      44(%ebx), %eax
	movl      %eax, (%edi)
	xorl      %eax, %eax
.L0805347B:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0805347F:
	.p2align 4,,10
	.p2align 3
.L08053480:
	xorl      %eax, %eax
	jmp       .L0805347B
.L08053484:
	.p2align 4,,10
	.p2align 3
.L08053488:
	movl      $-2, %eax
	jmp       .L0805347B
	.size	inflateGetDictionary, .-inflateGetDictionary
# ----------------------
.L0805348F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      56(%esp), %edi
	testl     %ebx, %ebx
	je        .L08053600
.L080534A7:
	movl      28(%ebx), %ebp
	testl     %ebp, %ebp
	je        .L08053600
.L080534B2:
	movl      8(%ebp), %eax
	testl     %eax, %eax
	jne       .L08053560
.L080534BD:
	cmpl      $10, (%ebp)
	je        .L0805356A
.L080534C7:
	movl      %ebp, %esi
.L080534C9:
	movl      52(%esp), %eax
	addl      %edi, %eax
	movl      %eax, 12(%esp)
	movl      52(%esi), %eax
	testl     %eax, %eax
	je        .L08053610
.L080534DE:
	movl      40(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L080534FD
.L080534E5:
	movl      36(%esi), %ecx
	movb      $1, %bl
	movl      $0, 48(%esi)
	movl      $0, 44(%esi)
	sall      %cl, %ebx
	movl      %ebx, 40(%esi)
.L080534FD:
	cmpl      %ebx, %edi
	jae       .L080535A0
.L08053505:
	movl      48(%esi), %ecx
	subl      %ecx, %ebx
	cmpl      %edi, %ebx
	jbe       .L08053510
.L0805350E:
	movl      %edi, %ebx
.L08053510:
	addl      %ecx, %eax
	movl      12(%esp), %ecx
	subl      $4, %esp
	pushl     %ebx
	subl      %edi, %ecx
	pushl     %ecx
	pushl     %eax
	call      memcpy
.L08053523:
	addl      $16, %esp
	subl      %ebx, %edi
	jne       .L080535D8
.L0805352E:
	movl      48(%esi), %eax
	movl      40(%esi), %ecx
	addl      %ebx, %eax
	cmpl      %ecx, %eax
	movl      %eax, 48(%esi)
	je        .L080535C8
.L08053541:
	movl      44(%esi), %eax
	cmpl      %eax, %ecx
	jbe       .L0805354D
.L08053548:
	addl      %eax, %ebx
	movl      %ebx, 44(%esi)
.L0805354D:
	movl      $1, 12(%ebp)
	xorl      %eax, %eax
.L08053556:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805355E:
	.p2align 4,,10
	.p2align 3
.L08053560:
	cmpl      $10, (%ebp)
	jne       .L08053600
.L0805356A:
	subl      $4, %esp
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L08053578:
	addl      $12, %esp
	pushl     %edi
	pushl     60(%esp)
	pushl     %eax
	call      adler32
.L08053586:
	addl      $16, %esp
	cmpl      %eax, 24(%ebp)
	jne       .L08053648
.L08053592:
	movl      28(%ebx), %esi
	jmp       .L080534C9
.L0805359A:
	.p2align 4,,10
	.p2align 3
.L080535A0:
	movl      12(%esp), %edx
	subl      $4, %esp
	pushl     %ebx
	subl      %ebx, %edx
	pushl     %edx
	pushl     %eax
	call      memcpy
.L080535B1:
	movl      40(%esi), %eax
	movl      $0, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L0805354D
.L080535C3:
	.p2align 4,,10
	.p2align 3
.L080535C8:
	movl      $0, 48(%esi)
	jmp       .L08053541
.L080535D4:
	.p2align 4,,10
	.p2align 3
.L080535D8:
	movl      12(%esp), %eax
	subl      $4, %esp
	pushl     %edi
	subl      %edi, %eax
	pushl     %eax
	pushl     52(%esi)
	call      memcpy
.L080535EB:
	movl      40(%esi), %eax
	movl      %edi, 48(%esi)
	addl      $16, %esp
	movl      %eax, 44(%esi)
	jmp       .L0805354D
.L080535FC:
	.p2align 4,,10
	.p2align 3
.L08053600:
	movl      $-2, %eax
	jmp       .L08053556
.L0805360A:
	.p2align 4,,10
	.p2align 3
.L08053610:
	subl      $4, %esp
	movb      $1, %al
	pushl     $1
	movl      36(%esi), %ecx
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%ebx)
	call      *32(%ebx)
.L08053623:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 52(%esi)
	jne       .L080534DE
.L08053631:
	movl      $30, (%ebp)
	movl      $-4, %eax
	jmp       .L08053556
.L08053642:
	.p2align 4,,10
	.p2align 3
.L08053648:
	movl      $-3, %eax
	jmp       .L08053556
	.size	inflateSetDictionary, .-inflateSetDictionary
# ----------------------
.L08053652:
	.p2align 4
# ----------------------
	.globl	inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
	movl      4(%esp), %eax
	movl      8(%esp), %edx
	testl     %eax, %eax
	je        .L08053690
.L0805366C:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L08053690
.L08053673:
	testb     $2, 8(%eax)
	je        .L08053690
.L08053679:
	movl      %edx, 32(%eax)
	movl      $0, 48(%edx)
	xorl      %eax, %eax
	ret       
.L08053686:
	.p2align 4
.L08053690:
	movl      $-2, %eax
	ret       
	.size	inflateGetHeader, .-inflateGetHeader
# ----------------------
.L08053696:
	.p2align 4
# ----------------------
	.globl	inflateSync
	.type	inflateSync, @function
inflateSync:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movl      44(%esp), %ebp
	testl     %ebp, %ebp
	je        .L0805393C
.L080536B3:
	movl      28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0805393C
.L080536BE:
	movl      4(%ebp), %eax
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L080538E0
.L080536CB:
	cmpl      $31, (%ebx)
	je        .L08053908
.L080536D4:
	movl      60(%ebx), %eax
	movl      56(%ebx), %edx
	movl      $31, (%ebx)
	movl      %eax, %ecx
	andl      $-8, %eax
	andl      $7, %ecx
	movl      %eax, 60(%ebx)
	sall      %cl, %edx
	cmpl      $7, %eax
	movl      %edx, 56(%ebx)
	jbe       .L08053930
.L080536F9:
	leal      -8(%eax), %edi
	movl      %edx, %ecx
	movb      %dl, 20(%esp)
	shrl      $8, %ecx
	cmpl      $7, %edi
	jbe       .L08053732
.L0805370A:
	leal      -16(%eax), %esi
	movb      %cl, 21(%esp)
	movl      %edx, %ecx
	shrl      $16, %ecx
	cmpl      $7, %esi
	jbe       .L08053732
.L0805371B:
	subl      $24, %eax
	shrl      $24, %edx
	movb      %cl, 22(%esp)
	cmpl      $7, %eax
	movl      %edx, %ecx
	jbe       .L08053732
.L0805372C:
	movb      %dl, 23(%esp)
	xorl      %ecx, %ecx
.L08053732:
	shrl      $3, %edi
	movl      %ecx, 56(%ebx)
	movl      $0, 60(%ebx)
	addl      $1, %edi
	xorl      %eax, %eax
	xorl      %edx, %edx
	movl      %ebx, %esi
	jmp       .L0805376A
.L0805374A:
	.p2align 4,,10
	.p2align 3
.L08053750:
	movl      $4, %ebx
	subl      %eax, %ebx
	cmpl      $3, %ebx
	movl      %ebx, %eax
	setbe     %cl
.L0805375F:
	addl      $1, %edx
	testb     %cl, %cl
	je        .L08053790
.L08053766:
	cmpl      %edi, %edx
	jae       .L08053790
.L0805376A:
	movzbl    20(%esp,%edx), %ebx
	cmpl      $2, %eax
	sbbl      %ecx, %ecx
	notl      %ecx
	cmpb      %cl, %bl
	je        .L080538C0
.L0805377E:
	testb     %bl, %bl
	je        .L08053750
.L08053782:
	movl      $1, %ecx
	xorl      %eax, %eax
	addl      $1, %edx
	testb     %cl, %cl
	jne       .L08053766
.L08053790:
	movl      %esi, %ebx
.L08053792:
	movl      %eax, 104(%ebx)
	movl      4(%ebp), %esi
	movl      %esi, %edi
.L0805379A:
	testl     %edi, %edi
	movl      (%ebp), %esi
	setne     %dl
	andb      %cl, %dl
	movb      %dl, 3(%esp)
	movl      $0, %edx
	je        .L08053804
.L080537AF:
	movl      %ebx, 4(%esp)
	jmp       .L080537D2
.L080537B5:
	.p2align 4,,10
	.p2align 3
.L080537B8:
	movl      $4, %ebx
	subl      %eax, %ebx
	cmpl      $3, %ebx
	movl      %ebx, %eax
	setbe     %cl
.L080537C7:
	addl      $1, %edx
	testb     %cl, %cl
	je        .L08053800
.L080537CE:
	cmpl      %edx, %edi
	jbe       .L08053800
.L080537D2:
	movzbl    (%esi,%edx), %ebx
	cmpl      $2, %eax
	sbbl      %ecx, %ecx
	notl      %ecx
	cmpb      %cl, %bl
	je        .L080538D0
.L080537E5:
	testb     %bl, %bl
	je        .L080537B8
.L080537E9:
	movzbl    3(%esp), %ecx
	xorl      %eax, %eax
	addl      $1, %edx
	testb     %cl, %cl
	jne       .L080537CE
.L080537F7:
	.p2align 4
.L08053800:
	movl      4(%esp), %ebx
.L08053804:
	movl      %eax, 104(%ebx)
	addl      %edx, %esi
	subl      %edx, 4(%ebp)
	addl      8(%ebp), %edx
	cmpl      $4, %eax
	movl      %esi, (%ebp)
	movl      %edx, 8(%ebp)
	jne       .L08053920
.L0805381E:
	movl      8(%ebx), %eax
	movl      20(%ebp), %ecx
	movl      $0, 40(%ebx)
	movl      $0, 44(%ebx)
	movl      $0, 48(%ebx)
	movl      $0, 28(%ebx)
	testl     %eax, %eax
	movl      $0, 20(%ebp)
	movl      $0, 8(%ebp)
	movl      $0, 24(%ebp)
	jne       .L080538F8
.L0805385D:
	leal      1328(%ebx), %eax
	movl      $0, 4(%ebx)
	movl      $0, 12(%ebx)
	movl      $32768, 20(%ebx)
	movl      $0, 32(%ebx)
	movl      %eax, 108(%ebx)
	movl      %eax, 80(%ebx)
	movl      %eax, 76(%ebx)
	movl      $0, 56(%ebx)
	xorl      %eax, %eax
	movl      $0, 60(%ebx)
	movl      $1, 7104(%ebx)
	movl      $-1, 7108(%ebx)
	movl      %edx, 8(%ebp)
	movl      %ecx, 20(%ebp)
	movl      $11, (%ebx)
.L080538B8:
	addl      $24, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080538C0:
	addl      $1, %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L0805375F
.L080538CE:
	.p2align 4,,10
	.p2align 3
.L080538D0:
	addl      $1, %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L080537C7
.L080538DE:
	.p2align 4,,10
	.p2align 3
.L080538E0:
	cmpl      $7, 60(%ebx)
	ja        .L080536CB
.L080538EA:
	movl      $-5, %eax
	jmp       .L080538B8
.L080538F1:
	.p2align 4,,10
	.p2align 3
.L080538F8:
	andl      $1, %eax
	movl      %eax, 48(%ebp)
	jmp       .L0805385D
.L08053903:
	.p2align 4,,10
	.p2align 3
.L08053908:
	movl      104(%ebx), %eax
	cmpl      $3, %eax
	setbe     %cl
	jmp       .L0805379A
.L08053916:
	.p2align 4
.L08053920:
	addl      $24, %esp
	movl      $-3, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805392D:
	.p2align 4,,10
	.p2align 3
.L08053930:
	movl      $1, %ecx
	xorl      %eax, %eax
	jmp       .L08053792
.L0805393C:
	movl      $-2, %eax
	jmp       .L080538B8
	.size	inflateSync, .-inflateSync
# ----------------------
.L08053946:
	.p2align 4
# ----------------------
	.globl	inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L08053980
.L08053958:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L08053980
.L0805395F:
	xorl      %eax, %eax
	cmpl      $13, (%edx)
	je        .L08053970
.L08053966:
	rep; ret       
.L08053968:
	.p2align 4
.L08053970:
	movl      60(%edx), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	sete      %al
	ret       
.L0805397B:
	.p2align 4,,10
	.p2align 3
.L08053980:
	movl      $-2, %eax
	ret       
	.size	inflateSyncPoint, .-inflateSyncPoint
# ----------------------
.L08053986:
	.p2align 4
# ----------------------
	.globl	inflateCopy
	.type	inflateCopy, @function
inflateCopy:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      48(%esp), %ebx
	movl      52(%esp), %esi
	testl     %ebx, %ebx
	je        .L08053B40
.L080539A7:
	testl     %esi, %esi
	je        .L08053B40
.L080539AF:
	movl      28(%esi), %ebp
	testl     %ebp, %ebp
	je        .L08053B40
.L080539BA:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L08053B40
.L080539C5:
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L08053B40
.L080539D0:
	subl      $4, %esp
	pushl     $7116
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L080539DF:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	je        .L08053B47
.L080539EC:
	movl      52(%ebp), %eax
	testl     %eax, %eax
	je        .L08053B30
.L080539F7:
	movl      %edx, 12(%esp)
	subl      $4, %esp
	movl      $1, %eax
	pushl     $1
	movl      36(%ebp), %ecx
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%esi)
	call      *32(%esi)
.L08053A11:
	movl      %eax, 24(%esp)
	addl      $16, %esp
	testl     %eax, %eax
	movl      12(%esp), %edx
	je        .L08053B4E
.L08053A24:
	movl      (%esi), %eax
	leal      4(%edx), %edi
	movl      %edx, %ecx
	andl      $-4, %edi
	movl      %eax, (%ebx)
	movl      4(%esi), %eax
	subl      %edi, %ecx
	movl      %eax, 4(%ebx)
	movl      8(%esi), %eax
	movl      %eax, 8(%ebx)
	movl      12(%esi), %eax
	movl      %eax, 12(%ebx)
	movl      16(%esi), %eax
	movl      %eax, 16(%ebx)
	movl      20(%esi), %eax
	movl      %eax, 20(%ebx)
	movl      24(%esi), %eax
	movl      %eax, 24(%ebx)
	movl      28(%esi), %eax
	movl      %eax, 28(%ebx)
	movl      32(%esi), %eax
	movl      %eax, 32(%ebx)
	movl      36(%esi), %eax
	movl      %eax, 36(%ebx)
	movl      40(%esi), %eax
	movl      %eax, 40(%ebx)
	movl      44(%esi), %eax
	movl      %eax, 44(%ebx)
	movl      48(%esi), %eax
	movl      %eax, 48(%ebx)
	movl      52(%esi), %eax
	movl      %ebp, %esi
	subl      %ecx, %esi
	addl      $7116, %ecx
	shrl      $2, %ecx
	movl      %eax, 52(%ebx)
	movl      (%ebp), %eax
	movl      %eax, (%edx)
	movl      7112(%ebp), %eax
	movl      %eax, 7112(%edx)
	rep movsl     
	movl      76(%ebp), %eax
	leal      1328(%ebp), %ecx
	cmpl      %ecx, %eax
	jae       .L08053B00
.L08053AAD:
	movl      108(%ebp), %eax
	movl      8(%esp), %edi
	subl      %ecx, %eax
	andl      $-4, %eax
	testl     %edi, %edi
	leal      1328(%eax,%edx), %eax
	movl      %eax, 108(%edx)
	je        .L08053AE9
.L08053AC7:
	movl      36(%ebp), %ecx
	movl      $1, %eax
	movl      %edx, 12(%esp)
	subl      $4, %esp
	sall      %cl, %eax
	pushl     %eax
	pushl     52(%ebp)
	pushl     %edi
	call      memcpy
.L08053AE2:
	addl      $16, %esp
	movl      12(%esp), %edx
.L08053AE9:
	movl      8(%esp), %eax
	movl      %eax, 52(%edx)
	movl      %edx, 28(%ebx)
	xorl      %eax, %eax
.L08053AF5:
	addl      $28, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053AFD:
	.p2align 4,,10
	.p2align 3
.L08053B00:
	leal      7100(%ebp), %esi
	cmpl      %esi, %eax
	ja        .L08053AAD
.L08053B0A:
	subl      %ecx, %eax
	andl      $-4, %eax
	leal      1328(%eax,%edx), %eax
	movl      %eax, 76(%edx)
	movl      80(%ebp), %eax
	subl      %ecx, %eax
	andl      $-4, %eax
	leal      1328(%eax,%edx), %eax
	movl      %eax, 80(%edx)
	jmp       .L08053AAD
.L08053B30:
	movl      $0, 8(%esp)
	jmp       .L08053A24
.L08053B3D:
	.p2align 4,,10
	.p2align 3
.L08053B40:
	movl      $-2, %eax
	jmp       .L08053AF5
.L08053B47:
	movl      $-4, %eax
	jmp       .L08053AF5
.L08053B4E:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%esi)
	call      *36(%esi)
.L08053B58:
	addl      $16, %esp
	movl      $-4, %eax
	jmp       .L08053AF5
	.size	inflateCopy, .-inflateCopy
# ----------------------
.L08053B62:
	.p2align 4
# ----------------------
	.globl	inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
	movl      4(%esp), %eax
	testl     %eax, %eax
	je        .L08053B90
.L08053B78:
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L08053B90
.L08053B7F:
	movl      $1, 7104(%eax)
	movl      $-3, %eax
	ret       
.L08053B8F:
	.p2align 4,,10
	.p2align 3
.L08053B90:
	movl      $-2, %eax
	ret       
	.size	inflateUndermine, .-inflateUndermine
# ----------------------
.L08053B96:
	.p2align 4
# ----------------------
	.globl	inflateMark
	.type	inflateMark, @function
inflateMark:
	pushl     %ebx
	movl      8(%esp), %eax
	testl     %eax, %eax
	je        .L08053BF0
.L08053BA9:
	movl      28(%eax), %ecx
	testl     %ecx, %ecx
	je        .L08053BF0
.L08053BB0:
	movl      7108(%ecx), %edx
	movl      (%ecx), %ebx
	sall      $16, %edx
	cmpl      $15, %ebx
	je        .L08053BD0
.L08053BC0:
	xorl      %eax, %eax
	cmpl      $24, %ebx
	je        .L08053BE0
.L08053BC7:
	addl      %edx, %eax
.L08053BC9:
	popl      %ebx
	ret       
.L08053BCB:
	.p2align 4,,10
	.p2align 3
.L08053BD0:
	movl      64(%ecx), %eax
	addl      %edx, %eax
	jmp       .L08053BC9
.L08053BD7:
	.p2align 4
.L08053BE0:
	movl      7112(%ecx), %eax
	subl      64(%ecx), %eax
	addl      %edx, %eax
	jmp       .L08053BC9
.L08053BED:
	.p2align 4,,10
	.p2align 3
.L08053BF0:
	movl      $-65536, %eax
	popl      %ebx
	ret       
	.size	inflateMark, .-inflateMark
# ----------------------
.L08053BF7:
	.p2align 4
# ----------------------
	.hidden	inflate_table
	.globl	inflate_table
	.type	inflate_table, @function
inflate_table:
	pushl     %ebp
	pushl     %edi
	xorl      %eax, %eax
	pushl     %esi
	pushl     %ebx
	subl      $132, %esp
	movl      160(%esp), %esi
	movl      172(%esp), %ebp
.L08053C1A:
	movl      $0, 68(%esp,%eax)
	addl      $4, %eax
	cmpl      $32, %eax
	jb        .L08053C1A
.L08053C2A:
	movl      156(%esp), %eax
	testl     %esi, %esi
	leal      (%eax,%esi,2), %ecx
	je        .L08053C50
.L08053C38:
	.p2align 4
.L08053C40:
	movzwl    (%eax), %edx
	addl      $2, %eax
	addw      $1, 68(%esp,%edx,2)
	cmpl      %ecx, %eax
	jne       .L08053C40
.L08053C50:
	movzwl    98(%esp), %ebx
	movl      168(%esp), %eax
	movl      (%eax), %edi
	testw     %bx, %bx
	jne       .L08053D5F
.L08053C67:
	cmpw      $0, 96(%esp)
	jne       .L0805477A
.L08053C73:
	cmpw      $0, 94(%esp)
	jne       .L08054787
.L08053C7F:
	cmpw      $0, 92(%esp)
	jne       .L08054794
.L08053C8B:
	cmpw      $0, 90(%esp)
	jne       .L080547A1
.L08053C97:
	cmpw      $0, 88(%esp)
	jne       .L080547AE
.L08053CA3:
	cmpw      $0, 86(%esp)
	jne       .L080547BB
.L08053CAF:
	cmpw      $0, 84(%esp)
	jne       .L080547D5
.L08053CBB:
	cmpw      $0, 82(%esp)
	jne       .L080547C8
.L08053CC7:
	cmpw      $0, 80(%esp)
	jne       .L080547FC
.L08053CD3:
	cmpw      $0, 78(%esp)
	jne       .L080547EF
.L08053CDF:
	cmpw      $0, 76(%esp)
	jne       .L080547E2
.L08053CEB:
	cmpw      $0, 74(%esp)
	jne       .L08054809
.L08053CF7:
	cmpw      $0, 72(%esp)
	jne       .L08054823
.L08053D03:
	cmpw      $0, 70(%esp)
	jne       .L080546A8
.L08053D0F:
	movl      164(%esp), %eax
	movl      164(%esp), %ebx
	xorl      %ecx, %ecx
	movl      (%eax), %eax
	leal      4(%eax), %edx
	movl      %edx, (%ebx)
	xorl      %edx, %edx
	movb      $64, (%eax)
	movw      %dx, 2(%eax)
	movb      $1, 1(%eax)
	movl      (%ebx), %eax
	leal      4(%eax), %edx
	movl      %edx, (%ebx)
	movb      $64, (%eax)
	movb      $1, 1(%eax)
	movw      %cx, 2(%eax)
	movl      168(%esp), %eax
	movl      $1, (%eax)
	xorl      %eax, %eax
.L08053D54:
	addl      $132, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08053D5F:
	movl      $15, 16(%esp)
	.p2align 4
.L08053D70:
	cmpl      16(%esp), %edi
	jbe       .L08053D85
.L08053D76:
	movl      16(%esp), %eax
	cmpl      $1, %eax
	movl      %eax, %edi
	je        .L080546B5
.L08053D85:
	cmpw      $0, 70(%esp)
	jne       .L080546BA
.L08053D91:
	movl      16(%esp), %eax
	cmpl      $2, %eax
	je        .L0805476D
.L08053D9E:
	cmpw      $0, 72(%esp)
	jne       .L0805476D
.L08053DAA:
	cmpl      $3, %eax
	je        .L08054760
.L08053DB3:
	cmpw      $0, 74(%esp)
	jne       .L08054760
.L08053DBF:
	cmpl      $4, %eax
	je        .L08054753
.L08053DC8:
	cmpw      $0, 76(%esp)
	jne       .L08054753
.L08053DD4:
	cmpl      $5, %eax
	je        .L08054746
.L08053DDD:
	cmpw      $0, 78(%esp)
	jne       .L08054746
.L08053DE9:
	cmpl      $6, %eax
	je        .L08054739
.L08053DF2:
	cmpw      $0, 80(%esp)
	jne       .L08054739
.L08053DFE:
	cmpl      $7, %eax
	je        .L0805472C
.L08053E07:
	cmpw      $0, 82(%esp)
	jne       .L0805472C
.L08053E13:
	cmpl      $8, %eax
	je        .L0805471F
.L08053E1C:
	cmpw      $0, 84(%esp)
	jne       .L0805471F
.L08053E28:
	cmpl      $9, %eax
	je        .L08054712
.L08053E31:
	cmpw      $0, 86(%esp)
	jne       .L08054712
.L08053E3D:
	cmpl      $10, %eax
	je        .L08054705
.L08053E46:
	cmpw      $0, 88(%esp)
	jne       .L08054705
.L08053E52:
	cmpl      $11, %eax
	je        .L080546F8
.L08053E5B:
	cmpw      $0, 90(%esp)
	jne       .L080546F8
.L08053E67:
	cmpl      $12, %eax
	je        .L080546EB
.L08053E70:
	cmpw      $0, 92(%esp)
	jne       .L080546EB
.L08053E7C:
	cmpl      $13, %eax
	je        .L080546DE
.L08053E85:
	cmpw      $0, 94(%esp)
	jne       .L080546DE
.L08053E91:
	cmpl      $15, %eax
	jne       .L08054816
.L08053E9A:
	cmpw      $1, 96(%esp)
	sbbl      %eax, %eax
	notl      %eax
	addl      $15, %eax
	movl      %eax, 12(%esp)
.L08053EAB:
	movzwl    70(%esp), %edx
	movl      $2, %eax
	subl      %edx, %eax
	movl      %eax, %edx
.L08053EB9:
	leal      (%edx,%edx), %eax
	movzwl    72(%esp), %edx
	subl      %edx, %eax
	js        .L08054100
.L08053EC9:
	movzwl    74(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053ED8:
	movzwl    76(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053EE7:
	movzwl    78(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053EF6:
	movzwl    80(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F05:
	movzwl    82(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F14:
	movzwl    84(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F23:
	movzwl    86(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F32:
	movzwl    88(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F41:
	movzwl    90(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F50:
	movzwl    92(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F5F:
	movzwl    94(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F6E:
	movzwl    96(%esp), %edx
	addl      %eax, %eax
	subl      %edx, %eax
	js        .L08054100
.L08053F7D:
	addl      %eax, %eax
	cmpl      %ebx, %eax
	js        .L08054100
.L08053F87:
	je        .L08053FA3
.L08053F89:
	cmpl      $1, 16(%esp)
	jne       .L08054100
.L08053F94:
	movl      152(%esp), %eax
	testl     %eax, %eax
	je        .L08054100
.L08053FA3:
	xorl      %eax, %eax
	movw      %ax, 102(%esp)
	movzwl    70(%esp), %eax
	movw      %ax, 104(%esp)
	addw      72(%esp), %ax
	movw      %ax, 106(%esp)
	addw      74(%esp), %ax
	movw      %ax, 108(%esp)
	addw      76(%esp), %ax
	movw      %ax, 110(%esp)
	addw      78(%esp), %ax
	movw      %ax, 112(%esp)
	addw      80(%esp), %ax
	movw      %ax, 114(%esp)
	addw      82(%esp), %ax
	movw      %ax, 116(%esp)
	addw      84(%esp), %ax
	movw      %ax, 118(%esp)
	addw      86(%esp), %ax
	movw      %ax, 120(%esp)
	addw      88(%esp), %ax
	movw      %ax, 122(%esp)
	addw      90(%esp), %ax
	movw      %ax, 124(%esp)
	addw      92(%esp), %ax
	movw      %ax, 126(%esp)
	addw      94(%esp), %ax
	movw      %ax, 128(%esp)
	addw      96(%esp), %ax
	movw      %ax, 130(%esp)
	xorl      %eax, %eax
	testl     %esi, %esi
	je        .L08054075
.L08054042:
	movl      %edi, (%esp)
	movl      156(%esp), %edi
	.p2align 4,,10
	.p2align 3
.L08054050:
	movzwl    (%edi,%eax,2), %edx
	testw     %dx, %dx
	je        .L0805406B
.L08054059:
	movzwl    100(%esp,%edx,2), %ecx
	leal      1(%ecx), %ebx
	movw      %ax, (%ebp,%ecx,2)
	movw      %bx, 100(%esp,%edx,2)
.L0805406B:
	addl      $1, %eax
	cmpl      %esi, %eax
	jne       .L08054050
.L08054072:
	movl      (%esp), %edi
.L08054075:
	movl      152(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08054110
.L08054084:
	cmpl      $1, 152(%esp)
	jne       .L0805464B
.L08054092:
	movl      $256, 44(%esp)
	movl      $lenfix.3430+1726, 64(%esp)
	movl      $lenfix.3430+1790, 60(%esp)
.L080540AA:
	movl      12(%esp), %eax
	cmpl      %edi, %eax
	movl      %eax, 32(%esp)
	jae       .L080540BA
.L080540B6:
	movl      %edi, 32(%esp)
.L080540BA:
	movl      164(%esp), %eax
	movzbl    32(%esp), %ecx
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
	movl      $1, %eax
	sall      %cl, %eax
	cmpl      $1, 152(%esp)
	sete      58(%esp)
	cmpl      $852, %eax
	movzbl    58(%esp), %ebx
	jbe       .L0805414E
.L080540EC:
	testb     %bl, %bl
	je        .L0805414E
.L080540F0:
	addl      $132, %esp
	movl      $1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08054100:
	addl      $132, %esp
	movl      $-1, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08054110:
	movl      12(%esp), %eax
	cmpl      %edi, %eax
	movl      %eax, 32(%esp)
	jae       .L08054120
.L0805411C:
	movl      %edi, 32(%esp)
.L08054120:
	movl      164(%esp), %eax
	movzbl    32(%esp), %ecx
	movl      %ebp, 64(%esp)
	movl      %ebp, 60(%esp)
	movb      $0, 58(%esp)
	movl      $19, 44(%esp)
	movl      (%eax), %eax
	movl      %eax, 24(%esp)
	movl      $1, %eax
	sall      %cl, %eax
.L0805414E:
	cmpl      $2, 152(%esp)
	sete      59(%esp)
	cmpl      $592, %eax
	movzbl    59(%esp), %ebx
	jbe       .L0805416B
.L08054167:
	testb     %bl, %bl
	jne       .L080540F0
.L0805416B:
	movl      32(%esp), %ebx
	movl      %eax, 36(%esp)
	xorl      %edi, %edi
	subl      $1, %eax
	movl      %ebp, 20(%esp)
	movl      $-1, 48(%esp)
	movl      $0, 4(%esp)
	movl      %eax, 52(%esp)
	movl      %edi, %ebp
	movl      %ebx, 8(%esp)
	.p2align 4
.L080541A0:
	movzbl    12(%esp), %eax
	movb      $0, (%esp)
	subb      4(%esp), %al
	movb      %al, 57(%esp)
	movl      20(%esp), %eax
	movzwl    (%eax), %eax
	cmpl      %eax, 44(%esp)
	movl      %eax, %edi
	jg        .L080541D9
.L080541C0:
	jge       .L08054640
.L080541C6:
	movl      64(%esp), %ebx
	movzbl    (%ebx,%eax,2), %ebx
	movb      %bl, (%esp)
	movl      60(%esp), %ebx
	movzwl    (%ebx,%eax,2), %edi
.L080541D9:
	movl      12(%esp), %ecx
	subl      4(%esp), %ecx
	movl      $1, %edx
	movl      $1, %eax
	movl      %ebp, 28(%esp)
	sall      %cl, %edx
	movzbl    8(%esp), %ecx
	leal      0(,%edx,4), %esi
	negl      %esi
	sall      %cl, %eax
	movzbl    4(%esp), %ecx
	movl      %eax, %ebx
	movl      %eax, 40(%esp)
	movl      %ebp, %eax
	movzbl    (%esp), %ebp
	movl      %edx, (%esp)
	shrl      %cl, %eax
	movl      %ebx, %ecx
	addl      %ebx, %eax
	movl      24(%esp), %ebx
	subl      %edx, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    57(%esp), %ebx
	.p2align 4
.L08054230:
	movl      %ebp, %edx
	movb      %bl, 1(%eax)
	movw      %di, 2(%eax)
	movb      %dl, (%eax)
	addl      %esi, %eax
	subl      (%esp), %ecx
	jne       .L08054230
.L08054242:
	movl      12(%esp), %eax
	movl      28(%esp), %ebp
	leal      -1(%eax), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	testl     %ebp, %eax
	je        .L08054266
.L08054258:
	.p2align 4
.L08054260:
	shrl      $1, %eax
	testl     %eax, %ebp
	jne       .L08054260
.L08054266:
	testl     %eax, %eax
	je        .L08054620
.L0805426E:
	leal      -1(%eax), %edx
	andl      %ebp, %edx
	leal      (%edx,%eax), %ebp
.L08054276:
	movl      12(%esp), %edi
	movzwl    68(%esp,%edi,2), %eax
	movw      %ax, (%esp)
	subl      $1, %eax
	testw     %ax, %ax
	movw      %ax, 68(%esp,%edi,2)
	jne       .L080542B3
.L08054290:
	movl      16(%esp), %ebx
	cmpl      %ebx, %edi
	je        .L08054668
.L0805429C:
	movl      20(%esp), %eax
	movl      156(%esp), %ebx
	movzwl    2(%eax), %eax
	movzwl    (%ebx,%eax,2), %eax
	movl      %eax, 12(%esp)
.L080542B3:
	movl      32(%esp), %ebx
	cmpl      %ebx, 12(%esp)
	jbe       .L08054612
.L080542C1:
	movl      52(%esp), %ebx
	andl      %ebp, %ebx
	cmpl      48(%esp), %ebx
	je        .L08054612
.L080542D1:
	movl      4(%esp), %ecx
	testl     %ecx, %ecx
	jne       .L080542E1
.L080542D9:
	movl      32(%esp), %eax
	movl      %eax, 4(%esp)
.L080542E1:
	movl      24(%esp), %eax
	movl      40(%esp), %esi
	leal      (%eax,%esi,4), %eax
	movl      12(%esp), %esi
	movl      %eax, 24(%esp)
	movl      %esi, %eax
	subl      4(%esp), %eax
	movl      %eax, %edi
	movl      %eax, 8(%esp)
	movl      %eax, %edx
	movl      %edi, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      16(%esp), %ecx
	cmpl      %ecx, %esi
	jae       .L08054594
.L08054317:
	movzwl    68(%esp,%esi,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054594
.L08054326:
	leal      1(%edi), %edx
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L0805433C:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L0805434B:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      2(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054365:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054374:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      3(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L0805438E:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L0805439D:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      4(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L080543B7:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L080543C6:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      5(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L080543E0:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L080543EF:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      6(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054409:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054418:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      7(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054432:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054441:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      8(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L0805445B:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L0805446A:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      9(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054484:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054493:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      10(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L080544AD:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L080544BC:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      11(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L080544D6:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L080544E5:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      12(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L080544FF:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L0805450E:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      13(%esi), %edx
	leal      (%edx,%edi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054528:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054537:
	movl      8(%esp), %edi
	movl      4(%esp), %esi
	addl      %eax, %eax
	leal      14(%edi), %edx
	leal      (%edx,%esi), %ecx
	cmpl      %ecx, 16(%esp)
	jbe       .L08054630
.L08054551:
	movzwl    68(%esp,%ecx,2), %ecx
	subl      %ecx, %eax
	testl     %eax, %eax
	jle       .L08054630
.L08054560:
	movl      8(%esp), %esi
	movl      4(%esp), %edi
	addl      %eax, %eax
	leal      15(%esi), %ecx
	leal      (%ecx,%edi), %edx
	cmpl      %edx, 16(%esp)
	jbe       .L08054627
.L0805457A:
	movzwl    68(%esp,%edx,2), %edx
	addl      $16, 8(%esp)
	movl      8(%esp), %edi
	subl      %edx, %eax
	movl      %edi, %edx
	testl     %eax, %eax
	jle       .L08054627
.L08054594:
	movl      $1, %eax
	movl      %edx, %ecx
	sall      %cl, %eax
	addl      %eax, 36(%esp)
	movl      36(%esp), %esi
	cmpl      $852, %esi
	jbe       .L080545B8
.L080545AD:
	cmpb      $0, 58(%esp)
	jne       .L080540F0
.L080545B8:
	cmpl      $592, 36(%esp)
	jbe       .L080545CD
.L080545C2:
	cmpb      $0, 59(%esp)
	jne       .L080540F0
.L080545CD:
	movl      164(%esp), %eax
	movzbl    8(%esp), %ecx
	leal      0(,%ebx,4), %edx
	movl      %ebx, 48(%esp)
	movl      (%eax), %eax
	movb      %cl, (%eax,%ebx,4)
	movl      164(%esp), %eax
	movzbl    32(%esp), %ecx
	movl      (%eax), %eax
	movb      %cl, 1(%eax,%edx)
	movl      164(%esp), %eax
	movl      (%eax), %ecx
	movl      24(%esp), %eax
	subl      %ecx, %eax
	sarl      $2, %eax
	movw      %ax, 2(%ecx,%edx)
.L08054612:
	addl      $2, 20(%esp)
	jmp       .L080541A0
.L0805461C:
	.p2align 4,,10
	.p2align 3
.L08054620:
	xorl      %ebp, %ebp
	jmp       .L08054276
.L08054627:
	movl      %ecx, %edx
	.p2align 4
.L08054630:
	movl      %edx, 8(%esp)
	jmp       .L08054594
.L08054639:
	.p2align 4
.L08054640:
	xorl      %edi, %edi
	movb      $96, (%esp)
	jmp       .L080541D9
.L0805464B:
	movl      $-1, 44(%esp)
	movl      $dext.3345, 64(%esp)
	movl      $dbase.3344, 60(%esp)
	jmp       .L080540AA
.L08054668:
	testl     %ebp, %ebp
	movzbl    57(%esp), %ebx
	je        .L08054684
.L08054671:
	movl      24(%esp), %eax
	xorl      %edx, %edx
	leal      (%eax,%ebp,4), %eax
	movb      $64, (%eax)
	movb      %bl, 1(%eax)
	movw      %dx, 2(%eax)
.L08054684:
	movl      164(%esp), %ebx
	movl      36(%esp), %eax
	sall      $2, %eax
	addl      %eax, (%ebx)
	movl      168(%esp), %eax
	movl      32(%esp), %ebx
	movl      %ebx, (%eax)
	xorl      %eax, %eax
	jmp       .L08053D54
.L080546A8:
	cmpl      $1, %edi
	movl      $1, 16(%esp)
	jbe       .L080546BA
.L080546B5:
	movl      $1, %edi
.L080546BA:
	movzwl    70(%esp), %ecx
	movl      $2, %edx
	movl      $-1, %eax
	subl      %ecx, %edx
	js        .L08053D54
.L080546D1:
	movl      $1, 12(%esp)
	jmp       .L08053EB9
.L080546DE:
	movl      $13, 12(%esp)
	jmp       .L08053EAB
.L080546EB:
	movl      $12, 12(%esp)
	jmp       .L08053EAB
.L080546F8:
	movl      $11, 12(%esp)
	jmp       .L08053EAB
.L08054705:
	movl      $10, 12(%esp)
	jmp       .L08053EAB
.L08054712:
	movl      $9, 12(%esp)
	jmp       .L08053EAB
.L0805471F:
	movl      $8, 12(%esp)
	jmp       .L08053EAB
.L0805472C:
	movl      $7, 12(%esp)
	jmp       .L08053EAB
.L08054739:
	movl      $6, 12(%esp)
	jmp       .L08053EAB
.L08054746:
	movl      $5, 12(%esp)
	jmp       .L08053EAB
.L08054753:
	movl      $4, 12(%esp)
	jmp       .L08053EAB
.L08054760:
	movl      $3, 12(%esp)
	jmp       .L08053EAB
.L0805476D:
	movl      $2, 12(%esp)
	jmp       .L08053EAB
.L0805477A:
	movl      $14, 16(%esp)
	jmp       .L08053D70
.L08054787:
	movl      $13, 16(%esp)
	jmp       .L08053D70
.L08054794:
	movl      $12, 16(%esp)
	jmp       .L08053D70
.L080547A1:
	movl      $11, 16(%esp)
	jmp       .L08053D70
.L080547AE:
	movl      $10, 16(%esp)
	jmp       .L08053D70
.L080547BB:
	movl      $9, 16(%esp)
	jmp       .L08053D70
.L080547C8:
	movl      $7, 16(%esp)
	jmp       .L08053D70
.L080547D5:
	movl      $8, 16(%esp)
	jmp       .L08053D70
.L080547E2:
	movl      $4, 16(%esp)
	jmp       .L08053D70
.L080547EF:
	movl      $5, 16(%esp)
	jmp       .L08053D70
.L080547FC:
	movl      $6, 16(%esp)
	jmp       .L08053D70
.L08054809:
	movl      $3, 16(%esp)
	jmp       .L08053D70
.L08054816:
	movl      $14, 12(%esp)
	jmp       .L08053EAB
.L08054823:
	movl      $2, 16(%esp)
	jmp       .L08053D70
	.size	inflate_table, .-inflate_table
# ----------------------
	.local	send_tree
	.type	send_tree, @function
send_tree:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $24, %esp
	movzwl    2(%edx), %eax
	cmpl      $1, %eax
	movl      %eax, %esi
	movl      %eax, 4(%esp)
	sbbl      %eax, %eax
	addl      $4, %eax
	cmpl      $1, %esi
	sbbl      %ebx, %ebx
	andl      $131, %ebx
	addl      $7, %ebx
	testl     %ecx, %ecx
	js        .L080549A3
.L08054861:
	leal      10(,%ecx,4), %ecx
	leal      6(%edx), %esi
	movl      $0, (%esp)
	movl      %ebp, %edi
	addl      %ecx, %edx
	movl      %esi, 8(%esp)
	movl      $-1, %ecx
	movl      %edx, 20(%esp)
	movl      %esi, %edx
	.p2align 4,,10
	.p2align 3
.L08054888:
	movzwl    (%edx), %esi
	movl      (%esp), %edx
	cmpl      %esi, 4(%esp)
	leal      1(%edx), %ebp
	movl      %esi, 12(%esp)
	sete      19(%esp)
	jne       .L080548A8
.L080548A0:
	cmpl      %ebp, %ebx
	jg        .L08054B40
.L080548A8:
	cmpl      %eax, %ebp
	jge       .L080549C8
.L080548B0:
	movl      4(%esp), %edx
	movl      %ebp, (%esp)
	movl      5820(%edi), %ecx
	movzwl    5816(%edi), %eax
	leal      (%edi,%edx,4), %esi
	movl      %esi, %ebp
	jmp       .L0805492E
.L080548CB:
	.p2align 4,,10
	.p2align 3
.L080548D0:
	movl      %ebx, %esi
	sall      %cl, %esi
	movl      20(%edi), %ecx
	orl       %esi, %eax
	movw      %ax, 5816(%edi)
	leal      1(%ecx), %esi
	movl      %esi, 20(%edi)
	movl      8(%edi), %esi
	movb      %al, (%esi,%ecx)
	movl      20(%edi), %eax
	movl      8(%edi), %esi
	leal      1(%eax), %ecx
	movl      %ecx, 20(%edi)
	movzbl    5817(%edi), %ecx
	movb      %cl, (%esi,%eax)
	movl      $16, %ecx
	subl      5820(%edi), %ecx
	movl      5820(%edi), %esi
	sarl      %cl, %ebx
	subl      $1, (%esp)
	leal      -16(%edx,%esi), %ecx
	movl      %ebx, %eax
	movw      %bx, 5816(%edi)
	movl      %ecx, 5820(%edi)
	je        .L08054960
.L0805492E:
	movzwl    2686(%ebp), %edx
	movl      $16, %ebx
	subl      %edx, %ebx
	cmpl      %ecx, %ebx
	movzwl    2684(%ebp), %ebx
	jl        .L080548D0
.L08054947:
	sall      %cl, %ebx
	addl      %edx, %ecx
	orl       %ebx, %eax
	subl      $1, (%esp)
	movl      %ecx, 5820(%edi)
	movw      %ax, 5816(%edi)
	jne       .L0805492E
.L08054960:
	movl      12(%esp), %eax
	movl      4(%esp), %ecx
	testl     %eax, %eax
	je        .L080549B0
.L0805496C:
	cmpb      $0, 19(%esp)
	jne       .L08054C40
.L08054977:
	movl      $4, %eax
	movl      $7, %ebx
	movl      $0, (%esp)
.L08054988:
	addl      $4, 8(%esp)
	movl      12(%esp), %esi
	movl      8(%esp), %edx
	cmpl      20(%esp), %edx
	movl      %esi, 4(%esp)
	jne       .L08054888
.L080549A3:
	addl      $24, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080549AB:
	.p2align 4,,10
	.p2align 3
.L080549B0:
	movl      $3, %eax
	movl      $138, %ebx
	movl      $0, (%esp)
	jmp       .L08054988
.L080549C3:
	.p2align 4,,10
	.p2align 3
.L080549C8:
	movl      4(%esp), %edx
	testl     %edx, %edx
	je        .L08054B50
.L080549D4:
	cmpl      4(%esp), %ecx
	je        .L08054DB0
.L080549DE:
	movl      4(%esp), %eax
	movl      5820(%edi), %ecx
	movl      $16, %ebx
	leal      (%edi,%eax,4), %edx
	movzwl    2686(%edx), %eax
	subl      %eax, %ebx
	cmpl      %ebx, %ecx
	movzwl    2684(%edx), %ebx
	jle       .L08054D90
.L08054A08:
	movl      %ebx, %edx
	movl      8(%edi), %ebp
	sall      %cl, %edx
	movl      20(%edi), %ecx
	orw       5816(%edi), %dx
	leal      1(%ecx), %esi
	movw      %dx, 5816(%edi)
	movl      %esi, 20(%edi)
	movb      %dl, (%ebp,%ecx)
	movl      20(%edi), %edx
	movl      8(%edi), %esi
	leal      1(%edx), %ecx
	movl      %ecx, 20(%edi)
	movzbl    5817(%edi), %ecx
	movb      %cl, (%esi,%edx)
	movl      5820(%edi), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %ebx
	movl      %ebx, %ecx
	movw      %cx, 5816(%edi)
	leal      -16(%eax,%edx), %ecx
	movl      %ecx, 5820(%edi)
.L08054A62:
	movzwl    2750(%edi), %eax
	movl      $16, %edx
	subl      %eax, %edx
	cmpl      %ecx, %edx
	movzwl    2748(%edi), %edx
	jge       .L08054C60
.L08054A7F:
	movl      %edx, %esi
	movl      8(%edi), %ebp
	sall      %cl, %esi
	movl      %esi, %ecx
	orl       %ebx, %ecx
	movl      20(%edi), %ebx
	movw      %cx, 5816(%edi)
	leal      1(%ebx), %esi
	movl      %esi, 20(%edi)
	movb      %cl, (%ebp,%ebx)
	movl      20(%edi), %ecx
	movl      8(%edi), %esi
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%edi)
	movzbl    5817(%edi), %ebx
	movb      %bl, (%esi,%ecx)
	movl      5820(%edi), %esi
	movl      $16, %ecx
	subl      %esi, %ecx
	sarl      %cl, %edx
	leal      -16(%eax,%esi), %ecx
	movl      %edx, %ebx
	movw      %dx, 5816(%edi)
	cmpl      $14, %ecx
	movl      %ecx, 5820(%edi)
	jle       .L08054C7C
.L08054ADF:
	movl      (%esp), %ebp
	movl      8(%edi), %edx
	subl      $3, %ebp
	movzwl    %bp, %ebp
	movl      %ebp, %eax
	sall      %cl, %eax
	orl       %eax, %ebx
	movl      20(%edi), %eax
	movw      %bx, 5816(%edi)
	leal      1(%eax), %ecx
	movl      %ecx, 20(%edi)
	movb      %bl, (%edx,%eax)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%edi)
	movzbl    5817(%edi), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%edi), %eax
	movl      $16, %ecx
	subl      %eax, %ecx
	subl      $14, %eax
	sarl      %cl, %ebp
	movl      %eax, 5820(%edi)
	movw      %bp, 5816(%edi)
	jmp       .L08054960
.L08054B3E:
	.p2align 4,,10
	.p2align 3
.L08054B40:
	movl      %ebp, (%esp)
	jmp       .L08054988
.L08054B48:
	.p2align 4
.L08054B50:
	cmpl      $10, %ebp
	jg        .L08054CA0
.L08054B59:
	movzwl    2754(%edi), %esi
	movl      5820(%edi), %ecx
	movl      $16, %eax
	subl      %esi, %eax
	cmpl      %eax, %ecx
	jle       .L08054DF0
.L08054B75:
	movzwl    2752(%edi), %ebx
	movl      20(%edi), %edx
	movl      %ebx, %eax
	sall      %cl, %eax
	leal      1(%edx), %ecx
	orw       5816(%edi), %ax
	movl      %ecx, 20(%edi)
	movl      8(%edi), %ecx
	movw      %ax, 5816(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%edi)
	movzbl    5817(%edi), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%edi), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %ebx
	leal      -16(%esi,%edx), %ecx
	movl      %ebx, %eax
	movw      %bx, 5816(%edi)
	movl      %ecx, 5820(%edi)
.L08054BD5:
	cmpl      $13, %ecx
	jle       .L08054DC8
.L08054BDE:
	movl      (%esp), %edx
	subl      $2, %edx
	movzwl    %dx, %esi
	movl      %esi, %edx
	sall      %cl, %edx
	movl      8(%edi), %ecx
	orl       %edx, %eax
	movl      20(%edi), %edx
	movw      %ax, 5816(%edi)
	leal      1(%edx), %ebx
	movl      %ebx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%edi)
	movzbl    5817(%edi), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%edi), %eax
	movl      $16, %ecx
	movl      %esi, %edx
	subl      %eax, %ecx
	subl      $13, %eax
	sarl      %cl, %edx
	movl      %eax, 5820(%edi)
	movw      %dx, 5816(%edi)
	jmp       .L08054960
.L08054C3F:
	.p2align 4,,10
	.p2align 3
.L08054C40:
	movl      $3, %eax
	movl      $6, %ebx
	movl      $0, (%esp)
	jmp       .L08054988
.L08054C56:
	.p2align 4
.L08054C60:
	sall      %cl, %edx
	addl      %eax, %ecx
	orl       %edx, %ebx
	cmpl      $14, %ecx
	movl      %ecx, 5820(%edi)
	movw      %bx, 5816(%edi)
	jg        .L08054ADF
.L08054C7C:
	movzwl    (%esp), %ebp
	subl      $3, %ebp
	movzwl    %bp, %ebp
	sall      %cl, %ebp
	addl      $2, %ecx
	orl       %ebp, %ebx
	movl      %ecx, 5820(%edi)
	movw      %bx, 5816(%edi)
	jmp       .L08054960
.L08054C9F:
	.p2align 4,,10
	.p2align 3
.L08054CA0:
	movzwl    2758(%edi), %esi
	movl      5820(%edi), %ecx
	movl      $16, %eax
	subl      %esi, %eax
	cmpl      %eax, %ecx
	jle       .L08054E40
.L08054CBC:
	movzwl    2756(%edi), %ebx
	movl      20(%edi), %edx
	movl      %ebx, %eax
	sall      %cl, %eax
	leal      1(%edx), %ecx
	orw       5816(%edi), %ax
	movl      %ecx, 20(%edi)
	movl      8(%edi), %ecx
	movw      %ax, 5816(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%edi)
	movzbl    5817(%edi), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%edi), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %ebx
	leal      -16(%esi,%edx), %ecx
	movl      %ebx, %eax
	movw      %bx, 5816(%edi)
	movl      %ecx, 5820(%edi)
.L08054D1C:
	cmpl      $9, %ecx
	jle       .L08054E18
.L08054D25:
	movl      (%esp), %edx
	subl      $10, %edx
	movzwl    %dx, %esi
	movl      %esi, %edx
	sall      %cl, %edx
	movl      8(%edi), %ecx
	orl       %edx, %eax
	movl      20(%edi), %edx
	movw      %ax, 5816(%edi)
	leal      1(%edx), %ebx
	movl      %ebx, 20(%edi)
	movb      %al, (%ecx,%edx)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%edi)
	movzbl    5817(%edi), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%edi), %eax
	movl      $16, %ecx
	movl      %esi, %edx
	subl      %eax, %ecx
	subl      $9, %eax
	sarl      %cl, %edx
	movl      %eax, 5820(%edi)
	movw      %dx, 5816(%edi)
	jmp       .L08054960
.L08054D86:
	.p2align 4
.L08054D90:
	sall      %cl, %ebx
	orw       5816(%edi), %bx
	addl      %eax, %ecx
	movl      %ecx, 5820(%edi)
	movw      %bx, 5816(%edi)
	jmp       .L08054A62
.L08054DAD:
	.p2align 4,,10
	.p2align 3
.L08054DB0:
	movl      5820(%edi), %ecx
	movzwl    5816(%edi), %ebx
	movl      %ebp, (%esp)
	jmp       .L08054A62
.L08054DC5:
	.p2align 4,,10
	.p2align 3
.L08054DC8:
	leal      -3(%ebp), %edx
	movzwl    %dx, %edx
	sall      %cl, %edx
	addl      $3, %ecx
	orl       %eax, %edx
	movl      %ecx, 5820(%edi)
	movw      %dx, 5816(%edi)
	jmp       .L08054960
.L08054DE7:
	.p2align 4
.L08054DF0:
	movzwl    2752(%edi), %eax
	sall      %cl, %eax
	orw       5816(%edi), %ax
	addl      %esi, %ecx
	movl      %ecx, 5820(%edi)
	movw      %ax, 5816(%edi)
	jmp       .L08054BD5
.L08054E14:
	.p2align 4,,10
	.p2align 3
.L08054E18:
	leal      -11(%ebp), %edx
	movzwl    %dx, %edx
	sall      %cl, %edx
	addl      $7, %ecx
	orl       %eax, %edx
	movl      %ecx, 5820(%edi)
	movw      %dx, 5816(%edi)
	jmp       .L08054960
.L08054E37:
	.p2align 4
.L08054E40:
	movzwl    2756(%edi), %eax
	sall      %cl, %eax
	orw       5816(%edi), %ax
	addl      %esi, %ecx
	movl      %ecx, 5820(%edi)
	movw      %ax, 5816(%edi)
	jmp       .L08054D1C
	.size	send_tree, .-send_tree
# ----------------------
.L08054E64:
	.p2align 4
# ----------------------
	.local	compress_block
	.type	compress_block, @function
compress_block:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      %eax, %esi
	subl      $20, %esp
	movl      5792(%eax), %eax
	movl      5820(%esi), %ebp
	movl      %edx, 8(%esp)
	movl      %ecx, 16(%esp)
	testl     %eax, %eax
	movzwl    5816(%esi), %eax
	jne       .L08054EE8
.L08054E98:
	movw      %ax, (%esp)
.L08054E9C:
	movl      8(%esp), %eax
	movzwl    1026(%eax), %edi
	movl      $16, %eax
	movl      %eax, %edx
	subl      %edi, %edx
	cmpl      %ebp, %edx
	jl        .L080552A0
.L08054EB8:
	movl      8(%esp), %eax
	movl      %ebp, %ecx
	addl      %ebp, %edi
	movzwl    1024(%eax), %ebx
	movl      %edi, 5820(%esi)
	sall      %cl, %ebx
	orw       (%esp), %bx
	movw      %bx, 5816(%esi)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08054EE2:
	.p2align 4,,10
	.p2align 3
.L08054EE8:
	xorl      %edx, %edx
	movl      %ebp, %ecx
	movl      %eax, %ebx
	jmp       .L08054F7A
.L08054EF3:
	.p2align 4,,10
	.p2align 3
.L08054EF8:
	movl      8(%esp), %edi
	leal      (%edi,%eax,4), %edx
	movl      $16, %edi
	movzwl    2(%edx), %eax
	movzwl    (%edx), %edx
	subl      %eax, %edi
	cmpl      %ecx, %edi
	jge       .L08055200
.L08054F15:
	movl      %edx, %edi
	sall      %cl, %edi
	movl      %edi, %ecx
	movl      8(%esi), %edi
	orl       %ebx, %ecx
	movl      20(%esi), %ebx
	movw      %cx, 5816(%esi)
	leal      1(%ebx), %ebp
	movl      %ebp, 20(%esi)
	movb      %cl, (%edi,%ebx)
	movl      20(%esi), %ecx
	movl      8(%esi), %edi
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%esi)
	movzbl    5817(%esi), %ebx
	movb      %bl, (%edi,%ecx)
	movl      5820(%esi), %edi
	movl      $16, %ecx
	subl      %edi, %ecx
	sarl      %cl, %edx
	leal      -16(%eax,%edi), %ecx
	movl      %edx, %ebx
	movw      %dx, 5816(%esi)
	movl      %ecx, 5820(%esi)
.L08054F6B:
	movl      (%esp), %edx
	cmpl      5792(%esi), %edx
	jae       .L080551D0
.L08054F7A:
	movl      5796(%esi), %eax
	movzwl    (%eax,%edx,2), %eax
	movl      %eax, %edi
	movl      %eax, 4(%esp)
	leal      1(%edx), %eax
	testl     %edi, %edi
	movl      %eax, (%esp)
	movl      5784(%esi), %eax
	movzbl    (%eax,%edx), %eax
	je        .L08054EF8
.L08054FA2:
	movl      %eax, 12(%esp)
	movzbl    _length_code(%eax), %eax
	movl      $16, %ebp
	leal      1028(,%eax,4), %edi
	addl      8(%esp), %edi
	movzwl    2(%edi), %edx
	movzwl    (%edi), %edi
	subl      %edx, %ebp
	cmpl      %ecx, %ebp
	jge       .L080551E0
.L08054FCE:
	movl      %edi, %ebp
	sall      %cl, %ebp
	movl      %ebp, %ecx
	orl       %ebx, %ecx
	movl      20(%esi), %ebx
	movw      %cx, 5816(%esi)
	leal      1(%ebx), %ebp
	movl      %ebp, 20(%esi)
	movl      8(%esi), %ebp
	movb      %cl, (%ebp,%ebx)
	movl      20(%esi), %ecx
	movl      8(%esi), %ebp
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%esi)
	movzbl    5817(%esi), %ebx
	movb      %bl, (%ebp,%ecx)
	movl      5820(%esi), %ebp
	movl      $16, %ecx
	subl      %ebp, %ecx
	sarl      %cl, %edi
	leal      -16(%edx,%ebp), %ecx
	movl      %edi, %ebx
	movw      %di, 5816(%esi)
	movl      %ecx, 5820(%esi)
.L08055026:
	movl      extra_lbits(,%eax,4), %edx
	testl     %edx, %edx
	je        .L080550A2
.L08055031:
	movl      12(%esp), %ebp
	subl      base_length(,%eax,4), %ebp
	movl      $16, %eax
	subl      %edx, %eax
	cmpl      %ecx, %eax
	movzwl    %bp, %ebp
	jge       .L08055260
.L0805504E:
	movl      %ebp, %eax
	sall      %cl, %eax
	movl      8(%esi), %ecx
	orl       %eax, %ebx
	movl      20(%esi), %eax
	movw      %bx, 5816(%esi)
	leal      1(%eax), %edi
	movl      %edi, 20(%esi)
	movb      %bl, (%ecx,%eax)
	movl      20(%esi), %eax
	movl      8(%esi), %ebx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%esi)
	movzbl    5817(%esi), %ecx
	movb      %cl, (%ebx,%eax)
	movl      5820(%esi), %eax
	movl      $16, %ecx
	subl      %eax, %ecx
	sarl      %cl, %ebp
	leal      -16(%edx,%eax), %ecx
	movl      %ebp, %ebx
	movw      %bp, 5816(%esi)
	movl      %ecx, 5820(%esi)
.L080550A2:
	movl      4(%esp), %ebp
	subl      $1, %ebp
	cmpl      $255, %ebp
	ja        .L08055240
.L080550B5:
	movzbl    _dist_code(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      %eax, %edx
.L080550C2:
	movl      16(%esp), %eax
	leal      (%eax,%edx,4), %edx
	movl      $16, %eax
	movzwl    2(%edx), %edi
	subl      %edi, %eax
	cmpl      %ecx, %eax
	jge       .L08055220
.L080550DC:
	movzwl    (%edx), %eax
	movl      %eax, %edx
	sall      %cl, %edx
	movl      %edx, %ecx
	movl      20(%esi), %edx
	orl       %ebx, %ecx
	movw      %cx, 5816(%esi)
	leal      1(%edx), %ebx
	movl      %ebx, 20(%esi)
	movl      8(%esi), %ebx
	movb      %cl, (%ebx,%edx)
	movl      20(%esi), %edx
	movl      8(%esi), %ebx
	leal      1(%edx), %ecx
	movl      %ecx, 20(%esi)
	movzbl    5817(%esi), %ecx
	movb      %cl, (%ebx,%edx)
	movl      5820(%esi), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %eax
	leal      -16(%edi,%edx), %ecx
	movl      %eax, %ebx
	movw      %ax, 5816(%esi)
	movl      %ecx, 5820(%esi)
.L08055135:
	movl      4(%esp), %eax
	movl      extra_dbits(,%eax,4), %edx
	testl     %edx, %edx
	je        .L08054F6B
.L08055148:
	movl      %eax, %edi
	movl      %ebp, %eax
	subl      base_dist(,%edi,4), %eax
	movl      $16, %edi
	subl      %edx, %edi
	cmpl      %ecx, %edi
	movzwl    %ax, %eax
	jge       .L08055280
.L08055165:
	movl      %eax, %edi
	sall      %cl, %edi
	movl      %edi, %ecx
	movl      8(%esi), %edi
	orl       %ebx, %ecx
	movl      20(%esi), %ebx
	movw      %cx, 5816(%esi)
	leal      1(%ebx), %ebp
	movl      %ebp, 20(%esi)
	movb      %cl, (%edi,%ebx)
	movl      20(%esi), %ecx
	movl      8(%esi), %edi
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%esi)
	movzbl    5817(%esi), %ebx
	movb      %bl, (%edi,%ecx)
	movl      5820(%esi), %edi
	movl      $16, %ecx
	subl      %edi, %ecx
	sarl      %cl, %eax
	leal      -16(%edx,%edi), %ecx
	movl      (%esp), %edx
	cmpl      5792(%esi), %edx
	movl      %eax, %ebx
	movw      %ax, 5816(%esi)
	movl      %ecx, 5820(%esi)
	jb        .L08054F7A
.L080551CA:
	.p2align 4,,10
	.p2align 3
.L080551D0:
	movl      %ecx, %ebp
	movw      %bx, (%esp)
	jmp       .L08054E9C
.L080551DB:
	.p2align 4,,10
	.p2align 3
.L080551E0:
	sall      %cl, %edi
	addl      %edx, %ecx
	orl       %edi, %ebx
	movl      %ecx, 5820(%esi)
	movw      %bx, 5816(%esi)
	jmp       .L08055026
.L080551F8:
	.p2align 4
.L08055200:
	sall      %cl, %edx
	addl      %eax, %ecx
	orl       %edx, %ebx
	movl      %ecx, 5820(%esi)
	movw      %bx, 5816(%esi)
	jmp       .L08054F6B
.L08055218:
	.p2align 4
.L08055220:
	movzwl    (%edx), %edx
	sall      %cl, %edx
	addl      %edi, %ecx
	orl       %edx, %ebx
	movl      %ecx, 5820(%esi)
	movw      %bx, 5816(%esi)
	jmp       .L08055135
.L0805523B:
	.p2align 4,,10
	.p2align 3
.L08055240:
	movl      %ebp, %eax
	shrl      $7, %eax
	movzbl    _dist_code+256(%eax), %eax
	movl      %eax, 4(%esp)
	movl      %eax, %edx
	jmp       .L080550C2
.L08055257:
	.p2align 4
.L08055260:
	sall      %cl, %ebp
	addl      %edx, %ecx
	orl       %ebp, %ebx
	movl      %ecx, 5820(%esi)
	movw      %bx, 5816(%esi)
	jmp       .L080550A2
.L08055278:
	.p2align 4
.L08055280:
	sall      %cl, %eax
	addl      %edx, %ecx
	orl       %eax, %ebx
	movl      %ecx, 5820(%esi)
	movw      %bx, 5816(%esi)
	jmp       .L08054F6B
.L08055298:
	.p2align 4
.L080552A0:
	movl      8(%esp), %ebx
	movl      %ebp, %ecx
	movzwl    1024(%ebx), %edx
	movl      %edx, %ebx
	sall      %cl, %ebx
	movl      20(%esi), %ecx
	orw       (%esp), %bx
	leal      1(%ecx), %ebp
	movw      %bx, 5816(%esi)
	movl      %ebp, 20(%esi)
	movl      8(%esi), %ebp
	movb      %bl, (%ebp,%ecx)
	movl      20(%esi), %ecx
	movl      8(%esi), %ebp
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%esi)
	movzbl    5817(%esi), %ebx
	movb      %bl, (%ebp,%ecx)
	movl      5820(%esi), %ebx
	subl      %ebx, %eax
	movl      %eax, %ecx
	leal      -16(%edi,%ebx), %eax
	sarl      %cl, %edx
	movw      %dx, 5816(%esi)
	movl      %eax, 5820(%esi)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	compress_block, .-compress_block
# ----------------------
.L08055308:
	.p2align 4
# ----------------------
	.local	build_tree
	.type	build_tree, @function
build_tree:
	pushl     %ebp
	pushl     %edi
	movl      %eax, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $72, %esp
	movl      8(%edx), %eax
	movl      (%edx), %ecx
	movl      %edx, 32(%esp)
	movl      (%eax), %esi
	movl      12(%eax), %eax
	movl      %ecx, (%esp)
	movl      $0, 5200(%ebp)
	movl      $573, 5204(%ebp)
	testl     %eax, %eax
	movl      %eax, %ebx
	movl      %eax, 20(%esp)
	jle       .L08055C6E
.L0805534C:
	movl      %ecx, %edx
	xorl      %eax, %eax
	movl      $-1, %ecx
	jmp       .L08055381
.L08055357:
	movl      5200(%ebp), %ecx
	addl      $4, %edx
	leal      1(%ecx), %edi
	movl      %edi, 5200(%ebp)
	movl      %eax, 2912(%ebp,%ecx,4)
	movl      %eax, %ecx
	movb      $0, 5208(%ebp,%eax)
	addl      $1, %eax
	cmpl      %ebx, %eax
	je        .L08055397
.L08055381:
	cmpw      $0, (%edx)
	jne       .L08055357
.L08055387:
	xorl      %edi, %edi
	addl      $1, %eax
	addl      $4, %edx
	movw      %di, -2(%edx)
	cmpl      %ebx, %eax
	jne       .L08055381
.L08055397:
	movl      5200(%ebp), %eax
	testl     %esi, %esi
	movl      %ecx, 36(%esp)
	movl      %eax, 4(%esp)
	je        .L08055C86
.L080553AD:
	movl      36(%esp), %ecx
	movl      (%esp), %ebx
	movl      4(%esp), %eax
	jmp       .L080553EA
.L080553BA:
	movl      %edi, 2908(%ebp,%eax,4)
	movl      $1, %eax
	movw      %ax, (%ebx,%edx)
	movb      $0, 5208(%ebp,%edi)
	subl      $1, 5800(%ebp)
	movzwl    2(%esi,%edx), %eax
	subl      %eax, 5804(%ebp)
	movl      5200(%ebp), %eax
.L080553EA:
	cmpl      $1, %eax
	jg        .L0805540F
.L080553EF:
	addl      $1, %eax
	xorl      %edx, %edx
	xorl      %edi, %edi
	cmpl      $1, %ecx
	movl      %eax, 5200(%ebp)
	jg        .L080553BA
.L08055401:
	addl      $1, %ecx
	leal      0(,%ecx,4), %edx
	movl      %ecx, %edi
	jmp       .L080553BA
.L0805540F:
	movl      %ecx, 36(%esp)
	movl      %eax, 4(%esp)
.L08055417:
	movl      32(%esp), %eax
	movl      %ecx, 4(%eax)
	movl      4(%esp), %eax
	sarl      $1, %eax
	movl      %eax, 24(%esp)
.L08055428:
	movl      24(%esp), %edi
	movl      %edi, %eax
	movl      2908(%ebp,%edi,4), %ecx
	addl      %eax, %eax
	cmpl      4(%esp), %eax
	movl      %ecx, 16(%esp)
	jg        .L080554D5
.L08055445:
	movl      (%esp), %edx
	movl      %edi, 8(%esp)
	leal      (%edx,%ecx,4), %ecx
	movl      %ecx, 12(%esp)
	jmp       .L08055493
.L08055455:
	.p2align 4,,10
	.p2align 3
.L08055458:
	movl      (%esp), %ecx
	movl      2908(%ebp,%eax,4), %edx
	movzwl    (%ecx,%edx,4), %edi
	movl      %eax, %ecx
.L08055468:
	movl      12(%esp), %eax
	cmpw      %di, (%eax)
	jb        .L080554D1
.L08055471:
	je        .L08055748
.L08055477:
	movl      8(%esp), %eax
	movl      %edx, 2908(%ebp,%eax,4)
	leal      (%ecx,%ecx), %eax
	cmpl      4(%esp), %eax
	jg        .L08055821
.L0805548F:
	movl      %ecx, 8(%esp)
.L08055493:
	cmpl      4(%esp), %eax
	jge       .L08055458
.L08055499:
	leal      (%ebp,%eax,4), %esi
	movl      (%esp), %ebx
	leal      1(%eax), %ecx
	movl      2912(%esi), %edx
	movl      2908(%esi), %esi
	movzwl    (%ebx,%edx,4), %edi
	movzwl    (%ebx,%esi,4), %ebx
	cmpw      %bx, %di
	jb        .L08055468
.L080554BC:
	je        .L08055807
.L080554C2:
	movl      %ebx, %edi
.L080554C4:
	movl      %eax, %ecx
	movl      12(%esp), %eax
	movl      %esi, %edx
	cmpw      %di, (%eax)
	jae       .L08055471
.L080554D1:
	movl      8(%esp), %edi
.L080554D5:
	subl      $1, 24(%esp)
	movl      16(%esp), %eax
	movl      %eax, 2908(%ebp,%edi,4)
	jne       .L08055428
.L080554EB:
	movl      5200(%ebp), %eax
	movl      %eax, 4(%esp)
	movl      20(%esp), %eax
	sall      $2, %eax
	movl      %eax, 24(%esp)
.L08055500:
	movl      2912(%ebp), %eax
	movl      4(%esp), %ecx
	movl      %eax, 28(%esp)
	movl      %ecx, %eax
	movl      2908(%ebp,%ecx,4), %ecx
	subl      $1, %eax
	cmpl      $1, %eax
	movl      %eax, 4(%esp)
	movl      %eax, 5200(%ebp)
	movl      %ecx, 16(%esp)
	movl      %ecx, 2912(%ebp)
	jle       .L08055B2B
.L08055537:
	movl      (%esp), %eax
	movl      $1, %edi
	movl      %edi, 8(%esp)
	leal      (%eax,%ecx,4), %eax
	movl      %eax, 12(%esp)
	movl      $2, %eax
	jmp       .L08055595
.L08055551:
	.p2align 4,,10
	.p2align 3
.L08055558:
	movl      2908(%ebp,%eax,4), %edx
	movl      (%esp), %esi
	movzwl    (%esi,%edx,4), %ecx
	movl      %ecx, %edi
	movl      %eax, %ecx
.L0805556A:
	movl      12(%esp), %eax
	cmpw      %di, (%eax)
	jb        .L080555D8
.L08055573:
	je        .L08055770
.L08055579:
	movl      8(%esp), %eax
	movl      %edx, 2908(%ebp,%eax,4)
	leal      (%ecx,%ecx), %eax
	cmpl      %eax, 4(%esp)
	jl        .L08055800
.L08055591:
	movl      %ecx, 8(%esp)
.L08055595:
	cmpl      %eax, 4(%esp)
	jle       .L08055558
.L0805559B:
	leal      (%ebp,%eax,4), %esi
	movl      (%esp), %ebx
	leal      1(%eax), %ecx
	movl      2912(%esi), %edx
	movl      2908(%esi), %esi
	movzwl    (%ebx,%edx,4), %edi
	movzwl    (%ebx,%esi,4), %ebx
	cmpw      %bx, %di
	jb        .L0805556A
.L080555BE:
	je        .L080557B0
.L080555C4:
	movl      %ebx, %edi
.L080555C6:
	movl      %eax, %ecx
	movl      12(%esp), %eax
	movl      %esi, %edx
	cmpw      %di, (%eax)
	jae       .L08055573
.L080555D3:
	.p2align 4,,10
	.p2align 3
.L080555D8:
	movl      8(%esp), %edi
.L080555DC:
	movl      16(%esp), %eax
	movl      (%esp), %esi
	movl      %eax, 2908(%ebp,%edi,4)
	movl      5204(%ebp), %eax
	movl      28(%esp), %edi
	movl      2912(%ebp), %ecx
	leal      (%ebp,%eax,4), %edx
	subl      $2, %eax
	movl      %edi, 2904(%edx)
	movl      %eax, 5204(%ebp)
	leal      (%esi,%edi,4), %eax
	movl      %ecx, 2900(%edx)
	leal      (%esi,%ecx,4), %edx
	movzwl    (%eax), %ebx
	movl      %eax, 4(%esp)
	addw      (%edx), %bx
	movl      24(%esp), %eax
	movw      %bx, (%esi,%eax)
	movzbl    5208(%ebp,%edi), %esi
	movzbl    5208(%ebp,%ecx), %ecx
	movl      %esi, %ebx
	cmpb      %cl, %bl
	leal      1(%ecx), %eax
	jb        .L08055647
.L08055644:
	leal      1(%esi), %eax
.L08055647:
	movl      20(%esp), %edi
	movl      4(%esp), %ecx
	movb      %al, 5208(%ebp,%edi)
	leal      1(%edi), %eax
	movw      %di, 2(%edx)
	movw      %di, 2(%ecx)
	movl      %edi, 2912(%ebp)
	movl      %eax, 16(%esp)
	movl      5200(%ebp), %eax
	cmpl      $1, %eax
	movl      %eax, 4(%esp)
	jle       .L08055828
.L0805567E:
	movl      (%esp), %eax
	movl      24(%esp), %ecx
	movl      $1, %esi
	movl      %esi, 8(%esp)
	movzwl    (%eax,%ecx), %eax
	movw      %ax, 12(%esp)
	movl      $2, %eax
	jmp       .L080556DB
.L0805569E:
	.p2align 4,,10
	.p2align 3
.L080556A0:
	movl      2908(%ebp,%eax,4), %edx
	movl      (%esp), %esi
	movzwl    (%esi,%edx,4), %ecx
	movl      %ecx, %edi
	movl      %eax, %ecx
.L080556B2:
	cmpw      %di, 12(%esp)
	jb        .L08055720
.L080556B9:
	je        .L08055790
.L080556BF:
	movl      8(%esp), %eax
	movl      %edx, 2908(%ebp,%eax,4)
	leal      (%ecx,%ecx), %eax
	cmpl      %eax, 4(%esp)
	jl        .L080557F0
.L080556D7:
	movl      %ecx, 8(%esp)
.L080556DB:
	cmpl      %eax, 4(%esp)
	jle       .L080556A0
.L080556E1:
	leal      (%ebp,%eax,4), %esi
	movl      (%esp), %ebx
	leal      1(%eax), %ecx
	movl      2912(%esi), %edx
	movl      2908(%esi), %esi
	movzwl    (%ebx,%edx,4), %edi
	movzwl    (%ebx,%esi,4), %ebx
	cmpw      %bx, %di
	jb        .L080556B2
.L08055704:
	je        .L080557D0
.L0805570A:
	movl      %ebx, %edi
.L0805570C:
	cmpw      %di, 12(%esp)
	movl      %esi, %edx
	movl      %eax, %ecx
	jae       .L080556B9
.L08055717:
	.p2align 4
.L08055720:
	movl      8(%esp), %esi
.L08055724:
	movl      20(%esp), %eax
	addl      $4, 24(%esp)
	movl      %eax, 2908(%ebp,%esi,4)
	movl      16(%esp), %eax
	movl      %eax, 20(%esp)
	jmp       .L08055500
.L08055741:
	.p2align 4,,10
	.p2align 3
.L08055748:
	movl      16(%esp), %esi
	movzbl    5208(%ebp,%edx), %eax
	cmpb      %al, 5208(%ebp,%esi)
	ja        .L08055477
.L08055761:
	jmp       .L080554D1
.L08055766:
	.p2align 4
.L08055770:
	movl      16(%esp), %esi
	movzbl    5208(%ebp,%edx), %eax
	cmpb      %al, 5208(%ebp,%esi)
	ja        .L08055579
.L08055789:
	jmp       .L080555D8
.L0805578E:
	.p2align 4,,10
	.p2align 3
.L08055790:
	movl      16(%esp), %esi
	movzbl    5208(%ebp,%edx), %eax
	cmpb      %al, 5207(%ebp,%esi)
	ja        .L080556BF
.L080557A9:
	jmp       .L08055720
.L080557AE:
	.p2align 4,,10
	.p2align 3
.L080557B0:
	movzbl    5208(%ebp,%esi), %ebx
	cmpb      %bl, 5208(%ebp,%edx)
	jbe       .L0805556A
.L080557C5:
	jmp       .L080555C6
.L080557CA:
	.p2align 4,,10
	.p2align 3
.L080557D0:
	movzbl    5208(%ebp,%esi), %ebx
	cmpb      %bl, 5208(%ebp,%edx)
	jbe       .L080556B2
.L080557E5:
	jmp       .L0805570C
.L080557EA:
	.p2align 4,,10
	.p2align 3
.L080557F0:
	movl      %ecx, %esi
	jmp       .L08055724
.L080557F7:
	.p2align 4
.L08055800:
	movl      %ecx, %edi
	jmp       .L080555DC
.L08055807:
	movzbl    5208(%ebp,%esi), %ebx
	cmpb      %bl, 5208(%ebp,%edx)
	jbe       .L08055468
.L0805581C:
	jmp       .L080554C4
.L08055821:
	movl      %ecx, %edi
	jmp       .L080554D5
.L08055828:
	movl      5204(%ebp), %eax
	leal      -1(%eax), %edx
	movl      %edx, 5204(%ebp)
	movl      %edi, 2904(%ebp,%eax,4)
	leal      2880(%ebp), %edx
	movl      32(%esp), %eax
	andl      $-4, %edx
	movl      (%eax), %ecx
	movl      %ecx, 4(%esp)
	movl      4(%eax), %ecx
	movl      8(%eax), %eax
	movl      %ecx, 12(%esp)
	movl      (%eax), %ecx
	movl      16(%eax), %edi
	movl      %ecx, 28(%esp)
	movl      4(%eax), %ecx
	movl      %ecx, 32(%esp)
	movl      8(%eax), %ecx
	leal      2876(%ebp), %eax
	subl      %edx, %eax
	addl      $32, %eax
	movl      %ecx, 20(%esp)
	movl      $0, 2876(%ebp)
	andl      $-4, %eax
	movl      $0, 2904(%ebp)
	movl      %eax, %ecx
	xorl      %eax, %eax
.L08055898:
	movl      $0, (%edx,%eax)
	addl      $4, %eax
	cmpl      %ecx, %eax
	jb        .L08055898
.L080558A6:
	movl      4(%esp), %eax
	movl      24(%esp), %ecx
	xorl      %edx, %edx
	movw      %dx, 2(%eax,%ecx)
	movl      5204(%ebp), %eax
	cmpl      $571, %eax
	jg        .L08055B35
.L080558C6:
	movl      28(%esp), %ecx
	testl     %ecx, %ecx
	je        .L08055CE1
.L080558D2:
	leal      2912(,%eax,4), %eax
	movl      $0, 24(%esp)
	movl      %edi, 8(%esp)
	leal      (%ebp,%eax), %esi
	leal      5200(%ebp), %eax
	movl      %eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L080558F8:
	movl      (%esi), %edx
	movl      4(%esp), %edi
	leal      0(,%edx,4), %ebx
	leal      (%edi,%ebx), %ecx
	movzwl    2(%ecx), %eax
	movzwl    2(%edi,%eax,4), %eax
	addl      $1, %eax
	cmpl      %eax, 8(%esp)
	jge       .L08055923
.L0805591A:
	addl      $1, 24(%esp)
	movl      8(%esp), %eax
.L08055923:
	cmpl      %edx, 12(%esp)
	movw      %ax, 2(%ecx)
	jl        .L0805596B
.L0805592D:
	addw      $1, 2876(%ebp,%eax,2)
	xorl      %edi, %edi
	cmpl      %edx, 20(%esp)
	jg        .L08055949
.L0805593E:
	subl      20(%esp), %edx
	movl      32(%esp), %edi
	movl      (%edi,%edx,4), %edi
.L08055949:
	movzwl    (%ecx), %edx
	addl      %edi, %eax
	imull     %edx, %eax
	addl      %eax, 5800(%ebp)
	movl      28(%esp), %eax
	movzwl    2(%eax,%ebx), %eax
	addl      %eax, %edi
	imull     %edx, %edi
	addl      %edi, 5804(%ebp)
.L0805596B:
	addl      $4, %esi
	cmpl      16(%esp), %esi
	jne       .L080558F8
.L08055974:
	movl      8(%esp), %edi
.L08055978:
	movl      24(%esp), %eax
	testl     %eax, %eax
	je        .L08055B35
.L08055984:
	leal      -1(%edi), %ecx
	movl      %eax, %ebx
	movl      %ecx, 16(%esp)
	leal      (%ebp,%edi,2), %ecx
.L08055991:
	movzwl    2874(%ecx), %eax
	testw     %ax, %ax
	jne       .L08055C65
.L080559A1:
	movzwl    2872(%ecx), %eax
	leal      -2(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L080559B4:
	movzwl    2870(%ecx), %eax
	leal      -3(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L080559C7:
	movzwl    2868(%ecx), %eax
	leal      -4(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L080559DA:
	movzwl    2866(%ecx), %eax
	leal      -5(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L080559ED:
	movzwl    2864(%ecx), %eax
	leal      -6(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A00:
	movzwl    2862(%ecx), %eax
	leal      -7(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A13:
	movzwl    2860(%ecx), %eax
	leal      -8(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A22:
	movzwl    2858(%ecx), %eax
	leal      -9(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A31:
	movzwl    2856(%ecx), %eax
	leal      -10(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A40:
	movzwl    2854(%ecx), %eax
	leal      -11(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A4F:
	movzwl    2852(%ecx), %eax
	leal      -12(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A5E:
	movzwl    2850(%ecx), %eax
	leal      -13(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A6D:
	movzwl    2848(%ecx), %eax
	leal      -14(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A7C:
	movzwl    2846(%ecx), %eax
	leal      -15(%edi), %edx
	testw     %ax, %ax
	jne       .L08055A95
.L08055A8B:
	movzwl    2844(%ecx), %eax
	leal      -16(%edi), %edx
.L08055A95:
	leal      (%ebp,%edx,2), %edx
	subl      $1, %eax
	subl      $2, %ebx
	addw      $2, 2878(%edx)
	movw      %ax, 2876(%edx)
	subw      $1, 2876(%ecx)
	testl     %ebx, %ebx
	jg        .L08055991
.L08055ABE:
	testl     %edi, %edi
	je        .L08055B35
.L08055AC2:
	movl      12(%esp), %ecx
	movl      $573, %eax
.L08055ACB:
	movzwl    2876(%ebp,%edi,2), %esi
	testl     %esi, %esi
	je        .L08055B18
.L08055AD7:
	movl      %esi, 8(%esp)
	.p2align 4,,10
	.p2align 3
.L08055AE0:
	subl      $1, %eax
	movl      2908(%ebp,%eax,4), %edx
	cmpl      %edx, %ecx
	jl        .L08055AE0
.L08055AEE:
	movl      4(%esp), %esi
	leal      (%esi,%edx,4), %edx
	movzwl    2(%edx), %ebx
	cmpl      %edi, %ebx
	je        .L08055B11
.L08055AFD:
	movl      %edi, %esi
	subl      %ebx, %esi
	movzwl    (%edx), %ebx
	imull     %esi, %ebx
	addl      %ebx, 5800(%ebp)
	movw      %di, 2(%edx)
.L08055B11:
	subl      $1, 8(%esp)
	jne       .L08055AE0
.L08055B18:
	movl      16(%esp), %edx
	testl     %edx, %edx
	movl      %edx, %edi
	je        .L08055B35
.L08055B22:
	subl      $1, %edx
	movl      %edx, 16(%esp)
	jmp       .L08055ACB
.L08055B2B:
	movl      $1, %edi
	jmp       .L080555DC
.L08055B35:
	movzwl    2876(%ebp), %eax
	movl      36(%esp), %ebx
	addl      %eax, %eax
	movw      %ax, 42(%esp)
	addw      2878(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 44(%esp)
	addw      2880(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 46(%esp)
	addw      2882(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 48(%esp)
	addw      2884(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 50(%esp)
	addw      2886(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 52(%esp)
	addw      2888(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 54(%esp)
	addw      2890(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 56(%esp)
	addw      2892(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 58(%esp)
	addw      2894(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 60(%esp)
	addw      2896(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 62(%esp)
	addw      2898(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 64(%esp)
	addw      2900(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 66(%esp)
	addw      2902(%ebp), %ax
	addl      %eax, %eax
	movw      %ax, 68(%esp)
	addw      2904(%ebp), %ax
	addl      %eax, %eax
	testl     %ebx, %ebx
	movw      %ax, 70(%esp)
	js        .L08055C5D
.L08055C0F:
	movl      36(%esp), %edi
	movl      (%esp), %eax
	leal      6(,%edi,4), %esi
	leal      2(%eax), %ecx
	addl      %eax, %esi
.L08055C22:
	movzwl    (%ecx), %edx
	testl     %edx, %edx
	je        .L08055C56
.L08055C29:
	movzwl    40(%esp,%edx,2), %ebx
	leal      1(%ebx), %eax
	movw      %ax, 40(%esp,%edx,2)
	xorl      %eax, %eax
	.p2align 4
.L08055C40:
	movl      %ebx, %edi
	shrl      $1, %ebx
	andl      $1, %edi
	orl       %edi, %eax
	addl      %eax, %eax
	subl      $1, %edx
	jne       .L08055C40
.L08055C50:
	shrl      $1, %eax
	movw      %ax, -2(%ecx)
.L08055C56:
	addl      $4, %ecx
	cmpl      %esi, %ecx
	jne       .L08055C22
.L08055C5D:
	addl      $72, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08055C65:
	movl      16(%esp), %edx
	jmp       .L08055A95
.L08055C6E:
	testl     %esi, %esi
	movl      $0, 4(%esp)
	movl      $-1, 36(%esp)
	jne       .L080553AD
.L08055C86:
	movl      36(%esp), %edx
	movl      4(%esp), %eax
	jmp       .L08055CB8
.L08055C90:
	movl      %ecx, 2908(%ebp,%eax,4)
	movl      (%esp), %eax
	movl      $1, %esi
	movw      %si, (%eax,%ebx)
	movb      $0, 5208(%ebp,%ecx)
	subl      $1, 5800(%ebp)
	movl      5200(%ebp), %eax
.L08055CB8:
	cmpl      $1, %eax
	jg        .L08055D76
.L08055CC1:
	addl      $1, %eax
	xorl      %ebx, %ebx
	xorl      %ecx, %ecx
	cmpl      $1, %edx
	movl      %eax, 5200(%ebp)
	jg        .L08055C90
.L08055CD3:
	addl      $1, %edx
	leal      0(,%edx,4), %ebx
	movl      %edx, %ecx
	jmp       .L08055C90
.L08055CE1:
	leal      5200(%ebp), %esi
	leal      2912(,%eax,4), %ebx
	movl      $0, 24(%esp)
	movl      %ebp, 8(%esp)
	movl      %esi, 16(%esp)
	movl      4(%esp), %esi
	addl      %ebp, %ebx
.L08055D04:
	movl      (%ebx), %edx
	leal      (%esi,%edx,4), %ecx
	movzwl    2(%ecx), %eax
	movzwl    2(%esi,%eax,4), %eax
	addl      $1, %eax
	cmpl      %edi, %eax
	jle       .L08055D20
.L08055D19:
	addl      $1, 24(%esp)
	movl      %edi, %eax
.L08055D20:
	cmpl      12(%esp), %edx
	movw      %ax, 2(%ecx)
	jg        .L08055D51
.L08055D2A:
	movl      8(%esp), %ebp
	addw      $1, 2876(%ebp,%eax,2)
	cmpl      20(%esp), %edx
	jge       .L08055D68
.L08055D3D:
	xorl      %edx, %edx
.L08055D3F:
	addl      %edx, %eax
	movzwl    (%ecx), %edx
	movl      8(%esp), %ecx
	imull     %edx, %eax
	addl      %eax, 5800(%ecx)
.L08055D51:
	addl      $4, %ebx
	cmpl      16(%esp), %ebx
	jne       .L08055D04
.L08055D5A:
	movl      8(%esp), %ebp
	jmp       .L08055978
.L08055D63:
	.p2align 4,,10
	.p2align 3
.L08055D68:
	subl      20(%esp), %edx
	movl      32(%esp), %ebp
	movl      (%ebp,%edx,4), %edx
	jmp       .L08055D3F
.L08055D76:
	movl      %edx, 36(%esp)
	movl      %eax, 4(%esp)
	movl      %edx, %ecx
	jmp       .L08055417
	.size	build_tree, .-build_tree
# ----------------------
.L08055D85:
	.p2align 4
# ----------------------
	.hidden	_tr_init
	.globl	_tr_init
	.type	_tr_init, @function
_tr_init:
	pushl     %esi
	pushl     %ebx
	xorl      %ecx, %ecx
	movl      12(%esp), %ebx
	leal      148(%ebx), %eax
	leal      2440(%ebx), %edx
	leal      2684(%ebx), %esi
	movw      %cx, 5816(%ebx)
	leal      1292(%ebx), %ecx
	movl      $static_l_desc, 2848(%ebx)
	movl      %eax, 2840(%ebx)
	movl      %edx, 2852(%ebx)
	movl      $static_d_desc, 2860(%ebx)
	movl      %esi, 2864(%ebx)
	movl      $static_bl_desc, 2872(%ebx)
	movl      $0, 5820(%ebx)
	.p2align 4,,10
	.p2align 3
.L08055DF8:
	movw      $0, (%eax)
	addl      $4, %eax
	cmpl      %ecx, %eax
	jne       .L08055DF8
.L08055E04:
	movl      %edx, %eax
	leal      2560(%ebx), %edx
	.p2align 4,,10
	.p2align 3
.L08055E10:
	xorl      %ecx, %ecx
	addl      $4, %eax
	movw      %cx, -4(%eax)
	cmpl      %edx, %eax
	jne       .L08055E10
.L08055E1D:
	leal      2760(%ebx), %edx
	movl      %esi, %eax
	.p2align 4,,10
	.p2align 3
.L08055E28:
	xorl      %ecx, %ecx
	addl      $4, %eax
	movw      %cx, -4(%eax)
	cmpl      %edx, %eax
	jne       .L08055E28
.L08055E35:
	movl      $1, %eax
	movl      $0, 5804(%ebx)
	movl      $0, 5800(%ebx)
	movw      %ax, 1172(%ebx)
	movl      $0, 5808(%ebx)
	movl      $0, 5792(%ebx)
	popl      %ebx
	popl      %esi
	ret       
	.size	_tr_init, .-_tr_init
# ----------------------
.L08055E6C:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.hidden	_tr_stored_block
	.globl	_tr_stored_block
	.type	_tr_stored_block, @function
_tr_stored_block:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      20(%esp), %eax
	movl      28(%esp), %ebx
	movl      5820(%eax), %ecx
	cmpl      $13, %ecx
	jg        .L08055F90
.L08055E8B:
	movzwl    32(%esp), %ebp
	sall      %cl, %ebp
	orw       5816(%eax), %bp
	addl      $3, %ecx
	movl      %ecx, 5820(%eax)
	movw      %bp, 5816(%eax)
.L08055EA9:
	cmpl      $8, %ecx
	jg        .L08055F60
.L08055EB2:
	testl     %ecx, %ecx
	jle       .L08055EC7
.L08055EB6:
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	movl      %ebp, %edx
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movb      %dl, (%esi,%ecx)
.L08055EC7:
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	xorl      %edx, %edx
	movw      %dx, 5816(%eax)
	movl      $0, 5820(%eax)
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movb      %bl, (%esi,%ecx)
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movl      %ebx, %edi
	shrw      $8, %di
	movl      %edi, %edx
	movb      %dl, (%esi,%ecx)
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movl      %ebx, %edi
	notl      %edi
	movl      %edi, %edx
	movb      %dl, (%esi,%ecx)
	movl      20(%eax), %esi
	movl      8(%eax), %edi
	leal      1(%esi), %ecx
	movl      %ecx, 20(%eax)
	movl      %ebx, %ecx
	notl      %ecx
	shrw      $8, %cx
	movb      %cl, (%edi,%esi)
	movl      24(%esp), %edi
	addl      %ebx, %edi
	testl     %ebx, %ebx
	je        .L08055F5A
.L08055F36:
	movl      24(%esp), %edx
	.p2align 4,,10
	.p2align 3
.L08055F40:
	movl      20(%eax), %ecx
	addl      $1, %edx
	movl      8(%eax), %esi
	cmpl      %edi, %edx
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%eax)
	movzbl    -1(%edx), %ebx
	movb      %bl, (%esi,%ecx)
	jne       .L08055F40
.L08055F5A:
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08055F5F:
	.p2align 4,,10
	.p2align 3
.L08055F60:
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	movl      %ebp, %edx
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movb      %dl, (%esi,%ecx)
	movl      20(%eax), %ecx
	movl      8(%eax), %esi
	leal      1(%ecx), %edi
	movl      %edi, 20(%eax)
	movzbl    5817(%eax), %edi
	movl      %edi, %edx
	movb      %dl, (%esi,%ecx)
	jmp       .L08055EC7
.L08055F8E:
	.p2align 4,,10
	.p2align 3
.L08055F90:
	movzwl    32(%esp), %esi
	movl      8(%eax), %edx
	movl      %esi, %edi
	sall      %cl, %edi
	movl      %edi, %ecx
	movl      20(%eax), %edi
	orw       5816(%eax), %cx
	leal      1(%edi), %ebp
	movw      %cx, 5816(%eax)
	movl      %ebp, 20(%eax)
	movb      %cl, (%edx,%edi)
	movl      20(%eax), %ecx
	movl      8(%eax), %edi
	leal      1(%ecx), %ebp
	movl      %ebp, 20(%eax)
	movzbl    5817(%eax), %ebp
	movl      %ebp, %edx
	movb      %dl, (%edi,%ecx)
	movl      5820(%eax), %edi
	movl      $16, %ecx
	subl      %edi, %ecx
	sarl      %cl, %esi
	leal      -13(%edi), %ecx
	movl      %esi, %ebp
	movw      %si, 5816(%eax)
	movl      %ecx, 5820(%eax)
	jmp       .L08055EA9
	.size	_tr_stored_block, .-_tr_stored_block
# ----------------------
.L08055FF6:
	.p2align 4
# ----------------------
	.hidden	_tr_flush_bits
	.globl	_tr_flush_bits
	.type	_tr_flush_bits, @function
_tr_flush_bits:
	pushl     %ebx
	movl      8(%esp), %eax
	movl      5820(%eax), %edx
	cmpl      $16, %edx
	je        .L08056040
.L08056010:
	cmpl      $7, %edx
	jle       .L0805603A
.L08056015:
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 20(%eax)
	movzbl    5816(%eax), %ebx
	movb      %bl, (%ecx,%edx)
	shrw      $8, 5816(%eax)
	subl      $8, 5820(%eax)
.L0805603A:
	popl      %ebx
	ret       
.L0805603C:
	.p2align 4,,10
	.p2align 3
.L08056040:
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 20(%eax)
	movzwl    5816(%eax), %ebx
	movb      %bl, (%ecx,%edx)
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 20(%eax)
	movzbl    5817(%eax), %ebx
	movb      %bl, (%ecx,%edx)
	xorl      %edx, %edx
	movl      $0, 5820(%eax)
	movw      %dx, 5816(%eax)
	popl      %ebx
	ret       
	.size	_tr_flush_bits, .-_tr_flush_bits
# ----------------------
.L08056081:
	.p2align 4
# ----------------------
	.hidden	_tr_align
	.globl	_tr_align
	.type	_tr_align, @function
_tr_align:
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      16(%esp), %eax
	movl      $2, %ebx
	movl      5820(%eax), %ecx
	cmpl      $13, %ecx
	jle       .L08056148
.L080560AB:
	movl      %ebx, %edx
	movl      8(%eax), %esi
	sall      %cl, %edx
	movl      20(%eax), %ecx
	orw       5816(%eax), %dx
	leal      1(%ecx), %edi
	movw      %dx, 5816(%eax)
	movl      %edi, 20(%eax)
	movb      %dl, (%esi,%ecx)
	movl      20(%eax), %edx
	movzbl    5817(%eax), %ecx
	movl      8(%eax), %edi
	leal      1(%edx), %esi
	movl      %esi, 20(%eax)
	movb      %cl, (%edi,%edx)
	movl      $16, %ecx
	movl      5820(%eax), %edx
	subl      %edx, %ecx
	sarl      %cl, %ebx
	movl      %ebx, %ecx
	movw      %cx, 5816(%eax)
	leal      -13(%edx), %ecx
	cmpl      $9, %ecx
	movl      %ecx, 5820(%eax)
	jg        .L08056166
.L08056108:
	addl      $7, %ecx
	cmpl      $16, %ecx
	movl      %ecx, 5820(%eax)
	je        .L080561AE
.L0805611A:
	cmpl      $7, %ecx
	jle       .L0805613D
.L0805611F:
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %esi
	movl      %esi, 20(%eax)
	movb      %bl, (%ecx,%edx)
	shrw      $8, 5816(%eax)
	subl      $8, 5820(%eax)
.L0805613D:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L08056141:
	.p2align 4,,10
	.p2align 3
.L08056148:
	sall      %cl, %ebx
	orw       5816(%eax), %bx
	addl      $3, %ecx
	cmpl      $9, %ecx
	movl      %ecx, 5820(%eax)
	movw      %bx, 5816(%eax)
	jle       .L08056108
.L08056166:
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %esi
	movl      %esi, 20(%eax)
	movb      %bl, (%ecx,%edx)
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 20(%eax)
	movzbl    5817(%eax), %ebx
	movb      %bl, (%ecx,%edx)
	movl      5820(%eax), %edi
	xorl      %ecx, %ecx
	movw      %cx, 5816(%eax)
	xorl      %ebx, %ebx
	leal      -9(%edi), %ecx
	cmpl      $16, %ecx
	movl      %ecx, 5820(%eax)
	jne       .L0805611A
.L080561AE:
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %esi
	movl      %esi, 20(%eax)
	movb      %bl, (%ecx,%edx)
	movl      20(%eax), %edx
	movl      8(%eax), %ecx
	leal      1(%edx), %ebx
	movl      %ebx, 20(%eax)
	movzbl    5817(%eax), %ebx
	movb      %bl, (%ecx,%edx)
	xorl      %edx, %edx
	movl      $0, 5820(%eax)
	movw      %dx, 5816(%eax)
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
	.size	_tr_align, .-_tr_align
# ----------------------
.L080561EA:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.hidden	_tr_flush_block
	.globl	_tr_flush_block
	.type	_tr_flush_block, @function
_tr_flush_block:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $20, %esp
	movl      40(%esp), %ebp
	movl      132(%ebp), %eax
	testl     %eax, %eax
	jle       .L080568F9
.L08056209:
	movl      (%ebp), %ebx
	leal      148(%ebp), %eax
	movl      %eax, 12(%esp)
	cmpl      $2, 44(%ebx)
	je        .L08056969
.L08056220:
	leal      2840(%ebp), %edx
	movl      %ebp, %eax
	call      build_tree
.L0805622D:
	leal      2852(%ebp), %edx
	movl      %ebp, %eax
	call      build_tree
.L0805623A:
	movzwl    150(%ebp), %edx
	movl      2844(%ebp), %ecx
	movl      12(%esp), %ebx
	leal      4(,%ecx,4), %eax
	cmpl      $1, %edx
	sbbl      %esi, %esi
	movw      $65535, 2(%ebx,%eax)
	addl      $4, %esi
	cmpl      $1, %edx
	sbbl      %edi, %edi
	andl      $131, %edi
	addl      $7, %edi
	testl     %ecx, %ecx
	js        .L0805631D
.L08056277:
	leal      6(%eax,%ebx), %eax
	leal      154(%ebp), %ecx
	movl      $-1, 4(%esp)
	movl      %eax, 8(%esp)
	xorl      %eax, %eax
	jmp       .L080562C9
.L08056291:
	.p2align 4,,10
	.p2align 3
.L08056298:
	addw      %ax, 2684(%ebp,%edx,4)
.L080562A0:
	testl     %ebx, %ebx
	je        .L08056302
.L080562A4:
	cmpb      $0, (%esp)
	movl      %edx, 4(%esp)
	jne       .L0805660A
.L080562B2:
	movl      $4, %esi
	movl      $7, %edi
	xorl      %eax, %eax
.L080562BE:
	addl      $4, %ecx
	cmpl      8(%esp), %ecx
	movl      %ebx, %edx
	je        .L0805631D
.L080562C9:
	movzwl    (%ecx), %ebx
	addl      $1, %eax
	cmpl      %edx, %ebx
	sete      (%esp)
	jne       .L080562DB
.L080562D7:
	cmpl      %edi, %eax
	jl        .L080562BE
.L080562DB:
	cmpl      %esi, %eax
	jl        .L08056298
.L080562DF:
	testl     %edx, %edx
	je        .L080565F8
.L080562E7:
	cmpl      4(%esp), %edx
	je        .L080562F6
.L080562ED:
	addw      $1, 2684(%ebp,%edx,4)
.L080562F6:
	addw      $1, 2748(%ebp)
	testl     %ebx, %ebx
	jne       .L080562A4
.L08056302:
	xorl      %eax, %eax
	addl      $4, %ecx
	cmpl      8(%esp), %ecx
	movl      $3, %esi
	movl      $138, %edi
	movl      %edx, 4(%esp)
	movl      %ebx, %edx
	jne       .L080562C9
.L0805631D:
	movzwl    2442(%ebp), %edx
	movl      2856(%ebp), %ecx
	leal      2440(%ebp), %eax
	movl      %eax, %ebx
	movl      %eax, 16(%esp)
	leal      4(,%ecx,4), %eax
	cmpl      $1, %edx
	sbbl      %edi, %edi
	movw      $65535, 2(%ebx,%eax)
	addl      $4, %edi
	cmpl      $1, %edx
	sbbl      %esi, %esi
	andl      $131, %esi
	addl      $7, %esi
	testl     %ecx, %ecx
	js        .L08056405
.L08056362:
	leal      6(%eax,%ebx), %eax
	leal      2446(%ebp), %ecx
	movl      $-1, 4(%esp)
	movl      %eax, 8(%esp)
	xorl      %eax, %eax
	jmp       .L080563B1
.L0805637C:
	.p2align 4,,10
	.p2align 3
.L08056380:
	addw      %ax, 2684(%ebp,%edx,4)
.L08056388:
	testl     %ebx, %ebx
	je        .L080563EA
.L0805638C:
	cmpb      $0, (%esp)
	movl      %edx, 4(%esp)
	jne       .L08056642
.L0805639A:
	movl      $4, %edi
	movl      $7, %esi
	xorl      %eax, %eax
.L080563A6:
	addl      $4, %ecx
	cmpl      8(%esp), %ecx
	movl      %ebx, %edx
	je        .L08056405
.L080563B1:
	movzwl    (%ecx), %ebx
	addl      $1, %eax
	cmpl      %edx, %ebx
	sete      (%esp)
	jne       .L080563C3
.L080563BF:
	cmpl      %esi, %eax
	jl        .L080563A6
.L080563C3:
	cmpl      %edi, %eax
	jl        .L08056380
.L080563C7:
	testl     %edx, %edx
	je        .L08056630
.L080563CF:
	cmpl      4(%esp), %edx
	je        .L080563DE
.L080563D5:
	addw      $1, 2684(%ebp,%edx,4)
.L080563DE:
	addw      $1, 2748(%ebp)
	testl     %ebx, %ebx
	jne       .L0805638C
.L080563EA:
	xorl      %eax, %eax
	addl      $4, %ecx
	cmpl      8(%esp), %ecx
	movl      $3, %edi
	movl      $138, %esi
	movl      %edx, 4(%esp)
	movl      %ebx, %edx
	jne       .L080563B1
.L08056405:
	leal      2864(%ebp), %edx
	movl      %ebp, %eax
	call      build_tree
.L08056412:
	cmpw      $0, 2746(%ebp)
	jne       .L08056B72
.L08056420:
	cmpw      $0, 2690(%ebp)
	jne       .L08056B6B
.L0805642E:
	cmpw      $0, 2742(%ebp)
	jne       .L08056B87
.L0805643C:
	cmpw      $0, 2694(%ebp)
	jne       .L08056B80
.L0805644A:
	cmpw      $0, 2738(%ebp)
	jne       .L08056B79
.L08056458:
	cmpw      $0, 2698(%ebp)
	jne       .L08056B64
.L08056466:
	cmpw      $0, 2734(%ebp)
	jne       .L08056B8E
.L08056474:
	cmpw      $0, 2702(%ebp)
	jne       .L08056BB1
.L08056482:
	cmpw      $0, 2730(%ebp)
	jne       .L08056B54
.L08056490:
	cmpw      $0, 2706(%ebp)
	jne       .L08056B95
.L0805649E:
	cmpw      $0, 2726(%ebp)
	jne       .L08056B9C
.L080564AC:
	cmpw      $0, 2710(%ebp)
	jne       .L08056BA3
.L080564BA:
	cmpw      $0, 2722(%ebp)
	jne       .L08056BAA
.L080564C8:
	cmpw      $0, 2714(%ebp)
	jne       .L08056BBF
.L080564D6:
	cmpw      $0, 2718(%ebp)
	jne       .L08056BC6
.L080564E4:
	cmpw      $0, 2686(%ebp)
	jne       .L08056BB8
.L080564F2:
	movl      $9, %edx
	movl      $3, %esi
	movl      $2, %ebx
.L08056501:
	movl      5800(%ebp), %eax
	movl      5804(%ebp), %edi
	leal      14(%edx,%eax), %eax
	leal      10(%edi), %edx
	movl      %eax, 5800(%ebp)
	addl      $10, %eax
	shrl      $3, %edx
	shrl      $3, %eax
	cmpl      %edx, %eax
	jbe       .L08056529
.L08056527:
	movl      %edx, %eax
.L08056529:
	movl      48(%esp), %edi
	leal      4(%edi), %ecx
	cmpl      %eax, %ecx
	ja        .L08056660
.L08056538:
	movl      44(%esp), %ecx
	testl     %ecx, %ecx
	je        .L08056660
.L08056544:
	pushl     52(%esp)
	pushl     52(%esp)
	pushl     52(%esp)
	pushl     %ebp
	call      _tr_stored_block
.L08056556:
	addl      $16, %esp
.L08056559:
	movl      12(%esp), %eax
	leal      1292(%ebp), %edx
	.p2align 4,,10
	.p2align 3
.L08056568:
	xorl      %edi, %edi
	addl      $4, %eax
	movw      %di, -4(%eax)
	cmpl      %edx, %eax
	jne       .L08056568
.L08056575:
	movl      16(%esp), %eax
	leal      2560(%ebp), %edx
	.p2align 4,,10
	.p2align 3
.L08056580:
	xorl      %esi, %esi
	addl      $4, %eax
	movw      %si, -4(%eax)
	cmpl      %edx, %eax
	jne       .L08056580
.L0805658D:
	leal      2684(%ebp), %eax
	leal      2760(%ebp), %edx
	.p2align 4
.L080565A0:
	xorl      %ebx, %ebx
	addl      $4, %eax
	movw      %bx, -4(%eax)
	cmpl      %edx, %eax
	jne       .L080565A0
.L080565AD:
	movl      52(%esp), %ecx
	movl      $1, %edx
	movl      $0, 5804(%ebp)
	movw      %dx, 1172(%ebp)
	movl      $0, 5800(%ebp)
	movl      $0, 5808(%ebp)
	movl      $0, 5792(%ebp)
	testl     %ecx, %ecx
	jne       .L080568B5
.L080565ED:
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080565F5:
	.p2align 4,,10
	.p2align 3
.L080565F8:
	cmpl      $10, %eax
	jg        .L0805661B
.L080565FD:
	addw      $1, 2752(%ebp)
	jmp       .L080562A0
.L0805660A:
	movl      $3, %esi
	movl      $6, %edi
	xorl      %eax, %eax
	jmp       .L080562BE
.L0805661B:
	addw      $1, 2756(%ebp)
	jmp       .L080562A0
.L08056628:
	.p2align 4
.L08056630:
	cmpl      $10, %eax
	jg        .L08056653
.L08056635:
	addw      $1, 2752(%ebp)
	jmp       .L08056388
.L08056642:
	movl      $3, %edi
	movl      $6, %esi
	xorl      %eax, %eax
	jmp       .L080563A6
.L08056653:
	addw      $1, 2756(%ebp)
	jmp       .L08056388
.L08056660:
	cmpl      %eax, %edx
	je        .L08056927
.L08056668:
	cmpl      $4, 136(%ebp)
	je        .L08056927
.L08056675:
	movl      5820(%ebp), %ecx
	cmpl      $13, %ecx
	jg        .L080569DE
.L08056684:
	movzwl    52(%esp), %eax
	addl      $4, %eax
	movzwl    %ax, %eax
	sall      %cl, %eax
	addl      $3, %ecx
	movl      %eax, %edx
	orw       5816(%ebp), %dx
	movl      %ecx, 5820(%ebp)
	movw      %dx, 5816(%ebp)
.L080566AA:
	movl      2856(%ebp), %eax
	cmpl      $11, %ecx
	movl      %eax, 4(%esp)
	movl      2844(%ebp), %eax
	movl      %eax, 8(%esp)
	jle       .L08056AB2
.L080566C7:
	subl      $256, %eax
	movzwl    %ax, %edi
	movl      %edi, %eax
	sall      %cl, %eax
	orl       %eax, %edx
	movl      20(%ebp), %eax
	movw      %dx, 5816(%ebp)
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      8(%ebp), %ecx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movzbl    5817(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      $16, %ecx
	subl      5820(%ebp), %ecx
	movl      %edi, %eax
	sarl      %cl, %eax
	movl      %eax, %edx
	movw      %ax, 5816(%ebp)
	movl      5820(%ebp), %eax
	leal      -11(%eax), %ecx
	cmpl      $11, %ecx
	movl      %ecx, 5820(%ebp)
	jle       .L08056ADB
.L08056731:
	movzwl    4(%esp), %edi
	movl      %edi, %eax
	sall      %cl, %eax
	orl       %eax, %edx
	movl      20(%ebp), %eax
	movw      %dx, 5816(%ebp)
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movl      8(%ebp), %ecx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movzbl    5817(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%ebp), %eax
	movl      $16, %ecx
	subl      %eax, %ecx
	sarl      %cl, %edi
	leal      -11(%eax), %ecx
	movl      %edi, %edx
	movw      %di, 5816(%ebp)
	cmpl      $12, %ecx
	movl      %ecx, 5820(%ebp)
	jle       .L08056AFD
.L08056792:
	subl      $3, %ebx
	movl      20(%ebp), %eax
	movzwl    %bx, %edi
	movl      %edi, %ebx
	sall      %cl, %ebx
	leal      1(%eax), %ecx
	orl       %edx, %ebx
	movl      8(%ebp), %edx
	movl      %ecx, 20(%ebp)
	movw      %bx, 5816(%ebp)
	movb      %bl, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movzbl    5817(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%ebp), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %edi
	leal      -12(%edx), %ecx
	movl      %edi, %eax
	movw      %di, 5816(%ebp)
	movl      %ecx, 5820(%ebp)
.L080567EB:
	xorl      %edx, %edx
	movl      %esi, (%esp)
	jmp       .L08056853
.L080567F2:
	.p2align 4,,10
	.p2align 3
.L080567F8:
	movl      %ebx, %esi
	addl      $1, %edx
	sall      %cl, %esi
	movl      20(%ebp), %ecx
	orl       %esi, %eax
	movl      8(%ebp), %esi
	movw      %ax, 5816(%ebp)
	leal      1(%ecx), %edi
	movl      %edi, 20(%ebp)
	movb      %al, (%esi,%ecx)
	movl      20(%ebp), %eax
	movzbl    5817(%ebp), %ecx
	movl      8(%ebp), %edi
	leal      1(%eax), %esi
	movl      %esi, 20(%ebp)
	movb      %cl, (%edi,%eax)
	movl      $16, %ecx
	movl      5820(%ebp), %esi
	subl      %esi, %ecx
	sarl      %cl, %ebx
	cmpl      (%esp), %edx
	leal      -13(%esi), %ecx
	movl      %ebx, %eax
	movw      %bx, 5816(%ebp)
	movl      %ecx, 5820(%ebp)
	je        .L08056883
.L08056853:
	movzbl    bl_order(%edx), %ebx
	cmpl      $13, %ecx
	movzwl    2686(%ebp,%ebx,4), %ebx
	jg        .L080567F8
.L08056867:
	sall      %cl, %ebx
	addl      $1, %edx
	addl      $3, %ecx
	orl       %ebx, %eax
	cmpl      (%esp), %edx
	movl      %ecx, 5820(%ebp)
	movw      %ax, 5816(%ebp)
	jne       .L08056853
.L08056883:
	movl      12(%esp), %esi
	movl      8(%esp), %ecx
	movl      %ebp, %eax
	movl      %esi, %edx
	call      send_tree
.L08056894:
	movl      16(%esp), %edi
	movl      4(%esp), %ecx
	movl      %ebp, %eax
	movl      %edi, %edx
	call      send_tree
.L080568A5:
	movl      %edi, %ecx
	movl      %esi, %edx
	movl      %ebp, %eax
	call      compress_block
.L080568B0:
	jmp       .L08056559
.L080568B5:
	movl      5820(%ebp), %eax
	cmpl      $8, %eax
	jg        .L08056B1C
.L080568C4:
	testl     %eax, %eax
	jle       .L080568DE
.L080568C8:
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzwl    5816(%ebp), %ecx
	movb      %cl, (%edx,%eax)
.L080568DE:
	xorl      %eax, %eax
	movl      $0, 5820(%ebp)
	movw      %ax, 5816(%ebp)
	addl      $20, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080568F9:
	movl      48(%esp), %eax
	leal      5(%eax), %edx
	addl      $4, %eax
	cmpl      %eax, %edx
	leal      148(%ebp), %eax
	movl      %eax, 12(%esp)
	leal      2440(%ebp), %eax
	movl      %eax, 16(%esp)
	jb        .L08056927
.L0805691B:
	movl      44(%esp), %eax
	testl     %eax, %eax
	jne       .L08056544
.L08056927:
	movl      5820(%ebp), %ecx
	cmpl      $13, %ecx
	jg        .L08056A4D
.L08056936:
	movzwl    52(%esp), %eax
	addl      $2, %eax
	movzwl    %ax, %eax
	sall      %cl, %eax
	orw       %ax, 5816(%ebp)
	addl      $3, %ecx
	movl      %ecx, 5820(%ebp)
.L08056953:
	movl      $static_dtree, %ecx
	movl      $static_ltree, %edx
	movl      %ebp, %eax
	call      compress_block
.L08056964:
	jmp       .L08056559
.L08056969:
	leal      276(%ebp), %ecx
	movl      $-201342849, %edx
	.p2align 4,,10
	.p2align 3
.L08056978:
	testb     $1, %dl
	je        .L08056987
.L0805697D:
	cmpw      $0, (%eax)
	jne       .L08056B4D
.L08056987:
	addl      $4, %eax
	shrl      $1, %edx
	cmpl      %ecx, %eax
	jne       .L08056978
.L08056990:
	cmpw      $0, 184(%ebp)
	movl      $1, %eax
	jne       .L080569D6
.L0805699F:
	cmpw      $0, 188(%ebp)
	jne       .L080569D6
.L080569A9:
	cmpw      $0, 200(%ebp)
	jne       .L080569D6
.L080569B3:
	leal      1172(%ebp), %eax
	jmp       .L080569CB
.L080569BB:
	.p2align 4,,10
	.p2align 3
.L080569C0:
	addl      $4, %ecx
	cmpl      %eax, %ecx
	je        .L08056B4D
.L080569CB:
	cmpw      $0, (%ecx)
	je        .L080569C0
.L080569D1:
	movl      $1, %eax
.L080569D6:
	movl      %eax, 44(%ebx)
	jmp       .L08056220
.L080569DE:
	movl      52(%esp), %eax
	addl      $4, %eax
	movzwl    %ax, %edi
	movl      %edi, %eax
	sall      %cl, %eax
	movl      %eax, %edx
	movl      20(%ebp), %eax
	orw       5816(%ebp), %dx
	leal      1(%eax), %ecx
	movw      %dx, 5816(%ebp)
	movl      %ecx, 20(%ebp)
	movl      8(%ebp), %ecx
	movb      %dl, (%ecx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movzbl    5817(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      $16, %ecx
	subl      5820(%ebp), %ecx
	movl      %edi, %eax
	sarl      %cl, %eax
	movl      %eax, %edx
	movw      %ax, 5816(%ebp)
	movl      5820(%ebp), %eax
	leal      -13(%eax), %ecx
	movl      %ecx, 5820(%ebp)
	jmp       .L080566AA
.L08056A4D:
	movl      52(%esp), %eax
	movl      20(%ebp), %edx
	leal      2(%eax), %esi
	leal      1(%edx), %ebx
	movzwl    %si, %esi
	movl      %ebx, 20(%ebp)
	movl      %esi, %eax
	sall      %cl, %eax
	orw       5816(%ebp), %ax
	movl      8(%ebp), %ecx
	movw      %ax, 5816(%ebp)
	movb      %al, (%ecx,%edx)
	movl      20(%ebp), %eax
	movl      8(%ebp), %ecx
	leal      1(%eax), %edx
	movl      %edx, 20(%ebp)
	movzbl    5817(%ebp), %edx
	movb      %dl, (%ecx,%eax)
	movl      5820(%ebp), %eax
	movl      $16, %ecx
	subl      %eax, %ecx
	subl      $13, %eax
	sarl      %cl, %esi
	movl      %eax, 5820(%ebp)
	movw      %si, 5816(%ebp)
	jmp       .L08056953
.L08056AB2:
	movzwl    8(%esp), %eax
	subw      $256, %ax
	movzwl    %ax, %eax
	sall      %cl, %eax
	addl      $5, %ecx
	orl       %eax, %edx
	cmpl      $11, %ecx
	movl      %ecx, 5820(%ebp)
	movw      %dx, 5816(%ebp)
	jg        .L08056731
.L08056ADB:
	movzwl    4(%esp), %eax
	sall      %cl, %eax
	addl      $5, %ecx
	orl       %eax, %edx
	cmpl      $12, %ecx
	movl      %ecx, 5820(%ebp)
	movw      %dx, 5816(%ebp)
	jg        .L08056792
.L08056AFD:
	leal      -4(%esi), %eax
	movzwl    %ax, %eax
	sall      %cl, %eax
	addl      $4, %ecx
	orl       %edx, %eax
	movl      %ecx, 5820(%ebp)
	movw      %ax, 5816(%ebp)
	jmp       .L080567EB
.L08056B1C:
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzwl    5816(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	movl      20(%ebp), %eax
	movl      8(%ebp), %edx
	leal      1(%eax), %ecx
	movl      %ecx, 20(%ebp)
	movzbl    5817(%ebp), %ecx
	movb      %cl, (%edx,%eax)
	jmp       .L080568DE
.L08056B4D:
	xorl      %eax, %eax
	jmp       .L080569D6
.L08056B54:
	movl      $10, %ebx
.L08056B59:
	leal      1(%ebx), %esi
	leal      (%esi,%esi,2), %edx
	jmp       .L08056501
.L08056B64:
	movl      $13, %ebx
	jmp       .L08056B59
.L08056B6B:
	movl      $17, %ebx
	jmp       .L08056B59
.L08056B72:
	movl      $18, %ebx
	jmp       .L08056B59
.L08056B79:
	movl      $14, %ebx
	jmp       .L08056B59
.L08056B80:
	movl      $15, %ebx
	jmp       .L08056B59
.L08056B87:
	movl      $16, %ebx
	jmp       .L08056B59
.L08056B8E:
	movl      $12, %ebx
	jmp       .L08056B59
.L08056B95:
	movl      $9, %ebx
	jmp       .L08056B59
.L08056B9C:
	movl      $8, %ebx
	jmp       .L08056B59
.L08056BA3:
	movl      $7, %ebx
	jmp       .L08056B59
.L08056BAA:
	movl      $6, %ebx
	jmp       .L08056B59
.L08056BB1:
	movl      $11, %ebx
	jmp       .L08056B59
.L08056BB8:
	movl      $3, %ebx
	jmp       .L08056B59
.L08056BBF:
	movl      $5, %ebx
	jmp       .L08056B59
.L08056BC6:
	movl      $4, %ebx
	jmp       .L08056B59
	.size	_tr_flush_block, .-_tr_flush_block
# ----------------------
.L08056BCD:
	.p2align 4,,10
	.p2align 3
.L08056C04:
	movzbl    _length_code(%ebx), %ebx
	leal      -1(%ecx), %edx
	addl      $1, 5808(%eax)
	addw      $1, 1176(%eax,%ebx,4)
	cmpl      $255, %edx
	jbe       .L08056C58
.L08056C26:
	shrl      $7, %edx
	movzbl    _dist_code+256(%edx), %edx
.L08056C30:
	addw      $1, 2440(%eax,%edx,4)
.L08056C39:
	movl      5788(%eax), %ecx
	popl      %ebx
	popl      %esi
	leal      -1(%ecx), %edx
	cmpl      %edx, 5792(%eax)
	sete      %al
	movzbl    %al, %eax
	ret       
.L08056C51:
	.p2align 4,,10
	.p2align 3
.L08056C58:
	movzbl    _length_code+255(%ecx), %edx
	jmp       .L08056C30
.L08056C61:
	.p2align 4,,10
	.p2align 3
.L08056C68:
	addw      $1, 148(%eax,%ebx,4)
	jmp       .L08056C39
# ----------------------
.L08056C73:
	.p2align 4
# ----------------------
	.globl	zlibVersion
	.type	zlibVersion, @function
zlibVersion:
	movl      $.LC080587C4, %eax
	ret       
	.size	zlibVersion, .-zlibVersion
# ----------------------
.L08056C86:
	.p2align 4
# ----------------------
	.globl	zlibCompileFlags
	.type	zlibCompileFlags, @function
zlibCompileFlags:
	movl      $85, %eax
	ret       
	.size	zlibCompileFlags, .-zlibCompileFlags
# ----------------------
.L08056C96:
	.p2align 4
# ----------------------
	.globl	zError
	.type	zError, @function
zError:
	movl      $2, %eax
	subl      4(%esp), %eax
	movl      z_errmsg(,%eax,4), %eax
	ret       
	.size	zError, .-zError
# ----------------------
.L08056CB1:
	.p2align 4
# ----------------------
	.hidden	zcalloc
	.globl	zcalloc
	.type	zcalloc, @function
zcalloc:
	movl      12(%esp), %eax
	imull     8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       malloc
	.size	zcalloc, .-zcalloc
# ----------------------
.L08056CD2:
	.p2align 4
# ----------------------
	.hidden	zcfree
	.globl	zcfree
	.type	zcfree, @function
zcfree:
	movl      8(%esp), %eax
	movl      %eax, 4(%esp)
	jmp       free
	.size	zcfree, .-zcfree
# ----------------------
.L08056CED:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	adler32
	.type	adler32, @function
adler32:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $56, %esp
	movl      76(%esp), %eax
	movl      80(%esp), %edx
	movl      %eax, %edi
	movzwl    %ax, %ebx
	shrl      $16, %edi
	cmpl      $1, 84(%esp)
	movl      %edi, 44(%esp)
	je        .L080571B5
.L08056D16:
	testl     %edx, %edx
	je        .L080571E7
.L08056D1E:
	cmpl      $15, 84(%esp)
	ja        .L08056EDD
.L08056D29:
	movl      84(%esp), %ecx
	testl     %ecx, %ecx
	je        .L08056EA6
.L08056D35:
	movzbl    (%edx), %eax
	addl      %eax, %ebx
	addl      %ebx, 44(%esp)
	cmpl      $1, 84(%esp)
	movl      44(%esp), %esi
	je        .L08056EA6
.L08056D4D:
	movzbl    1(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $2, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056D68:
	movzbl    2(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $3, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056D83:
	movzbl    3(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $4, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056D9E:
	movzbl    4(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $5, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056DB9:
	movzbl    5(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $6, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056DD4:
	movzbl    6(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $7, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056DEF:
	movzbl    7(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $8, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E0A:
	movzbl    8(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $9, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E25:
	movzbl    9(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $10, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E3C:
	movzbl    10(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $11, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E53:
	movzbl    11(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $12, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E6A:
	movzbl    12(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $13, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E81:
	movzbl    13(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	cmpl      $14, 84(%esp)
	movl      %eax, %esi
	movl      %eax, 44(%esp)
	je        .L08056EA6
.L08056E98:
	movzbl    14(%edx), %eax
	addl      %eax, %ebx
	movl      %esi, %eax
	addl      %ebx, %eax
	movl      %eax, 44(%esp)
.L08056EA6:
	cmpl      $65520, %ebx
	jbe       .L08056EB4
.L08056EAE:
	subl      $65521, %ebx
.L08056EB4:
	movl      44(%esp), %eax
	movl      $-2146992015, %edx
	movl      44(%esp), %esi
	mull      %edx
	shrl      $15, %edx
	imull     $65521, %edx, %eax
	subl      %eax, %esi
	movl      %esi, %eax
	sall      $16, %eax
	orl       %ebx, %eax
.L08056ED5:
	addl      $56, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08056EDD:
	cmpl      $5551, 84(%esp)
	movl      %ebx, %ebp
	movl      %edx, %eax
	jbe       .L080571F1
.L08056EEF:
	subl      $5552, 84(%esp)
	leal      5552(%eax), %esi
	movl      %esi, 48(%esp)
	.p2align 4,,10
	.p2align 3
.L08056F08:
	movzbl    (%eax), %edx
	addl      $16, %eax
	leal      (%ebp,%edx), %edi
	movzbl    -15(%eax), %edx
	movl      %edi, (%esp)
	addl      %edi, %edx
	movl      %edx, %edi
	movzbl    -14(%eax), %edx
	movl      %edi, 4(%esp)
	movl      %edx, %esi
	movzbl    -13(%eax), %edx
	addl      %edi, %esi
	movl      %esi, 8(%esp)
	movl      %edx, %ebx
	movzbl    -12(%eax), %edx
	addl      %esi, %ebx
	movl      %ebx, 12(%esp)
	movl      %edx, %ecx
	movzbl    -11(%eax), %edx
	addl      %ebx, %ecx
	movl      %ecx, 16(%esp)
	movl      %edx, %ebp
	movzbl    -10(%eax), %edx
	addl      %ecx, %ebp
	movl      %ebp, 20(%esp)
	addl      %ebp, %edx
	movzbl    -1(%eax), %ebp
	movl      %edx, %edi
	movzbl    -9(%eax), %edx
	movl      %edi, 24(%esp)
	addl      %edi, %edx
	movzbl    -5(%eax), %edi
	movl      %edx, %esi
	movzbl    -8(%eax), %edx
	movl      %esi, 28(%esp)
	addl      %esi, %edx
	movzbl    -4(%eax), %esi
	movl      %edx, %ebx
	movzbl    -7(%eax), %edx
	movl      %ebx, 32(%esp)
	addl      %ebx, %edx
	movzbl    -3(%eax), %ebx
	movl      %edx, %ecx
	movzbl    -6(%eax), %edx
	movl      %ecx, 36(%esp)
	addl      %ecx, %edx
	movzbl    -2(%eax), %ecx
	addl      %edx, %edi
	movl      %edx, 40(%esp)
	movl      4(%esp), %edx
	addl      (%esp), %edx
	addl      %edi, %esi
	addl      8(%esp), %edx
	addl      %esi, %ebx
	addl      12(%esp), %edx
	addl      %ebx, %ecx
	addl      16(%esp), %edx
	addl      %ecx, %ebp
	addl      20(%esp), %edx
	addl      24(%esp), %edx
	addl      28(%esp), %edx
	addl      32(%esp), %edx
	addl      36(%esp), %edx
	addl      40(%esp), %edx
	addl      %edi, %edx
	addl      %esi, %edx
	addl      %edx, %ebx
	addl      %ebx, %ecx
	addl      %ebp, %ecx
	addl      %ecx, 44(%esp)
	cmpl      48(%esp), %eax
	jne       .L08056F08
.L08056FEC:
	movl      $-2146992015, %eax
	movl      44(%esp), %edi
	mull      %ebp
	shrl      $15, %edx
	imull     $65521, %edx, %eax
	subl      %eax, %ebp
	movl      $-2146992015, %eax
	mull      %edi
	shrl      $15, %edx
	imull     $65521, %edx, %eax
	subl      %eax, %edi
	cmpl      $5551, 84(%esp)
	movl      48(%esp), %eax
	movl      %edi, 44(%esp)
	ja        .L08056EEF
.L0805702A:
	movl      84(%esp), %eax
	movl      %ebp, %ebx
	testl     %eax, %eax
	je        .L080571A4
.L08057038:
	cmpl      $15, 84(%esp)
	jbe       .L080571FA
.L08057043:
	movl      84(%esp), %eax
	movl      48(%esp), %edx
	movl      %eax, 4(%esp)
.L0805704F:
	movzbl    (%edx), %eax
	subl      $16, 4(%esp)
	addl      $16, %edx
	leal      (%ebx,%eax), %esi
	movzbl    -15(%edx), %eax
	movl      %esi, 8(%esp)
	addl      %esi, %eax
	movl      %eax, %esi
	movzbl    -14(%edx), %eax
	movl      %esi, 12(%esp)
	movl      %eax, %edi
	movzbl    -13(%edx), %eax
	addl      %esi, %edi
	movl      %edi, 16(%esp)
	movl      %eax, %ecx
	movzbl    -12(%edx), %eax
	addl      %edi, %ecx
	movzbl    -7(%edx), %edi
	movl      %ecx, 20(%esp)
	movl      %eax, %ebx
	movzbl    -11(%edx), %eax
	addl      %ecx, %ebx
	movzbl    -5(%edx), %ecx
	movl      %ebx, 24(%esp)
	movl      %eax, %ebp
	movzbl    -10(%edx), %eax
	addl      %ebx, %ebp
	movl      %ebp, 28(%esp)
	movl      %eax, %esi
	movzbl    -9(%edx), %eax
	addl      %ebp, %esi
	movzbl    -8(%edx), %ebp
	movl      %esi, 32(%esp)
	addl      %esi, %eax
	movzbl    -6(%edx), %esi
	addl      %eax, %ebp
	movl      %eax, 36(%esp)
	movzbl    -4(%edx), %eax
	addl      %ebp, %edi
	addl      %edi, %esi
	addl      %esi, %ecx
	leal      (%ecx,%eax), %ebx
	movzbl    -3(%edx), %eax
	movl      %ebx, (%esp)
	movl      (%esp), %ebx
	addl      %eax, %ebx
	movzbl    -2(%edx), %eax
	movl      %ebx, 40(%esp)
	addl      %ebx, %eax
	movzbl    -1(%edx), %ebx
	movl      %eax, 52(%esp)
	addl      %eax, %ebx
	movl      12(%esp), %eax
	addl      8(%esp), %eax
	addl      16(%esp), %eax
	addl      20(%esp), %eax
	addl      24(%esp), %eax
	addl      28(%esp), %eax
	addl      32(%esp), %eax
	addl      36(%esp), %eax
	addl      %ebp, %eax
	addl      %edi, %eax
	addl      %esi, %eax
	addl      %ecx, %eax
	addl      (%esp), %eax
	addl      40(%esp), %eax
	addl      52(%esp), %eax
	addl      %ebx, %eax
	addl      %eax, 44(%esp)
	cmpl      $15, 4(%esp)
	ja        .L0805704F
.L08057136:
	movl      84(%esp), %eax
	movl      48(%esp), %esi
	movl      84(%esp), %edx
	subl      $16, %eax
	andl      $-16, %eax
	andl      $15, %edx
	leal      16(%esi,%eax), %eax
	testl     %edx, %edx
	movl      %eax, 48(%esp)
	leal      -1(%edx), %eax
	je        .L0805717B
.L0805715A:
	movl      48(%esp), %edi
	movl      44(%esp), %ecx
	leal      1(%edi,%eax), %edx
	movl      %edi, %eax
.L08057168:
	addl      $1, %eax
	movzbl    -1(%eax), %esi
	addl      %esi, %ebx
	addl      %ebx, %ecx
	cmpl      %edx, %eax
	jne       .L08057168
.L08057177:
	movl      %ecx, 44(%esp)
.L0805717B:
	movl      %ebx, %eax
	movl      $-2146992015, %ecx
	mull      %ecx
	movl      %edx, %eax
	shrl      $15, %eax
	imull     $65521, %eax, %eax
	subl      %eax, %ebx
	movl      44(%esp), %eax
	mull      %ecx
	shrl      $15, %edx
	imull     $65521, %edx, %eax
	subl      %eax, 44(%esp)
.L080571A4:
	movl      44(%esp), %eax
	addl      $56, %esp
	sall      $16, %eax
	orl       %ebx, %eax
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080571B5:
	movzbl    (%edx), %eax
	addl      %ebx, %eax
	cmpl      $65520, %eax
	jbe       .L080571C6
.L080571C1:
	subl      $65521, %eax
.L080571C6:
	movl      44(%esp), %edx
	addl      %eax, %edx
	cmpl      $65520, %edx
	jbe       .L080571DA
.L080571D4:
	subl      $65521, %edx
.L080571DA:
	addl      $56, %esp
	sall      $16, %edx
	popl      %ebx
	orl       %edx, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080571E7:
	movl      $1, %eax
	jmp       .L08056ED5
.L080571F1:
	movl      %edx, 48(%esp)
	jmp       .L08057043
.L080571FA:
	movl      84(%esp), %eax
	subl      $1, %eax
	jmp       .L0805715A
	.size	adler32, .-adler32
# ----------------------
.L08057206:
	.p2align 4
# ----------------------
	.globl	adler32_combine
	.type	adler32_combine, @function
adler32_combine:
	pushl     %edi
	pushl     %esi
	movl      $-1, %eax
	pushl     %ebx
	movl      24(%esp), %ecx
	movl      %ecx, %ebx
	sarl      $31, %ebx
	testl     %ebx, %ebx
	js        .L080572AA
.L08057229:
	pushl     $0
	pushl     $65521
	pushl     %ebx
	pushl     %ecx
	call      __moddi3
.L08057237:
	addl      $16, %esp
	movzwl    16(%esp), %esi
	movl      16(%esp), %ecx
	movl      20(%esp), %edx
	movl      %eax, %edi
	movzwl    20(%esp), %ebx
	shrl      $16, %ecx
	imull     %esi, %edi
	shrl      $16, %edx
	addl      %edx, %ecx
	movl      $-2146992015, %edx
	subl      %eax, %ecx
	movl      %edi, %eax
	mull      %edx
	shrl      $15, %edx
	imull     $65521, %edx, %edx
	subl      %edx, %edi
	movl      $65520, %edx
	addl      %edi, %ecx
	addl      %esi, %ebx
	leal      65521(%ecx), %eax
	je        .L08057291
.L08057280:
	leal      -1(%ebx), %edx
	cmpl      $65520, %edx
	jbe       .L08057291
.L0805728B:
	leal      -65522(%ebx), %edx
.L08057291:
	cmpl      $131041, %eax
	jbe       .L0805729E
.L08057298:
	leal      -65521(%ecx), %eax
.L0805729E:
	cmpl      $65520, %eax
	ja        .L080572B0
.L080572A5:
	sall      $16, %eax
	orl       %edx, %eax
.L080572AA:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L080572AE:
	.p2align 4,,10
	.p2align 3
.L080572B0:
	subl      $65521, %eax
	jmp       .L080572A5
	.size	adler32_combine, .-adler32_combine
# ----------------------
.L080572B7:
	.p2align 4
# ----------------------
	.globl	adler32_combine64
	.type	adler32_combine64, @function
adler32_combine64:
	pushl     %edi
	pushl     %esi
	movl      $-1, %eax
	pushl     %ebx
	movl      28(%esp), %ebx
	movl      24(%esp), %ecx
	testl     %ebx, %ebx
	js        .L08057359
.L080572D8:
	pushl     $0
	pushl     $65521
	pushl     %ebx
	pushl     %ecx
	call      __moddi3
.L080572E6:
	addl      $16, %esp
	movzwl    16(%esp), %esi
	movl      16(%esp), %ecx
	movl      $-2146992015, %edx
	movzwl    20(%esp), %ebx
	shrl      $16, %ecx
	movl      %esi, %edi
	subl      %eax, %ecx
	imull     %eax, %edi
	movl      20(%esp), %eax
	shrl      $16, %eax
	addl      %eax, %ecx
	movl      %edi, %eax
	mull      %edx
	shrl      $15, %edx
	imull     $65521, %edx, %edx
	subl      %edx, %edi
	movl      $65520, %edx
	addl      %edi, %ecx
	addl      %esi, %ebx
	leal      65521(%ecx), %eax
	je        .L08057340
.L0805732F:
	leal      -1(%ebx), %edx
	cmpl      $65520, %edx
	jbe       .L08057340
.L0805733A:
	leal      -65522(%ebx), %edx
.L08057340:
	cmpl      $131041, %eax
	jbe       .L0805734D
.L08057347:
	leal      -65521(%ecx), %eax
.L0805734D:
	cmpl      $65520, %eax
	ja        .L08057360
.L08057354:
	sall      $16, %eax
	orl       %edx, %eax
.L08057359:
	popl      %ebx
	popl      %esi
	popl      %edi
	ret       
.L0805735D:
	.p2align 4,,10
	.p2align 3
.L08057360:
	subl      $65521, %eax
	jmp       .L08057354
	.size	adler32_combine64, .-adler32_combine64
# ----------------------
.L08057367:
	.p2align 4
# ----------------------
	.local	crc32_combine_
	.type	crc32_combine_, @function
crc32_combine_:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $268, %esp
	movl      292(%esp), %edi
	movl      %edx, 4(%esp)
	movl      288(%esp), %esi
	cmpl      $0, %edi
	jl        .L0805750A
.L08057395:
	jle       .L08057515
.L0805739B:
	leal      140(%esp), %edx
	leal      264(%esp), %ebx
	movl      $-306674912, 136(%esp)
	movl      $1, %ecx
.L080573B9:
	movl      %ecx, (%edx)
	addl      $4, %edx
	addl      %ecx, %ecx
	cmpl      %ebx, %edx
	jne       .L080573B9
.L080573C4:
	xorl      %ebp, %ebp
.L080573C6:
	movl      136(%esp,%ebp,4), %edx
	xorl      %ebx, %ebx
	testl     %edx, %edx
	je        .L080573EE
.L080573D3:
	leal      136(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L080573E0:
	testb     $1, %dl
	je        .L080573E7
.L080573E5:
	xorl      (%ecx), %ebx
.L080573E7:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L080573E0
.L080573EE:
	movl      %ebx, 8(%esp,%ebp,4)
	addl      $1, %ebp
	cmpl      $32, %ebp
	jne       .L080573C6
.L080573FA:
	xorw      %bp, %bp
.L080573FD:
	movl      8(%esp,%ebp,4), %edx
	xorl      %ebx, %ebx
	testl     %edx, %edx
	je        .L0805741E
.L08057407:
	leal      8(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L08057410:
	testb     $1, %dl
	je        .L08057417
.L08057415:
	xorl      (%ecx), %ebx
.L08057417:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L08057410
.L0805741E:
	movl      %ebx, 136(%esp,%ebp,4)
	addl      $1, %ebp
	cmpl      $32, %ebp
	jne       .L080573FD
.L0805742D:
	xorl      %ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L08057430:
	movl      136(%esp,%ebp,4), %edx
	xorl      %ebx, %ebx
	testl     %edx, %edx
	je        .L08057456
.L0805743D:
	leal      136(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L08057448:
	testb     $1, %dl
	je        .L0805744F
.L0805744D:
	xorl      (%ecx), %ebx
.L0805744F:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L08057448
.L08057456:
	movl      %ebx, 8(%esp,%ebp,4)
	addl      $1, %ebp
	cmpl      $32, %ebp
	jne       .L08057430
.L08057462:
	movl      %esi, %edx
	andl      $1, %edx
	testl     %edx, %edx
	je        .L0805748E
.L0805746B:
	testl     %eax, %eax
	je        .L0805748E
.L0805746F:
	leal      8(%esp), %ecx
	movl      %eax, %edx
	xorl      %eax, %eax
	.p2align 4
.L08057480:
	testb     $1, %dl
	je        .L08057487
.L08057485:
	xorl      (%ecx), %eax
.L08057487:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L08057480
.L0805748E:
	shrdl     $1, %edi, %esi
	sarl      $1, %edi
	movl      %edi, %ebx
	orl       %esi, %ebx
	je        .L08057506
.L0805749A:
	xorl      %ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L080574A0:
	movl      8(%esp,%ebp,4), %edx
	xorl      %ebx, %ebx
	testl     %edx, %edx
	je        .L080574BE
.L080574AA:
	leal      8(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L080574B0:
	testb     $1, %dl
	je        .L080574B7
.L080574B5:
	xorl      (%ecx), %ebx
.L080574B7:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L080574B0
.L080574BE:
	movl      %ebx, 136(%esp,%ebp,4)
	addl      $1, %ebp
	cmpl      $32, %ebp
	jne       .L080574A0
.L080574CD:
	movl      %esi, %edx
	andl      $1, %edx
	testl     %edx, %edx
	je        .L080574F6
.L080574D6:
	testl     %eax, %eax
	je        .L080574F6
.L080574DA:
	leal      136(%esp), %ecx
	movl      %eax, %edx
	xorl      %eax, %eax
	.p2align 4,,10
	.p2align 3
.L080574E8:
	testb     $1, %dl
	je        .L080574EF
.L080574ED:
	xorl      (%ecx), %eax
.L080574EF:
	addl      $4, %ecx
	shrl      $1, %edx
	jne       .L080574E8
.L080574F6:
	shrdl     $1, %edi, %esi
	sarl      $1, %edi
	movl      %edi, %ebx
	orl       %esi, %ebx
	jne       .L0805742D
.L08057506:
	xorl      4(%esp), %eax
.L0805750A:
	addl      $268, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08057515:
	cmpl      $0, %esi
	ja        .L0805739B
.L0805751E:
	addl      $268, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
	.size	crc32_combine_, .-crc32_combine_
# ----------------------
.L08057529:
	.p2align 4
# ----------------------
	.globl	get_crc_table
	.type	get_crc_table, @function
get_crc_table:
	movl      $crc_table, %eax
	ret       
	.size	get_crc_table, .-get_crc_table
# ----------------------
.L08057536:
	.p2align 4
# ----------------------
	.globl	crc32
	.type	crc32, @function
crc32:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      24(%esp), %ebx
	testl     %ebx, %ebx
	je        .L08057838
.L08057550:
	movl      28(%esp), %ecx
	movl      20(%esp), %eax
	testl     %ecx, %ecx
	notl      %eax
	je        .L0805758F
.L0805755E:
	testb     $3, %bl
	je        .L080575A4
.L08057563:
	movl      28(%esp), %ecx
	jmp       .L08057575
.L08057569:
	.p2align 4
.L08057570:
	testb     $3, %bl
	je        .L080575A0
.L08057575:
	addl      $1, %ebx
	movl      %eax, %edx
	shrl      $8, %eax
	xorb      -1(%ebx), %dl
	movzbl    %dl, %edx
	xorl      crc_table(,%edx,4), %eax
	subl      $1, %ecx
	jne       .L08057570
.L0805758F:
	popl      %ebx
	notl      %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08057596:
	.p2align 4
.L080575A0:
	movl      %ecx, 28(%esp)
.L080575A4:
	cmpl      $31, 28(%esp)
	jbe       .L08057779
.L080575AF:
	movl      28(%esp), %esi
	movl      %ebx, %ecx
	movl      %ebx, 24(%esp)
	.p2align 4
.L080575C0:
	xorl      (%ecx), %eax
	movl      %eax, %ebp
	movzbl    %al, %edi
	movl      %eax, %edx
	shrl      $24, %ebp
	movl      crc_table+3072(,%edi,4), %edi
	shrl      $16, %edx
	xorl      crc_table(,%ebp,4), %edi
	movzbl    %ah, %eax
	movzbl    %dl, %edx
	xorl      4(%ecx), %edi
	xorl      crc_table+2048(,%eax,4), %edi
	movl      crc_table+1024(,%edx,4), %eax
	xorl      %edi, %eax
	movl      %eax, %edx
	movl      %eax, %ebp
	shrl      $16, %edx
	shrl      $24, %ebp
	movzbl    %dl, %edi
	movzbl    %al, %edx
	movzbl    %ah, %eax
	movl      crc_table+3072(,%edx,4), %edx
	xorl      crc_table(,%ebp,4), %edx
	xorl      8(%ecx), %edx
	xorl      crc_table+2048(,%eax,4), %edx
	xorl      crc_table+1024(,%edi,4), %edx
	movl      %edx, %eax
	movl      %edx, %ebp
	shrl      $16, %eax
	shrl      $24, %ebp
	movzbl    %al, %edi
	movzbl    %dl, %eax
	movzbl    %dh, %edx
	movl      crc_table+3072(,%eax,4), %eax
	xorl      crc_table(,%ebp,4), %eax
	xorl      12(%ecx), %eax
	xorl      crc_table+2048(,%edx,4), %eax
	xorl      crc_table+1024(,%edi,4), %eax
	movl      %eax, %edx
	movl      %eax, %ebp
	shrl      $16, %edx
	shrl      $24, %ebp
	movzbl    %dl, %edi
	movzbl    %al, %edx
	movzbl    %ah, %eax
	movl      crc_table+3072(,%edx,4), %edx
	xorl      crc_table(,%ebp,4), %edx
	xorl      16(%ecx), %edx
	xorl      crc_table+2048(,%eax,4), %edx
	xorl      crc_table+1024(,%edi,4), %edx
	movl      %edx, %eax
	movl      %edx, %ebp
	shrl      $16, %eax
	shrl      $24, %ebp
	movzbl    %al, %edi
	movzbl    %dl, %eax
	movzbl    %dh, %edx
	movl      crc_table+3072(,%eax,4), %eax
	xorl      crc_table(,%ebp,4), %eax
	xorl      20(%ecx), %eax
	xorl      crc_table+2048(,%edx,4), %eax
	xorl      crc_table+1024(,%edi,4), %eax
	movl      %eax, %ebp
	movl      %eax, %edx
	movzbl    %al, %edi
	shrl      $24, %ebp
	shrl      $16, %edx
	movl      crc_table+3072(,%edi,4), %edi
	xorl      crc_table(,%ebp,4), %edi
	movzbl    %ah, %eax
	movzbl    %dl, %edx
	xorl      24(%ecx), %edi
	movl      crc_table+1024(,%edx,4), %ebx
	addl      $32, %ecx
	xorl      crc_table+2048(,%eax,4), %edi
	subl      $32, %esi
	xorl      %edi, %ebx
	movl      %ebx, %ebp
	movzbl    %bl, %edx
	movl      %ebx, %eax
	shrl      $24, %ebp
	movl      crc_table+3072(,%edx,4), %edx
	shrl      $16, %eax
	xorl      crc_table(,%ebp,4), %edx
	movzbl    %bh, %edi
	movzbl    %al, %eax
	xorl      -4(%ecx), %edx
	xorl      crc_table+2048(,%edi,4), %edx
	xorl      crc_table+1024(,%eax,4), %edx
	movl      %edx, %eax
	movzbl    %dl, %ebp
	shrl      $16, %eax
	movzbl    %al, %edi
	movl      %edx, %eax
	movzbl    %dh, %edx
	shrl      $24, %eax
	movl      crc_table(,%eax,4), %eax
	xorl      crc_table+3072(,%ebp,4), %eax
	xorl      crc_table+2048(,%edx,4), %eax
	xorl      crc_table+1024(,%edi,4), %eax
	cmpl      $31, %esi
	ja        .L080575C0
.L08057762:
	movl      28(%esp), %esi
	movl      24(%esp), %ebx
	andl      $31, 28(%esp)
	leal      -32(%esi), %edx
	andl      $-32, %edx
	leal      32(%ebx,%edx), %ebx
.L08057779:
	cmpl      $3, 28(%esp)
	jbe       .L0805783F
.L08057784:
	movl      28(%esp), %esi
	leal      -4(%esi), %edx
	andl      $-4, %edx
	leal      4(%edx,%ebx), %ecx
	.p2align 4,,10
	.p2align 3
.L08057798:
	addl      $4, %ebx
	xorl      -4(%ebx), %eax
	movl      %eax, %edx
	movl      %eax, %esi
	shrl      $16, %edx
	shrl      $24, %esi
	movzbl    %dl, %edi
	movzbl    %al, %edx
	movl      crc_table(,%esi,4), %esi
	xorl      crc_table+3072(,%edx,4), %esi
	movzbl    %ah, %edx
	movl      crc_table+2048(,%edx,4), %eax
	xorl      %esi, %eax
	xorl      crc_table+1024(,%edi,4), %eax
	cmpl      %ecx, %ebx
	jne       .L08057798
.L080577D3:
	andl      $3, 28(%esp)
.L080577D8:
	movl      28(%esp), %edx
	testl     %edx, %edx
	je        .L0805758F
.L080577E4:
	movl      %eax, %edx
	xorb      (%ecx), %dl
	shrl      $8, %eax
	movzbl    %dl, %edx
	xorl      crc_table(,%edx,4), %eax
	cmpl      $1, 28(%esp)
	je        .L0805758F
.L08057800:
	movl      %eax, %edx
	xorb      1(%ecx), %dl
	shrl      $8, %eax
	movzbl    %dl, %edx
	xorl      crc_table(,%edx,4), %eax
	cmpl      $2, 28(%esp)
	je        .L0805758F
.L0805781D:
	movl      %eax, %edx
	xorb      2(%ecx), %dl
	shrl      $8, %eax
	movzbl    %dl, %edx
	xorl      crc_table(,%edx,4), %eax
	jmp       .L0805758F
.L08057834:
	.p2align 4,,10
	.p2align 3
.L08057838:
	popl      %ebx
	xorl      %eax, %eax
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L0805783F:
	movl      %ebx, %ecx
	jmp       .L080577D8
	.size	crc32, .-crc32
# ----------------------
.L08057843:
	.p2align 4
# ----------------------
	.globl	crc32_combine
	.type	crc32_combine, @function
crc32_combine:
	pushl     %ebx
	movl      16(%esp), %ecx
	movl      8(%esp), %eax
	movl      12(%esp), %edx
	movl      %ecx, 8(%esp)
	sarl      $31, %ecx
	movl      %ecx, 12(%esp)
	popl      %ebx
	jmp       crc32_combine_
	.size	crc32_combine, .-crc32_combine
# ----------------------
.L0805786E:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.globl	crc32_combine64
	.type	crc32_combine64, @function
crc32_combine64:
	pushl     %ebx
	movl      16(%esp), %ecx
	movl      20(%esp), %ebx
	movl      8(%esp), %eax
	movl      12(%esp), %edx
	movl      %ecx, 8(%esp)
	movl      %ebx, 12(%esp)
	popl      %ebx
	jmp       crc32_combine_
	.size	crc32_combine64, .-crc32_combine64
# ----------------------
.L0805788F:
	.p2align 4,,10
	.p2align 3
# ----------------------
	.hidden	inflate_fast
	.globl	inflate_fast
	.type	inflate_fast, @function
inflate_fast:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $144, %esp
	movl      164(%esp), %eax
	movl      28(%eax), %eax
	movl      %eax, %esi
	movl      %eax, 12(%esp)
	movl      164(%esp), %eax
	movl      (%eax), %eax
	subl      $1, %eax
	movl      %eax, %edi
	movl      %eax, 4(%esp)
	movl      164(%esp), %eax
	movl      4(%eax), %eax
	leal      -5(%edi,%eax), %eax
	movl      %eax, 16(%esp)
	movl      164(%esp), %eax
	movl      12(%eax), %eax
	movl      %eax, 60(%esp)
	subl      $1, %eax
	movl      %eax, %ebx
	movl      %eax, 8(%esp)
	movl      164(%esp), %eax
	movl      16(%eax), %eax
	movl      %eax, %edi
	subl      168(%esp), %edi
	leal      -257(%ebx,%eax), %eax
	movl      %eax, 20(%esp)
	movl      %esi, %eax
	movl      56(%eax), %ebp
	movl      %edi, %ecx
	movl      %edi, 64(%esp)
	movl      %ebx, %edi
	addl      %ecx, %edi
	movl      %edi, 48(%esp)
	movl      40(%esi), %edi
	movl      44(%esi), %esi
	movl      %edi, 36(%esp)
	movl      %esi, 52(%esp)
	movl      48(%eax), %esi
	movl      %esi, %ebx
	movl      %esi, 44(%esp)
	movl      52(%eax), %esi
	movl      %esi, 28(%esp)
	movl      60(%eax), %edi
	movl      %eax, %esi
	movl      76(%eax), %ecx
	movl      %ecx, (%esp)
	movl      80(%eax), %ecx
	movl      %ecx, 32(%esp)
	movl      84(%eax), %ecx
	movl      $1, %eax
	movl      %eax, %edx
	sall      %cl, %edx
	leal      -1(%edx), %ecx
	movl      %ecx, 24(%esp)
	movl      88(%esi), %ecx
	movl      28(%esp), %esi
	sall      %cl, %eax
	leal      -1(%eax), %ecx
	leal      -1(%esi), %eax
	movl      %ebx, %esi
	leal      -1(%esi), %edx
	movl      %ecx, 40(%esp)
	movl      %eax, 56(%esp)
	movl      %eax, %ecx
	leal      -4(%ebx), %eax
	movl      %edx, 92(%esp)
	shrl      $2, %eax
	leal      1(%eax), %ebx
	leal      0(,%ebx,4), %eax
	movl      %ebx, 100(%esp)
	movl      %eax, 96(%esp)
	movl      %eax, %ebx
	movl      %esi, %eax
	subl      %ebx, %eax
	movl      %eax, 88(%esp)
	movl      %ecx, %eax
	movl      %esi, %ecx
	addl      %ebx, %eax
	movl      36(%esp), %ebx
	leal      1(%esi), %esi
	movl      %eax, 84(%esp)
	movl      %esi, 72(%esp)
	addl      %ecx, %ebx
	leal      1(%ebx), %eax
	movl      %ebx, 76(%esp)
	movl      %eax, 80(%esp)
	movl      $4, %eax
	subl      %ecx, %eax
	movl      %eax, 104(%esp)
.L080579CA:
	cmpl      $14, %edi
	ja        .L080579F4
.L080579CF:
	movl      4(%esp), %esi
	movl      %edi, %ecx
	movzbl    1(%esi), %edx
	movzbl    2(%esi), %eax
	sall      %cl, %edx
	leal      8(%edi), %ecx
	addl      $16, %edi
	sall      %cl, %eax
	addl      %eax, %edx
	movl      %esi, %eax
	addl      $2, %eax
	addl      %edx, %ebp
	movl      %eax, 4(%esp)
.L080579F4:
	movl      24(%esp), %eax
	movl      (%esp), %esi
	andl      %ebp, %eax
	leal      (%esi,%eax,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movl      %edx, %ecx
	subl      %edx, %edi
	shrl      %cl, %ebp
	testb     %bl, %bl
	je        .L08057A6A
.L08057A15:
	testb     $16, %bl
	jne       .L08057B08
.L08057A1E:
	testb     $64, %bl
	jne       .L08057DF8
.L08057A27:
	movl      $1, %esi
	jmp       .L08057A42
.L08057A2E:
	.p2align 4,,10
	.p2align 3
.L08057A30:
	testb     $16, %bl
	jne       .L08057B08
.L08057A39:
	testb     $64, %bl
	jne       .L08057DF8
.L08057A42:
	movl      %ebx, %ecx
	movl      %esi, %edx
	sall      %cl, %edx
	subl      $1, %edx
	andl      %ebp, %edx
	addl      %eax, %edx
	movl      (%esp), %eax
	leal      (%eax,%edx,4), %eax
	movzbl    1(%eax), %edx
	movzbl    (%eax), %ebx
	movzwl    2(%eax), %eax
	movl      %edx, %ecx
	subl      %edx, %edi
	shrl      %cl, %ebp
	testb     %bl, %bl
	jne       .L08057A30
.L08057A6A:
	movl      8(%esp), %esi
	movb      %al, 1(%esi)
	leal      1(%esi), %eax
	movl      %eax, 8(%esp)
.L08057A78:
	movl      20(%esp), %esi
	cmpl      %esi, 8(%esp)
	jae       .L08057A90
.L08057A82:
	movl      16(%esp), %esi
	cmpl      %esi, 4(%esp)
	jb        .L080579CA
.L08057A90:
	movl      4(%esp), %eax
	movl      %edi, %edx
	movl      164(%esp), %esi
	shrl      $3, %edx
	subl      %edx, %eax
	sall      $3, %edx
	subl      %edx, %edi
	leal      1(%eax), %ebx
	movl      $1, %edx
	movl      %edi, %ecx
	movl      164(%esp), %edi
	sall      %cl, %edx
	subl      $1, %edx
	movl      %ebx, (%edi)
	movl      8(%esp), %edi
	andl      %ebp, %edx
	leal      1(%edi), %ebx
	movl      %ebx, 12(%esi)
	movl      16(%esp), %esi
	subl      %eax, %esi
	movl      %esi, %eax
	movl      164(%esp), %esi
	addl      $5, %eax
	movl      %eax, 4(%esi)
	movl      20(%esp), %eax
	subl      %edi, %eax
	addl      $257, %eax
	movl      %eax, 16(%esi)
	movl      12(%esp), %eax
	movl      %edx, 56(%eax)
	movl      %ecx, 60(%eax)
	addl      $144, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L08057B03:
	.p2align 4,,10
	.p2align 3
.L08057B08:
	andl      $15, %ebx
	movzwl    %ax, %esi
	je        .L08057B47
.L08057B10:
	movzbl    %bl, %edx
	cmpl      %edi, %edx
	jbe       .L08057B33
.L08057B17:
	movl      4(%esp), %eax
	movl      %edi, %ecx
	addl      $8, %edi
	movzbl    1(%eax), %eax
	sall      %cl, %eax
	addl      %eax, %ebp
	movl      4(%esp), %eax
	addl      $1, %eax
	movl      %eax, 4(%esp)
.L08057B33:
	movl      %ebx, %ecx
	movl      $1, %eax
	subl      %edx, %edi
	sall      %cl, %eax
	subl      $1, %eax
	andl      %ebp, %eax
	shrl      %cl, %ebp
	addl      %eax, %esi
.L08057B47:
	cmpl      $14, %edi
	jbe       .L08057E10
.L08057B50:
	movl      40(%esp), %eax
	movl      32(%esp), %ebx
	andl      %ebp, %eax
	leal      (%ebx,%eax,4), %eax
	movzbl    1(%eax), %ebx
	movzbl    (%eax), %edx
	movzwl    2(%eax), %eax
	movl      %ebx, %ecx
	subl      %ebx, %edi
	shrl      %cl, %ebp
	testb     $16, %dl
	jne       .L08057BC8
.L08057B73:
	testb     $64, %dl
	jne       .L08057E60
.L08057B7C:
	movl      %esi, 68(%esp)
	movl      32(%esp), %esi
	jmp       .L08057B99
.L08057B86:
	.p2align 4
.L08057B90:
	testb     $64, %dl
	jne       .L08057E60
.L08057B99:
	movl      %edx, %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %ebx, %edx
	subl      $1, %edx
	andl      %ebp, %edx
	addl      %eax, %edx
	leal      (%esi,%edx,4), %eax
	movzbl    1(%eax), %ebx
	movzbl    (%eax), %edx
	movzwl    2(%eax), %eax
	movl      %ebx, %ecx
	subl      %ebx, %edi
	shrl      %cl, %ebp
	testb     $16, %dl
	je        .L08057B90
.L08057BC4:
	movl      68(%esp), %esi
.L08057BC8:
	andl      $15, %edx
	movl      %eax, 108(%esp)
	movzbl    %dl, %ebx
	cmpl      %edi, %ebx
	jbe       .L08057BF6
.L08057BD6:
	movl      4(%esp), %eax
	movl      %edi, %ecx
	movzbl    1(%eax), %eax
	sall      %cl, %eax
	leal      8(%edi), %ecx
	addl      %eax, %ebp
	cmpl      %ecx, %ebx
	ja        .L0805812C
.L08057BEF:
	addl      $1, 4(%esp)
	movl      %ecx, %edi
.L08057BF6:
	movl      %edx, %ecx
	movl      $1, %eax
	subl      %ebx, %edi
	sall      %cl, %eax
	subl      $1, %eax
	andl      %ebp, %eax
	shrl      %cl, %ebp
	movl      8(%esp), %ecx
	movl      %eax, 112(%esp)
	addl      108(%esp), %eax
	subl      48(%esp), %ecx
	movl      %eax, 68(%esp)
	cmpl      %ecx, 68(%esp)
	jbe       .L08057E7D
.L08057C26:
	movl      68(%esp), %ebx
	subl      %ecx, %ebx
	cmpl      %ebx, 52(%esp)
	jae       .L08057C44
.L08057C32:
	movl      12(%esp), %eax
	movl      7104(%eax), %edx
	testl     %edx, %edx
	jne       .L080582B0
.L08057C44:
	movl      44(%esp), %eax
	testl     %eax, %eax
	jne       .L08057EF0
.L08057C50:
	movl      36(%esp), %eax
	subl      %ebx, %eax
	addl      56(%esp), %eax
	cmpl      %ebx, %esi
	jbe       .L08057D92
.L08057C62:
	movl      36(%esp), %ecx
	movl      8(%esp), %edx
	subl      %ebx, %esi
	addl      $1, %ecx
	movl      %ecx, 120(%esp)
	movl      60(%esp), %ecx
	addl      64(%esp), %ecx
	subl      %edx, %ecx
	addl      $1, %edx
	movl      %edx, 124(%esp)
	movl      108(%esp), %edx
	movl      %ecx, 128(%esp)
	addl      %ecx, %edx
	movl      112(%esp), %ecx
	addl      %edx, %ecx
	movl      120(%esp), %edx
	subl      %ecx, %edx
	addl      28(%esp), %edx
	movl      %edx, 116(%esp)
	movl      8(%esp), %edx
	addl      $5, %edx
	cmpl      %edx, 116(%esp)
	movl      36(%esp), %edx
	setae     132(%esp)
	addl      $5, %edx
	subl      %ecx, %edx
	addl      28(%esp), %edx
	cmpl      %edx, 124(%esp)
	setae     %dl
	orb       132(%esp), %dl
	cmpl      $9, %ebx
	seta      %cl
	testb     %cl, %dl
	je        .L08058252
.L08057CE1:
	movl      120(%esp), %edx
	subl      128(%esp), %edx
	subl      108(%esp), %edx
	subl      112(%esp), %edx
	addl      28(%esp), %edx
	orl       124(%esp), %edx
	andl      $3, %edx
	jne       .L08058252
.L08057D05:
	leal      -4(%ebx), %edx
	movl      %eax, 112(%esp)
	shrl      $2, %edx
	leal      1(%edx), %ecx
	xorl      %edx, %edx
	movl      %ecx, 108(%esp)
	sall      $2, %ecx
	movl      %ecx, 120(%esp)
	movl      8(%esp), %ecx
.L08057D23:
	movl      116(%esp), %eax
	movl      (%eax,%edx,4), %eax
	movl      %eax, 1(%ecx,%edx,4)
	addl      $1, %edx
	cmpl      108(%esp), %edx
	jb        .L08057D23
.L08057D37:
	movl      120(%esp), %ecx
	movl      8(%esp), %edx
	movl      112(%esp), %eax
	addl      %ecx, %edx
	movl      %edx, 112(%esp)
	movl      %ebx, %edx
	addl      %ecx, %eax
	subl      %ecx, %edx
	cmpl      %ecx, %ebx
	movl      %eax, 108(%esp)
	je        .L08057D86
.L08057D57:
	movzbl    1(%eax), %ecx
	movl      112(%esp), %eax
	cmpl      $1, %edx
	movb      %cl, 1(%eax)
	je        .L08057D86
.L08057D67:
	movl      108(%esp), %ecx
	cmpl      $2, %edx
	movzbl    2(%ecx), %ecx
	movb      %cl, 2(%eax)
	je        .L08057D86
.L08057D77:
	movl      108(%esp), %eax
	movl      112(%esp), %ecx
	movzbl    3(%eax), %eax
	movb      %al, 3(%ecx)
.L08057D86:
	addl      %ebx, 8(%esp)
	movl      8(%esp), %eax
	subl      68(%esp), %eax
.L08057D92:
	cmpl      $2, %esi
	movl      8(%esp), %edx
	jbe       .L08057DC5
.L08057D9B:
	.p2align 4,,10
	.p2align 3
.L08057DA0:
	movzbl    1(%eax), %ecx
	addl      $3, %eax
	subl      $3, %esi
	addl      $3, %edx
	movb      %cl, -2(%edx)
	movzbl    -1(%eax), %ecx
	movb      %cl, -1(%edx)
	movzbl    (%eax), %ecx
	cmpl      $2, %esi
	movb      %cl, (%edx)
	ja        .L08057DA0
.L08057DC1:
	movl      %edx, 8(%esp)
.L08057DC5:
	testl     %esi, %esi
	je        .L08057A78
.L08057DCD:
	movzbl    1(%eax), %edx
	movl      8(%esp), %ebx
	cmpl      $2, %esi
	movb      %dl, 1(%ebx)
	jne       .L0805822F
.L08057DE1:
	movzbl    2(%eax), %eax
	movb      %al, 2(%ebx)
	leal      2(%ebx), %eax
	movl      %eax, 8(%esp)
	jmp       .L08057A78
.L08057DF4:
	.p2align 4,,10
	.p2align 3
.L08057DF8:
	andl      $32, %ebx
	je        .L08057E40
.L08057DFD:
	movl      12(%esp), %eax
	movl      $11, (%eax)
	jmp       .L08057A90
.L08057E0C:
	.p2align 4,,10
	.p2align 3
.L08057E10:
	movl      4(%esp), %ebx
	movl      %edi, %ecx
	movzbl    1(%ebx), %edx
	movzbl    2(%ebx), %eax
	sall      %cl, %edx
	leal      8(%edi), %ecx
	addl      $16, %edi
	sall      %cl, %eax
	addl      %eax, %edx
	movl      %ebx, %eax
	addl      $2, %eax
	addl      %edx, %ebp
	movl      %eax, 4(%esp)
	jmp       .L08057B50
.L08057E3A:
	.p2align 4,,10
	.p2align 3
.L08057E40:
	movl      164(%esp), %eax
	movl      $.LC08058A8C, 24(%eax)
	movl      12(%esp), %eax
	movl      $29, (%eax)
	jmp       .L08057A90
.L08057E5D:
	.p2align 4,,10
	.p2align 3
.L08057E60:
	movl      164(%esp), %eax
	movl      $.LC08058AA8, 24(%eax)
	movl      12(%esp), %eax
	movl      $29, (%eax)
	jmp       .L08057A90
.L08057E7D:
	movl      8(%esp), %ecx
	movl      %ecx, %eax
	subl      68(%esp), %eax
	jmp       .L08057E96
.L08057E89:
	.p2align 4
.L08057E90:
	movl      8(%esp), %eax
	movl      %edx, %ecx
.L08057E96:
	movzbl    1(%eax), %edx
	leal      3(%eax), %ebx
	subl      $3, %esi
	cmpl      $2, %esi
	movl      %ebx, 8(%esp)
	movb      %dl, 1(%ecx)
	movzbl    2(%eax), %edx
	movb      %dl, 2(%ecx)
	movzbl    3(%eax), %ebx
	leal      3(%ecx), %edx
	movb      %bl, 3(%ecx)
	ja        .L08057E90
.L08057EBD:
	testl     %esi, %esi
	movl      %ecx, 8(%esp)
	je        .L0805814B
.L08057EC9:
	movzbl    4(%eax), %edx
	cmpl      $2, %esi
	movb      %dl, 4(%ecx)
	jne       .L08058239
.L08057ED9:
	movzbl    5(%eax), %eax
	movl      8(%esp), %esi
	movb      %al, 5(%esi)
	leal      5(%esi), %eax
	movl      %eax, 8(%esp)
	jmp       .L08057A78
.L08057EF0:
	cmpl      %ebx, 44(%esp)
	jae       .L08058154
.L08057EFA:
	movl      76(%esp), %eax
	subl      %ebx, %eax
	subl      44(%esp), %ebx
	addl      56(%esp), %eax
	cmpl      %ebx, %esi
	movl      %ebx, 116(%esp)
	jbe       .L08057D92
.L08057F14:
	movl      60(%esp), %edx
	addl      64(%esp), %edx
	subl      %ebx, %esi
	movl      8(%esp), %ebx
	subl      %ebx, %edx
	movl      %edx, %ecx
	leal      1(%ebx), %edx
	movl      28(%esp), %ebx
	movl      %ecx, 132(%esp)
	movl      %edx, 128(%esp)
	movl      108(%esp), %edx
	addl      %ecx, %edx
	addl      112(%esp), %edx
	movl      80(%esp), %ecx
	subl      %edx, %ecx
	movl      %edx, 124(%esp)
	movl      %ecx, %edx
	movl      8(%esp), %ecx
	addl      %ebx, %edx
	movl      %edx, 120(%esp)
	leal      5(%ecx), %edx
	cmpl      %edx, 120(%esp)
	setae     %cl
	subl      124(%esp), %ebx
	movl      %ebx, %edx
	movl      76(%esp), %ebx
	leal      5(%edx,%ebx), %edx
	cmpl      %edx, 128(%esp)
	movl      116(%esp), %ebx
	setae     %dl
	orl       %ecx, %edx
	cmpl      $9, %ebx
	seta      %cl
	testb     %cl, %dl
	je        .L08058291
.L08057F91:
	movl      80(%esp), %edx
	subl      132(%esp), %edx
	subl      108(%esp), %edx
	subl      112(%esp), %edx
	addl      28(%esp), %edx
	orl       128(%esp), %edx
	andl      $3, %edx
	jne       .L08058291
.L08057FB8:
	leal      -4(%ebx), %edx
	movl      %eax, 136(%esp)
	shrl      $2, %edx
	leal      1(%edx), %ebx
	xorl      %edx, %edx
	leal      0(,%ebx,4), %ecx
	movl      %ebx, 128(%esp)
	movl      116(%esp), %ebx
	movl      %ecx, 140(%esp)
	movl      8(%esp), %ecx
.L08057FE7:
	movl      120(%esp), %eax
	movl      (%eax,%edx,4), %eax
	movl      %eax, 1(%ecx,%edx,4)
	addl      $1, %edx
	cmpl      128(%esp), %edx
	jb        .L08057FE7
.L08057FFE:
	movl      140(%esp), %ecx
	movl      %ebx, 116(%esp)
	movl      8(%esp), %ebx
	movl      136(%esp), %eax
	leal      (%ebx,%ecx), %edx
	movl      116(%esp), %ebx
	addl      %ecx, %eax
	subl      %ecx, %ebx
	cmpl      %ecx, 116(%esp)
	je        .L08058044
.L08058025:
	movzbl    1(%eax), %ecx
	cmpl      $1, %ebx
	movb      %cl, 1(%edx)
	je        .L08058044
.L08058031:
	movzbl    2(%eax), %ecx
	cmpl      $2, %ebx
	movb      %cl, 2(%edx)
	je        .L08058044
.L0805803D:
	movzbl    3(%eax), %eax
	movb      %al, 3(%edx)
.L08058044:
	movl      116(%esp), %eax
	addl      8(%esp), %eax
	cmpl      %esi, 44(%esp)
	movl      %eax, 116(%esp)
	jae       .L08058243
.L0805805A:
	movl      124(%esp), %edx
	movl      44(%esp), %ebx
	movl      %edx, %ecx
	subl      %ebx, %esi
	subl      %ebx, %ecx
	movl      %ecx, %eax
	movl      8(%esp), %ecx
	addl      %eax, %ecx
	movl      104(%esp), %eax
	addl      %edx, %eax
	addl      8(%esp), %eax
	cmpl      %eax, 28(%esp)
	movl      28(%esp), %eax
	setae     %dl
	addl      $4, %eax
	cmpl      %eax, %ecx
	setae     %al
	orl       %edx, %eax
	cmpl      $9, %ebx
	seta      %dl
	testb     %dl, %al
	je        .L080582DE
.L0805809D:
	movl      132(%esp), %edx
	movl      108(%esp), %eax
	subl      %ebx, %edx
	addl      %edx, %eax
	addl      112(%esp), %eax
	movl      28(%esp), %edx
	addl      8(%esp), %eax
	orl       %edx, %eax
	testb     $3, %al
	jne       .L080582DE
.L080580C2:
	cmpl      $2, 92(%esp)
	jbe       .L080582CD
.L080580CD:
	xorl      %eax, %eax
.L080580CF:
	movl      (%edx,%eax,4), %ebx
	movl      %ebx, (%ecx,%eax,4)
	addl      $1, %eax
	cmpl      100(%esp), %eax
	jb        .L080580CF
.L080580DE:
	movl      96(%esp), %ebx
	movl      116(%esp), %eax
	addl      %ebx, %eax
	cmpl      %ebx, 44(%esp)
	je        .L08058115
.L080580EE:
	movl      84(%esp), %edx
	movl      88(%esp), %ecx
.L080580F6:
	movzbl    1(%edx), %ebx
	cmpl      $1, %ecx
	movb      %bl, 1(%eax)
	je        .L08058115
.L08058102:
	movzbl    2(%edx), %ebx
	cmpl      $2, %ecx
	movb      %bl, 2(%eax)
	je        .L08058115
.L0805810E:
	movzbl    3(%edx), %edx
	movb      %dl, 3(%eax)
.L08058115:
	movl      116(%esp), %ebx
	addl      44(%esp), %ebx
	movl      %ebx, %eax
	movl      %ebx, 8(%esp)
	subl      68(%esp), %eax
	jmp       .L08057D92
.L0805812C:
	movl      4(%esp), %eax
	addl      $16, %edi
	movzbl    2(%eax), %eax
	sall      %cl, %eax
	addl      %eax, %ebp
	movl      4(%esp), %eax
	addl      $2, %eax
	movl      %eax, 4(%esp)
	jmp       .L08057BF6
.L0805814B:
	movl      %edx, 8(%esp)
	jmp       .L08057A78
.L08058154:
	movl      44(%esp), %eax
	subl      %ebx, %eax
	addl      56(%esp), %eax
	cmpl      %ebx, %esi
	jbe       .L08057D92
.L08058166:
	movl      60(%esp), %edx
	addl      64(%esp), %edx
	subl      %ebx, %esi
	subl      8(%esp), %edx
	movl      %edx, %ecx
	movl      8(%esp), %edx
	movl      %ecx, 124(%esp)
	addl      $1, %edx
	movl      %edx, 120(%esp)
	movl      108(%esp), %edx
	addl      %ecx, %edx
	movl      112(%esp), %ecx
	addl      %edx, %ecx
	movl      72(%esp), %edx
	subl      %ecx, %edx
	addl      28(%esp), %edx
	movl      %edx, 116(%esp)
	movl      8(%esp), %edx
	addl      $5, %edx
	cmpl      %edx, 116(%esp)
	movl      44(%esp), %edx
	setae     128(%esp)
	addl      $5, %edx
	subl      %ecx, %edx
	addl      28(%esp), %edx
	cmpl      %edx, 120(%esp)
	setae     %dl
	orb       128(%esp), %dl
	cmpl      $9, %ebx
	seta      %cl
	testb     %cl, %dl
	je        .L08058275
.L080581DB:
	movl      72(%esp), %edx
	subl      124(%esp), %edx
	subl      108(%esp), %edx
	subl      112(%esp), %edx
	addl      28(%esp), %edx
	orl       120(%esp), %edx
	andl      $3, %edx
	jne       .L08058275
.L080581F8:
	leal      -4(%ebx), %edx
	movl      %eax, 112(%esp)
	shrl      $2, %edx
	leal      1(%edx), %ecx
	xorl      %edx, %edx
	movl      %ecx, 108(%esp)
	sall      $2, %ecx
	movl      %ecx, 120(%esp)
	movl      8(%esp), %ecx
.L08058216:
	movl      116(%esp), %eax
	movl      (%eax,%edx,4), %eax
	movl      %eax, 1(%ecx,%edx,4)
	addl      $1, %edx
	cmpl      108(%esp), %edx
	jb        .L08058216
.L0805822A:
	jmp       .L08057D37
.L0805822F:
	addl      $1, 8(%esp)
	jmp       .L08057A78
.L08058239:
	addl      $4, 8(%esp)
	jmp       .L08057A78
.L08058243:
	movl      %eax, %ebx
	movl      56(%esp), %eax
	movl      %ebx, 8(%esp)
	jmp       .L08057D92
.L08058252:
	movl      8(%esp), %edx
	leal      (%eax,%ebx), %ecx
	movl      %ebx, 108(%esp)
.L0805825D:
	addl      $1, %eax
	movzbl    (%eax), %ebx
	addl      $1, %edx
	cmpl      %ecx, %eax
	movb      %bl, (%edx)
	jne       .L0805825D
.L0805826C:
	movl      108(%esp), %ebx
	jmp       .L08057D86
.L08058275:
	movl      8(%esp), %edx
	leal      (%eax,%ebx), %ecx
	movl      %ebx, 108(%esp)
.L08058280:
	addl      $1, %eax
	movzbl    (%eax), %ebx
	addl      $1, %edx
	cmpl      %ecx, %eax
	movb      %bl, (%edx)
	jne       .L08058280
.L0805828F:
	jmp       .L0805826C
.L08058291:
	movl      116(%esp), %ebx
	movl      8(%esp), %edx
	leal      (%eax,%ebx), %ecx
.L0805829C:
	addl      $1, %eax
	movzbl    (%eax), %ebx
	addl      $1, %edx
	cmpl      %ecx, %eax
	movb      %bl, (%edx)
	jne       .L0805829C
.L080582AB:
	jmp       .L08058044
.L080582B0:
	movl      164(%esp), %eax
	movl      $.LC08058ABE, 24(%eax)
	movl      12(%esp), %eax
	movl      $29, (%eax)
	jmp       .L08057A90
.L080582CD:
	movl      56(%esp), %edx
	movl      44(%esp), %ecx
	movl      116(%esp), %eax
	jmp       .L080580F6
.L080582DE:
	movl      28(%esp), %ecx
	movl      116(%esp), %ebx
	xorl      %eax, %eax
.L080582E8:
	movzbl    (%ecx,%eax), %edx
	movb      %dl, 1(%ebx,%eax)
	addl      $1, %eax
	cmpl      44(%esp), %eax
	jne       .L080582E8
.L080582F9:
	movl      %ebx, 116(%esp)
	jmp       .L08058115
	.size	inflate_fast, .-inflate_fast
# ----------------------
.L08058302:
	.p2align 4
# ----------------------
	.hidden	__moddi3
	.globl	__moddi3
	.type	__moddi3, @function
__moddi3:
	pushl     %ebp
	pushl     %edi
	pushl     %esi
	subl      $48, %esp
	movl      68(%esp), %edx
	movl      64(%esp), %eax
	movl      72(%esp), %ebp
	movl      76(%esp), %ecx
	testl     %edx, %edx
	js        .L08058440
.L0805832E:
	movl      %eax, 8(%esp)
	movl      %edx, 12(%esp)
	movl      $0, 24(%esp)
	movl      $0, 28(%esp)
	movl      $0, 32(%esp)
	movl      $0, 36(%esp)
.L08058356:
	movl      %ecx, %eax
	movl      $0, 4(%esp)
	cltd      
	movl      %edx, %eax
	movl      12(%esp), %edx
	shrl      $31, %eax
	movl      %eax, (%esp)
	movl      8(%esp), %eax
	movl      %edx, 20(%esp)
	movl      4(%esp), %edx
	movl      %eax, 40(%esp)
	movl      (%esp), %eax
	negl      %eax
	adcl      $0, %edx
	xorl      %eax, %ebp
	negl      %edx
	movl      %ebp, %eax
	movl      %edx, %ebp
	xorl      %ecx, %ebp
	addl      (%esp), %eax
	movl      %ebp, %edx
	adcl      4(%esp), %edx
	movl      %eax, (%esp)
	movl      %eax, %ebp
	movl      %eax, %edi
	movl      %edx, %ecx
	movl      %eax, %edx
	movl      20(%esp), %eax
	movl      %ecx, %esi
	movl      %ecx, 4(%esp)
	movl      8(%esp), %ecx
	testl     %esi, %esi
	jne       .L080583D0
.L080583B5:
	cmpl      %eax, %edx
	jbe       .L08058420
.L080583B9:
	movl      40(%esp), %eax
	movl      20(%esp), %edx
	divl      (%esp)
	xorl      %eax, %eax
	jmp       .L080583DE
.L080583C8:
	.p2align 4
.L080583D0:
	cmpl      20(%esp), %esi
	jbe       .L08058400
.L080583D6:
	movl      8(%esp), %edx
	movl      20(%esp), %eax
.L080583DE:
	movl      32(%esp), %ecx
	xorl      %edx, %ecx
	movl      28(%esp), %edx
	movl      %ecx, %esi
	movl      36(%esp), %ecx
	xorl      %eax, %ecx
	movl      24(%esp), %eax
	addl      %esi, %eax
	adcl      %ecx, %edx
	addl      $48, %esp
	popl      %esi
	popl      %edi
	popl      %ebp
	ret       
.L080583FF:
	.p2align 4,,10
	.p2align 3
.L08058400:
	bsrl      %esi, %edi
	xorl      $31, %edi
	jne       .L08058478
.L08058408:
	cmpl      %ecx, %edx
	jbe       .L08058510
.L08058410:
	cmpl      20(%esp), %esi
	jb        .L08058510
.L0805841A:
	movl      %ecx, %edx
	jmp       .L080583DE
.L0805841E:
	.p2align 4,,10
	.p2align 3
.L08058420:
	testl     %edx, %edx
	jne       .L0805842F
.L08058424:
	movl      $1, %eax
	xorl      %edx, %edx
	divl      %ebp
	movl      %eax, %edi
.L0805842F:
	movl      20(%esp), %eax
	xorl      %edx, %edx
	divl      %edi
	movl      %ecx, %eax
	divl      %edi
	xorl      %eax, %eax
	jmp       .L080583DE
.L0805843F:
	.p2align 4,,10
	.p2align 3
.L08058440:
	negl      %eax
	movl      $1, 24(%esp)
	movl      $0, 28(%esp)
	adcl      $0, %edx
	movl      %eax, 8(%esp)
	movl      $-1, 32(%esp)
	negl      %edx
	movl      $-1, 36(%esp)
	movl      %edx, 12(%esp)
	jmp       .L08058356
.L08058474:
	.p2align 4,,10
	.p2align 3
.L08058478:
	movl      $32, %eax
	movl      %edi, %ecx
	subl      %edi, %eax
	sall      %cl, %esi
	movl      %eax, %edx
	movl      %eax, 44(%esp)
	movl      %ebp, %eax
	movl      %edx, %ecx
	shrl      %cl, %eax
	movl      %edi, %ecx
	orl       %esi, %eax
	sall      %cl, %ebp
	movl      %edx, %ecx
	movl      %eax, (%esp)
	movl      20(%esp), %eax
	movl      %ebp, 8(%esp)
	movl      %edx, %ebp
	movl      %eax, %esi
	movl      %eax, %edx
	movl      40(%esp), %eax
	shrl      %cl, %esi
	movl      %edi, %ecx
	sall      %cl, %edx
	movl      %ebp, %ecx
	shrl      %cl, %eax
	movl      %edi, %ecx
	orl       %edx, %eax
	movl      40(%esp), %edx
	sall      %cl, %edx
	movl      %edx, 20(%esp)
	movl      %esi, %edx
	divl      (%esp)
	movl      %edx, %ecx
	mull      8(%esp)
	cmpl      %edx, %ecx
	movl      %eax, %ebp
	movl      %edx, %esi
	jb        .L080584E1
.L080584D7:
	cmpl      %eax, 20(%esp)
	jae       .L080584EC
.L080584DD:
	cmpl      %edx, %ecx
	jne       .L080584EC
.L080584E1:
	movl      %edx, %esi
	movl      %eax, %ebp
	subl      8(%esp), %ebp
	sbbl      (%esp), %esi
.L080584EC:
	movl      %ecx, %eax
	movl      %edi, %ecx
	movl      20(%esp), %edx
	subl      %ebp, %edx
	sbbl      %esi, %eax
	shrl      %cl, %edx
	movzbl    44(%esp), %ecx
	movl      %eax, %esi
	sall      %cl, %esi
	movl      %edi, %ecx
	orl       %esi, %edx
	shrl      %cl, %eax
	jmp       .L080583DE
.L0805850E:
	.p2align 4,,10
	.p2align 3
.L08058510:
	movl      20(%esp), %eax
	subl      (%esp), %ecx
	sbbl      4(%esp), %eax
	movl      %ecx, %edx
	jmp       .L080583DE
	.size	__moddi3, .-__moddi3
# ----------------------
	.section       .rodata
.LC080585C8:
	.string	"%s: %s\n"
.LC080585D0:
	.string	"fread"
.LC080585D6:
	.string	"failed gzclose"
.LC080585E5:
	.string	"failed fwrite"
.LC080585F3:
	.string	"failed fclose"
.LC08058601:
	.ascii	"%s: filename too long\n"
.LC08058617:
	.byte	0
.LC08058618:
	.long	8021806
.LC0805861C:
	.string	"rb"
.LC0805861F:
	.string	"%s: can't gzopen %s\n"
.LC08058634:
	.string	"wb"
.LC08058637:
	.string	"gunzip"
.LC0805863E:
	.string	"zcat"
.LC08058643:
	.string	"can't gzdopen stdin"
.LC08058657:
	.string	"can't gzdopen stdout"
.LC0805866C:
	.string	"<fd:%d>"
.LC08058674:
	.string	"out of memory"
.LC08058682:
	.string	": "
.LC08058685:
	.value	29477
.LC08058687:
	.value	29477
.LC08058689:
	.string	"%s"
.LC0805868C:
	.long	.L080491C0
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L080493A0
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049390
	.long	.L08049196
	.long	.L08049380
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049370
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049350
	.long	.L08049340
	.long	.L08049196
	.long	.L08049330
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049320
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L08049196
	.long	.L080491E0
	.long	.L08049360
.LC080587C4:
	.string	"1.2.8"
.LC080587CA:
	.ascii	"compressed "
.LC080587D5:
	.string	"data error"
.LC080587E0:
	.string	"unexpected end of file"
# ----------------------
.LC080587F7:
	.byte	0
	.align 2
.LC080587F8:
	.string	"internal error: inflate stream corrupt"
# ----------------------
.LC0805881F:
	.byte	0
	.align 2
.LC08058820:
	.string	"requested length does not fit in int"
# ----------------------
.LC08058845:
	.zero	3
	.align 4
.LC08058848:
	.string	"out of room to push characters"
# ----------------------
.LC08058867:
	.byte	0
	.align 2
.LC08058868:
	.string	"internal error: deflate stream corrupt"
# ----------------------
.LC0805888F:
	.zero	49
# ----------------------
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.value	0
	.zero	6
	.long	deflate_stored
	.long	262148
	.long	262152
	.long	deflate_fast
	.long	327684
	.long	524304
	.long	deflate_fast
	.long	393220
	.long	2097184
	.long	deflate_fast
	.long	262148
	.long	1048592
	.long	deflate_slow
	.long	1048584
	.long	2097184
	.long	deflate_slow
	.long	1048584
	.long	8388736
	.long	deflate_slow
	.long	2097160
	.long	16777344
	.long	deflate_slow
	.long	8388640
	.long	67109122
	.long	deflate_slow
	.long	16908320
	.long	268435714
	.long	deflate_slow
	.long	0
	.long	0
	.size	configuration_table, 128
# ----------------------
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
.LC08058984:
	.string	"incorrect header check"
.LC0805899B:
	.string	"unknown compression method"
.LC080589B6:
	.string	"invalid window size"
.LC080589CA:
	.string	"unknown header flags set"
.LC080589E3:
	.string	"header crc mismatch"
.LC080589F7:
	.string	"invalid block type"
.LC08058A0A:
	.string	"invalid stored block lengths"
.LC08058A27:
	.string	"invalid code lengths set"
.LC08058A40:
	.string	"invalid bit length repeat"
.LC08058A5A:
	.string	"invalid literal/lengths set"
.LC08058A76:
	.string	"invalid distances set"
.LC08058A8C:
	.string	"invalid literal/length code"
.LC08058AA8:
	.string	"invalid distance code"
.LC08058ABE:
	.string	"invalid distance too far back"
.LC08058ADC:
	.string	"incorrect data check"
.LC08058AF1:
	.string	"incorrect length check"
.LC08058B08:
	.string	"too many length or distance symbols"
.LC08058B2C:
	.string	"invalid code -- missing end-of-block"
	.size	deflate_copyright, 68
# ----------------------
.LC08058B51:
	.zero	47
.LC08058B80:
	.long	.L08051A70
	.long	.L08051B70
	.long	.L08051738
	.long	.L08051FA0
	.long	.L080514A0
	.long	.L080517B0
	.long	.L080521F8
	.long	.L08051910
	.long	.L08051A48
	.long	.L08050F10
	.long	.L08050FEC
	.long	.L08051023
	.long	.L0805102E
	.long	.L080523B8
	.long	.L080518A0
	.long	.L08051900
	.long	.L08051DB8
	.long	.L08051E80
	.long	.L08051BF0
	.long	.L080511E8
	.long	.L080511F2
	.long	.L080512E0
	.long	.L08051306
	.long	.L080510E8
	.long	.L0805116A
	.long	.L08052050
	.long	.L08052090
	.long	.L080522D0
	.long	.L08051570
	.long	.L08051A58
	.long	.L08051560
	.long	0
# ----------------------
	.local	distfix.3431
	.type	distfix.3431, @object
distfix.3431:
	.long	66832
	.long	16844055
	.long	1115411
	.long	268502299
	.long	328977
	.long	67175705
	.long	4261141
	.long	1073808669
	.long	197904
	.long	33621272
	.long	2163988
	.long	536937756
	.long	591122
	.long	134284570
	.long	8455446
	.long	1344
	.long	132368
	.long	25232663
	.long	1639699
	.long	402720027
	.long	460049
	.long	100730137
	.long	6358293
	.long	1610679581
	.long	263440
	.long	50398488
	.long	3212564
	.long	805373212
	.long	853266
	.long	201393434
	.long	12649750
	.long	1344
	.size	distfix.3431, 128
# ----------------------
	.local	lenfix.3430
	.type	lenfix.3430, @object
lenfix.3430:
	.ascii	"`\007\000\000\000\010P\000\000\010\020\000\024\010s\000\022\007\037\000\000\010p\000\000\0100\000\000\t\300\000\020\007\n\000\000\010`\000\000\010 \000\000\t\240\000\000\010\000\000\000\010\200\000\000\010@\000\000\t\340\000\020\007\006\000\000\010X\000\000\010\030\000\000\t\220\000\023\007;\000\000\010x\000\000\0108\000\000\t\320\000\021\007\021\000\000\010h\000\000\010(\000\000\t\260\000\000\010\010\000\000\010\210\000\000\010H\000\000\t\360\000\020\007\004\000\000\010T\000\000\010\024\000\025\010\343\000\023\007+\000\000\010t\000\000\0104\000\000\t\310\000\021\007\r\000\000\010d\000\000\010$\000\000\t\250\000\000\010\004\000\000\010\204\000\000\010D\000\000\t\350\000\020\007\010\000\000\010\\\000\000\010\034\000\000\t\230\000\024\007S\000\000\010|\000\000\010<\000\000\t\330\000\022\007\027\000\000\010l\000\000\010,\000\000\t\270\000\000\010\014\000\000\010\214\000\000\010L\000\000\t\370\000\020\007\003\000\000\010R\000\000\010\022\000\025\010\243\000\023\007#\000\000\010r\000\000\0102\000\000\t\304\000\021\007\013\000\000\010b\000\000\010\"\000\000\t\244\000\000\010\002\000\000\010\202\000\000\010B\000\000\t\344\000\020\007\007\000\000\010Z\000\000\010\032\000\000\t\224\000\024\007C\000\000\010z\000\000\010:\000\000\t\324\000\022\007\023\000\000\010j\000\000\010*\000\000\t\264\000\000\010\n\000\000\010\212\000\000\010J\000\000\t\364\000\020\007\005\000\000\010V\000\000\010\026\000@\010\000\000\023\0073\000\000\010v\000\000\0106\000\000\t\314\000\021\007\017\000\000\010f\000\000\010&\000\000\t\254\000\000\010\006\000\000\010\206\000\000\010F\000\000\t\354\000\020\007\t\000\000\010^\000\000\010\036\000\000\t\234\000\024\007c\000\000\010~\000\000\010>\000\000\t\334\000\022\007\033\000\000\010n\000\000\010.\000\000\t\274\000\000\010\016\000\000\010\216\000\000\010N\000\000\t\374\000`\007\000\000\000\010Q\000\000\010\021\000\025\010\203\000\022\007\037\000\000\010q\000\000\0101\000\000\t\302\000\020\007\n\000\000\010a\000\000\010!\000\000\t\242\000\000\010\001\000\000\010\201\000\000\010A\000\000\t\342\000\020\007\006\000\000\010Y\000\000\010\031\000\000\t\222\000\023\007;\000\000\010y\000\000\0109\000\000\t\322\000\021\007\021\000\000\010i\000\000\010)\000\000\t\262\000\000\010\t\000\000\010\211\000\000\010I\000\000\t\362\000\020\007\004\000\000\010U\000\000\010\025\000\020\010\002\001\023\007+\000\000\010u\000\000\0105\000\000\t\312\000\021\007\r\000\000\010e\000\000\010%\000\000\t\252\000\000\010\005\000\000\010\205\000\000\010E\000\000\t\352\000\020\007\010\000\000\010]\000\000\010\035\000\000\t\232\000\024\007S\000\000\010}\000\000\010=\000\000\t\332\000\022\007\027\000\000\010m\000\000\010-\000\000\t\272\000\000\010\r\000\000\010\215\000\000\010M\000\000\t\372\000\020\007\003\000\000\010S\000\000\010\023\000\025\010\303\000\023\007#\000\000\010s\000\000\0103\000\000\t\306\000\021\007\013\000\000\010c\000\000\010#\000\000\t\246\000\000\010\003\000\000\010\203\000\000\010C\000\000\t\346\000\020\007\007\000\000\010[\000\000\010\033\000\000\t\226\000\024\007C\000\000\010{\000\000\010;\000\000\t\326\000\022\007\023\000\000\010k\000\000\010+\000\000\t\266\000\000\010\013\000\000\010\213\000\000\010K\000\000\t\366\000\020\007\005\000\000\010W\000\000\010\027\000@\010\000\000\023\0073\000\000\010w\000\000\0107\000\000\t\316\000\021\007\017\000\000\010g\000\000\010'\000\000\t\256\000\000\010\007\000\000\010\207\000\000\010G\000\000\t\356\000\020\007\t\000\000\010_\000\000\010\037\000\000\t\236\000\024\007c\000\000\010\177\000\000\010?\000\000\t\336\000\022\007\033\000\000\010o\000\000\010/\000\000\t\276\000\000\010\017\000\000\010\217\000\000\010O\000\000\t\376\000`\007\000\000\000\010P\000\000\010\020\000\024\010s\000\022\007\037\000\000\010p\000\000\0100\000\000\t\301\000\020\007\n\000\000\010`\000\000\010 \000\000\t\241\000\000\010\000\000\000\010\200\000\000\010@\000\000\t\341\000\020\007\006\000\000\010X\000\000\010\030\000\000\t\221\000\023\007;\000\000\010x\000\000\0108\000\000\t\321\000\021\007\021\000\000\010h\000\000\010(\000\000\t\261\000\000\010\010\000\000\010\210\000\000\010H\000\000\t\361\000\020\007\004\000\000\010T\000\000\010\024\000\025\010\343\000\023\007+\000\000\010t\000\000\0104\000\000\t\311\000\021\007\r\000\000\010d\000\000\010$\000\000\t\251\000\000\010\004\000\000\010\204\000\000\010D\000\000\t\351\000\020\007\010\000\000\010\\\000\000\010\034\000\000\t\231\000\024\007S\000\000\010|\000\000\010<\000\000\t\331\000\022\007\027\000\000\010l\000\000\010,\000\000\t\271\000\000\010\014\000\000\010\214\000\000\010L\000\000\t\371\000\020\007\003\000\000\010R\000\000\010\022\000\025\010\243\000\023\007#\000\000\010r\000\000\0102\000\000\t\305\000\021\007\013\000\000\010b\000\000\010\"\000\000\t\245\000\000\010\002\000\000\010\202\000\000\010B\000\000\t\345\000\020\007\007\000\000\010Z\000\000\010\032\000\000\t\225\000\024\007C\000\000\010z\000\000\010:\000\000\t\325\000\022\007\023\000\000\010j\000\000\010*\000\000\t\265\000\000\010\n\000\000\010\212\000\000\010J\000\000\t\365\000\020\007\005\000\000\010V\000\000\010\026\000@\010\000\000\023\0073\000\000\010v\000\000\0106\000\000\t\315\000\021\007\017\000\000\010f\000\000\010&\000\000\t\255\000\000\010\006\000\000\010\206\000\000\010F\000\000\t\355\000\020\007\t\000\000\010^\000\000\010\036\000\000\t\235\000\024\007c\000\000\010~\000\000\010>\000\000\t\335\000\022\007\033\000\000\010n\000\000\010.\000\000\t\275\000\000\010\016\000\000\010\216\000\000\010N\000\000\t\375\000`\007\000\000\000\010Q\000\000\010\021\000\025\010\203\000\022\007\037\000\000\010q\000\000\0101\000\000\t\303\000\020\007\n\000\000\010a\000\000\010!\000\000\t\243\000\000\010\001\000\000\010\201\000\000\010A\000\000\t\343\000\020\007\006\000\000\010Y\000\000\010\031\000\000\t\223\000\023\007;\000\000\010y\000\000\0109\000\000\t\323\000\021\007\021\000\000\010i\000\000\010)\000\000\t\263\000\000\010\t\000\000\010\211\000\000\010I\000\000\t\363\000\020\007\004\000\000\010U\000\000\010\025\000\020\010\002\001\023\007+\000\000\010u\000\000\0105\000\000\t\313\000\021\007\r\000\000\010e\000\000\010%\000\000\t\253\000\000\010\005\000\000\010\205\000\000\010E\000\000\t"
	.long	118489323
	.long	134217736
	.long	134217821
	.long	150994973
	.long	118751387
	.long	134217811
	.long	134217853
	.long	150995005
	.long	118620379
	.long	134217751
	.long	134217837
	.long	150994989
	.long	134217915
	.long	134217741
	.long	134217869
	.long	150995021
	.long	118489339
	.long	134217731
	.long	134217811
	.long	135594003
	.long	118685891
	.long	134217763
	.long	134217843
	.long	150994995
	.long	118554823
	.long	134217739
	.long	134217827
	.long	150994979
	.long	134217895
	.long	134217731
	.long	134217859
	.long	150995011
	.long	118489319
	.long	134217735
	.long	134217819
	.long	150994971
	.long	118751383
	.long	134217795
	.long	134217851
	.long	150995003
	.long	118620375
	.long	134217747
	.long	134217835
	.long	150994987
	.long	134217911
	.long	134217739
	.long	134217867
	.long	150995019
	.long	118489335
	.long	134217733
	.long	134217815
	.long	138412055
	.long	118685696
	.long	134217779
	.long	134217847
	.long	150994999
	.long	118554831
	.long	134217743
	.long	134217831
	.long	150994983
	.long	134217903
	.long	134217735
	.long	134217863
	.long	150995015
	.long	118489327
	.long	134217737
	.long	134217823
	.long	150994975
	.long	118751391
	.long	134217827
	.long	134217855
	.long	150995007
	.long	118620383
	.long	134217755
	.long	134217839
	.long	150994991
	.long	134217919
	.long	134217743
	.long	134217871
	.long	150995023
	.value	255
	.size	lenfix.3430, 2048
# ----------------------
	.local	order.3459
	.type	order.3459, @object
order.3459:
	.ascii	"\020\000\021\000\022\000\000\000\010\000\007\000\t\000\006\000\n\000\005\000\013\000\004\000\014\000\003\000\r\000\002\000\016\000\001\000\017\000"
.LC080594A6:
	.zero	26
	.size	order.3459, 38
# ----------------------
	.local	dext.3345
	.type	dext.3345, @object
dext.3345:
	.long	1048592
	.long	1048592
	.long	1114129
	.long	1179666
	.long	1245203
	.long	1310740
	.long	1376277
	.long	1441814
	.long	1507351
	.long	1572888
	.long	1638425
	.long	1703962
	.long	1769499
	.long	1835036
	.long	1900573
	.long	4194368
	.size	dext.3345, 64
# ----------------------
	.local	dbase.3344
	.type	dbase.3344, @object
dbase.3344:
	.long	131073
	.long	262147
	.long	458757
	.long	851977
	.long	1638417
	.long	3211297
	.long	6357057
	.long	12648577
	.long	25231617
	.long	50397697
	.long	100729857
	.long	201394177
	.long	402722817
	.long	805380097
	.long	1610694657
	.long	0
	.size	dbase.3344, 64
# ----------------------
	.local	lext.3343
	.type	lext.3343, @object
lext.3343:
	.ascii	"\020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\021\000\021\000\021\000\021\000\022\000\022\000\022\000\022\000\023\000\023\000\023\000\023\000\024\000\024\000\024\000\024\000\025\000\025\000\025\000\025\000\020\000H\000N\000"
	.size	lext.3343, 62
# ----------------------
.LC0805957E:
	.value	0
# ----------------------
	.align 64
	.local	lbase.3342
	.type	lbase.3342, @object
lbase.3342:
	.ascii	"\003\000\004\000\005\000\006\000\007\000\010\000\t\000\n\000\013\000\r\000\017\000\021\000\023\000\027\000\033\000\037\000#\000+\0003\000;\000C\000S\000c\000s\000\203\000\243\000\303\000\343\000\002\001\000\000\000\000"
	.size	lbase.3342, 62
# ----------------------
.LC080595BE:
	.value	0
# ----------------------
	.align 4
	.globl	inflate_copyright
	.type	inflate_copyright, @object
inflate_copyright:
	.string	" inflate 1.2.8 Copyright 1995-2013 Mark Adler "
	.size	inflate_copyright, 47
# ----------------------
.LC080595EF:
	.zero	17
# ----------------------
	.local	base_dist
	.type	base_dist, @object
base_dist:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	6
	.long	8
	.long	12
	.long	16
	.long	24
	.long	32
	.long	48
	.long	64
	.long	96
	.long	128
	.long	192
	.long	256
	.long	384
	.long	512
	.long	768
	.long	1024
	.long	1536
	.long	2048
	.long	3072
	.long	4096
	.long	6144
	.long	8192
	.long	12288
	.long	16384
	.long	24576
	.size	base_dist, 120
# ----------------------
.LC08059678:
	.zero	8
# ----------------------
	.local	base_length
	.type	base_length, @object
base_length:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	10
	.long	12
	.long	14
	.long	16
	.long	20
	.long	24
	.long	28
	.long	32
	.long	40
	.long	48
	.long	56
	.long	64
	.long	80
	.long	96
	.long	112
	.long	128
	.long	160
	.long	192
	.long	224
	.long	0
	.size	base_length, 116
# ----------------------
.LC080596F4:
	.zero	12
# ----------------------
	.hidden	_length_code
	.globl	_length_code
	.type	_length_code, @object
_length_code:
	.ascii	"\000\001\002\003\004\005\006\007\010\010\t\t\n\n\013\013\014\014\014\014\r\r\r\r\016\016\016\016\017\017\017\017\020\020\020\020\020\020\020\020\021\021\021\021\021\021\021\021\022\022\022\022\022\022\022\022\023\023\023\023\023\023\023\023\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\024\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\025\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\026\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\027\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\030\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\031\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\032\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033\033"
	.byte	28
	.size	_length_code, 256
# ----------------------
	.hidden	_dist_code
	.globl	_dist_code
	.type	_dist_code, @object
_dist_code:
	.long	50462976
	.long	84214788
	.long	101058054
	.long	117901063
	.long	134744072
	.long	134744072
	.long	151587081
	.long	151587081
	.long	168430090
	.long	168430090
	.long	168430090
	.long	168430090
	.long	185273099
	.long	185273099
	.long	185273099
	.long	185273099
	.long	202116108
	.long	202116108
	.long	202116108
	.long	202116108
	.long	202116108
	.long	202116108
	.long	202116108
	.long	202116108
	.long	218959117
	.long	218959117
	.long	218959117
	.long	218959117
	.long	218959117
	.long	218959117
	.long	218959117
	.long	218959117
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	235802126
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	252645135
	.long	286261248
	.long	320016914
	.long	336860180
	.long	353703189
	.long	370546198
	.long	370546198
	.long	387389207
	.long	387389207
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	421075225
	.long	421075225
	.long	421075225
	.long	421075225
	.long	437918234
	.long	437918234
	.long	437918234
	.long	437918234
	.long	437918234
	.long	437918234
	.long	437918234
	.long	437918234
	.long	454761243
	.long	454761243
	.long	454761243
	.long	454761243
	.long	454761243
	.long	454761243
	.long	454761243
	.long	454761243
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	471604252
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.long	488447261
	.size	_dist_code, 512
# ----------------------
	.local	static_dtree
	.type	static_dtree, @object
static_dtree:
	.long	327680
	.long	327696
	.long	327688
	.long	327704
	.long	327684
	.long	327700
	.long	327692
	.long	327708
	.long	327682
	.long	327698
	.long	327690
	.long	327706
	.long	327686
	.long	327702
	.long	327694
	.long	327710
	.long	327681
	.long	327697
	.long	327689
	.long	327705
	.long	327685
	.long	327701
	.long	327693
	.long	327709
	.long	327683
	.long	327699
	.long	327691
	.long	327707
	.long	327687
	.long	327703
	.size	static_dtree, 120
# ----------------------
.LC08059A78:
	.zero	8
# ----------------------
	.local	static_ltree
	.type	static_ltree, @object
static_ltree:
	.long	524300
	.long	524428
	.long	524364
	.long	524492
	.long	524332
	.long	524460
	.long	524396
	.long	524524
	.long	524316
	.long	524444
	.long	524380
	.long	524508
	.long	524348
	.long	524476
	.long	524412
	.long	524540
	.long	524290
	.long	524418
	.long	524354
	.long	524482
	.long	524322
	.long	524450
	.long	524386
	.long	524514
	.long	524306
	.long	524434
	.long	524370
	.long	524498
	.long	524338
	.long	524466
	.long	524402
	.long	524530
	.long	524298
	.long	524426
	.long	524362
	.long	524490
	.long	524330
	.long	524458
	.long	524394
	.long	524522
	.long	524314
	.long	524442
	.long	524378
	.long	524506
	.long	524346
	.long	524474
	.long	524410
	.long	524538
	.long	524294
	.long	524422
	.long	524358
	.long	524486
	.long	524326
	.long	524454
	.long	524390
	.long	524518
	.long	524310
	.long	524438
	.long	524374
	.long	524502
	.long	524342
	.long	524470
	.long	524406
	.long	524534
	.long	524302
	.long	524430
	.long	524366
	.long	524494
	.long	524334
	.long	524462
	.long	524398
	.long	524526
	.long	524318
	.long	524446
	.long	524382
	.long	524510
	.long	524350
	.long	524478
	.long	524414
	.long	524542
	.long	524289
	.long	524417
	.long	524353
	.long	524481
	.long	524321
	.long	524449
	.long	524385
	.long	524513
	.long	524305
	.long	524433
	.long	524369
	.long	524497
	.long	524337
	.long	524465
	.long	524401
	.long	524529
	.long	524297
	.long	524425
	.long	524361
	.long	524489
	.long	524329
	.long	524457
	.long	524393
	.long	524521
	.long	524313
	.long	524441
	.long	524377
	.long	524505
	.long	524345
	.long	524473
	.long	524409
	.long	524537
	.long	524293
	.long	524421
	.long	524357
	.long	524485
	.long	524325
	.long	524453
	.long	524389
	.long	524517
	.long	524309
	.long	524437
	.long	524373
	.long	524501
	.long	524341
	.long	524469
	.long	524405
	.long	524533
	.long	524301
	.long	524429
	.long	524365
	.long	524493
	.long	524333
	.long	524461
	.long	524397
	.long	524525
	.long	524317
	.long	524445
	.long	524381
	.long	524509
	.long	524349
	.long	524477
	.long	524413
	.long	524541
	.long	589843
	.long	590099
	.long	589971
	.long	590227
	.long	589907
	.long	590163
	.long	590035
	.long	590291
	.long	589875
	.long	590131
	.long	590003
	.long	590259
	.long	589939
	.long	590195
	.long	590067
	.long	590323
	.long	589835
	.long	590091
	.long	589963
	.long	590219
	.long	589899
	.long	590155
	.long	590027
	.long	590283
	.long	589867
	.long	590123
	.long	589995
	.long	590251
	.long	589931
	.long	590187
	.long	590059
	.long	590315
	.long	589851
	.long	590107
	.long	589979
	.long	590235
	.long	589915
	.long	590171
	.long	590043
	.long	590299
	.long	589883
	.long	590139
	.long	590011
	.long	590267
	.long	589947
	.long	590203
	.long	590075
	.long	590331
	.long	589831
	.long	590087
	.long	589959
	.long	590215
	.long	589895
	.long	590151
	.long	590023
	.long	590279
	.long	589863
	.long	590119
	.long	589991
	.long	590247
	.long	589927
	.long	590183
	.long	590055
	.long	590311
	.long	589847
	.long	590103
	.long	589975
	.long	590231
	.long	589911
	.long	590167
	.long	590039
	.long	590295
	.long	589879
	.long	590135
	.long	590007
	.long	590263
	.long	589943
	.long	590199
	.long	590071
	.long	590327
	.long	589839
	.long	590095
	.long	589967
	.long	590223
	.long	589903
	.long	590159
	.long	590031
	.long	590287
	.long	589871
	.long	590127
	.long	589999
	.long	590255
	.long	589935
	.long	590191
	.long	590063
	.long	590319
	.long	589855
	.long	590111
	.long	589983
	.long	590239
	.long	589919
	.long	590175
	.long	590047
	.long	590303
	.long	589887
	.long	590143
	.long	590015
	.long	590271
	.long	589951
	.long	590207
	.long	590079
	.long	590335
	.long	458752
	.long	458816
	.long	458784
	.long	458848
	.long	458768
	.long	458832
	.long	458800
	.long	458864
	.long	458760
	.long	458824
	.long	458792
	.long	458856
	.long	458776
	.long	458840
	.long	458808
	.long	458872
	.long	458756
	.long	458820
	.long	458788
	.long	458852
	.long	458772
	.long	458836
	.long	458804
	.long	458868
	.long	524291
	.long	524419
	.long	524355
	.long	524483
	.long	524323
	.long	524451
	.long	524387
	.long	524515
	.size	static_ltree, 1152
# ----------------------
	.local	bl_order
	.type	bl_order, @object
bl_order:
	.ascii	"\020\021\022\000\010\007\t\006\n\005\013\004\014\003\r\002\016\001\017"
	.size	bl_order, 19
# ----------------------
.LC08059F13:
	.zero	45
# ----------------------
	.local	extra_blbits
	.type	extra_blbits, @object
extra_blbits:
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
	.long	2
	.long	3
	.long	7
	.size	extra_blbits, 76
# ----------------------
.LC08059F8C:
	.zero	52
# ----------------------
	.local	extra_dbits
	.type	extra_dbits, @object
extra_dbits:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.size	extra_dbits, 120
# ----------------------
.LC0805A038:
	.zero	8
# ----------------------
	.local	extra_lbits
	.type	extra_lbits, @object
extra_lbits:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
.LC0805A0B4:
	.string	"need dictionary"
.LC0805A0C4:
	.string	"stream end"
.LC0805A0CF:
	.string	"file error"
.LC0805A0DA:
	.string	"stream error"
.LC0805A0E7:
	.string	"insufficient memory"
.LC0805A0FB:
	.string	"buffer error"
.LC0805A108:
	.string	"incompatible version"
	.size	extra_lbits, 116
# ----------------------
.LC0805A11D:
	.zero	3
# ----------------------
	.align 4
	.globl	z_errmsg
	.type	z_errmsg, @object
z_errmsg:
	.long	.LC0805A0B4
	.long	.LC0805A0C4
	.long	.LC08058617
	.long	.LC0805A0CF
	.long	.LC0805A0DA
	.long	.LC080587D5
	.long	.LC0805A0E7
	.long	.LC0805A0FB
	.long	.LC0805A108
	.long	.LC08058617
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
	.size	z_errmsg, 96
# ----------------------
	.local	crc_table
	.type	crc_table, @object
crc_table:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.long	0
	.long	421212481
	.long	842424962
	.long	724390851
	.long	1684849924
	.long	2105013317
	.long	1448781702
	.long	1329698503
	.long	-925267448
	.long	-775767223
	.long	-84940662
	.long	-470492725
	.long	-1397403892
	.long	-1246855603
	.long	-1635570290
	.long	-2020074289
	.long	1254232657
	.long	1406739216
	.long	2029285587
	.long	1643069842
	.long	783210325
	.long	934667796
	.long	479770071
	.long	92505238
	.long	-2112120743
	.long	-1694455528
	.long	-1339163941
	.long	-1456026726
	.long	-428384931
	.long	-9671652
	.long	-733921313
	.long	-849736034
	.long	-1786501982
	.long	-1935731229
	.long	-1481488864
	.long	-1096190111
	.long	-236396122
	.long	-386674457
	.long	-1008827612
	.long	-624577947
	.long	1566420650
	.long	1145479147
	.long	1869335592
	.long	1987116393
	.long	959540142
	.long	539646703
	.long	185010476
	.long	303839341
	.long	-549046541
	.long	-966981710
	.long	-311405455
	.long	-194288336
	.long	-1154812937
	.long	-1573797194
	.long	-1994616459
	.long	-1878548428
	.long	396344571
	.long	243568058
	.long	631889529
	.long	1018359608
	.long	1945336319
	.long	1793607870
	.long	1103436669
	.long	1490954812
	.long	-260485371
	.long	-379421116
	.long	-1034998393
	.long	-615244602
	.long	-1810527743
	.long	-1928414400
	.long	-1507596157
	.long	-1086793278
	.long	950060301
	.long	565965900
	.long	177645455
	.long	328046286
	.long	1556873225
	.long	1171730760
	.long	1861902987
	.long	2011255754
	.long	-1162125996
	.long	-1549767659
	.long	-2004009002
	.long	-1852436841
	.long	-556296112
	.long	-942888687
	.long	-320734510
	.long	-168113261
	.long	1919080284
	.long	1803150877
	.long	1079293406
	.long	1498383519
	.long	370020952
	.long	253043481
	.long	607678682
	.long	1025720731
	.long	1711106983
	.long	2095471334
	.long	1472923941
	.long	1322268772
	.long	26324643
	.long	411738082
	.long	866634785
	.long	717028704
	.long	-1390091857
	.long	-1270886162
	.long	-1626176723
	.long	-2046184852
	.long	-918018901
	.long	-799861270
	.long	-75610583
	.long	-496666776
	.long	792689142
	.long	908347575
	.long	487136116
	.long	68299317
	.long	1263779058
	.long	1380486579
	.long	2036719216
	.long	1618931505
	.long	-404294658
	.long	-16923969
	.long	-707751556
	.long	-859070403
	.long	-2088093958
	.long	-1701771333
	.long	-1313057672
	.long	-1465424583
	.long	998479947
	.long	580430090
	.long	162921161
	.long	279890824
	.long	1609522511
	.long	1190423566
	.long	1842954189
	.long	1958874764
	.long	-212200893
	.long	-364829950
	.long	-1049857855
	.long	-663273088
	.long	-1758013625
	.long	-1909594618
	.long	-1526680123
	.long	-1139047292
	.long	1900120602
	.long	1750776667
	.long	1131931800
	.long	1517083097
	.long	355290910
	.long	204897887
	.long	656092572
	.long	1040194781
	.long	-1181220846
	.long	-1602014893
	.long	-1951505776
	.long	-1833610287
	.long	-571161322
	.long	-990907305
	.long	-272455788
	.long	-153512235
	.long	-1375224599
	.long	-1222865496
	.long	-1674453397
	.long	-2060783830
	.long	-898926099
	.long	-747616084
	.long	-128115857
	.long	-515495378
	.long	1725839073
	.long	2143618976
	.long	1424512099
	.long	1307796770
	.long	45282277
	.long	464110244
	.long	813994343
	.long	698327078
	.long	-456806728
	.long	-35741703
	.long	-688665542
	.long	-806814341
	.long	-2136380484
	.long	-1716364547
	.long	-1298200258
	.long	-1417398145
	.long	740041904
	.long	889656817
	.long	506086962
	.long	120682355
	.long	1215357364
	.long	1366020341
	.long	2051441462
	.long	1667084919
	.long	-872753330
	.long	-756947441
	.long	-104024628
	.long	-522746739
	.long	-1349119414
	.long	-1232264437
	.long	-1650429752
	.long	-2068102775
	.long	52649286
	.long	439905287
	.long	823476164
	.long	672009861
	.long	1733269570
	.long	2119477507
	.long	1434057408
	.long	1281543041
	.long	-2126985953
	.long	-1742474146
	.long	-1290885219
	.long	-1441425700
	.long	-447479781
	.long	-61918886
	.long	-681418087
	.long	-830909480
	.long	1239502615
	.long	1358593622
	.long	2077699477
	.long	1657543892
	.long	764250643
	.long	882293586
	.long	532408465
	.long	111204816
	.long	1585378284
	.long	1197851309
	.long	1816695150
	.long	1968414767
	.long	974272232
	.long	587794345
	.long	136598634
	.long	289367339
	.long	-1767409180
	.long	-1883486043
	.long	-1533994138
	.long	-1115018713
	.long	-221528864
	.long	-338653791
	.long	-1057104286
	.long	-639176925
	.long	347922877
	.long	229101820
	.long	646611775
	.long	1066513022
	.long	1892689081
	.long	1774917112
	.long	1122387515
	.long	1543337850
	.long	-597333067
	.long	-981574924
	.long	-296548041
	.long	-146261898
	.long	-1207325007
	.long	-1592614928
	.long	-1975530445
	.long	-1826292366
	.long	0
	.long	29518391
	.long	59036782
	.long	38190681
	.long	118073564
	.long	114017003
	.long	76381362
	.long	89069189
	.long	236147128
	.long	265370511
	.long	228034006
	.long	206958561
	.long	152762724
	.long	148411219
	.long	178138378
	.long	190596925
	.long	472294256
	.long	501532999
	.long	530741022
	.long	509615401
	.long	456068012
	.long	451764635
	.long	413917122
	.long	426358261
	.long	305525448
	.long	334993663
	.long	296822438
	.long	275991697
	.long	356276756
	.long	352202787
	.long	381193850
	.long	393929805
	.long	944588512
	.long	965684439
	.long	1003065998
	.long	973863097
	.long	1061482044
	.long	1049003019
	.long	1019230802
	.long	1023561829
	.long	912136024
	.long	933002607
	.long	903529270
	.long	874031361
	.long	827834244
	.long	815125939
	.long	852716522
	.long	856752605
	.long	611050896
	.long	631869351
	.long	669987326
	.long	640506825
	.long	593644876
	.long	580921211
	.long	551983394
	.long	556069653
	.long	712553512
	.long	733666847
	.long	704405574
	.long	675154545
	.long	762387700
	.long	749958851
	.long	787859610
	.long	792175277
	.long	1889177024
	.long	1901651959
	.long	1931368878
	.long	1927033753
	.long	2006131996
	.long	1985040171
	.long	1947726194
	.long	1976933189
	.long	2122964088
	.long	2135668303
	.long	2098006038
	.long	2093965857
	.long	2038461604
	.long	2017599123
	.long	2047123658
	.long	2076625661
	.long	1824272048
	.long	1836991623
	.long	1866005214
	.long	1861914857
	.long	1807058540
	.long	1786244187
	.long	1748062722
	.long	1777547317
	.long	1655668488
	.long	1668093247
	.long	1630251878
	.long	1625932113
	.long	1705433044
	.long	1684323811
	.long	1713505210
	.long	1742760333
	.long	1222101792
	.long	1226154263
	.long	1263738702
	.long	1251046777
	.long	1339974652
	.long	1310460363
	.long	1281013650
	.long	1301863845
	.long	1187289752
	.long	1191637167
	.long	1161842422
	.long	1149379777
	.long	1103966788
	.long	1074747507
	.long	1112139306
	.long	1133218845
	.long	1425107024
	.long	1429406311
	.long	1467333694
	.long	1454888457
	.long	1408811148
	.long	1379576507
	.long	1350309090
	.long	1371438805
	.long	1524775400
	.long	1528845279
	.long	1499917702
	.long	1487177649
	.long	1575719220
	.long	1546255107
	.long	1584350554
	.long	1605185389
	.long	-516613248
	.long	-520654409
	.long	-491663378
	.long	-478960167
	.long	-432229540
	.long	-402728597
	.long	-440899790
	.long	-461763323
	.long	-282703304
	.long	-287039473
	.long	-324886954
	.long	-312413087
	.long	-399514908
	.long	-370308909
	.long	-341100918
	.long	-362193731
	.long	-49039120
	.long	-53357881
	.long	-23630690
	.long	-11204951
	.long	-98955220
	.long	-69699045
	.long	-107035582
	.long	-128143755
	.long	-218044088
	.long	-222133377
	.long	-259769050
	.long	-247048431
	.long	-200719980
	.long	-171234397
	.long	-141715974
	.long	-162529331
	.long	-646423200
	.long	-658884777
	.long	-620984050
	.long	-616635591
	.long	-562956868
	.long	-541876341
	.long	-571137582
	.long	-600355867
	.long	-680850216
	.long	-693541137
	.long	-722478922
	.long	-718425471
	.long	-798841852
	.long	-777990605
	.long	-739872662
	.long	-769385891
	.long	-983630320
	.long	-996371417
	.long	-958780802
	.long	-954711991
	.long	-1034463540
	.long	-1013629701
	.long	-1043103070
	.long	-1072568171
	.long	-884101208
	.long	-896547425
	.long	-926319674
	.long	-922021391
	.long	-867956876
	.long	-846828221
	.long	-809446630
	.long	-838682323
	.long	-1850763712
	.long	-1871840137
	.long	-1842658770
	.long	-1813436391
	.long	-1767489892
	.long	-1755032405
	.long	-1792873742
	.long	-1797226299
	.long	-1615017992
	.long	-1635865137
	.long	-1674046570
	.long	-1644529247
	.long	-1732939996
	.long	-1720253165
	.long	-1691239606
	.long	-1695297155
	.long	-1920387792
	.long	-1941217529
	.long	-1911692962
	.long	-1882223767
	.long	-1971282452
	.long	-1958545445
	.long	-1996207742
	.long	-2000280651
	.long	-2087033720
	.long	-2108158273
	.long	-2145472282
	.long	-2116232495
	.long	-2070688684
	.long	-2058246557
	.long	-2028529606
	.long	-2032831987
	.long	-1444753248
	.long	-1474250089
	.long	-1436154674
	.long	-1415287047
	.long	-1360299908
	.long	-1356262837
	.long	-1385190382
	.long	-1397897691
	.long	-1477345000
	.long	-1506546897
	.long	-1535814282
	.long	-1514717375
	.long	-1594349116
	.long	-1590017037
	.long	-1552089686
	.long	-1564567651
	.long	-1245416496
	.long	-1274668569
	.long	-1237276738
	.long	-1216164471
	.long	-1295131892
	.long	-1290817221
	.long	-1320611998
	.long	-1333041835
	.long	-1143528856
	.long	-1173010337
	.long	-1202457082
	.long	-1181639631
	.long	-1126266188
	.long	-1122180989
	.long	-1084596518
	.long	-1097321235
	.long	0
	.long	-1195612315
	.long	-1442199413
	.long	313896942
	.long	-1889364137
	.long	937357362
	.long	627793884
	.long	-1646839623
	.long	-978048785
	.long	2097696650
	.long	1874714724
	.long	-687765759
	.long	1255587768
	.long	-227878691
	.long	-522225869
	.long	1482887254
	.long	1343838111
	.long	-391827206
	.long	-99573996
	.long	1118632049
	.long	-545537848
	.long	1741137837
	.long	1970407491
	.long	-842109146
	.long	-1783791760
	.long	756094997
	.long	1067759611
	.long	-2028416866
	.long	449832999
	.long	-1569484990
	.long	-1329192788
	.long	142231497
	.long	-1607291074
	.long	412010587
	.long	171665333
	.long	-1299775280
	.long	793786473
	.long	-1746116852
	.long	-2057703198
	.long	1038456711
	.long	1703315409
	.long	-583343948
	.long	-812691622
	.long	1999841343
	.long	-354152314
	.long	1381529571
	.long	1089329165
	.long	-128860312
	.long	-265553759
	.long	1217896388
	.long	1512189994
	.long	-492939441
	.long	2135519222
	.long	-940242797
	.long	-717183107
	.long	1845280792
	.long	899665998
	.long	-1927039189
	.long	-1617553211
	.long	657096608
	.long	-1157806311
	.long	37822588
	.long	284462994
	.long	-1471616777
	.long	-1693165507
	.long	598228824
	.long	824021174
	.long	-1985873965
	.long	343330666
	.long	-1396004849
	.long	-1098971167
	.long	113467524
	.long	1587572946
	.long	-434366537
	.long	-190203815
	.long	1276501820
	.long	-775755899
	.long	1769898208
	.long	2076913422
	.long	-1015592853
	.long	-888336478
	.long	1941006535
	.long	1627703081
	.long	-642211764
	.long	1148164341
	.long	-53215344
	.long	-295284610
	.long	1457141531
	.long	247015245
	.long	-1241169880
	.long	-1531908154
	.long	470583459
	.long	-2116308966
	.long	963106687
	.long	735213713
	.long	-1821499404
	.long	992409347
	.long	-2087022490
	.long	-1859174520
	.long	697522413
	.long	-1270587308
	.long	217581361
	.long	508405983
	.long	-1494102086
	.long	-23928852
	.long	1177467017
	.long	1419450215
	.long	-332959742
	.long	1911572667
	.long	-917753890
	.long	-604405712
	.long	1665525589
	.long	1799331996
	.long	-746338311
	.long	-1053399017
	.long	2039091058
	.long	-463652917
	.long	1558270126
	.long	1314193216
	.long	-152528859
	.long	-1366587277
	.long	372764438
	.long	75645176
	.long	-1136777315
	.long	568925988
	.long	-1722451903
	.long	-1948198993
	.long	861712586
	.long	-312887749
	.long	1441124702
	.long	1196457648
	.long	-1304107
	.long	1648042348
	.long	-628668919
	.long	-936187417
	.long	1888390786
	.long	686661332
	.long	-1873675855
	.long	-2098964897
	.long	978858298
	.long	-1483798141
	.long	523464422
	.long	226935048
	.long	-1254447507
	.long	-1119821404
	.long	100435649
	.long	390670639
	.long	-1342878134
	.long	841119475
	.long	-1969352298
	.long	-1741963656
	.long	546822429
	.long	2029308235
	.long	-1068978642
	.long	-755170880
	.long	1782671013
	.long	-141140452
	.long	1328167289
	.long	1570739863
	.long	-450629134
	.long	1298864389
	.long	-170426784
	.long	-412954226
	.long	1608431339
	.long	-1039561134
	.long	2058742071
	.long	1744848601
	.long	-792976964
	.long	-1998638614
	.long	811816591
	.long	584513889
	.long	-1704288764
	.long	129869501
	.long	-1090403880
	.long	-1380684234
	.long	352848211
	.long	494030490
	.long	-1513215489
	.long	-1216641519
	.long	264757620
	.long	-1844389427
	.long	715964072
	.long	941166918
	.long	-2136639965
	.long	-658086283
	.long	1618608400
	.long	1926213374
	.long	-898381413
	.long	1470427426
	.long	-283601337
	.long	-38979159
	.long	1158766284
	.long	1984818694
	.long	-823031453
	.long	-599513459
	.long	1693991400
	.long	-114329263
	.long	1100160564
	.long	1395044826
	.long	-342174017
	.long	-1275476247
	.long	189112716
	.long	435162722
	.long	-1588827897
	.long	1016811966
	.long	-2077804837
	.long	-1768777419
	.long	774831696
	.long	643086745
	.long	-1628905732
	.long	-1940033262
	.long	887166583
	.long	-1456066866
	.long	294275499
	.long	54519365
	.long	-1149009632
	.long	-471821962
	.long	1532818963
	.long	1240029693
	.long	-246071656
	.long	1820460577
	.long	-734109372
	.long	-963916118
	.long	2117577167
	.long	-696303304
	.long	1858283101
	.long	2088143283
	.long	-993333546
	.long	1495127663
	.long	-509497078
	.long	-216785180
	.long	1269332353
	.long	332098007
	.long	-1418260814
	.long	-1178427044
	.long	25085497
	.long	-1666580864
	.long	605395429
	.long	916469259
	.long	-1910746770
	.long	-2040129881
	.long	1054503362
	.long	745528876
	.long	-1798063799
	.long	151290352
	.long	-1313282411
	.long	-1559410309
	.long	464596510
	.long	1137851976
	.long	-76654291
	.long	-371460413
	.long	1365741990
	.long	-860837601
	.long	1946996346
	.long	1723425172
	.long	-570095887
	.long	0
	.long	-1775237257
	.long	744558318
	.long	-1169094247
	.long	432303367
	.long	-1879807376
	.long	900031465
	.long	-1550490466
	.long	847829774
	.long	-1531388807
	.long	518641120
	.long	-1998990697
	.long	726447625
	.long	-1115901570
	.long	120436967
	.long	-1860321392
	.long	1678817053
	.long	-232738710
	.long	1215412723
	.long	-566116732
	.long	2111101466
	.long	-337322643
	.long	1370871028
	.long	-947530877
	.long	1452829715
	.long	-1062704284
	.long	2063164157
	.long	-322345590
	.long	1331429652
	.long	-647231901
	.long	1664946170
	.long	-183695219
	.long	-937398725
	.long	1578133836
	.long	-465477419
	.long	1920034722
	.long	-773586116
	.long	1205077067
	.long	-41611822
	.long	1807026853
	.long	-89606859
	.long	1821946434
	.long	-691422245
	.long	1090108588
	.long	-479406030
	.long	1969020741
	.long	-821176612
	.long	1497223595
	.long	-1406084826
	.long	973135441
	.long	-2142119992
	.long	375509183
	.long	-1242254303
	.long	600093526
	.long	-1718240561
	.long	262520248
	.long	-1632107992
	.long	143131999
	.long	-1294398266
	.long	619252657
	.long	-2021888209
	.long	290220120
	.long	-1424137791
	.long	1026385590
	.long	-1874731914
	.long	108124929
	.long	-1138699624
	.long	705746415
	.long	-1987726991
	.long	532002310
	.long	-1511735393
	.long	869578984
	.long	-1563883656
	.long	888733711
	.long	-1901590122
	.long	412618465
	.long	-1156748673
	.long	759000328
	.long	-1754504047
	.long	22832102
	.long	-195990677
	.long	1650551836
	.long	-667916923
	.long	1308648178
	.long	-309000596
	.long	2074411291
	.long	-1040971646
	.long	1472466933
	.long	-958812059
	.long	1357494034
	.long	-356991349
	.long	2089335292
	.long	-551690910
	.long	1227741717
	.long	-209923188
	.long	1699534075
	.long	1482797645
	.long	-833505990
	.long	1946205347
	.long	-500122668
	.long	1101389642
	.long	-678045635
	.long	1841615268
	.long	-67840301
	.long	1793681731
	.long	-52859340
	.long	1183344557
	.long	-793222950
	.long	1932330052
	.long	-451083469
	.long	1598818986
	.long	-914616867
	.long	1014039888
	.long	-1438580185
	.long	269487038
	.long	-2044719927
	.long	632645719
	.long	-1283100896
	.long	164914873
	.long	-1612422706
	.long	251256414
	.long	-1731602135
	.long	580440240
	.long	-1264003129
	.long	389919577
	.long	-2129808338
	.long	995933623
	.long	-1385383232
	.long	545503469
	.long	-1229733990
	.long	216184323
	.long	-1697468044
	.long	961009130
	.long	-1351101795
	.long	354867972
	.long	-2095653773
	.long	302736355
	.long	-2076482412
	.long	1047162125
	.long	-1470469510
	.long	198119140
	.long	-1644230253
	.long	665714698
	.long	-1315043459
	.long	1150488560
	.long	-761067385
	.long	1760690462
	.long	-20838807
	.long	1566008055
	.long	-882416256
	.long	1899392025
	.long	-419009682
	.long	1981535486
	.long	-533998711
	.long	1518000656
	.long	-867508889
	.long	1876933113
	.long	-101728626
	.long	1136572183
	.long	-712069024
	.long	-391915818
	.long	2123616673
	.long	-993863624
	.long	1391648591
	.long	-244859951
	.long	1733803174
	.long	-586762945
	.long	1261875784
	.long	-634712616
	.long	1276840623
	.long	-162921674
	.long	1618609217
	.long	-1007722273
	.long	1440704424
	.long	-275878351
	.long	2042521926
	.long	-1934401077
	.long	444819132
	.long	-1596821723
	.long	920807506
	.long	-1787360052
	.long	54987707
	.long	-1189739998
	.long	791020885
	.long	-1103381819
	.long	671858098
	.long	-1839549397
	.long	74101596
	.long	-1476405310
	.long	835702965
	.long	-1952523988
	.long	497999451
	.long	-1329437541
	.long	653419500
	.long	-1667011979
	.long	177433858
	.long	-1459222116
	.long	1060507371
	.long	-2056845454
	.long	324468741
	.long	-2109030507
	.long	343587042
	.long	-1372868229
	.long	941340172
	.long	-1685138798
	.long	230610405
	.long	-1209017220
	.long	568318731
	.long	-724380794
	.long	1122161905
	.long	-122430104
	.long	1854134815
	.long	-854147455
	.long	1529264630
	.long	-512249745
	.long	2001188632
	.long	-430307192
	.long	1885999103
	.long	-902101402
	.long	1544225041
	.long	-6396529
	.long	1773036280
	.long	-738235551
	.long	1171221526
	.long	2028079776
	.long	-288223785
	.long	1417872462
	.long	-1028455623
	.long	1629906855
	.long	-149528368
	.long	1296525641
	.long	-612929986
	.long	1248514478
	.long	-598026535
	.long	1712054080
	.long	-264513481
	.long	1403960489
	.long	-979452962
	.long	2144318023
	.long	-369117904
	.long	485670333
	.long	-1966949686
	.long	814986067
	.long	-1499220956
	.long	87478458
	.long	-1828268083
	.long	693624404
	.long	-1083713245
	.long	779773619
	.long	-1203084860
	.long	35350621
	.long	-1809092822
	.long	935201716
	.long	-1584526141
	.long	467600730
	.long	-1913716179
	.long	0
	.long	1093737241
	.long	-2107492814
	.long	-1017959125
	.long	80047204
	.long	1173649277
	.long	-2035852714
	.long	-946454193
	.long	143317448
	.long	1237041873
	.long	-1964445702
	.long	-874908445
	.long	206550444
	.long	1300147893
	.long	-1909619810
	.long	-820209529
	.long	1360183882
	.long	270784851
	.long	-747572104
	.long	-1841172639
	.long	1440198190
	.long	350663991
	.long	-675964900
	.long	-1769700603
	.long	1503140738
	.long	413728923
	.long	-604361296
	.long	-1697958231
	.long	1566406630
	.long	476867839
	.long	-549502508
	.long	-1643226419
	.long	-1574665067
	.long	-485122164
	.long	541504167
	.long	1635232190
	.long	-1495144207
	.long	-405736472
	.long	612622019
	.long	1706214874
	.long	-1431413411
	.long	-341883324
	.long	684485487
	.long	1778217078
	.long	-1368706759
	.long	-279303648
	.long	738789131
	.long	1832393746
	.long	-214546721
	.long	-1308140090
	.long	1901359341
	.long	811953140
	.long	-135058757
	.long	-1228787294
	.long	1972444297
	.long	882902928
	.long	-71524585
	.long	-1165130738
	.long	2044635429
	.long	955232828
	.long	-8785037
	.long	-1102518166
	.long	2098971969
	.long	1009442392
	.long	89094640
	.long	1149133545
	.long	-2027073598
	.long	-971221797
	.long	25826708
	.long	1086000781
	.long	-2081938522
	.long	-1025951553
	.long	231055416
	.long	1291107105
	.long	-1884842486
	.long	-828994285
	.long	151047260
	.long	1211225925
	.long	-1956447634
	.long	-900472457
	.long	1415429050
	.long	359440547
	.long	-700478072
	.long	-1760651631
	.long	1352194014
	.long	296340679
	.long	-755310100
	.long	-1815348491
	.long	1557619314
	.long	501643627
	.long	-558541760
	.long	-1618718887
	.long	1477578262
	.long	421729551
	.long	-630179804
	.long	-1690229955
	.long	-1486095003
	.long	-430250372
	.long	621398871
	.long	1681444942
	.long	-1548840703
	.long	-492860904
	.long	567060275
	.long	1627241514
	.long	-1344199507
	.long	-288342092
	.long	763564703
	.long	1823607174
	.long	-1423685431
	.long	-367701040
	.long	692485883
	.long	1752655330
	.long	-159826129
	.long	-1220008906
	.long	1947928861
	.long	891949572
	.long	-222538933
	.long	-1282586542
	.long	1893623161
	.long	837779040
	.long	-17570073
	.long	-1077740034
	.long	2089930965
	.long	1033948108
	.long	-97088893
	.long	-1157131878
	.long	2018819249
	.long	962963368
	.long	1268286267
	.long	178886690
	.long	-906316535
	.long	-1999917552
	.long	1331556191
	.long	242021446
	.long	-851453587
	.long	-1945189772
	.long	1125276403
	.long	35865066
	.long	-1049596735
	.long	-2143193128
	.long	1205286551
	.long	115748238
	.long	-977993563
	.long	-2071716932
	.long	445268337
	.long	1539005032
	.long	-1729595581
	.long	-640062374
	.long	508505365
	.long	1602106892
	.long	-1674765529
	.long	-585367490
	.long	302028985
	.long	1395753888
	.long	-1872580981
	.long	-783043182
	.long	382072029
	.long	1475669956
	.long	-1800944913
	.long	-711534090
	.long	-373553234
	.long	-1467147081
	.long	1809723804
	.long	720317061
	.long	-310809654
	.long	-1404538669
	.long	1864064504
	.long	774522593
	.long	-516497818
	.long	-1610103425
	.long	1666508884
	.long	577106765
	.long	-437014014
	.long	-1530746597
	.long	1737589808
	.long	648060713
	.long	-1196505628
	.long	-106963203
	.long	986510294
	.long	2080237775
	.long	-1133794944
	.long	-44387687
	.long	1040818098
	.long	2134410411
	.long	-1339810772
	.long	-250280139
	.long	843459102
	.long	1937191175
	.long	-1260294072
	.long	-170890415
	.long	914572922
	.long	2008178019
	.long	1322777291
	.long	266789330
	.long	-860500743
	.long	-1920673824
	.long	1242732207
	.long	186879414
	.long	-932142947
	.long	-1992180860
	.long	1180508931
	.long	124532762
	.long	-1002498767
	.long	-2062676440
	.long	1117278055
	.long	61428862
	.long	-1057326763
	.long	-2117377460
	.long	533018753
	.long	1593058200
	.long	-1649996109
	.long	-594143830
	.long	453006565
	.long	1513181180
	.long	-1721605417
	.long	-665617970
	.long	391110985
	.long	1451162192
	.long	-1792157829
	.long	-736310174
	.long	327847213
	.long	1388025396
	.long	-1847018721
	.long	-791044090
	.long	-319586722
	.long	-1379769017
	.long	1855015020
	.long	799036277
	.long	-399109574
	.long	-1459156701
	.long	1783899144
	.long	728055569
	.long	-461789290
	.long	-1521959793
	.long	1713082788
	.long	657099453
	.long	-524497934
	.long	-1584541461
	.long	1658781120
	.long	602924761
	.long	-1109279724
	.long	-53434611
	.long	1065585190
	.long	2125631807
	.long	-1188769680
	.long	-132789399
	.long	994502210
	.long	2054683995
	.long	-1251252772
	.long	-195395899
	.long	923358190
	.long	1983400183
	.long	-1313994312
	.long	-258010463
	.long	869023626
	.long	1929192595
	.long	0
	.long	929743361
	.long	1859421187
	.long	1505641986
	.long	-592967417
	.long	-339555578
	.long	-1300460284
	.long	-2062135547
	.long	-1202646258
	.long	-1891905265
	.long	-695888115
	.long	-504408820
	.long	1694046729
	.long	1402198024
	.long	170761738
	.long	1028086795
	.long	1889740316
	.long	1204413469
	.long	511156767
	.long	689791006
	.long	-1408553189
	.long	-1688081126
	.long	-1025529064
	.long	-172660455
	.long	-923650798
	.long	-6752493
	.long	-1507413743
	.long	-1857260784
	.long	341457941
	.long	590413332
	.long	2056173590
	.long	1306819095
	.long	-532263624
	.long	-684945607
	.long	-1902982853
	.long	-1174926534
	.long	1022247999
	.long	193234494
	.long	1379582012
	.long	1699742269
	.long	1477926454
	.long	1870502967
	.long	918805045
	.long	27858996
	.long	-2067835087
	.long	-1277848272
	.long	-362032334
	.long	-587132621
	.long	-1864013020
	.long	-1483757275
	.long	-30281945
	.long	-916771546
	.long	1280139811
	.long	2066194466
	.long	580511264
	.long	368256033
	.long	682915882
	.long	534690347
	.long	1180761129
	.long	1896496680
	.long	-199462611
	.long	-1015631060
	.long	-1698106066
	.long	-1381877969
	.long	-1064461712
	.long	-135833487
	.long	-1369891213
	.long	-1724654478
	.long	472224631
	.long	726618486
	.long	1928402804
	.long	1167840629
	.long	2027719038
	.long	1337346943
	.long	369626493
	.long	560123772
	.long	-1535868807
	.long	-1826733448
	.long	-895482758
	.long	-37042565
	.long	-1339114388
	.long	-2025554323
	.long	-554026897
	.long	-376374674
	.long	1820767595
	.long	1542223722
	.long	38941032
	.long	892924777
	.long	142585698
	.long	1058368867
	.long	1722493793
	.long	1371662688
	.long	-724064667
	.long	-474127260
	.long	-1174199706
	.long	-1922441113
	.long	550229832
	.long	396432713
	.long	1310675787
	.long	2037748042
	.long	-60563889
	.long	-888595378
	.long	-1833477556
	.long	-1512204211
	.long	-1734687674
	.long	-1343224249
	.long	-162643899
	.long	-1054571964
	.long	1144180033
	.long	1935150912
	.long	719735106
	.long	495749955
	.long	1349054804
	.long	1728197461
	.long	1052538199
	.long	165066582
	.long	-1933510573
	.long	-1146471854
	.long	-501973936
	.long	-713114031
	.long	-398859686
	.long	-548200357
	.long	-2031262119
	.long	-1316510632
	.long	881978205
	.long	66791772
	.long	1514499934
	.long	1831841119
	.long	-2145700383
	.long	-1217267744
	.long	-288378398
	.long	-643468317
	.long	1555250406
	.long	1809448679
	.long	845658341
	.long	84769508
	.long	944383727
	.long	253813998
	.long	1453236972
	.long	1643405549
	.long	-454938648
	.long	-746000919
	.long	-1976128533
	.long	-1118017046
	.long	-256371715
	.long	-942484996
	.long	-1637050370
	.long	-1459202561
	.long	739252986
	.long	461035771
	.long	1120182009
	.long	1974361336
	.long	1223229683
	.long	2139341554
	.long	641565936
	.long	290932465
	.long	-1807676940
	.long	-1557410827
	.long	-90862089
	.long	-838905866
	.long	1616738521
	.long	1463270104
	.long	243924186
	.long	971194075
	.long	-1124765218
	.long	-1952468001
	.long	-769526307
	.long	-448055332
	.long	-670274601
	.long	-278484522
	.long	-1227296812
	.long	-2119029291
	.long	77882064
	.long	869179601
	.long	1785784019
	.long	1561994450
	.long	285105861
	.long	664050884
	.long	2116737734
	.long	1228937415
	.long	-866756670
	.long	-79915581
	.long	-1568484415
	.long	-1779953216
	.long	-1464906293
	.long	-1614442550
	.long	-964965944
	.long	-250541111
	.long	1946633420
	.long	1131251405
	.long	450085071
	.long	767099598
	.long	1083617169
	.long	2013031824
	.long	776088466
	.long	422111635
	.long	-1673615722
	.long	-1420532585
	.long	-219536747
	.long	-981409644
	.long	-121127777
	.long	-810713442
	.long	-1777125220
	.long	-1585841507
	.long	611300760
	.long	319125401
	.long	1253781915
	.long	2110911386
	.long	808814989
	.long	123685772
	.long	1591807374
	.long	1770770319
	.long	-325222262
	.long	-604552565
	.long	-2109143927
	.long	-1255946616
	.long	-2006672765
	.long	-1089578878
	.long	-424665472
	.long	-774185855
	.long	1422693252
	.long	1671844229
	.long	974657415
	.long	225629574
	.long	-1596923223
	.long	-1749409624
	.long	-838572374
	.long	-110189397
	.long	2088299438
	.long	1259481519
	.long	313290669
	.long	633777580
	.long	411169191
	.long	803943334
	.long	1985312164
	.long	1094694821
	.long	-1003882336
	.long	-213697887
	.long	-1426228061
	.long	-1650999646
	.long	-797719371
	.long	-417790284
	.long	-1096335178
	.long	-1983020361
	.long	215731634
	.long	1001459635
	.long	1645169073
	.long	1432718256
	.long	1747113915
	.long	1598559674
	.long	116806584
	.long	832344505
	.long	-1265967428
	.long	-2082464579
	.long	-631350593
	.long	-315320130
	.long	0
	.long	1701297336
	.long	-1949824598
	.long	-290474734
	.long	1469538959
	.long	854646327
	.long	-597726427
	.long	-1187457123
	.long	-282544955
	.long	-1974531971
	.long	1692450159
	.long	25625047
	.long	-1195387318
	.long	-573019406
	.long	863494112
	.long	1443914584
	.long	-1621681840
	.long	-97475096
	.long	345968890
	.long	1912122434
	.long	-926909473
	.long	-1381513369
	.long	1124627061
	.long	644861645
	.long	1887415701
	.long	353898797
	.long	-71850945
	.long	-1630529401
	.long	669568794
	.long	1116697506
	.long	-1407138128
	.long	-918062584
	.long	1051669152
	.long	1539870232
	.long	-1251525878
	.long	-805271630
	.long	1765298223
	.long	207613079
	.long	-487564923
	.long	-2020088515
	.long	-779647387
	.long	-1260373283
	.long	1515163599
	.long	1059599223
	.long	-2045713174
	.long	-478717870
	.long	232320320
	.long	1757368824
	.long	-1577571344
	.long	-996174008
	.long	707797594
	.long	1331142370
	.long	-160478849
	.long	-1828129337
	.long	2108113109
	.long	415300717
	.long	1322295093
	.long	733422477
	.long	-988244321
	.long	-1602278873
	.long	424148410
	.long	2082488578
	.long	-1836059632
	.long	-135771992
	.long	1029182619
	.long	1480566819
	.long	-1232069327
	.long	-738745975
	.long	1791981076
	.long	262720172
	.long	-519602242
	.long	-2074033402
	.long	-764370850
	.long	-1223222042
	.long	1505274356
	.long	1021252940
	.long	-2048408879
	.long	-528449943
	.long	238013307
	.long	1799911363
	.long	-1576071733
	.long	-949440141
	.long	700908641
	.long	1285601497
	.long	-174559420
	.long	-1862282244
	.long	2119198446
	.long	456645206
	.long	1294448910
	.long	675284406
	.long	-957370204
	.long	-1551365092
	.long	447798145
	.long	2144823097
	.long	-1854352853
	.long	-199266669
	.long	66528827
	.long	1720752771
	.long	-2009124975
	.long	-312962263
	.long	1415595188
	.long	822605836
	.long	-542618338
	.long	-1160777306
	.long	-320892162
	.long	-1984418234
	.long	1729600340
	.long	40904684
	.long	-1152847759
	.long	-567325495
	.long	813758939
	.long	1441219939
	.long	-1667219605
	.long	-104365101
	.long	392705729
	.long	1913621113
	.long	-885563932
	.long	-1370431140
	.long	1090475086
	.long	630778102
	.long	1938328494
	.long	384775958
	.long	-129990140
	.long	-1658372420
	.long	606071073
	.long	1098405273
	.long	-1344806773
	.long	-894411725
	.long	1001806317
	.long	1590814037
	.long	-1333899193
	.long	-719721217
	.long	1814117218
	.long	155617242
	.long	-404147512
	.long	-2104586640
	.long	-727782104
	.long	-1309060720
	.long	1599530114
	.long	976312378
	.long	-2096525401
	.long	-428985569
	.long	146900493
	.long	1839610549
	.long	-1528741699
	.long	-1048118267
	.long	791234839
	.long	1246688687
	.long	-210361806
	.long	-1777230198
	.long	2025728920
	.long	500799264
	.long	1271526520
	.long	783173824
	.long	-1073611310
	.long	-1520025238
	.long	475961079
	.long	2033789519
	.long	-1751736483
	.long	-219077659
	.long	85551949
	.long	1618925557
	.long	-1898880281
	.long	-340337057
	.long	1385040322
	.long	938063226
	.long	-649723800
	.long	-1138639664
	.long	-365830264
	.long	-1890163920
	.long	1643763234
	.long	77490842
	.long	-1113146105
	.long	-658439745
	.long	913224877
	.long	1393100821
	.long	-1706135011
	.long	-14037339
	.long	294026167
	.long	1960953615
	.long	-841412462
	.long	-1463899094
	.long	1175525688
	.long	594978176
	.long	1969669848
	.long	268532320
	.long	-22098062
	.long	-1681296438
	.long	586261591
	.long	1201019119
	.long	-1455837699
	.long	-866250427
	.long	116280694
	.long	1669984718
	.long	-1926871844
	.long	-398329756
	.long	1366896633
	.long	874419009
	.long	-625924525
	.long	-1076454677
	.long	-372835917
	.long	-1935588085
	.long	1645146137
	.long	124341409
	.long	-1101948100
	.long	-617207932
	.long	899256982
	.long	1358835246
	.long	-1715907546
	.long	-52500322
	.long	309419404
	.long	1997988148
	.long	-835832151
	.long	-1421243887
	.long	1172717315
	.long	545358779
	.long	1989271779
	.long	334912603
	.long	-44439223
	.long	-1740745231
	.long	554074732
	.long	1147223764
	.long	-1429304378
	.long	-810993794
	.long	943816662
	.long	1562821486
	.long	-1282836868
	.long	-688993596
	.long	1876303193
	.long	179413473
	.long	-467790605
	.long	-2122733493
	.long	-680932589
	.long	-1307674709
	.long	1554105017
	.long	969309697
	.long	-2130794084
	.long	-442952412
	.long	188129334
	.long	1850809486
	.long	-1491704186
	.long	-1032725954
	.long	752774956
	.long	1236915092
	.long	-259980279
	.long	-1780041551
	.long	2068385187
	.long	506376475
	.long	1212076611
	.long	760835835
	.long	-1007232023
	.long	-1500420271
	.long	531214540
	.long	2060323956
	.long	-1805534874
	.long	-251263522
	.size	crc_table, 8192
# ----------------------
	.data
	.align 4
	.local	static_bl_desc
	.type	static_bl_desc, @object
static_bl_desc:
	.long	0
	.long	extra_blbits
	.long	0
	.long	19
	.long	7
	.size	static_bl_desc, 20
# ----------------------
	.local	static_d_desc
	.type	static_d_desc, @object
static_d_desc:
	.long	static_dtree
	.long	extra_dbits
	.long	0
	.long	30
	.long	15
	.size	static_d_desc, 20
# ----------------------
	.local	static_l_desc
	.type	static_l_desc, @object
static_l_desc:
	.long	static_ltree
	.long	extra_lbits
	.long	257
	.long	286
	.long	15
	.size	static_l_desc, 20
# ----------------------
	.bss
	.globl	prog
	.type	prog, @object
prog:
	.zero	4
	.size	prog, 4
# ----------------------
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
