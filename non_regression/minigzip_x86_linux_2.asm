	.text
	.local	call_gmon_start
	.type	call_gmon_start, @function
call_gmon_start:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	call      .L080488C5
.L080488C5:
	popl      %ebx
	addl      $68043, %ebx
	pushl     %edx
	movl      -4(%ebx), %eax
	testl     %eax, %eax
	je        .L080488D9
.L080488D7:
	call      *%eax
.L080488D9:
	popl      %eax
	popl      %ebx
	leave     
	ret       
	.size	call_gmon_start, .-call_gmon_start
# ----------------------
	.globl	error
	.type	error, @function
error:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	pushl     8(%ebp)
	pushl     prog
	pushl     $.LC08054628
	pushl     stderr
	call      fprintf
.L0804895F:
	movl      $1, (%esp)
	call      exit
	.size	error, .-error
# ----------------------
.L0804896B:
	.p2align 2
# ----------------------
	.globl	gz_compress
	.type	gz_compress, @function
gz_compress:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16412, %esp
	movl      8(%ebp), %esi
	leal      -16408(%ebp), %edi
	jmp       .L08048996
.L08048983:
	.p2align 2
.L08048984:
	pushl     %ecx
	pushl     %ebx
	pushl     %edi
	pushl     12(%ebp)
	call      gzwrite
.L0804898F:
	addl      $16, %esp
	cmpl      %ebx, %eax
	jne       .L080489EF
.L08048996:
	pushl     %esi
	pushl     $16384
	pushl     $1
	pushl     %edi
	call      fread
.L080489A4:
	movl      %eax, %ebx
	movl      %esi, (%esp)
	call      ferror
.L080489AE:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L080489DA
.L080489B5:
	testl     %ebx, %ebx
	jne       .L08048984
.L080489B9:
	subl      $12, %esp
	pushl     %esi
	call      fclose
.L080489C2:
	popl      %edx
	pushl     12(%ebp)
	call      gzclose
.L080489CB:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048A1E
.L080489D2:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080489DA:
	subl      $12, %esp
	pushl     $.LC08054630
	call      perror
.L080489E7:
	popl      %ebx
.L080489E8:
	pushl     $1
	call      exit
.L080489EF:
	subl      $8, %esp
	leal      -16412(%ebp), %eax
	pushl     %eax
	pushl     12(%ebp)
	call      gzerror
.L08048A01:
	addl      $16, %esp
	pushl     %eax
.L08048A05:
	pushl     prog
	pushl     $.LC08054628
	pushl     stderr
	call      fprintf
.L08048A1B:
	popl      %eax
	jmp       .L080489E8
.L08048A1E:
	pushl     $.LC08054636
	jmp       .L08048A05
	.size	gz_compress, .-gz_compress
# ----------------------
.L08048A25:
	.p2align 3
# ----------------------
	.globl	gz_uncompress
	.type	gz_uncompress, @function
gz_uncompress:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $16412, %esp
	movl      8(%ebp), %edi
	leal      -16408(%ebp), %esi
	jmp       .L08048A53
.L08048A3F:
	.p2align 3
.L08048A40:
	pushl     12(%ebp)
	pushl     %eax
	pushl     $1
	pushl     %esi
	call      fwrite
.L08048A4C:
	addl      $16, %esp
	cmpl      %ebx, %eax
	jne       .L08048ACB
.L08048A53:
	pushl     %eax
	pushl     $16384
	pushl     %esi
	pushl     %edi
	call      gzread
.L08048A60:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ebx
	jl        .L08048A95
.L08048A69:
	jne       .L08048A40
.L08048A6B:
	subl      $12, %esp
	pushl     12(%ebp)
	call      fclose
.L08048A76:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048AD9
.L08048A7D:
	subl      $12, %esp
	pushl     %edi
	call      gzclose
.L08048A86:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L08048AD2
.L08048A8D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08048A95:
	subl      $8, %esp
	leal      -16412(%ebp), %eax
	pushl     %eax
	pushl     %edi
	call      gzerror
.L08048AA5:
	addl      $16, %esp
	pushl     %eax
.L08048AA9:
	pushl     prog
	pushl     $.LC08054628
	pushl     stderr
	call      fprintf
.L08048ABF:
	movl      $1, (%esp)
	call      exit
.L08048ACB:
	pushl     $.LC08054645
	jmp       .L08048AA9
.L08048AD2:
	pushl     $.LC08054636
	jmp       .L08048AA9
.L08048AD9:
	pushl     $.LC08054653
	jmp       .L08048AA9
	.size	gz_uncompress, .-gz_uncompress
# ----------------------
	.globl	file_compress
	.type	file_compress, @function
file_compress:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1036, %esp
	movl      8(%ebp), %ebx
	xorl      %eax, %eax
	cld       
	movl      $-1, %ecx
	movl      %ebx, %edi
	repnz scasb     
	notl      %ecx
	addl      $2, %ecx
	cmpl      $1023, %ecx
	ja        .L08048B6B
.L08048B08:
	subl      $12, %esp
	pushl     $.LC08054661
	pushl     %ebx
	pushl     $.LC080546D6
	pushl     $1024
	leal      -1048(%ebp), %esi
	pushl     %esi
	call      snprintf
.L08048B27:
	addl      $24, %esp
	pushl     $.LC08054665
	pushl     %ebx
	call      fopen
.L08048B35:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L08048B8E
.L08048B3E:
	subl      $8, %esp
	pushl     12(%ebp)
	pushl     %esi
	call      gzopen
.L08048B4A:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048B99
.L08048B51:
	subl      $8, %esp
	pushl     %eax
	pushl     %edi
	call      gz_compress
.L08048B5B:
	movl      %ebx, (%esp)
	call      unlink
.L08048B63:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08048B6B:
	pushl     %eax
	pushl     prog
	pushl     $.LC08054668
.L08048B77:
	pushl     stderr
	call      fprintf
.L08048B82:
	movl      $1, (%esp)
	call      exit
.L08048B8E:
	subl      $12, %esp
	pushl     %ebx
	call      perror
.L08048B97:
	jmp       .L08048B82
.L08048B99:
	pushl     %esi
	pushl     prog
	pushl     $.LC0805467F
	jmp       .L08048B77
	.size	file_compress, .-file_compress
# ----------------------
.L08048BA7:
	.p2align 3
# ----------------------
	.globl	file_uncompress
	.type	file_uncompress, @function
file_uncompress:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $1052, %esp
	movl      8(%ebp), %esi
	xorl      %eax, %eax
	movl      %esi, %edi
	cld       
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	leal      -1(%ecx), %edi
	addl      $2, %ecx
	cmpl      $1023, %ecx
	ja        .L08048CAB
.L08048BD7:
	pushl     %esi
	pushl     $.LC080546D8
	pushl     $1024
	leal      -1048(%ebp), %edx
	pushl     %edx
	call      snprintf
.L08048BEE:
	addl      $16, %esp
	cmpl      $3, %edi
	jbe       .L08048C02
.L08048BF6:
	leal      (%esi,%edi), %ebx
	cmpb      $46, -3(%ebx)
	leal      -3(%ebx), %edx
	je        .L08048C7C
.L08048C02:
	pushl     $.LC08054661
	movl      $1024, %edx
	pushl     $.LC080546D8
	subl      %edi, %edx
	leal      -1048(%ebp), %ebx
	pushl     %edx
	leal      (%ebx,%edi), %eax
	pushl     %eax
	movl      %esi, -1052(%ebp)
	call      snprintf
.L08048C29:
	addl      $16, %esp
.L08048C2C:
	subl      $8, %esp
	pushl     $.LC08054665
	pushl     %ebx
	call      gzopen
.L08048C3A:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L08048CCE
.L08048C47:
	subl      $8, %esp
	pushl     $.LC08054694
	pushl     -1052(%ebp)
	call      fopen
.L08048C5A:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048CDC
.L08048C61:
	subl      $8, %esp
	pushl     %eax
	pushl     %edi
	call      gz_uncompress
.L08048C6B:
	movl      %ebx, (%esp)
	call      unlink
.L08048C73:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08048C7B:
	.p2align 2
.L08048C7C:
	cmpb      $103, 1(%edx)
	jne       .L08048C02
.L08048C82:
	cmpb      $122, 2(%edx)
	jne       .L08048C02
.L08048C8C:
	cmpb      $0, 3(%edx)
	jne       .L08048C02
.L08048C96:
	leal      -1048(%ebp), %ecx
	movl      %esi, %ebx
	movl      %ecx, -1052(%ebp)
	movb      $0, -3(%ecx,%edi)
	jmp       .L08048C2C
.L08048CAB:
	pushl     %eax
	pushl     prog
	pushl     $.LC08054668
.L08048CB7:
	pushl     stderr
	call      fprintf
.L08048CC2:
	movl      $1, (%esp)
	call      exit
.L08048CCE:
	pushl     %ebx
	pushl     prog
	pushl     $.LC0805467F
	jmp       .L08048CB7
.L08048CDC:
	subl      $12, %esp
	pushl     %esi
	call      perror
.L08048CE5:
	jmp       .L08048CC2
	.size	file_uncompress, .-file_uncompress
# ----------------------
.L08048CE7:
	.p2align 3
# ----------------------
	.globl	main
	.type	main, @function
main:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	andl      $-16, %esp
	subl      $16, %esp
	pushl     $.LC08054697
	pushl     $.LC080546D8
	pushl     $20
	leal      -56(%ebp), %edx
	movl      12(%ebp), %esi
	pushl     %edx
	movl      $0, -60(%ebp)
	movl      $0, -64(%ebp)
	call      snprintf
.L08048D1D:
	subl      $8, %esp
	movl      (%esi), %eax
	movl      %eax, prog
	pushl     $47
	pushl     (%esi)
	call      strrchr
.L08048D30:
	addl      $32, %esp
	testl     %eax, %eax
	je        .L0804900F
.L08048D3B:
	incl      %eax
	movl      %eax, -68(%ebp)
.L08048D3F:
	addl      $4, %esi
	movl      %esi, -72(%ebp)
	movl      8(%ebp), %ebx
	cld       
	movl      -68(%ebp), %esi
	movl      $.LC0805469C, %edi
	movl      $7, %ecx
	decl      %ebx
	repz cmpsb     
	jne       .L08048EA1
.L08048D5F:
	movl      $1, -64(%ebp)
.L08048D66:
	testl     %ebx, %ebx
	jle       .L08048D94
.L08048D6A:
	.p2align 2
.L08048D6C:
	movl      -72(%ebp), %edx
	movl      (%edx), %eax
	cmpb      $45, (%eax)
	jne       .L08048DF4
.L08048D76:
	cmpb      $99, 1(%eax)
	jne       .L08048DF4
.L08048D7C:
	cmpb      $0, 2(%eax)
	jne       .L08048DF4
.L08048D82:
	movl      $1, -60(%ebp)
	decl      %ebx
	addl      $4, -72(%ebp)
	.p2align 3
.L08048D90:
	testl     %ebx, %ebx
	jg        .L08048D6C
.L08048D94:
	cmpb      $32, -53(%ebp)
	je        .L08048FA2
.L08048D9E:
	testl     %ebx, %ebx
	jne       .L08048F1E
.L08048DA6:
	movl      -64(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L08048FAB
.L08048DB1:
	subl      $8, %esp
	pushl     $.LC08054665
	pushl     stdin
	call      fileno
.L08048DC4:
	movl      %eax, (%esp)
	call      gzdopen
.L08048DCC:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08049040
.L08048DD7:
	subl      $8, %esp
	pushl     stdout
	pushl     %eax
	call      gz_uncompress
.L08048DE6:
	addl      $16, %esp
.L08048DE9:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L08048DF3:
	.p2align 2
.L08048DF4:
	cmpb      $45, (%eax)
	jne       .L08048E18
.L08048DF9:
	cmpb      $100, 1(%eax)
	jne       .L08048E18
.L08048DFF:
	cmpb      $0, 2(%eax)
	jne       .L08048E18
.L08048E05:
	decl      %ebx
	addl      $4, -72(%ebp)
	movl      $1, -64(%ebp)
	jmp       .L08048D90
.L08048E16:
	.p2align 3
.L08048E18:
	cmpb      $45, (%eax)
	jne       .L08048E38
.L08048E1D:
	cmpb      $102, 1(%eax)
	jne       .L08048E38
.L08048E23:
	cmpb      $0, 2(%eax)
	jne       .L08048E38
.L08048E29:
	decl      %ebx
	addl      $4, -72(%ebp)
	movb      $102, -53(%ebp)
	jmp       .L08048D90
.L08048E37:
	.p2align 3
.L08048E38:
	cmpb      $45, (%eax)
	jne       .L08048E58
.L08048E3D:
	cmpb      $104, 1(%eax)
	jne       .L08048E58
.L08048E43:
	cmpb      $0, 2(%eax)
	jne       .L08048E58
.L08048E49:
	decl      %ebx
	addl      $4, -72(%ebp)
	movb      $104, -53(%ebp)
	jmp       .L08048D90
.L08048E57:
	.p2align 3
.L08048E58:
	cmpb      $45, (%eax)
	jne       .L08048E6C
.L08048E5D:
	cmpb      $114, 1(%eax)
	jne       .L08048E6C
.L08048E63:
	cmpb      $0, 2(%eax)
	je        .L08048ECA
.L08048E69:
	.p2align 2
.L08048E6C:
	cmpb      $45, (%eax)
	jne       .L08048D94
.L08048E75:
	movb      1(%eax), %dl
	cmpb      $48, %dl
	jle       .L08048D94
.L08048E81:
	cmpb      $57, %dl
	jg        .L08048D94
.L08048E8A:
	cmpb      $0, 2(%eax)
	jne       .L08048D94
.L08048E94:
	decl      %ebx
	addl      $4, -72(%ebp)
	movb      %dl, -54(%ebp)
	jmp       .L08048D90
.L08048EA1:
	cld       
	movl      -68(%ebp), %esi
	movl      $.LC080546A3, %edi
	movl      $5, %ecx
	repz cmpsb     
	jne       .L08048D66
.L08048EB7:
	movl      $1, -64(%ebp)
	movl      $1, -60(%ebp)
	jmp       .L08048D66
.L08048ECA:
	decl      %ebx
	addl      $4, -72(%ebp)
	movb      $82, -53(%ebp)
	jmp       .L08048D90
.L08048ED8:
	movl      -60(%ebp), %esi
	testl     %esi, %esi
	je        .L08048F7C
.L08048EE3:
	subl      $8, %esp
	pushl     $.LC08054665
	movl      -72(%ebp), %edi
	pushl     (%edi)
	call      gzopen
.L08048EF5:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08048FE0
.L08048F00:
	subl      $8, %esp
	pushl     stdout
	pushl     %eax
	call      gz_uncompress
.L08048F0F:
	.p2align 3
.L08048F10:
	addl      $16, %esp
	addl      $4, -72(%ebp)
	decl      %ebx
	je        .L08048DE9
.L08048F1E:
	movl      -64(%ebp), %edi
	testl     %edi, %edi
	jne       .L08048ED8
.L08048F25:
	movl      -60(%ebp), %edx
	testl     %edx, %edx
	je        .L08048F8C
.L08048F2C:
	subl      $8, %esp
	pushl     $.LC08054665
	movl      -72(%ebp), %eax
	pushl     (%eax)
	call      fopen
.L08048F3E:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L08048FFD
.L08048F4B:
	subl      $8, %esp
	leal      -56(%ebp), %ecx
	pushl     %ecx
	pushl     stdout
	call      fileno
.L08048F5D:
	movl      %eax, (%esp)
	call      gzdopen
.L08048F65:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08049019
.L08048F70:
	subl      $8, %esp
	pushl     %eax
	pushl     %esi
	call      gz_compress
.L08048F7A:
	jmp       .L08048F10
.L08048F7C:
	subl      $12, %esp
	movl      -72(%ebp), %ecx
	pushl     (%ecx)
	call      file_uncompress
.L08048F89:
	jmp       .L08048F10
.L08048F8B:
	.p2align 2
.L08048F8C:
	subl      $8, %esp
	leal      -56(%ebp), %edx
	pushl     %edx
	movl      -72(%ebp), %esi
	pushl     (%esi)
	call      file_compress
.L08048F9D:
	jmp       .L08048F10
.L08048FA2:
	movb      $0, -53(%ebp)
	jmp       .L08048D9E
.L08048FAB:
	subl      $8, %esp
	leal      -56(%ebp), %eax
	pushl     %eax
	pushl     stdout
	call      fileno
.L08048FBD:
	movl      %eax, (%esp)
	call      gzdopen
.L08048FC5:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08049019
.L08048FCC:
	subl      $8, %esp
	pushl     %eax
	pushl     stdin
	call      gz_compress
.L08048FDB:
	jmp       .L08048DE6
.L08048FE0:
	pushl     (%edi)
	pushl     prog
	pushl     $.LC0805467F
	pushl     stderr
	call      fprintf
.L08048FF8:
	jmp       .L08048F10
.L08048FFD:
	subl      $12, %esp
	movl      -72(%ebp), %edi
	pushl     (%edi)
	call      perror
.L0804900A:
	jmp       .L08048F10
.L0804900F:
	movl      (%esi), %ecx
	movl      %ecx, -68(%ebp)
	jmp       .L08048D3F
.L08049019:
	pushl     $.LC080546A8
.L0804901E:
	pushl     prog
	pushl     $.LC08054628
	pushl     stderr
	call      fprintf
.L08049034:
	movl      $1, (%esp)
	call      exit
.L08049040:
	pushl     $.LC080546BD
	jmp       .L0804901E
	.size	main, .-main
# ----------------------
.L08049047:
	.p2align 3
# ----------------------
	.globl	gzclose
	.type	gzclose, @function
gzclose:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0804906A
.L08049052:
	cmpl      $7247, 16(%eax)
	je        .L08049064
.L0804905B:
	movl      %eax, 8(%ebp)
	leave     
	jmp       gzclose_w
.L08049064:
	leave     
	jmp       gzclose_r
.L0804906A:
	movl      $-2, %eax
	leave     
	ret       
	.size	gzclose, .-gzclose
# ----------------------
.L08049071:
	.p2align 2
# ----------------------
	.hidden	gz_error
	.globl	gz_error
	.type	gz_error, @function
gz_error:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %ebx
	movl      92(%ebx), %eax
	testl     %eax, %eax
	movl      12(%ebp), %edi
	movl      16(%ebp), %esi
	je        .L080490A6
.L0804908D:
	cmpl      $-4, 88(%ebx)
	je        .L0804909F
.L08049093:
	subl      $12, %esp
	pushl     %eax
	call      free
.L0804909C:
	addl      $16, %esp
.L0804909F:
	movl      $0, 92(%ebx)
.L080490A6:
	testl     %edi, %edi
	je        .L080490B5
.L080490AA:
	cmpl      $-5, %edi
	je        .L080490B5
.L080490AF:
	movl      $0, (%ebx)
.L080490B5:
	testl     %esi, %esi
	movl      %edi, 88(%ebx)
	je        .L08049128
.L080490BC:
	cmpl      $-4, %edi
	je        .L08049128
.L080490C1:
	movl      24(%ebx), %edi
	xorl      %eax, %eax
	cld       
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, %edx
	movl      %esi, %edi
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	subl      $12, %esp
	subl      %edx, %ecx
	pushl     %ecx
	call      malloc
.L080490E6:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	movl      %eax, 92(%ebx)
	je        .L08049130
.L080490F2:
	subl      $8, %esp
	pushl     %esi
	pushl     $.LC080546D1
	pushl     24(%ebx)
	pushl     $.LC080546D4
	movl      24(%ebx), %edi
	cld       
	xorl      %eax, %eax
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, %ebx
	movl      %esi, %edi
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	subl      %ebx, %ecx
	pushl     %ecx
	pushl     %edx
	call      snprintf
.L08049126:
	.p2align 3
.L08049128:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049130:
	movl      $-4, 88(%ebx)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	gz_error, .-gz_error
# ----------------------
.L0804913F:
	.p2align 3
# ----------------------
	.local	gz_open
	.type	gz_open, @function
gz_open:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      %eax, -16(%ebp)
	movl      %edx, -20(%ebp)
	movl      -16(%ebp), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	movl      8(%ebp), %edi
	movl      $0, -24(%ebp)
	je        .L080492CB
.L08049166:
	subl      $12, %esp
	pushl     $152
	call      malloc
.L08049173:
	movl      %eax, %ebx
	addl      $16, %esp
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L080492CB
.L08049182:
	movl      $0, 28(%ebx)
	movl      $8192, 32(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, -32(%ebp)
	movl      $0, -28(%ebp)
	movb      (%edi), %dl
	xorl      %ecx, %ecx
	testb     %dl, %dl
	movl      $-1, %esi
	je        .L080491CC
.L080491B2:
	.p2align 2
.L080491B4:
	leal      -48(%edx), %eax
	cmpb      $9, %al
	ja        .L080492D4
.L080491BF:
	movsbl    %dl, %eax
	leal      -48(%eax), %esi
.L080491C5:
	incl      %edi
.L080491C6:
	movb      (%edi), %dl
	testb     %dl, %dl
	jne       .L080491B4
.L080491CC:
	movl      -32(%ebp), %edx
	movl      -28(%ebp), %edi
	testl     %ecx, %ecx
	movl      %ecx, 16(%ebx)
	movl      %esi, 68(%ebx)
	movl      %edx, 72(%ebx)
	movl      %edi, 44(%ebx)
	je        .L08049338
.L080491E6:
	cmpl      $7247, %ecx
	jne       .L08049200
.L080491EE:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	jne       .L08049338
.L080491F9:
	movl      $1, 44(%ebx)
.L08049200:
	xorl      %eax, %eax
	movl      -16(%ebp), %edi
	cld       
	movl      $-1, %ecx
	repnz scasb     
	movl      %ecx, %esi
	subl      $12, %esp
	notl      %esi
	pushl     %esi
	call      malloc
.L0804921A:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 24(%ebx)
	je        .L08049338
.L08049228:
	pushl     -16(%ebp)
	pushl     $.LC080546D8
	pushl     %esi
	pushl     %eax
	call      snprintf
.L08049237:
	movl      16(%ebx), %edx
	addl      $16, %esp
	cmpl      $7247, %edx
	movl      $32768, %eax
	je        .L08049267
.L0804924A:
	cmpl      $1, -24(%ebp)
	sbbl      %eax, %eax
	andl      $-128, %eax
	addl      $193, %eax
	cmpl      $31153, %edx
	je        .L080493AD
.L08049264:
	orb       $132, %ah
.L08049267:
	movl      -20(%ebp), %edx
	cmpl      $-1, %edx
	jle       .L080493E3
.L08049273:
	cmpl      $-1, %edx
	movl      %edx, 20(%ebx)
	je        .L0804940A
.L0804927F:
	movl      16(%ebx), %eax
	cmpl      $1, %eax
	je        .L080492EA
.L08049287:
	cmpl      $7247, %eax
	je        .L080493B5
.L08049292:
	cmpl      $7247, %eax
	movl      $0, (%ebx)
	je        .L08049302
.L0804929F:
	movl      $0, 84(%ebx)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %ebx
	call      gz_error
.L080492B1:
	addl      $16, %esp
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	movl      $0, 100(%ebx)
	movl      %ebx, %eax
.L080492CB:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080492D3:
	.p2align 2
.L080492D4:
	movsbl    %dl, %eax
	subl      $43, %eax
	cmpl      $77, %eax
	ja        .L080491C5
.L080492E3:
	jmp       *.LC080546F4(,%eax,4)
.L080492EA:
	movw      $31153, %ax
	cmpl      $7247, %eax
	movl      $31153, 16(%ebx)
	movl      $0, (%ebx)
	jne       .L0804929F
.L08049302:
	movl      $0, 60(%ebx)
	movl      $0, 64(%ebx)
	movl      $0, 48(%ebx)
	jmp       .L0804929F
.L08049319:
	incl      %edi
	movl      $1, -24(%ebp)
	jmp       .L080491C6
.L08049326:
	movl      %ecx, 16(%ebx)
	movl      %esi, 68(%ebx)
	movl      -28(%ebp), %ecx
	movl      -32(%ebp), %esi
	movl      %esi, 72(%ebx)
	movl      %ecx, 44(%ebx)
.L08049338:
	subl      $12, %esp
.L0804933B:
	pushl     %ebx
	call      free
.L08049341:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L0804934B:
	incl      %edi
	movl      $4, -32(%ebp)
	jmp       .L080491C6
.L08049358:
	incl      %edi
	movl      $3, -32(%ebp)
	jmp       .L080491C6
.L08049365:
	incl      %edi
	movl      $1, -28(%ebp)
	jmp       .L080491C6
.L08049372:
	movl      $1, %ecx
	incl      %edi
	jmp       .L080491C6
.L0804937D:
	incl      %edi
	movl      $1, -32(%ebp)
	jmp       .L080491C6
.L0804938A:
	incl      %edi
	movl      $2, -32(%ebp)
	jmp       .L080491C6
.L08049397:
	movl      $7247, %ecx
	incl      %edi
	jmp       .L080491C6
.L080493A2:
	movl      $31153, %ecx
	incl      %edi
	jmp       .L080491C6
.L080493AD:
	orb       $130, %ah
	jmp       .L08049267
.L080493B5:
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     %edx
	call      lseek64
.L080493C1:
	movl      %edx, %ecx
	movl      %eax, %esi
	andl      %ecx, %esi
	addl      $16, %esp
	incl      %esi
	jne       .L080493FC
.L080493CD:
	movl      16(%ebx), %eax
	movl      $0, 52(%ebx)
	movl      $0, 56(%ebx)
	jmp       .L08049292
.L080493E3:
	pushl     %ecx
	pushl     $438
	pushl     %eax
	pushl     -16(%ebp)
	call      open
.L080493F2:
	movl      %eax, %edx
	addl      $16, %esp
	jmp       .L08049273
.L080493FC:
	movl      %eax, 52(%ebx)
	movl      16(%ebx), %eax
	movl      %ecx, 56(%ebx)
	jmp       .L08049292
.L0804940A:
	subl      $12, %esp
	pushl     24(%ebx)
	call      free
.L08049415:
	popl      %edx
	jmp       .L0804933B
	.size	gz_open, .-gz_open
# ----------------------
.L0804941B:
	.p2align 2
# ----------------------
	.globl	gzopen
	.type	gzopen, @function
gzopen:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %edx
	movl      8(%ebp), %eax
	movl      %edx, 8(%ebp)
	movl      $-1, %edx
	leave     
	jmp       gz_open
	.size	gzopen, .-gzopen
# ----------------------
.L08049433:
	.p2align 2
# ----------------------
	.globl	gzopen64
	.type	gzopen64, @function
gzopen64:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %edx
	movl      8(%ebp), %eax
	movl      %edx, 8(%ebp)
	movl      $-1, %edx
	leave     
	jmp       gz_open
	.size	gzopen64, .-gzopen64
# ----------------------
.L0804944B:
	.p2align 2
# ----------------------
	.globl	gzdopen
	.type	gzdopen, @function
gzdopen:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %ebx
	cmpl      $-1, %ebx
	je        .L0804949C
.L08049459:
	subl      $12, %esp
	pushl     $19
	call      malloc
.L08049463:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %esi
	je        .L0804949C
.L0804946C:
	pushl     %ebx
	pushl     $.LC080546DB
	pushl     $19
	pushl     %eax
	call      snprintf
.L0804947A:
	popl      %ecx
	pushl     12(%ebp)
	movl      %ebx, %edx
	movl      %esi, %eax
	call      gz_open
.L08049487:
	movl      %esi, (%esp)
	movl      %eax, %ebx
	call      free
.L08049491:
	leal      -8(%ebp), %esp
	movl      %ebx, %eax
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L0804949A:
	.p2align 2
.L0804949C:
	leal      -8(%ebp), %esp
	popl      %ebx
	xorl      %eax, %eax
	popl      %esi
	leave     
	ret       
	.size	gzdopen, .-gzdopen
# ----------------------
.L080494A5:
	.p2align 3
# ----------------------
	.globl	gzbuffer
	.type	gzbuffer, @function
gzbuffer:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	pushl     %ebx
	movl      12(%ebp), %ecx
	movl      $-1, %ebx
	je        .L080494E9
.L080494BB:
	movl      16(%eax), %edx
	cmpl      $7247, %edx
	je        .L080494CE
.L080494C6:
	cmpl      $31153, %edx
	jne       .L080494E9
.L080494CE:
	movl      28(%eax), %edx
	testl     %edx, %edx
	movl      $-1, %ebx
	jne       .L080494E9
.L080494DA:
	cmpl      $1, %ecx
	ja        .L080494E4
.L080494DF:
	movl      $2, %ecx
.L080494E4:
	movl      %ecx, 32(%eax)
	xorl      %ebx, %ebx
.L080494E9:
	movl      %ebx, %eax
	popl      %ebx
	leave     
	ret       
	.size	gzbuffer, .-gzbuffer
# ----------------------
.L080494EE:
	.p2align 3
# ----------------------
	.globl	gzrewind
	.type	gzrewind, @function
gzrewind:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %ebx
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	movl      $-1, %edx
	je        .L0804951B
.L08049501:
	cmpl      $7247, 16(%ebx)
	jne       .L08049516
.L0804950A:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	je        .L08049524
.L08049511:
	cmpl      $-5, %eax
	je        .L08049524
.L08049516:
	movl      $-1, %edx
.L0804951B:
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L08049522:
	.p2align 2
.L08049524:
	pushl     $0
	pushl     56(%ebx)
	pushl     52(%ebx)
	pushl     20(%ebx)
	call      lseek64
.L08049534:
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      $-1, %edx
	je        .L0804951B
.L08049541:
	cmpl      $7247, 16(%ebx)
	movl      $0, (%ebx)
	je        .L08049584
.L08049550:
	movl      $0, 84(%ebx)
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     %ebx
	call      gz_error
.L08049562:
	movl      $0, 8(%ebx)
	movl      $0, 12(%ebx)
	movl      $0, 100(%ebx)
	xorl      %edx, %edx
	addl      $16, %esp
	movl      %edx, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L08049583:
	.p2align 2
.L08049584:
	movl      $0, 60(%ebx)
	movl      $0, 64(%ebx)
	movl      $0, 48(%ebx)
	jmp       .L08049550
	.size	gzrewind, .-gzrewind
# ----------------------
.L0804959B:
	.p2align 2
# ----------------------
	.globl	gzseek64
	.type	gzseek64, @function
gzseek64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      12(%ebp), %ebx
	movl      16(%ebp), %esi
	movl      20(%ebp), %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L0804963F
.L080495C3:
	movl      16(%edi), %ecx
	cmpl      $7247, %ecx
	je        .L080495D6
.L080495CE:
	cmpl      $31153, %ecx
	jne       .L0804963F
.L080495D6:
	movl      88(%edi), %edx
	testl     %edx, %edx
	movl      %edx, -28(%ebp)
	jne       .L08049650
.L080495E0:
	cmpl      $1, %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	ja        .L0804963F
.L080495F3:
	testl     %eax, %eax
	jne       .L0804966C
.L080495F7:
	subl      8(%edi), %ebx
	sbbl      12(%edi), %esi
.L080495FD:
	cmpl      $7247, %ecx
	movl      $0, 84(%edi)
	je        .L08049688
.L0804960C:
	testl     %esi, %esi
	js        .L08049754
.L08049614:
	cmpl      $7247, %ecx
	je        .L08049728
.L08049620:
	movl      %esi, %eax
	orl       %ebx, %eax
	je        .L08049633
.L08049626:
	movl      $1, 84(%edi)
	movl      %ebx, 76(%edi)
	movl      %esi, 80(%edi)
.L08049633:
	addl      8(%edi), %ebx
	adcl      12(%edi), %esi
	movl      %ebx, -24(%ebp)
	movl      %esi, -20(%ebp)
.L0804963F:
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %edx
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804964D:
	.p2align 3
.L08049650:
	cmpl      $-5, %edx
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L080495E0
.L08049667:
	jmp       .L0804963F
.L08049669:
	.p2align 2
.L0804966C:
	movl      84(%edi), %eax
	testl     %eax, %eax
	je        .L080495FD
.L08049673:
	addl      76(%edi), %ebx
	adcl      80(%edi), %esi
	cmpl      $7247, %ecx
	movl      $0, 84(%edi)
	jne       .L0804960C
.L08049688:
	cmpl      $1, 48(%edi)
	jne       .L0804960C
.L08049692:
	movl      8(%edi), %eax
	addl      %ebx, %eax
	movl      12(%edi), %edx
	adcl      %esi, %edx
	testl     %edx, %edx
	js        .L0804960C
.L080496A4:
	pushl     $1
	movl      (%edi), %eax
	xorl      %ecx, %ecx
	movl      %ecx, -36(%ebp)
	movl      %eax, -40(%ebp)
	movl      %ebx, %ecx
	subl      -40(%ebp), %ecx
	movl      %esi, %edx
	sbbl      -36(%ebp), %edx
	pushl     %edx
	pushl     %ecx
	pushl     20(%edi)
	call      lseek64
.L080496C4:
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	je        .L0804963F
.L080496DE:
	movl      $0, (%edi)
	movl      $0, 60(%edi)
	movl      $0, 64(%edi)
	movl      $0, 84(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %edi
	call      gz_error
.L08049704:
	movl      8(%edi), %ecx
	addl      %ebx, %ecx
	movl      12(%edi), %edx
	adcl      %esi, %edx
	movl      $0, 100(%edi)
	movl      %ecx, 8(%edi)
	movl      %edx, 12(%edi)
	movl      %ecx, -24(%ebp)
	movl      %edx, -20(%ebp)
	jmp       .L0804963F
.L08049726:
	.p2align 3
.L08049728:
	xorl      %edx, %edx
	cmpl      %esi, %edx
	movl      (%edi), %eax
	jl        .L08049738
.L08049730:
	jg        .L080497A9
.L08049732:
	cmpl      %ebx, %eax
	ja        .L080497A9
.L08049736:
	.p2align 3
.L08049738:
	movl      (%edi), %eax
	movl      %eax, %ecx
.L0804973C:
	subl      %eax, %ecx
	movl      %ecx, (%edi)
	addl      %eax, 4(%edi)
	xorl      %ecx, %ecx
	addl      %eax, 8(%edi)
	adcl      %ecx, 12(%edi)
	subl      %eax, %ebx
	sbbl      %ecx, %esi
	jmp       .L08049620
.L08049754:
	cmpl      $7247, %ecx
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	jne       .L0804963F
.L0804976E:
	addl      8(%edi), %ebx
	adcl      12(%edi), %esi
	testl     %esi, %esi
	js        .L0804963F
.L0804977C:
	testl     %edi, %edi
	je        .L0804978D
.L08049780:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L080497AF
.L08049787:
	cmpl      $-5, -28(%ebp)
	je        .L080497AF
.L0804978D:
	movl      $-1, -24(%ebp)
	movl      $-1, -20(%ebp)
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %edx
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080497A9:
	movl      %ebx, %eax
	movl      (%edi), %ecx
	jmp       .L0804973C
.L080497AF:
	pushl     $0
	pushl     56(%edi)
	pushl     52(%edi)
	pushl     20(%edi)
	call      lseek64
.L080497BF:
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	je        .L0804978D
.L080497C7:
	cmpl      $7247, 16(%edi)
	movl      $0, (%edi)
	je        .L08049808
.L080497D6:
	movl      $0, 84(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %edi
	call      gz_error
.L080497E8:
	addl      $16, %esp
	movl      16(%edi), %ecx
	movl      $0, 8(%edi)
	movl      $0, 12(%edi)
	movl      $0, 100(%edi)
	jmp       .L08049614
.L08049808:
	movl      $0, 60(%edi)
	movl      $0, 64(%edi)
	movl      $0, 48(%edi)
	jmp       .L080497D6
	.size	gzseek64, .-gzseek64
# ----------------------
.L0804981F:
	.p2align 3
# ----------------------
	.globl	gzseek
	.type	gzseek, @function
gzseek:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      12(%ebp), %eax
	pushl     16(%ebp)
	cltd      
	pushl     %edx
	pushl     %eax
	pushl     8(%ebp)
	call      gzseek64
.L08049836:
	movl      %eax, %ebx
	sarl      $31, %ebx
	movl      %eax, %ecx
	movl      %ebx, %esi
	xorl      %edx, %esi
	xorl      %eax, %ecx
	addl      $16, %esp
	orl       %ecx, %esi
	je        .L0804984F
.L0804984A:
	movl      $-1, %eax
.L0804984F:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
	.size	gzseek, .-gzseek
# ----------------------
.L08049856:
	.p2align 3
# ----------------------
	.globl	gztell64
	.type	gztell64, @function
gztell64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	movl      $-1, %eax
	movl      $-1, %edx
	je        .L08049893
.L0804986D:
	movl      16(%ebx), %ecx
	cmpl      $7247, %ecx
	je        .L08049880
.L08049878:
	cmpl      $31153, %ecx
	jne       .L08049893
.L08049880:
	movl      84(%ebx), %ecx
	testl     %ecx, %ecx
	movl      8(%ebx), %eax
	movl      12(%ebx), %edx
	je        .L08049893
.L0804988D:
	addl      76(%ebx), %eax
	adcl      80(%ebx), %edx
.L08049893:
	popl      %ebx
	leave     
	ret       
	.size	gztell64, .-gztell64
# ----------------------
.L08049896:
	.p2align 3
# ----------------------
	.globl	gztell
	.type	gztell, @function
gztell:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %edx
	pushl     %esi
	testl     %edx, %edx
	pushl     %ebx
	movl      $-1, %esi
	movl      $-1, %ebx
	je        .L080498BF
.L080498AE:
	movl      16(%edx), %eax
	cmpl      $7247, %eax
	je        .L080498DC
.L080498B8:
	cmpl      $31153, %eax
	je        .L080498DC
.L080498BF:
	movl      %ebx, %eax
	cltd      
	movl      %edx, %ecx
	xorl      %esi, %ecx
	xorl      %ebx, %eax
	orl       %eax, %ecx
	movl      %ebx, %edx
	je        .L080498D3
.L080498CE:
	movl      $-1, %edx
.L080498D3:
	popl      %ebx
	movl      %edx, %eax
	popl      %esi
	leave     
	ret       
.L080498D9:
	.p2align 2
.L080498DC:
	movl      84(%edx), %eax
	testl     %eax, %eax
	movl      8(%edx), %ebx
	movl      12(%edx), %esi
	je        .L080498BF
.L080498E9:
	addl      76(%edx), %ebx
	adcl      80(%edx), %esi
	jmp       .L080498BF
	.size	gztell, .-gztell
# ----------------------
.L080498F1:
	.p2align 2
# ----------------------
	.globl	gzoffset64
	.type	gzoffset64, @function
gzoffset64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $16, %esp
	movl      8(%ebp), %esi
	testl     %esi, %esi
	movl      $-1, -16(%ebp)
	movl      $-1, -12(%ebp)
	je        .L08049959
.L08049911:
	movl      16(%esi), %eax
	cmpl      $7247, %eax
	je        .L08049922
.L0804991B:
	cmpl      $31153, %eax
	jne       .L08049959
.L08049922:
	pushl     $1
	pushl     $0
	pushl     $0
	pushl     20(%esi)
	call      lseek64
.L08049930:
	movl      %eax, %ecx
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      %edx, %ebx
	movl      $-1, -16(%ebp)
	movl      $-1, -12(%ebp)
	je        .L08049959
.L0804994A:
	cmpl      $7247, 16(%esi)
	je        .L08049968
.L08049953:
	movl      %ecx, -16(%ebp)
	movl      %ebx, -12(%ebp)
.L08049959:
	movl      -16(%ebp), %eax
	movl      -12(%ebp), %edx
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L08049966:
	.p2align 3
.L08049968:
	movl      100(%esi), %eax
	xorl      %edx, %edx
	subl      %eax, %ecx
	sbbl      %edx, %ebx
	jmp       .L08049953
	.size	gzoffset64, .-gzoffset64
# ----------------------
.L08049973:
	.p2align 2
# ----------------------
	.globl	gzoffset
	.type	gzoffset, @function
gzoffset:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      $-1, %esi
	movl      $-1, %edi
	je        .L080499A2
.L0804998E:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	cmpl      $7247, %eax
	je        .L080499C0
.L0804999B:
	cmpl      $31153, %eax
	je        .L080499C0
.L080499A2:
	movl      %esi, %eax
	cltd      
	movl      %edx, %ecx
	xorl      %edi, %ecx
	xorl      %esi, %eax
	orl       %eax, %ecx
	movl      %esi, %edx
	je        .L080499B6
.L080499B1:
	movl      $-1, %edx
.L080499B6:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L080499C0:
	pushl     $1
	pushl     $0
	pushl     $0
	movl      8(%ebp), %esi
	pushl     20(%esi)
	call      lseek64
.L080499D1:
	movl      %eax, %ecx
	andl      %edx, %eax
	addl      $16, %esp
	incl      %eax
	movl      %edx, %ebx
	movl      $-1, %esi
	movl      $-1, %edi
	je        .L080499A2
.L080499E7:
	movl      8(%ebp), %eax
	cmpl      $7247, 16(%eax)
	je        .L080499F9
.L080499F3:
	movl      %ecx, %esi
	movl      %ebx, %edi
	jmp       .L080499A2
.L080499F9:
	movl      100(%eax), %edx
	xorl      %edi, %edi
	subl      %edx, %ecx
	sbbl      %edi, %ebx
	movl      %ecx, %esi
	movl      %ebx, %edi
	jmp       .L080499A2
	.size	gzoffset, .-gzoffset
# ----------------------
	.globl	gzeof
	.type	gzeof, @function
gzeof:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	je        .L08049A27
.L08049A14:
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	je        .L08049A2C
.L08049A1F:
	cmpl      $31153, %edx
	je        .L08049A34
.L08049A27:
	leave     
	ret       
.L08049A29:
	.p2align 2
.L08049A2C:
	movl      64(%ecx), %eax
	leave     
	ret       
.L08049A31:
	.p2align 2
.L08049A34:
	xorl      %eax, %eax
	leave     
	ret       
	.size	gzeof, .-gzeof
# ----------------------
	.globl	gzerror
	.type	gzerror, @function
gzerror:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	xorl      %eax, %eax
	testl     %ecx, %ecx
	pushl     %ebx
	movl      12(%ebp), %ebx
	je        .L08049A7C
.L08049A48:
	movl      16(%ecx), %edx
	cmpl      $7247, %edx
	je        .L08049A5B
.L08049A53:
	cmpl      $31153, %edx
	jne       .L08049A7C
.L08049A5B:
	testl     %ebx, %ebx
	je        .L08049A64
.L08049A5F:
	movl      88(%ecx), %eax
	movl      %eax, (%ebx)
.L08049A64:
	cmpl      $-4, 88(%ecx)
	movl      $.LC080546E3, %eax
	je        .L08049A7C
.L08049A6F:
	movl      92(%ecx), %eax
	testl     %eax, %eax
	jne       .L08049A7C
.L08049A76:
	movl      $.LC0805467E, %eax
	.p2align 2
.L08049A7C:
	popl      %ebx
	leave     
	ret       
	.size	gzerror, .-gzerror
# ----------------------
.L08049A7F:
	.p2align 3
# ----------------------
	.globl	gzclearerr
	.type	gzclearerr, @function
gzclearerr:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	je        .L08049A9E
.L08049A8D:
	movl      16(%edx), %eax
	cmpl      $7247, %eax
	je        .L08049AA0
.L08049A97:
	cmpl      $31153, %eax
	je        .L08049AAE
.L08049A9E:
	leave     
	ret       
.L08049AA0:
	movl      $0, 60(%edx)
	movl      $0, 64(%edx)
.L08049AAE:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     %edx
	call      gz_error
.L08049AB9:
	leave     
	ret       
	.size	gzclearerr, .-gzclearerr
# ----------------------
.L08049ABB:
	.p2align 2
# ----------------------
	.local	gz_look
	.type	gz_look, @function
gz_look:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      %eax, %esi
	leal      96(%eax), %edi
	movl      28(%eax), %eax
	testl     %eax, %eax
	je        .L08049BD0
.L08049AD5:
	movl      4(%edi), %edx
	cmpl      $1, %edx
	jbe       .L08049B14
.L08049ADD:
	movl      (%edi), %eax
	cmpb      $31, (%eax)
	je        .L08049CD8
.L08049AE8:
	movl      44(%esi), %eax
	testl     %eax, %eax
	jne       .L08049C70
.L08049AF3:
	movl      $0, 4(%edi)
	movl      $1, 60(%esi)
	movl      $0, (%esi)
.L08049B07:
	xorl      %eax, %eax
.L08049B09:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049B11:
	.p2align 2
.L08049B14:
	movl      88(%esi), %eax
	testl     %eax, %eax
	je        .L08049B30
.L08049B1B:
	cmpl      $-5, %eax
	je        .L08049B30
.L08049B20:
	movl      $-1, %eax
.L08049B25:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049B2D:
	.p2align 3
.L08049B30:
	movl      60(%esi), %ebx
	testl     %ebx, %ebx
	jne       .L08049BB4
.L08049B37:
	movl      4(%edi), %eax
	testl     %eax, %eax
	je        .L08049B54
.L08049B3E:
	movl      36(%esi), %ebx
	movl      (%edi), %ecx
	movl      %eax, %edx
	.p2align 3
.L08049B48:
	movb      (%ecx), %al
	movb      %al, (%ebx)
	incl      %ecx
	incl      %ebx
	decl      %edx
	jne       .L08049B48
.L08049B51:
	movl      4(%edi), %eax
.L08049B54:
	movl      36(%esi), %edx
	movl      28(%esi), %ebx
	addl      %eax, %edx
	movl      %edx, -20(%ebp)
	subl      %eax, %ebx
	movl      $0, -16(%ebp)
	xorl      %ecx, %ecx
	.p2align 2
.L08049B6C:
	pushl     %eax
	movl      %ebx, %eax
	subl      %ecx, %eax
	pushl     %eax
	movl      -20(%ebp), %edx
	leal      (%ecx,%edx), %eax
	pushl     %eax
	pushl     20(%esi)
	call      read
.L08049B81:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L08049B98
.L08049B8A:
	movl      -16(%ebp), %eax
	addl      %edx, %eax
	cmpl      %ebx, %eax
	movl      %eax, %ecx
	movl      %eax, -16(%ebp)
	jb        .L08049B6C
.L08049B98:
	testl     %edx, %edx
	jl        .L08049D0C
.L08049BA0:
	jne       .L08049BA9
.L08049BA2:
	movl      $1, 60(%esi)
.L08049BA9:
	movl      -16(%ebp), %ebx
	movl      36(%esi), %ecx
	addl      %ebx, 4(%edi)
	movl      %ecx, (%edi)
.L08049BB4:
	movl      4(%edi), %edx
	xorl      %eax, %eax
	testl     %edx, %edx
	je        .L08049B09
.L08049BC1:
	cmpl      $1, %edx
	jbe       .L08049AE8
.L08049BCA:
	jmp       .L08049ADD
.L08049BCF:
	.p2align 3
.L08049BD0:
	subl      $12, %esp
	pushl     32(%esi)
	call      malloc
.L08049BDB:
	movl      32(%esi), %edx
	sall      $1, %edx
	movl      %eax, 36(%esi)
	movl      %edx, (%esp)
	call      malloc
.L08049BEB:
	movl      36(%esi), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %eax, 40(%esi)
	je        .L08049C8D
.L08049BFC:
	testl     %eax, %eax
	je        .L08049CA0
.L08049C04:
	movl      32(%esi), %ecx
	movl      %ecx, 28(%esi)
	movl      $0, 128(%esi)
	movl      $0, 132(%esi)
	movl      $0, 136(%esi)
	movl      $0, 100(%esi)
	movl      $0, 96(%esi)
	pushl     $56
	pushl     $.LC0805482C
	pushl     $31
	pushl     %edi
	call      inflateInit2_
.L08049C45:
	addl      $16, %esp
	testl     %eax, %eax
	je        .L08049AD5
.L08049C50:
	subl      $12, %esp
	pushl     40(%esi)
	call      free
.L08049C5B:
	popl      %eax
	pushl     36(%esi)
	call      free
.L08049C64:
	addl      $12, %esp
	movl      $0, 28(%esi)
	jmp       .L08049CA5
.L08049C70:
	movl      40(%esi), %eax
	testl     %edx, %edx
	movl      %eax, 4(%esi)
	jne       .L08049CBC
.L08049C7A:
	movl      $1, 48(%esi)
	movl      $1, 44(%esi)
	jmp       .L08049B07
.L08049C8D:
	testl     %eax, %eax
	je        .L08049CA0
.L08049C91:
	subl      $12, %esp
	pushl     %eax
	call      free
.L08049C9A:
	addl      $16, %esp
	movl      36(%esi), %edx
.L08049CA0:
	testl     %edx, %edx
	jne       .L08049CFE
.L08049CA4:
	pushl     %eax
.L08049CA5:
	pushl     $.LC080546E3
	pushl     $-4
	pushl     %esi
	call      gz_error
.L08049CB2:
	movl      $-1, %eax
	jmp       .L08049B25
.L08049CBC:
	pushl     %ecx
	pushl     %edx
	pushl     (%edi)
	pushl     %eax
	call      memcpy
.L08049CC6:
	movl      4(%edi), %edx
	addl      $16, %esp
	movl      %edx, (%esi)
	movl      $0, 4(%edi)
	jmp       .L08049C7A
.L08049CD7:
	.p2align 3
.L08049CD8:
	cmpb      $139, 1(%eax)
	jne       .L08049AE8
.L08049CE2:
	subl      $12, %esp
	pushl     %edi
	call      inflateReset
.L08049CEB:
	movl      $2, 48(%esi)
	movl      $0, 44(%esi)
	jmp       .L08049B07
.L08049CFE:
	subl      $12, %esp
	pushl     %edx
	call      free
.L08049D07:
	addl      $16, %esp
	jmp       .L08049CA4
.L08049D0C:
	subl      $16, %esp
	call      __errno_location
.L08049D14:
	popl      %edi
	pushl     (%eax)
	call      strerror
.L08049D1C:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %esi
	call      gz_error
.L08049D28:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L08049B25
	.size	gz_look, .-gz_look
# ----------------------
.L08049D35:
	.p2align 3
# ----------------------
	.local	gz_decomp
	.type	gz_decomp, @function
gz_decomp:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	leal      96(%eax), %esi
	movl      %eax, %edi
	movl      16(%esi), %eax
	movl      $0, -20(%ebp)
	movl      %eax, -24(%ebp)
	.p2align 2
.L08049D54:
	movl      4(%esi), %edx
	testl     %edx, %edx
	jne       .L08049DFB
.L08049D5F:
	movl      88(%edi), %eax
	testl     %eax, %eax
	je        .L08049D6F
.L08049D66:
	cmpl      $-5, %eax
	jne       .L08049E69
.L08049D6F:
	movl      60(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L08049DF0
.L08049D76:
	movl      4(%esi), %eax
	testl     %eax, %eax
	je        .L08049D90
.L08049D7D:
	movl      36(%edi), %ebx
	movl      (%esi), %ecx
	movl      %eax, %edx
.L08049D84:
	movb      (%ecx), %al
	movb      %al, (%ebx)
	incl      %ecx
	incl      %ebx
	decl      %edx
	jne       .L08049D84
.L08049D8D:
	movl      4(%esi), %eax
.L08049D90:
	movl      36(%edi), %ebx
	addl      %eax, %ebx
	movl      %ebx, -28(%ebp)
	movl      28(%edi), %ebx
	subl      %eax, %ebx
	movl      $0, -16(%ebp)
	xorl      %ecx, %ecx
	.p2align 3
.L08049DA8:
	pushl     %eax
	movl      %ebx, %eax
	subl      %ecx, %eax
	pushl     %eax
	movl      -28(%ebp), %edx
	leal      (%ecx,%edx), %eax
	pushl     %eax
	pushl     20(%edi)
	call      read
.L08049DBD:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L08049DD4
.L08049DC6:
	movl      -16(%ebp), %eax
	addl      %edx, %eax
	cmpl      %ebx, %eax
	movl      %eax, %ecx
	movl      %eax, -16(%ebp)
	jb        .L08049DA8
.L08049DD4:
	testl     %edx, %edx
	jl        .L08049EA8
.L08049DDC:
	jne       .L08049DE5
.L08049DDE:
	movl      $1, 60(%edi)
.L08049DE5:
	movl      -16(%ebp), %ebx
	movl      36(%edi), %ecx
	addl      %ebx, 4(%esi)
	movl      %ecx, (%esi)
.L08049DF0:
	movl      4(%esi), %edx
	testl     %edx, %edx
	je        .L08049E92
.L08049DFB:
	subl      $8, %esp
	pushl     $0
	pushl     %esi
	call      inflate
.L08049E06:
	addl      $16, %esp
	cmpl      $-2, %eax
	movl      %eax, -20(%ebp)
	je        .L08049E5B
.L08049E11:
	cmpl      $2, %eax
	je        .L08049E5B
.L08049E16:
	cmpl      $-4, -20(%ebp)
	je        .L08049E76
.L08049E1C:
	cmpl      $-3, -20(%ebp)
	je        .L08049E80
.L08049E22:
	movl      16(%esi), %eax
	testl     %eax, %eax
	je        .L08049E33
.L08049E29:
	cmpl      $1, -20(%ebp)
	jne       .L08049D54
.L08049E33:
	movl      -24(%ebp), %ecx
	subl      %eax, %ecx
	movl      12(%esi), %eax
	subl      %ecx, %eax
	cmpl      $1, -20(%ebp)
	movl      %ecx, (%edi)
	movl      %eax, 4(%edi)
	je        .L08049E52
.L08049E48:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L08049E52:
	movl      $0, 48(%edi)
	jmp       .L08049E48
.L08049E5B:
	pushl     %ecx
	pushl     $.LC08054860
	pushl     $-2
.L08049E63:
	pushl     %edi
	call      gz_error
.L08049E69:
	movl      $-1, %eax
.L08049E6E:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049E76:
	pushl     %edx
	pushl     $.LC080546E3
	pushl     $-4
	jmp       .L08049E63
.L08049E80:
	pushl     %eax
	movl      24(%esi), %eax
	testl     %eax, %eax
	jne       .L08049E8D
.L08049E88:
	movl      $.LC08054832, %eax
.L08049E8D:
	pushl     %eax
	pushl     $-3
	jmp       .L08049E63
.L08049E92:
	pushl     %ebx
	pushl     $.LC08054848
	pushl     $-5
	pushl     %edi
	call      gz_error
.L08049EA0:
	addl      $16, %esp
	movl      16(%esi), %eax
	jmp       .L08049E33
.L08049EA8:
	subl      $16, %esp
	call      __errno_location
.L08049EB0:
	popl      %edx
	pushl     (%eax)
	call      strerror
.L08049EB8:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %edi
	call      gz_error
.L08049EC4:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L08049E6E
	.size	gz_decomp, .-gz_decomp
# ----------------------
.L08049ECE:
	.p2align 3
# ----------------------
	.globl	gzread
	.type	gzread, @function
gzread:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	movl      $-1, %eax
	je        .L08049F06
.L08049EE5:
	cmpl      $7247, 16(%ebx)
	leal      96(%ebx), %esi
	jne       .L08049F13
.L08049EF1:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	jne       .L08049F0E
.L08049EF8:
	cmpl      $0, 16(%ebp)
	jl        .L0804A279
.L08049F02:
	jne       .L08049F20
.L08049F04:
	xorl      %eax, %eax
.L08049F06:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049F0E:
	cmpl      $-5, %eax
	je        .L08049EF8
.L08049F13:
	movl      $-1, %eax
.L08049F18:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08049F20:
	movl      84(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804A034
.L08049F2B:
	movl      $0, -24(%ebp)
	jmp       .L08049F76
.L08049F34:
	cmpl      16(%ebp), %eax
	jbe       .L08049F3C
.L08049F39:
	movl      16(%ebp), %eax
.L08049F3C:
	movl      %eax, -20(%ebp)
	pushl     %edx
	pushl     %eax
	pushl     4(%ebx)
	pushl     12(%ebp)
	call      memcpy
.L08049F4C:
	movl      -20(%ebp), %eax
	addl      %eax, 4(%ebx)
	subl      %eax, (%ebx)
	addl      $16, %esp
.L08049F57:
	subl      %eax, 16(%ebp)
	addl      %eax, 12(%ebp)
	addl      %eax, -24(%ebp)
	movl      -20(%ebp), %eax
	xorl      %edi, %edi
	addl      %eax, 8(%ebx)
	adcl      %edi, 12(%ebx)
.L08049F6B:
	movl      16(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804A029
.L08049F76:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L08049F34
.L08049F7C:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L08049F8E
.L08049F83:
	movl      4(%esi), %edi
	testl     %edi, %edi
	je        .L0804A26A
.L08049F8E:
	movl      48(%ebx), %edx
	testl     %edx, %edx
	je        .L08049FA3
.L08049F95:
	movl      28(%ebx), %ecx
	sall      $1, %ecx
	cmpl      16(%ebp), %ecx
	jbe       .L0804A1C8
.L08049FA3:
	cmpl      $1, %edx
	je        .L08049FCD
.L08049FA8:
	jle       .L0804A090
.L08049FAE:
	cmpl      $2, %edx
	je        .L0804A0C0
.L08049FB7:
	movl      60(%ebx), %edi
	testl     %edi, %edi
	je        .L08049FC5
.L08049FBE:
	movl      4(%esi), %ecx
	testl     %ecx, %ecx
	je        .L08049F6B
.L08049FC5:
	movl      48(%ebx), %edx
	cmpl      $1, %edx
	jne       .L08049FA8
.L08049FCD:
	movl      40(%ebx), %edi
	movl      28(%ebx), %eax
	movl      %edi, -40(%ebp)
	movl      $0, (%ebx)
	leal      (%eax,%eax), %edi
	.p2align 3
.L08049FE0:
	pushl     %eax
	movl      (%ebx), %ecx
	movl      %edi, %edx
	subl      %ecx, %edx
	pushl     %edx
	addl      -40(%ebp), %ecx
	pushl     %ecx
	pushl     20(%ebx)
	call      read
.L08049FF4:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A007
.L08049FFD:
	movl      (%ebx), %eax
	addl      %edx, %eax
	cmpl      %edi, %eax
	movl      %eax, (%ebx)
	jb        .L08049FE0
.L0804A007:
	testl     %edx, %edx
	jl        .L0804A241
.L0804A00F:
	jne       .L0804A018
.L0804A011:
	movl      $1, 60(%ebx)
.L0804A018:
	movl      16(%ebp), %ecx
	movl      40(%ebx), %edi
	testl     %ecx, %ecx
	movl      %edi, 4(%ebx)
	jne       .L08049F76
.L0804A029:
	movl      -24(%ebp), %eax
.L0804A02C:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804A034:
	movl      76(%ebx), %ecx
	movl      80(%ebx), %edx
	movl      %edx, -28(%ebp)
	movl      $0, 84(%ebx)
	movl      %ecx, -32(%ebp)
	orl       %ecx, %edx
.L0804A049:
	je        .L08049F2B
.L0804A04F:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A0E2
.L0804A059:
	xorl      %edi, %edi
	cmpl      -28(%ebp), %edi
	movl      (%ebx), %eax
	jl        .L0804A069
.L0804A062:
	jg        .L0804A088
.L0804A064:
	cmpl      -32(%ebp), %eax
	ja        .L0804A088
.L0804A069:
	movl      %ecx, %eax
.L0804A06B:
	subl      %eax, %ecx
	movl      %ecx, (%ebx)
	addl      %eax, 4(%ebx)
	xorl      %ecx, %ecx
	addl      %eax, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	subl      %eax, -32(%ebp)
	sbbl      %ecx, -28(%ebp)
.L0804A080:
	movl      -28(%ebp), %edx
	orl       -32(%ebp), %edx
	jmp       .L0804A049
.L0804A088:
	movl      -32(%ebp), %eax
	jmp       .L0804A06B
.L0804A08D:
	.p2align 3
.L0804A090:
	testl     %edx, %edx
	jne       .L08049FB7
.L0804A098:
	movl      %ebx, %eax
	call      gz_look
.L0804A09F:
	incl      %eax
	je        .L08049F13
.L0804A0A6:
	movl      48(%ebx), %edx
	testl     %edx, %edx
	je        .L08049F6B
.L0804A0B1:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L08049FB7
.L0804A0BB:
	jmp       .L08049F6B
.L0804A0C0:
	movl      28(%ebx), %edx
	sall      $1, %edx
	movl      40(%ebx), %ecx
	movl      %edx, 16(%esi)
	movl      %ecx, 12(%esi)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A0D5:
	incl      %eax
	jne       .L0804A0B1
.L0804A0D8:
	movl      $-1, %eax
	jmp       .L08049F18
.L0804A0E2:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A0F4
.L0804A0E9:
	movl      100(%ebx), %edx
	testl     %edx, %edx
	je        .L08049F2B
.L0804A0F4:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	je        .L0804A121
.L0804A0FC:
	jle       .L0804A178
.L0804A0FE:
	cmpl      $2, %eax
	je        .L0804A1A4
.L0804A107:
	movl      60(%ebx), %edi
	testl     %edi, %edi
	je        .L0804A0F4
.L0804A10E:
	movl      4(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804A080
.L0804A119:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	jne       .L0804A0FC
.L0804A121:
	movl      40(%ebx), %eax
	movl      28(%ebx), %ecx
	movl      %eax, -36(%ebp)
	leal      (%ecx,%ecx), %edi
	movl      $0, (%ebx)
.L0804A133:
	pushl     %eax
	movl      (%ebx), %ecx
	movl      %edi, %edx
	subl      %ecx, %edx
	pushl     %edx
	addl      -36(%ebp), %ecx
	pushl     %ecx
	pushl     20(%ebx)
	call      read
.L0804A147:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A15A
.L0804A150:
	movl      (%ebx), %eax
	addl      %edx, %eax
	cmpl      %edi, %eax
	movl      %eax, (%ebx)
	jb        .L0804A133
.L0804A15A:
	testl     %edx, %edx
	jl        .L0804A241
.L0804A162:
	jne       .L0804A16B
.L0804A164:
	movl      $1, 60(%ebx)
.L0804A16B:
	movl      40(%ebx), %edi
	movl      %edi, 4(%ebx)
	jmp       .L0804A080
.L0804A176:
	.p2align 3
.L0804A178:
	testl     %eax, %eax
	jne       .L0804A107
.L0804A17C:
	movl      %ebx, %eax
	call      gz_look
.L0804A183:
	incl      %eax
	je        .L08049F13
.L0804A18A:
	movl      48(%ebx), %edi
	testl     %edi, %edi
	je        .L0804A080
.L0804A195:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L0804A107
.L0804A19F:
	jmp       .L0804A080
.L0804A1A4:
	movl      28(%ebx), %edx
	sall      $1, %edx
	movl      40(%ebx), %ecx
	movl      %edx, 16(%esi)
	movl      %ecx, 12(%esi)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A1B9:
	incl      %eax
	jne       .L0804A195
.L0804A1BC:
	movl      $-1, %eax
	jmp       .L08049F18
.L0804A1C6:
	.p2align 3
.L0804A1C8:
	decl      %edx
	jne       .L0804A217
.L0804A1CB:
	movl      $0, -20(%ebp)
	xorl      %ecx, %ecx
.L0804A1D4:
	pushl     %edi
	movl      16(%ebp), %edi
	subl      %ecx, %edi
	pushl     %edi
	movl      12(%ebp), %edx
	leal      (%ecx,%edx), %eax
	pushl     %eax
	pushl     20(%ebx)
	call      read
.L0804A1EA:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A202
.L0804A1F3:
	movl      -20(%ebp), %eax
	addl      %edx, %eax
	cmpl      16(%ebp), %eax
	movl      %eax, %ecx
	movl      %eax, -20(%ebp)
	jb        .L0804A1D4
.L0804A202:
	testl     %edx, %edx
	jl        .L0804A241
.L0804A206:
	jne       .L0804A20F
.L0804A208:
	movl      $1, 60(%ebx)
.L0804A20F:
	movl      -20(%ebp), %eax
	jmp       .L08049F57
.L0804A217:
	movl      16(%ebp), %edx
	movl      12(%ebp), %ecx
	movl      %edx, 16(%esi)
	movl      %ecx, 12(%esi)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A22A:
	incl      %eax
	je        .L08049F13
.L0804A231:
	movl      (%ebx), %eax
	movl      %eax, -20(%ebp)
	movl      $0, (%ebx)
	jmp       .L08049F57
.L0804A241:
	subl      $16, %esp
	call      __errno_location
.L0804A249:
	popl      %edx
	pushl     (%eax)
	call      strerror
.L0804A251:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804A25D:
	addl      $16, %esp
	movl      $-1, %eax
	jmp       .L08049F18
.L0804A26A:
	movl      -24(%ebp), %eax
	movl      $1, 64(%ebx)
	jmp       .L0804A02C
.L0804A279:
	pushl     %eax
	pushl     $.LC08054888
	pushl     $-3
	pushl     %ebx
	call      gz_error
.L0804A287:
	movl      $-1, %eax
	jmp       .L08049F18
	.size	gzread, .-gzread
# ----------------------
.L0804A291:
	.p2align 2
# ----------------------
	.globl	gzgetc
	.type	gzgetc, @function
gzgetc:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %ecx
	testl     %ecx, %ecx
	movl      $-1, %eax
	je        .L0804A2D3
.L0804A2A6:
	cmpl      $7247, 16(%ecx)
	jne       .L0804A2DD
.L0804A2AF:
	movl      88(%ecx), %eax
	testl     %eax, %eax
	jne       .L0804A2D8
.L0804A2B6:
	movl      (%ecx), %eax
	testl     %eax, %eax
	je        .L0804A2E4
.L0804A2BC:
	decl      %eax
	addl      $1, 8(%ecx)
	movl      %eax, (%ecx)
	adcl      $0, 12(%ecx)
	movl      4(%ecx), %eax
	movzbl    (%eax), %edx
	incl      %eax
	movl      %eax, 4(%ecx)
.L0804A2D1:
	movl      %edx, %eax
.L0804A2D3:
	leave     
	ret       
.L0804A2D5:
	.p2align 3
.L0804A2D8:
	cmpl      $-5, %eax
	je        .L0804A2B6
.L0804A2DD:
	movl      $-1, %eax
	leave     
	ret       
.L0804A2E4:
	pushl     %edx
	pushl     $1
	leal      -1(%ebp), %edx
	pushl     %edx
	pushl     %ecx
	call      gzread
.L0804A2F1:
	addl      $16, %esp
	testl     %eax, %eax
	movl      $-1, %edx
	jle       .L0804A2D1
.L0804A2FD:
	movzbl    -1(%ebp), %edx
	movl      %edx, %eax
	jmp       .L0804A2D3
	.size	gzgetc, .-gzgetc
# ----------------------
.L0804A305:
	.p2align 3
# ----------------------
	.globl	gzgetc_
	.type	gzgetc_, @function
gzgetc_:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	movl      $-1, %ecx
	je        .L0804A328
.L0804A31A:
	cmpl      $7247, 16(%edx)
	je        .L0804A32C
.L0804A323:
	movl      $-1, %ecx
.L0804A328:
	movl      %ecx, %eax
	leave     
	ret       
.L0804A32C:
	movl      88(%edx), %eax
	testl     %eax, %eax
	jne       .L0804A354
.L0804A333:
	movl      (%edx), %eax
	testl     %eax, %eax
	je        .L0804A360
.L0804A339:
	decl      %eax
	addl      $1, 8(%edx)
	movl      %eax, (%edx)
	adcl      $0, 12(%edx)
	movl      4(%edx), %eax
	movzbl    (%eax), %ecx
	incl      %eax
	movl      %eax, 4(%edx)
	leave     
	movl      %ecx, %eax
	ret       
.L0804A352:
	.p2align 2
.L0804A354:
	cmpl      $-5, %eax
	je        .L0804A333
.L0804A359:
	movl      $-1, %ecx
	jmp       .L0804A328
.L0804A360:
	pushl     %ecx
	pushl     $1
	leal      -1(%ebp), %ecx
	pushl     %ecx
	pushl     %edx
	call      gzread
.L0804A36D:
	addl      $16, %esp
	testl     %eax, %eax
	movl      $-1, %ecx
	jle       .L0804A328
.L0804A379:
	movzbl    -1(%ebp), %ecx
	movl      %ecx, %eax
	leave     
	ret       
	.size	gzgetc_, .-gzgetc_
# ----------------------
.L0804A381:
	.p2align 2
# ----------------------
	.globl	gzungetc
	.type	gzungetc, @function
gzungetc:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      12(%ebp), %ebx
	testl     %ebx, %ebx
	movl      $-1, %eax
	je        .L0804A465
.L0804A39D:
	cmpl      $7247, 16(%ebx)
	jne       .L0804A460
.L0804A3AA:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804A457
.L0804A3B5:
	movl      84(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A410
.L0804A3BC:
	movl      80(%ebx), %edi
	movl      76(%ebx), %esi
	movl      %edi, %edx
	orl       %esi, %edx
	movl      $0, 84(%ebx)
	je        .L0804A410
.L0804A3CF:
	leal      96(%ebx), %ecx
	movl      %ecx, -24(%ebp)
.L0804A3D5:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A4B7
.L0804A3DF:
	xorl      %edx, %edx
	cmpl      %edi, %edx
	movl      (%ebx), %eax
	jl        .L0804A3F5
.L0804A3E7:
	jg        .L0804A4B0
.L0804A3ED:
	cmpl      %esi, %eax
	ja        .L0804A4B0
.L0804A3F5:
	movl      %ecx, %eax
.L0804A3F7:
	subl      %eax, %ecx
	movl      %ecx, (%ebx)
	addl      %eax, 4(%ebx)
	xorl      %ecx, %ecx
	addl      %eax, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	subl      %eax, %esi
	sbbl      %ecx, %edi
.L0804A40A:
	movl      %edi, %eax
	orl       %esi, %eax
	jne       .L0804A3D5
.L0804A410:
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-1, %eax
	js        .L0804A465
.L0804A41C:
	movl      (%ebx), %edi
	testl     %edi, %edi
	jne       .L0804A46D
.L0804A422:
	movl      28(%ebx), %eax
	movl      40(%ebx), %edi
	leal      (%edi,%eax,2), %esi
	leal      -1(%esi), %ecx
	movb      8(%ebp), %dl
	movl      $1, (%ebx)
	movl      %ecx, 4(%ebx)
	movb      %dl, -1(%esi)
.L0804A43D:
	addl      $-1, 8(%ebx)
	adcl      $-1, 12(%ebx)
	movl      $0, 64(%ebx)
	movl      8(%ebp), %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804A457:
	cmpl      $-5, %eax
	je        .L0804A3B5
.L0804A460:
	movl      $-1, %eax
.L0804A465:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804A46D:
	movl      28(%ebx), %eax
	sall      $1, %eax
	cmpl      %eax, %edi
	je        .L0804A5C4
.L0804A47A:
	movl      4(%ebx), %ecx
	cmpl      40(%ebx), %ecx
	je        .L0804A495
.L0804A482:
	leal      1(%edi), %eax
	leal      -1(%ecx), %esi
	movb      8(%ebp), %dl
	movl      %eax, (%ebx)
	movl      %esi, 4(%ebx)
	movb      %dl, -1(%ecx)
	jmp       .L0804A43D
.L0804A495:
	leal      (%ecx,%edi), %edx
	cmpl      %edx, %ecx
	leal      (%ecx,%eax), %esi
	jae       .L0804A4AC
.L0804A49F:
	decl      %edx
	decl      %esi
	movb      (%edx), %cl
	movb      %cl, (%esi)
	cmpl      %edx, 40(%ebx)
	jb        .L0804A49F
.L0804A4AA:
	movl      (%ebx), %edi
.L0804A4AC:
	movl      %esi, %ecx
	jmp       .L0804A482
.L0804A4B0:
	movl      %esi, %eax
	jmp       .L0804A3F7
.L0804A4B7:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A4CC
.L0804A4BE:
	movl      100(%ebx), %edx
	testl     %edx, %edx
	je        .L0804A410
.L0804A4C9:
	.p2align 2
.L0804A4CC:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	je        .L0804A4FC
.L0804A4D4:
	jle       .L0804A554
.L0804A4D6:
	cmpl      $2, %eax
	je        .L0804A580
.L0804A4DF:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A4CC
.L0804A4E6:
	movl      -24(%ebp), %ecx
	movl      4(%ecx), %edx
	testl     %edx, %edx
	je        .L0804A40A
.L0804A4F4:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	jne       .L0804A4D4
.L0804A4FC:
	movl      28(%ebx), %eax
	movl      40(%ebx), %edx
	sall      $1, %eax
	movl      %edx, -16(%ebp)
	movl      %eax, -20(%ebp)
	movl      $0, (%ebx)
.L0804A510:
	pushl     %ecx
	movl      (%ebx), %ecx
	movl      -20(%ebp), %eax
	subl      %ecx, %eax
	pushl     %eax
	addl      -16(%ebp), %ecx
	pushl     %ecx
	pushl     20(%ebx)
	call      read
.L0804A525:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A539
.L0804A52E:
	movl      (%ebx), %ecx
	addl      %eax, %ecx
	cmpl      -20(%ebp), %ecx
	movl      %ecx, (%ebx)
	jb        .L0804A510
.L0804A539:
	testl     %edx, %edx
	jl        .L0804A5A0
.L0804A53D:
	jne       .L0804A546
.L0804A53F:
	movl      $1, 60(%ebx)
.L0804A546:
	movl      40(%ebx), %edx
	movl      %edx, 4(%ebx)
	jmp       .L0804A40A
.L0804A551:
	.p2align 2
.L0804A554:
	testl     %eax, %eax
	jne       .L0804A4DF
.L0804A558:
	movl      %ebx, %eax
	call      gz_look
.L0804A55F:
	incl      %eax
	je        .L0804A460
.L0804A566:
	movl      48(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A40A
.L0804A571:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A4DF
.L0804A57B:
	jmp       .L0804A40A
.L0804A580:
	movl      28(%ebx), %edx
	sall      $1, %edx
	movl      -24(%ebp), %ecx
	movl      40(%ebx), %eax
	movl      %eax, 12(%ecx)
	movl      %edx, 16(%ecx)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A598:
	incl      %eax
	jne       .L0804A571
.L0804A59B:
	jmp       .L0804A460
.L0804A5A0:
	subl      $16, %esp
	call      __errno_location
.L0804A5A8:
	popl      %edx
	pushl     (%eax)
	call      strerror
.L0804A5B0:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804A5BC:
	addl      $16, %esp
	jmp       .L0804A460
.L0804A5C4:
	pushl     %esi
	pushl     $.LC080548B0
	pushl     $-3
	pushl     %ebx
	call      gz_error
.L0804A5D2:
	jmp       .L0804A460
	.size	gzungetc, .-gzungetc
# ----------------------
.L0804A5D7:
	.p2align 3
# ----------------------
	.globl	gzgets
	.type	gzgets, @function
gzgets:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804A60B
.L0804A5E8:
	movl      12(%ebp), %eax
	testl     %eax, %eax
	je        .L0804A60B
.L0804A5EF:
	movl      16(%ebp), %edi
	testl     %edi, %edi
	jle       .L0804A60B
.L0804A5F6:
	cmpl      $7247, 16(%ebx)
	jne       .L0804A60B
.L0804A5FF:
	movl      88(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A615
.L0804A606:
	cmpl      $-5, %eax
	je        .L0804A615
.L0804A60B:
	xorl      %eax, %eax
.L0804A60D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804A615:
	movl      84(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804A684
.L0804A61C:
	movl      16(%ebp), %edi
	movl      12(%ebp), %esi
	decl      %edi
	movl      %esi, -20(%ebp)
	movl      %edi, -16(%ebp)
	je        .L0804A826
.L0804A62F:
	leal      96(%ebx), %edx
	movl      %edx, -32(%ebp)
.L0804A635:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L0804A7D0
.L0804A63F:
	.p2align 3
.L0804A640:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	je        .L0804A89C
.L0804A64C:
	jle       .L0804A780
.L0804A652:
	cmpl      $2, %eax
	je        .L0804A7B0
.L0804A65B:
	movl      60(%ebx), %edi
	testl     %edi, %edi
	je        .L0804A640
.L0804A662:
	movl      -32(%ebp), %ecx
	movl      4(%ecx), %esi
	testl     %esi, %esi
	jne       .L0804A640
.L0804A66C:
	movl      (%ebx), %eax
	testl     %eax, %eax
	jne       .L0804A7D0
.L0804A676:
	movl      $1, 64(%ebx)
	jmp       .L0804A826
.L0804A682:
	.p2align 2
.L0804A684:
	movl      80(%ebx), %edi
	movl      76(%ebx), %esi
	movl      %edi, %edx
	orl       %esi, %edx
	movl      $0, 84(%ebx)
	je        .L0804A61C
.L0804A697:
	leal      96(%ebx), %ecx
	movl      %ecx, -36(%ebp)
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A6DE
.L0804A6A3:
	xorl      %edx, %edx
	cmpl      %edi, %edx
	movl      (%ebx), %eax
	jl        .L0804A6B9
.L0804A6AB:
	jg        .L0804A779
.L0804A6B1:
	cmpl      %esi, %eax
	ja        .L0804A779
.L0804A6B9:
	movl      %ecx, %eax
.L0804A6BB:
	subl      %eax, %ecx
	movl      %ecx, (%ebx)
	addl      %eax, 4(%ebx)
	xorl      %ecx, %ecx
	addl      %eax, 8(%ebx)
	adcl      %ecx, 12(%ebx)
	subl      %eax, %esi
	sbbl      %ecx, %edi
.L0804A6CE:
	movl      %edi, %eax
	orl       %esi, %eax
	je        .L0804A61C
.L0804A6D8:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804A6A3
.L0804A6DE:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A6F0
.L0804A6E5:
	movl      100(%ebx), %edx
	testl     %edx, %edx
	je        .L0804A61C
.L0804A6F0:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	je        .L0804A720
.L0804A6F8:
	jle       .L0804A844
.L0804A6FE:
	cmpl      $2, %eax
	je        .L0804A874
.L0804A707:
	movl      60(%ebx), %eax
	testl     %eax, %eax
	je        .L0804A6F0
.L0804A70E:
	movl      -36(%ebp), %ecx
	movl      4(%ecx), %edx
	testl     %edx, %edx
	je        .L0804A6CE
.L0804A718:
	movl      48(%ebx), %eax
	cmpl      $1, %eax
	jne       .L0804A6F8
.L0804A720:
	movl      28(%ebx), %eax
	movl      40(%ebx), %edx
	sall      $1, %eax
	movl      %edx, -24(%ebp)
	movl      %eax, -28(%ebp)
	movl      $0, (%ebx)
.L0804A734:
	pushl     %eax
	movl      (%ebx), %ecx
	movl      -28(%ebp), %eax
	subl      %ecx, %eax
	pushl     %eax
	addl      -24(%ebp), %ecx
	pushl     %ecx
	pushl     20(%ebx)
	call      read
.L0804A749:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A75D
.L0804A752:
	movl      (%ebx), %ecx
	addl      %eax, %ecx
	cmpl      -28(%ebp), %ecx
	movl      %ecx, (%ebx)
	jb        .L0804A734
.L0804A75D:
	testl     %edx, %edx
	jl        .L0804A8EA
.L0804A765:
	jne       .L0804A76E
.L0804A767:
	movl      $1, 60(%ebx)
.L0804A76E:
	movl      40(%ebx), %edx
	movl      %edx, 4(%ebx)
	jmp       .L0804A6CE
.L0804A779:
	movl      %esi, %eax
	jmp       .L0804A6BB
.L0804A780:
	testl     %eax, %eax
	jne       .L0804A65B
.L0804A788:
	movl      %ebx, %eax
	call      gz_look
.L0804A78F:
	incl      %eax
	je        .L0804A60B
.L0804A796:
	movl      48(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A66C
.L0804A7A1:
	movl      (%ebx), %eax
	testl     %eax, %eax
	je        .L0804A65B
.L0804A7AB:
	jmp       .L0804A66C
.L0804A7B0:
	movl      28(%ebx), %edx
	sall      $1, %edx
	movl      -32(%ebp), %esi
	movl      40(%ebx), %ecx
	movl      %edx, 16(%esi)
	movl      %ecx, 12(%esi)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A7C8:
	incl      %eax
	jne       .L0804A7A1
.L0804A7CB:
	jmp       .L0804A60B
.L0804A7D0:
	cmpl      -16(%ebp), %eax
	movl      %eax, %esi
	jbe       .L0804A7DA
.L0804A7D7:
	movl      -16(%ebp), %esi
.L0804A7DA:
	pushl     %eax
	pushl     %esi
	pushl     $10
	pushl     4(%ebx)
	call      memchr
.L0804A7E6:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L0804A894
.L0804A7F3:
	movl      4(%ebx), %edx
	subl      %edx, %eax
	leal      1(%eax), %esi
.L0804A7FB:
	pushl     %eax
	pushl     %esi
	pushl     %edx
	pushl     12(%ebp)
	call      memcpy
.L0804A806:
	xorl      %edx, %edx
	subl      %esi, (%ebx)
	addl      %esi, 4(%ebx)
	addl      %esi, 8(%ebx)
	adcl      %edx, 12(%ebx)
	addl      %esi, 12(%ebp)
	addl      $16, %esp
	subl      %esi, -16(%ebp)
	je        .L0804A826
.L0804A81E:
	testl     %edi, %edi
	je        .L0804A635
.L0804A826:
	movl      -20(%ebp), %edx
	xorl      %eax, %eax
	cmpl      %edx, 12(%ebp)
	je        .L0804A60D
.L0804A834:
	movl      12(%ebp), %ebx
	movb      $0, (%ebx)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804A844:
	testl     %eax, %eax
	jne       .L0804A707
.L0804A84C:
	movl      %ebx, %eax
	call      gz_look
.L0804A853:
	incl      %eax
	je        .L0804A60B
.L0804A85A:
	movl      48(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A6CE
.L0804A865:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804A707
.L0804A86F:
	jmp       .L0804A6CE
.L0804A874:
	movl      28(%ebx), %edx
	sall      $1, %edx
	movl      -36(%ebp), %ecx
	movl      40(%ebx), %eax
	movl      %eax, 12(%ecx)
	movl      %edx, 16(%ecx)
	movl      %ebx, %eax
	call      gz_decomp
.L0804A88C:
	incl      %eax
	jne       .L0804A865
.L0804A88F:
	jmp       .L0804A60B
.L0804A894:
	movl      4(%ebx), %edx
	jmp       .L0804A7FB
.L0804A89C:
	movl      28(%ebx), %eax
	movl      40(%ebx), %edi
	leal      (%eax,%eax), %esi
	movl      $0, (%ebx)
	.p2align 2
.L0804A8AC:
	pushl     %eax
	movl      (%ebx), %ecx
	movl      %esi, %edx
	subl      %ecx, %edx
	pushl     %edx
	addl      %edi, %ecx
	pushl     %ecx
	pushl     20(%ebx)
	call      read
.L0804A8BF:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %edx
	jle       .L0804A8D2
.L0804A8C8:
	movl      (%ebx), %eax
	addl      %edx, %eax
	cmpl      %esi, %eax
	movl      %eax, (%ebx)
	jb        .L0804A8AC
.L0804A8D2:
	testl     %edx, %edx
	jl        .L0804A8EA
.L0804A8D6:
	jne       .L0804A8DF
.L0804A8D8:
	movl      $1, 60(%ebx)
.L0804A8DF:
	movl      40(%ebx), %edi
	movl      %edi, 4(%ebx)
	jmp       .L0804A66C
.L0804A8EA:
	subl      $16, %esp
	call      __errno_location
.L0804A8F2:
	popl      %esi
	pushl     (%eax)
	call      strerror
.L0804A8FA:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
	pushl     %ebx
	call      gz_error
.L0804A906:
	addl      $16, %esp
	jmp       .L0804A60B
	.size	gzgets, .-gzgets
# ----------------------
.L0804A90E:
	.p2align 3
# ----------------------
	.globl	gzdirect
	.type	gzdirect, @function
gzdirect:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	movl      8(%ebp), %ebx
	xorl      %eax, %eax
	testl     %ebx, %ebx
	je        .L0804A92A
.L0804A91E:
	cmpl      $7247, 16(%ebx)
	je        .L0804A930
.L0804A927:
	movl      44(%ebx), %eax
.L0804A92A:
	popl      %edx
	popl      %ebx
	leave     
	ret       
.L0804A92E:
	.p2align 3
.L0804A930:
	movl      48(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804A927
.L0804A937:
	movl      (%ebx), %ecx
	testl     %ecx, %ecx
	jne       .L0804A927
.L0804A93D:
	movl      %ebx, %eax
	call      gz_look
.L0804A944:
	movl      44(%ebx), %eax
	jmp       .L0804A92A
	.size	gzdirect, .-gzdirect
# ----------------------
.L0804A949:
	.p2align 2
# ----------------------
	.globl	gzclose_r
	.type	gzclose_r, @function
gzclose_r:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L0804A9B3
.L0804A961:
	cmpl      $7247, 16(%edi)
	jne       .L0804A9B3
.L0804A96A:
	movl      28(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L0804A9BC
.L0804A971:
	xorl      %edx, %edx
	cmpl      $-5, 88(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	setne     %dl
	pushl     %edi
	leal      -5(%edx,%edx,4), %ebx
	call      gz_error
.L0804A989:
	popl      %eax
	pushl     24(%edi)
	call      free
.L0804A992:
	popl      %eax
	pushl     20(%edi)
	call      close
.L0804A99B:
	movl      %eax, %esi
	movl      %edi, (%esp)
	call      free
.L0804A9A5:
	addl      $16, %esp
	testl     %esi, %esi
	movl      %ebx, %eax
	je        .L0804A9B3
.L0804A9AE:
	movl      $-1, %eax
.L0804A9B3:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804A9BB:
	.p2align 2
.L0804A9BC:
	subl      $12, %esp
	leal      96(%edi), %eax
	pushl     %eax
	call      inflateEnd
.L0804A9C8:
	popl      %edx
	pushl     40(%edi)
	call      free
.L0804A9D1:
	popl      %eax
	pushl     36(%edi)
	call      free
.L0804A9DA:
	addl      $16, %esp
	jmp       .L0804A971
	.size	gzclose_r, .-gzclose_r
# ----------------------
.L0804A9DF:
	.p2align 3
# ----------------------
	.local	gz_init
	.type	gz_init, @function
gz_init:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	pushl     32(%eax)
	movl      %eax, %ebx
	leal      96(%eax), %esi
	call      malloc
.L0804A9F5:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 36(%ebx)
	je        .L0804AAAD
.L0804AA03:
	movl      44(%ebx), %eax
	testl     %eax, %eax
	je        .L0804AA30
.L0804AA0A:
	movl      32(%ebx), %edx
	testl     %eax, %eax
	movl      %edx, 28(%ebx)
	je        .L0804AA20
.L0804AA14:
	xorl      %eax, %eax
.L0804AA16:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L0804AA1D:
	.p2align 3
.L0804AA20:
	movl      40(%ebx), %eax
	movl      %eax, 12(%esi)
	movl      %edx, 16(%esi)
	movl      %eax, 4(%ebx)
	jmp       .L0804AA14
.L0804AA2E:
	.p2align 3
.L0804AA30:
	subl      $12, %esp
	pushl     32(%ebx)
	call      malloc
.L0804AA3B:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, 40(%ebx)
	je        .L0804AAB0
.L0804AA45:
	movl      $0, 32(%esi)
	movl      $0, 36(%esi)
	movl      $0, 40(%esi)
	pushl     $56
	pushl     $.LC0805482C
	pushl     72(%ebx)
	pushl     $8
	pushl     $31
	pushl     $8
	pushl     68(%ebx)
	pushl     %esi
	call      deflateInit2_
.L0804AA73:
	addl      $32, %esp
	testl     %eax, %eax
	jne       .L0804AA7F
.L0804AA7A:
	movl      44(%ebx), %eax
	jmp       .L0804AA0A
.L0804AA7F:
	subl      $12, %esp
	pushl     40(%ebx)
	call      free
.L0804AA8A:
	popl      %eax
.L0804AA8B:
	pushl     36(%ebx)
	call      free
.L0804AA93:
	addl      $12, %esp
.L0804AA96:
	pushl     $.LC080546E3
	pushl     $-4
	pushl     %ebx
	call      gz_error
.L0804AAA3:
	movl      $-1, %eax
	jmp       .L0804AA16
.L0804AAAD:
	pushl     %edx
	jmp       .L0804AA96
.L0804AAB0:
	subl      $12, %esp
	jmp       .L0804AA8B
	.size	gz_init, .-gz_init
# ----------------------
.L0804AAB5:
	.p2align 3
# ----------------------
	.local	gz_comp
	.type	gz_comp, @function
gz_comp:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      %eax, %edi
	leal      96(%eax), %ebx
	movl      28(%eax), %eax
	testl     %eax, %eax
	movl      %edx, -16(%ebp)
	je        .L0804AB92
.L0804AAD4:
	movl      44(%edi), %edx
	testl     %edx, %edx
	jne       .L0804ABAC
.L0804AADF:
	xorl      %eax, %eax
	movl      16(%ebx), %ecx
.L0804AAE4:
	testl     %ecx, %ecx
	je        .L0804AAF8
.L0804AAE8:
	movl      -16(%ebp), %esi
	testl     %esi, %esi
	je        .L0804AB17
.L0804AAEF:
	cmpl      $4, -16(%ebp)
	je        .L0804AB6F
.L0804AAF5:
	.p2align 3
.L0804AAF8:
	movl      12(%ebx), %eax
	movl      4(%edi), %edx
	movl      %eax, %esi
	subl      %edx, %esi
	jne       .L0804AB54
.L0804AB04:
	testl     %ecx, %ecx
	jne       .L0804AB4C
.L0804AB08:
	movl      28(%edi), %ecx
	movl      40(%edi), %eax
	movl      %ecx, 16(%ebx)
	movl      %eax, 12(%ebx)
.L0804AB14:
	movl      %eax, 4(%edi)
.L0804AB17:
	subl      $8, %esp
	pushl     -16(%ebp)
	pushl     %ebx
	movl      %ecx, %esi
	call      deflate
.L0804AB25:
	addl      $16, %esp
	cmpl      $-2, %eax
	je        .L0804AB88
.L0804AB2D:
	movl      16(%ebx), %ecx
	cmpl      %ecx, %esi
	jne       .L0804AAE4
.L0804AB34:
	cmpl      $4, -16(%ebp)
	je        .L0804ABF1
.L0804AB3E:
	xorl      %edx, %edx
.L0804AB40:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804AB4A:
	.p2align 2
.L0804AB4C:
	movl      12(%ebx), %eax
	jmp       .L0804AB14
.L0804AB51:
	.p2align 2
.L0804AB54:
	pushl     %eax
	pushl     %esi
	pushl     %edx
	pushl     20(%edi)
	call      write
.L0804AB5F:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804ABC6
.L0804AB66:
	cmpl      %esi, %eax
	jne       .L0804ABC6
.L0804AB6A:
	movl      16(%ebx), %ecx
	jmp       .L0804AB04
.L0804AB6F:
	decl      %eax
	je        .L0804AAF8
.L0804AB72:
	subl      $8, %esp
	pushl     -16(%ebp)
	pushl     %ebx
	movl      %ecx, %esi
	call      deflate
.L0804AB80:
	addl      $16, %esp
	cmpl      $-2, %eax
	jne       .L0804AB2D
.L0804AB88:
	pushl     %ecx
	pushl     $.LC080548D0
	pushl     $-2
	jmp       .L0804ABDC
.L0804AB92:
	movl      %edi, %eax
	call      gz_init
.L0804AB99:
	incl      %eax
	movl      $-1, %edx
	je        .L0804AB40
.L0804ABA1:
	movl      44(%edi), %edx
	testl     %edx, %edx
	je        .L0804AADF
.L0804ABAC:
	pushl     %esi
	pushl     4(%ebx)
	pushl     (%ebx)
	pushl     20(%edi)
	call      write
.L0804ABBA:
	addl      $16, %esp
	testl     %eax, %eax
	js        .L0804ABC6
.L0804ABC1:
	cmpl      4(%ebx), %eax
	je        .L0804AC02
.L0804ABC6:
	subl      $16, %esp
	call      __errno_location
.L0804ABCE:
	popl      %ecx
	pushl     (%eax)
	call      strerror
.L0804ABD6:
	addl      $12, %esp
	pushl     %eax
	pushl     $-1
.L0804ABDC:
	pushl     %edi
	call      gz_error
.L0804ABE2:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $-1, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804ABF1:
	subl      $12, %esp
	pushl     %ebx
	call      deflateReset
.L0804ABFA:
	addl      $16, %esp
	jmp       .L0804AB3E
.L0804AC02:
	movl      $0, 4(%ebx)
	jmp       .L0804AB3E
	.size	gz_comp, .-gz_comp
# ----------------------
.L0804AC0E:
	.p2align 3
# ----------------------
	.globl	gzwrite
	.type	gzwrite, @function
gzwrite:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %esi
	movl      16(%ebp), %edi
	xorl      %edx, %edx
	testl     %esi, %esi
	movl      %edi, -20(%ebp)
	je        .L0804AC39
.L0804AC28:
	leal      96(%esi), %eax
	cmpl      $31153, 16(%esi)
	movl      %eax, -52(%ebp)
	je        .L0804AC44
.L0804AC37:
	xorl      %edx, %edx
.L0804AC39:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804AC43:
	.p2align 2
.L0804AC44:
	movl      88(%esi), %edx
	testl     %edx, %edx
	jne       .L0804AC37
.L0804AC4B:
	cmpl      $0, -20(%ebp)
	jl        .L0804ADF7
.L0804AC55:
	je        .L0804AC37
.L0804AC57:
	movl      28(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804AD02
.L0804AC62:
	movl      84(%esi), %ebx
	testl     %ebx, %ebx
	je        .L0804AD1C
.L0804AC6D:
	movl      $0, 84(%esi)
	movl      -52(%ebp), %edx
	movl      4(%edx), %eax
	movl      76(%esi), %ebx
	movl      80(%esi), %ecx
	testl     %eax, %eax
	movl      %ebx, -32(%ebp)
	movl      %ecx, -28(%ebp)
	jne       .L0804AE0A
.L0804AC8E:
	movl      -28(%ebp), %eax
	movl      $1, -36(%ebp)
	orl       -32(%ebp), %eax
	.p2align 2
.L0804AC9C:
	je        .L0804AD1C
.L0804AC9E:
	xorl      %edx, %edx
	cmpl      -28(%ebp), %edx
	movl      28(%esi), %eax
	jl        .L0804ACAF
.L0804ACA8:
	jg        .L0804AD17
.L0804ACAA:
	cmpl      -32(%ebp), %eax
	ja        .L0804AD17
.L0804ACAF:
	movl      28(%esi), %ebx
.L0804ACB2:
	movl      -36(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L0804AD91
.L0804ACBD:
	movl      %ebx, -48(%ebp)
	movl      -52(%ebp), %edx
	movl      -48(%ebp), %eax
	movl      $0, -44(%ebp)
	addl      %eax, 8(%esi)
	movl      %ebx, 4(%edx)
	movl      36(%esi), %ecx
	movl      -44(%ebp), %ebx
	adcl      %ebx, 12(%esi)
	movl      %ecx, (%edx)
	movl      %esi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804ACE7:
	incl      %eax
	je        .L0804AC37
.L0804ACEE:
	movl      -48(%ebp), %eax
	subl      %eax, -32(%ebp)
	movl      -44(%ebp), %edx
	sbbl      %edx, -28(%ebp)
	movl      -28(%ebp), %ebx
	orl       -32(%ebp), %ebx
	jmp       .L0804AC9C
.L0804AD02:
	movl      %esi, %eax
	call      gz_init
.L0804AD09:
	xorl      %edx, %edx
	incl      %eax
	jne       .L0804AC62
.L0804AD12:
	jmp       .L0804AC39
.L0804AD17:
	movl      -32(%ebp), %ebx
	jmp       .L0804ACB2
.L0804AD1C:
	movl      28(%esi), %edx
	cmpl      %edi, %edx
	jbe       .L0804ADAC
.L0804AD27:
	jmp       .L0804AD80
.L0804AD29:
	.p2align 2
.L0804AD2C:
	movl      36(%esi), %ecx
	movl      %ecx, (%eax)
.L0804AD31:
	leal      (%ecx,%ebx), %eax
	movl      36(%esi), %ecx
	subl      %ecx, %eax
	movl      %edx, %ebx
	subl      %eax, %ebx
	cmpl      %edi, %ebx
	jbe       .L0804AD43
.L0804AD41:
	movl      %edi, %ebx
.L0804AD43:
	pushl     %edx
	pushl     %ebx
	leal      (%ecx,%eax), %eax
	pushl     12(%ebp)
	pushl     %eax
	call      memcpy
.L0804AD51:
	movl      -52(%ebp), %eax
	xorl      %ecx, %ecx
	addl      %ebx, 4(%eax)
	addl      %ebx, 8(%esi)
	adcl      %ecx, 12(%esi)
	addl      %ebx, 12(%ebp)
	addl      $16, %esp
	subl      %ebx, %edi
	je        .L0804ADEF
.L0804AD6D:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      gz_comp
.L0804AD76:
	incl      %eax
	je        .L0804AC37
.L0804AD7D:
	movl      28(%esi), %edx
.L0804AD80:
	movl      -52(%ebp), %eax
	movl      4(%eax), %ebx
	testl     %ebx, %ebx
	je        .L0804AD2C
.L0804AD8A:
	movl      -52(%ebp), %eax
	movl      (%eax), %ecx
	jmp       .L0804AD31
.L0804AD91:
	pushl     %ecx
	pushl     %ebx
	pushl     $0
	pushl     36(%esi)
	call      memset
.L0804AD9D:
	addl      $16, %esp
	movl      $0, -36(%ebp)
	jmp       .L0804ACBD
.L0804ADAC:
	movl      -52(%ebp), %ecx
	movl      4(%ecx), %ebx
	testl     %ebx, %ebx
	je        .L0804ADC8
.L0804ADB6:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      gz_comp
.L0804ADBF:
	xorl      %edx, %edx
	incl      %eax
	je        .L0804AC39
.L0804ADC8:
	movl      -52(%ebp), %ebx
	movl      %edi, %edx
	movl      12(%ebp), %eax
	movl      %edi, 4(%ebx)
	xorl      %edi, %edi
	addl      %edx, 8(%esi)
	adcl      %edi, 12(%esi)
	movl      %eax, (%ebx)
	xorl      %edx, %edx
	movl      %esi, %eax
	call      gz_comp
.L0804ADE6:
	xorl      %edx, %edx
	incl      %eax
	je        .L0804AC39
.L0804ADEF:
	movl      -20(%ebp), %edx
	jmp       .L0804AC39
.L0804ADF7:
	pushl     %eax
	pushl     $.LC08054888
	pushl     $-3
	pushl     %esi
	call      gz_error
.L0804AE05:
	jmp       .L0804AC37
.L0804AE0A:
	xorl      %edx, %edx
	movl      %esi, %eax
	call      gz_comp
.L0804AE13:
	incl      %eax
	jne       .L0804AC8E
.L0804AE1A:
	jmp       .L0804AC37
	.size	gzwrite, .-gzwrite
# ----------------------
.L0804AE1F:
	.p2align 3
# ----------------------
	.globl	gzputc
	.type	gzputc, @function
gzputc:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-1, %edx
	je        .L0804AE56
.L0804AE35:
	movl      8(%ebp), %eax
	movl      8(%ebp), %edx
	addl      $96, %eax
	cmpl      $31153, 16(%edx)
	movl      %eax, -24(%ebp)
	jne       .L0804AE51
.L0804AE4A:
	movl      88(%edx), %esi
	testl     %esi, %esi
	je        .L0804AE60
.L0804AE51:
	movl      $-1, %edx
.L0804AE56:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804AE60:
	movl      8(%ebp), %ecx
	movl      84(%ecx), %ebx
	testl     %ebx, %ebx
	je        .L0804AF08
.L0804AE6E:
	movl      $0, 84(%ecx)
	movl      %ecx, %eax
	movl      76(%ecx), %ebx
	movl      80(%ecx), %esi
	movl      -24(%ebp), %ecx
	movl      4(%ecx), %edx
	testl     %edx, %edx
	jne       .L0804AFC7
.L0804AE8B:
	movl      %esi, %edi
	orl       %ebx, %edi
	movl      $1, -28(%ebp)
	je        .L0804AF08
.L0804AE98:
	xorl      %edx, %edx
	movl      8(%ebp), %ecx
	cmpl      %esi, %edx
	movl      28(%ecx), %eax
	jl        .L0804AEB4
.L0804AEA4:
	jg        .L0804AF9C
.L0804AEAA:
	cmpl      %ebx, %eax
	ja        .L0804AF9C
.L0804AEB2:
	.p2align 2
.L0804AEB4:
	movl      -28(%ebp), %edx
	movl      8(%ebp), %eax
	testl     %edx, %edx
	movl      28(%eax), %edi
	jne       .L0804AFA9
.L0804AEC5:
	movl      8(%ebp), %edx
	movl      36(%edx), %eax
	movl      -24(%ebp), %ecx
	movl      %edi, -40(%ebp)
	movl      %edi, 4(%ecx)
	movl      %eax, (%ecx)
	movl      8(%ebp), %edi
	movl      -40(%ebp), %eax
	movl      $0, -36(%ebp)
	addl      %eax, 8(%edi)
	movl      -36(%ebp), %edx
	adcl      %edx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804AEF5:
	incl      %eax
	je        .L0804AE51
.L0804AEFC:
	subl      -40(%ebp), %ebx
	sbbl      -36(%ebp), %esi
	movl      %esi, %edi
	orl       %ebx, %edi
	jne       .L0804AE98
.L0804AF08:
	movl      8(%ebp), %esi
	movl      28(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804AF70
.L0804AF12:
	movl      -24(%ebp), %ebx
	movl      4(%ebx), %edx
	testl     %edx, %edx
	je        .L0804AF54
.L0804AF1C:
	movl      -24(%ebp), %ebx
	movl      (%ebx), %eax
	movl      8(%ebp), %edi
	addl      %edx, %eax
	movl      36(%edi), %edx
	subl      %edx, %eax
	cmpl      %eax, %ecx
	jbe       .L0804AF70
.L0804AF2F:
	movb      12(%ebp), %bl
	movb      %bl, (%edx,%eax)
	movl      8(%ebp), %ecx
	movl      -24(%ebp), %eax
	incl      4(%eax)
	addl      $1, 8(%ecx)
	adcl      $0, 12(%ecx)
	movzbl    12(%ebp), %edx
.L0804AF4A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804AF54:
	movl      8(%ebp), %esi
	movl      36(%esi), %eax
	movl      -24(%ebp), %edi
	movl      %eax, (%edi)
	movl      8(%ebp), %edi
	addl      %edx, %eax
	movl      36(%edi), %edx
	subl      %edx, %eax
	cmpl      %eax, %ecx
	ja        .L0804AF2F
.L0804AF6D:
	.p2align 3
.L0804AF70:
	movb      12(%ebp), %cl
	movb      %cl, -17(%ebp)
	pushl     %edx
	pushl     $1
	leal      -17(%ebp), %edx
	pushl     %edx
	pushl     8(%ebp)
	call      gzwrite
.L0804AF85:
	addl      $16, %esp
	decl      %eax
	movl      $-1, %edx
	jne       .L0804AE56
.L0804AF94:
	movzbl    12(%ebp), %edx
	jmp       .L0804AF4A
.L0804AF9A:
	.p2align 2
.L0804AF9C:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	movl      %ebx, %edi
	je        .L0804AEC5
.L0804AFA9:
	pushl     %ecx
	pushl     %edi
	pushl     $0
	movl      8(%ebp), %ecx
	pushl     36(%ecx)
	call      memset
.L0804AFB8:
	addl      $16, %esp
	movl      $0, -28(%ebp)
	jmp       .L0804AEC5
.L0804AFC7:
	xorl      %edx, %edx
	call      gz_comp
.L0804AFCE:
	incl      %eax
	jne       .L0804AE8B
.L0804AFD5:
	jmp       .L0804AE51
	.size	gzputc, .-gzputc
# ----------------------
.L0804AFDA:
	.p2align 2
# ----------------------
	.globl	gzputs
	.type	gzputs, @function
gzputs:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %ebx
	xorl      %eax, %eax
	cld       
	movl      12(%ebp), %edi
	movl      $-1, %ecx
	repnz scasb     
	notl      %ecx
	leal      -1(%ecx), %ebx
	pushl     %eax
	pushl     %ebx
	pushl     12(%ebp)
	pushl     8(%ebp)
	call      gzwrite
.L0804B000:
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804B010
.L0804B007:
	testl     %ebx, %ebx
	movl      $-1, %edx
	jne       .L0804B012
.L0804B010:
	movl      %eax, %edx
.L0804B012:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.size	gzputs, .-gzputs
# ----------------------
.L0804B01B:
	.p2align 2
# ----------------------
	.globl	gzvprintf
	.type	gzvprintf, @function
gzvprintf:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-1, %edx
	je        .L0804B042
.L0804B031:
	leal      96(%edi), %eax
	cmpl      $31153, 16(%edi)
	movl      %eax, -36(%ebp)
	je        .L0804B04C
.L0804B040:
	xorl      %edx, %edx
.L0804B042:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804B04C:
	movl      88(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L0804B040
.L0804B053:
	movl      28(%edi), %edx
	testl     %edx, %edx
	je        .L0804B1B1
.L0804B05E:
	movl      84(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804B104
.L0804B069:
	movl      $0, 84(%edi)
	movl      -36(%ebp), %ecx
	movl      4(%ecx), %eax
	testl     %eax, %eax
	movl      76(%edi), %ebx
	movl      80(%edi), %esi
	jne       .L0804B17D
.L0804B084:
	movl      %esi, %edx
	movl      $1, -20(%ebp)
	orl       %ebx, %edx
	.p2align 3
.L0804B090:
	je        .L0804B104
.L0804B092:
	xorl      %ecx, %ecx
	cmpl      %esi, %ecx
	movl      28(%edi), %eax
	jl        .L0804B0AC
.L0804B09B:
	jg        .L0804B175
.L0804B0A1:
	cmpl      %ebx, %eax
	ja        .L0804B175
.L0804B0A9:
	.p2align 2
.L0804B0AC:
	movl      28(%edi), %eax
	movl      %eax, -24(%ebp)
.L0804B0B2:
	movl      -20(%ebp), %edx
	testl     %edx, %edx
	jne       .L0804B194
.L0804B0BD:
	movl      -24(%ebp), %edx
	movl      -36(%ebp), %ecx
	movl      %edx, 4(%ecx)
	movl      -24(%ebp), %edx
	movl      36(%edi), %eax
	movl      -36(%ebp), %ecx
	movl      %edx, -32(%ebp)
	movl      %eax, (%ecx)
	movl      $0, -28(%ebp)
	movl      -32(%ebp), %eax
	addl      %eax, 8(%edi)
	movl      -28(%ebp), %ecx
	adcl      %ecx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804B0F0:
	incl      %eax
	je        .L0804B040
.L0804B0F7:
	subl      -32(%ebp), %ebx
	sbbl      -28(%ebp), %esi
	movl      %esi, %eax
	orl       %ebx, %eax
	jmp       .L0804B090
.L0804B103:
	.p2align 2
.L0804B104:
	movl      -36(%ebp), %ebx
	movl      4(%ebx), %esi
	testl     %esi, %esi
	je        .L0804B120
.L0804B10E:
	xorl      %edx, %edx
	movl      %edi, %eax
	call      gz_comp
.L0804B117:
	xorl      %edx, %edx
	incl      %eax
	je        .L0804B042
.L0804B120:
	movl      36(%edi), %ecx
	movl      28(%edi), %ebx
	movb      $0, -1(%ecx,%ebx)
	pushl     16(%ebp)
	pushl     12(%ebp)
	pushl     %ebx
	pushl     36(%edi)
	call      vsnprintf
.L0804B13A:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ecx
	jle       .L0804B040
.L0804B147:
	cmpl      %ebx, %eax
	jge       .L0804B040
.L0804B14F:
	movl      36(%edi), %eax
	cmpb      $0, -1(%eax,%ebx)
	jne       .L0804B040
.L0804B15D:
	movl      -36(%ebp), %esi
	movl      %eax, (%esi)
	movl      %ecx, %eax
	cltd      
	addl      %ecx, 8(%edi)
	adcl      %edx, 12(%edi)
	movl      %ecx, %edx
	movl      %ecx, 4(%esi)
	jmp       .L0804B042
.L0804B175:
	movl      %ebx, -24(%ebp)
	jmp       .L0804B0B2
.L0804B17D:
	xorl      %edx, %edx
	movl      %edi, %eax
	call      gz_comp
.L0804B186:
	incl      %eax
	jne       .L0804B084
.L0804B18D:
	jmp       .L0804B040
.L0804B192:
	.p2align 2
.L0804B194:
	pushl     %eax
	pushl     -24(%ebp)
	pushl     $0
	pushl     36(%edi)
	call      memset
.L0804B1A2:
	addl      $16, %esp
	movl      $0, -20(%ebp)
	jmp       .L0804B0BD
.L0804B1B1:
	movl      %edi, %eax
	call      gz_init
.L0804B1B8:
	xorl      %edx, %edx
	incl      %eax
	jne       .L0804B05E
.L0804B1C1:
	jmp       .L0804B042
	.size	gzvprintf, .-gzvprintf
# ----------------------
.L0804B1C6:
	.p2align 3
# ----------------------
	.globl	gzprintf
	.type	gzprintf, @function
gzprintf:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-1, %edx
	je        .L0804B1EE
.L0804B1DD:
	leal      96(%edi), %eax
	cmpl      $31153, 16(%edi)
	movl      %eax, -36(%ebp)
	je        .L0804B1F8
.L0804B1EC:
	xorl      %edx, %edx
.L0804B1EE:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804B1F8:
	movl      88(%edi), %edx
	testl     %edx, %edx
	jne       .L0804B1EC
.L0804B1FF:
	movl      28(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0804B35D
.L0804B20A:
	movl      84(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804B2B0
.L0804B215:
	movl      $0, 84(%edi)
	movl      -36(%ebp), %edx
	movl      4(%edx), %eax
	testl     %eax, %eax
	movl      76(%edi), %ebx
	movl      80(%edi), %esi
	jne       .L0804B32B
.L0804B230:
	movl      %esi, %ecx
	movl      $1, -20(%ebp)
	orl       %ebx, %ecx
	.p2align 2
.L0804B23C:
	je        .L0804B2B0
.L0804B23E:
	xorl      %edx, %edx
	cmpl      %esi, %edx
	movl      28(%edi), %eax
	jl        .L0804B258
.L0804B247:
	jg        .L0804B323
.L0804B24D:
	cmpl      %ebx, %eax
	ja        .L0804B323
.L0804B255:
	.p2align 3
.L0804B258:
	movl      28(%edi), %eax
	movl      %eax, -24(%ebp)
.L0804B25E:
	movl      -20(%ebp), %ecx
	testl     %ecx, %ecx
	jne       .L0804B340
.L0804B269:
	movl      -24(%ebp), %edx
	movl      -36(%ebp), %ecx
	movl      %edx, 4(%ecx)
	movl      -24(%ebp), %ecx
	movl      36(%edi), %eax
	movl      -36(%ebp), %edx
	movl      %ecx, -32(%ebp)
	movl      %eax, (%edx)
	movl      $0, -28(%ebp)
	movl      -32(%ebp), %eax
	addl      %eax, 8(%edi)
	movl      -28(%ebp), %edx
	adcl      %edx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804B29C:
	incl      %eax
	je        .L0804B1EC
.L0804B2A3:
	subl      -32(%ebp), %ebx
	sbbl      -28(%ebp), %esi
	movl      %esi, %eax
	orl       %ebx, %eax
	jmp       .L0804B23C
.L0804B2AF:
	.p2align 3
.L0804B2B0:
	movl      -36(%ebp), %ebx
	movl      4(%ebx), %esi
	testl     %esi, %esi
	jne       .L0804B310
.L0804B2BA:
	movl      28(%edi), %ebx
	movl      36(%edi), %edx
	leal      16(%ebp), %ecx
	movb      $0, -1(%edx,%ebx)
	pushl     %ecx
	pushl     12(%ebp)
	pushl     %ebx
	pushl     36(%edi)
	call      vsnprintf
.L0804B2D5:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, %ecx
	jle       .L0804B1EC
.L0804B2E2:
	cmpl      %ebx, %eax
	jge       .L0804B1EC
.L0804B2EA:
	movl      36(%edi), %eax
	cmpb      $0, -1(%eax,%ebx)
	jne       .L0804B1EC
.L0804B2F8:
	movl      -36(%ebp), %esi
	movl      %eax, (%esi)
	movl      %ecx, %eax
	cltd      
	addl      %ecx, 8(%edi)
	adcl      %edx, 12(%edi)
	movl      %ecx, %edx
	movl      %ecx, 4(%esi)
	jmp       .L0804B1EE
.L0804B310:
	xorl      %edx, %edx
	movl      %edi, %eax
	call      gz_comp
.L0804B319:
	xorl      %edx, %edx
	incl      %eax
	jne       .L0804B2BA
.L0804B31E:
	jmp       .L0804B1EE
.L0804B323:
	movl      %ebx, -24(%ebp)
	jmp       .L0804B25E
.L0804B32B:
	xorl      %edx, %edx
	movl      %edi, %eax
	call      gz_comp
.L0804B334:
	incl      %eax
	jne       .L0804B230
.L0804B33B:
	jmp       .L0804B1EC
.L0804B340:
	pushl     %eax
	pushl     -24(%ebp)
	pushl     $0
	pushl     36(%edi)
	call      memset
.L0804B34E:
	addl      $16, %esp
	movl      $0, -20(%ebp)
	jmp       .L0804B269
.L0804B35D:
	movl      %edi, %eax
	call      gz_init
.L0804B364:
	xorl      %edx, %edx
	incl      %eax
	jne       .L0804B20A
.L0804B36D:
	jmp       .L0804B1EE
	.size	gzprintf, .-gzprintf
# ----------------------
.L0804B372:
	.p2align 2
# ----------------------
	.globl	gzflush
	.type	gzflush, @function
gzflush:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	movl      $-1, %eax
	je        .L0804B475
.L0804B38D:
	movl      8(%ebp), %eax
	cmpl      $31153, 16(%eax)
	jne       .L0804B470
.L0804B39D:
	movl      88(%eax), %eax
	testl     %eax, %eax
	jne       .L0804B470
.L0804B3A8:
	cmpl      $4, 12(%ebp)
	movl      $-2, %eax
	ja        .L0804B475
.L0804B3B7:
	movl      8(%ebp), %edx
	movl      84(%edx), %ecx
	testl     %ecx, %ecx
	je        .L0804B454
.L0804B3C5:
	movl      %edx, %eax
	addl      $96, %eax
	movl      $0, 84(%edx)
	movl      4(%eax), %edi
	testl     %edi, %edi
	movl      76(%edx), %ebx
	movl      80(%edx), %esi
	movl      %eax, -24(%ebp)
	jne       .L0804B4A7
.L0804B3E5:
	movl      %esi, %edx
	orl       %ebx, %edx
	movl      $1, -20(%ebp)
	je        .L0804B454
.L0804B3F2:
	.p2align 2
.L0804B3F4:
	xorl      %ecx, %ecx
	movl      8(%ebp), %edi
	cmpl      %esi, %ecx
	movl      28(%edi), %eax
	jl        .L0804B408
.L0804B400:
	jg        .L0804B480
.L0804B402:
	cmpl      %ebx, %eax
	ja        .L0804B480
.L0804B406:
	.p2align 3
.L0804B408:
	movl      -20(%ebp), %edx
	movl      8(%ebp), %eax
	testl     %edx, %edx
	movl      28(%eax), %edi
	jne       .L0804B489
.L0804B415:
	movl      8(%ebp), %edx
	movl      36(%edx), %eax
	movl      -24(%ebp), %ecx
	movl      %edi, -32(%ebp)
	movl      %edi, 4(%ecx)
	movl      %eax, (%ecx)
	movl      8(%ebp), %edi
	movl      -32(%ebp), %eax
	movl      $0, -28(%ebp)
	addl      %eax, 8(%edi)
	movl      -28(%ebp), %edx
	adcl      %edx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804B445:
	incl      %eax
	je        .L0804B4B8
.L0804B448:
	subl      -32(%ebp), %ebx
	sbbl      -28(%ebp), %esi
	movl      %esi, %edx
	orl       %ebx, %edx
	jne       .L0804B3F4
.L0804B454:
	movl      12(%ebp), %edx
	movl      8(%ebp), %eax
	call      gz_comp
.L0804B45F:
	movl      8(%ebp), %ebx
	movl      88(%ebx), %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804B46D:
	.p2align 3
.L0804B470:
	movl      $-2, %eax
.L0804B475:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804B47D:
	.p2align 3
.L0804B480:
	movl      -20(%ebp), %edx
	testl     %edx, %edx
	movl      %ebx, %edi
	je        .L0804B415
.L0804B489:
	pushl     %edx
	pushl     %edi
	pushl     $0
	movl      8(%ebp), %ecx
	pushl     36(%ecx)
	call      memset
.L0804B498:
	addl      $16, %esp
	movl      $0, -20(%ebp)
	jmp       .L0804B415
.L0804B4A7:
	xorl      %edx, %edx
	movl      8(%ebp), %eax
	call      gz_comp
.L0804B4B1:
	incl      %eax
	jne       .L0804B3E5
.L0804B4B8:
	movl      $-1, %eax
	jmp       .L0804B475
	.size	gzflush, .-gzflush
# ----------------------
.L0804B4BF:
	.p2align 3
# ----------------------
	.globl	gzsetparams
	.type	gzsetparams, @function
gzsetparams:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L0804B60D
.L0804B4D9:
	movl      8(%ebp), %eax
	movl      8(%ebp), %edx
	addl      $96, %eax
	cmpl      $31153, 16(%edx)
	movl      %eax, -36(%ebp)
	jne       .L0804B608
.L0804B4F2:
	movl      88(%edx), %esi
	testl     %esi, %esi
	jne       .L0804B608
.L0804B4FD:
	movl      12(%ebp), %edx
	movl      8(%ebp), %ecx
	cmpl      %edx, 68(%ecx)
	je        .L0804B658
.L0804B50C:
	movl      8(%ebp), %ecx
	movl      84(%ecx), %edi
	testl     %edi, %edi
	je        .L0804B5B4
.L0804B51A:
	movl      $0, 84(%ecx)
	movl      -36(%ebp), %edx
	movl      %ecx, %eax
	movl      76(%ecx), %ebx
	movl      80(%ecx), %esi
	movl      4(%edx), %ecx
	testl     %ecx, %ecx
	jne       .L0804B643
.L0804B537:
	movl      %esi, %eax
	orl       %ebx, %eax
	movl      $1, -20(%ebp)
	je        .L0804B5B4
.L0804B544:
	xorl      %edi, %edi
	movl      8(%ebp), %ecx
	cmpl      %esi, %edi
	movl      28(%ecx), %eax
	jl        .L0804B560
.L0804B550:
	jg        .L0804B618
.L0804B556:
	cmpl      %ebx, %eax
	ja        .L0804B618
.L0804B55E:
	.p2align 3
.L0804B560:
	movl      -20(%ebp), %eax
	movl      8(%ebp), %edx
	testl     %eax, %eax
	movl      28(%edx), %edi
	jne       .L0804B625
.L0804B571:
	movl      8(%ebp), %edx
	movl      36(%edx), %eax
	movl      -36(%ebp), %ecx
	movl      %edi, -32(%ebp)
	movl      %edi, 4(%ecx)
	movl      %eax, (%ecx)
	movl      8(%ebp), %edi
	movl      -32(%ebp), %eax
	movl      $0, -28(%ebp)
	addl      %eax, 8(%edi)
	movl      -28(%ebp), %edx
	adcl      %edx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804B5A1:
	incl      %eax
	je        .L0804B651
.L0804B5A8:
	subl      -32(%ebp), %ebx
	sbbl      -28(%ebp), %esi
	movl      %esi, %edi
	orl       %ebx, %edi
	jne       .L0804B544
.L0804B5B4:
	movl      8(%ebp), %ebx
	movl      28(%ebx), %esi
	testl     %esi, %esi
	je        .L0804B5EE
.L0804B5BE:
	movl      -36(%ebp), %ecx
	movl      4(%ecx), %eax
	testl     %eax, %eax
	je        .L0804B5DC
.L0804B5C8:
	movl      $1, %edx
	movl      8(%ebp), %eax
	call      gz_comp
.L0804B5D5:
	incl      %eax
	je        .L0804B668
.L0804B5DC:
	pushl     %ecx
	pushl     16(%ebp)
	pushl     12(%ebp)
	pushl     -36(%ebp)
	call      deflateParams
.L0804B5EB:
	addl      $16, %esp
.L0804B5EE:
	movl      12(%ebp), %ebx
	movl      8(%ebp), %edi
	movl      16(%ebp), %esi
	movl      %ebx, 68(%edi)
	movl      %esi, 72(%edi)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L0804B607:
	.p2align 3
.L0804B608:
	movl      $-2, %eax
.L0804B60D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804B615:
	.p2align 3
.L0804B618:
	movl      -20(%ebp), %eax
	testl     %eax, %eax
	movl      %ebx, %edi
	je        .L0804B571
.L0804B625:
	pushl     %eax
	pushl     %edi
	pushl     $0
	movl      8(%ebp), %ecx
	pushl     36(%ecx)
	call      memset
.L0804B634:
	addl      $16, %esp
	movl      $0, -20(%ebp)
	jmp       .L0804B571
.L0804B643:
	xorl      %edx, %edx
	call      gz_comp
.L0804B64A:
	incl      %eax
	jne       .L0804B537
.L0804B651:
	movl      $-1, %eax
	jmp       .L0804B60D
.L0804B658:
	movl      16(%ebp), %ebx
	xorl      %eax, %eax
	cmpl      %ebx, 72(%ecx)
	jne       .L0804B50C
.L0804B666:
	jmp       .L0804B60D
.L0804B668:
	movl      8(%ebp), %edx
	movl      88(%edx), %eax
	jmp       .L0804B60D
	.size	gzsetparams, .-gzsetparams
# ----------------------
	.globl	gzclose_w
	.type	gzclose_w, @function
gzclose_w:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $28, %esp
	movl      8(%ebp), %edx
	testl     %edx, %edx
	movl      $0, -20(%ebp)
	movl      $-2, %eax
	je        .L0804B722
.L0804B690:
	movl      8(%ebp), %edx
	cmpl      $31153, 16(%edx)
	jne       .L0804B722
.L0804B6A0:
	movl      84(%edx), %eax
	testl     %eax, %eax
	jne       .L0804B72C
.L0804B6AB:
	movl      $4, %edx
	movl      8(%ebp), %eax
	call      gz_comp
.L0804B6B8:
	incl      %eax
	je        .L0804B7E8
.L0804B6BF:
	movl      8(%ebp), %eax
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L0804B6E5
.L0804B6C9:
	movl      44(%eax), %ebx
	testl     %ebx, %ebx
	je        .L0804B7F6
.L0804B6D4:
	subl      $12, %esp
	movl      8(%ebp), %esi
	pushl     36(%esi)
	call      free
.L0804B6E2:
	addl      $16, %esp
.L0804B6E5:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     8(%ebp)
	call      gz_error
.L0804B6F2:
	popl      %eax
	movl      8(%ebp), %ecx
	pushl     24(%ecx)
	call      free
.L0804B6FE:
	popl      %eax
	movl      8(%ebp), %edi
	pushl     20(%edi)
	call      close
.L0804B70A:
	addl      $16, %esp
	incl      %eax
	je        .L0804B7DC
.L0804B714:
	subl      $12, %esp
	pushl     8(%ebp)
	call      free
.L0804B71F:
	movl      -20(%ebp), %eax
.L0804B722:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804B72A:
	.p2align 2
.L0804B72C:
	movl      %edx, %ecx
	addl      $96, %ecx
	movl      $0, 84(%edx)
	movl      4(%ecx), %edi
	testl     %edi, %edi
	movl      76(%edx), %ebx
	movl      80(%edx), %esi
	movl      %ecx, -28(%ebp)
	jne       .L0804B816
.L0804B74C:
	movl      $1, -24(%ebp)
	.p2align 2
.L0804B754:
	movl      %esi, %edx
	orl       %ebx, %edx
	je        .L0804B6AB
.L0804B75E:
	xorl      %edi, %edi
	movl      8(%ebp), %ecx
	cmpl      %esi, %edi
	movl      28(%ecx), %eax
	jl        .L0804B770
.L0804B76A:
	jg        .L0804B7B8
.L0804B76C:
	cmpl      %ebx, %eax
	ja        .L0804B7B8
.L0804B770:
	movl      -24(%ebp), %edx
	movl      8(%ebp), %eax
	testl     %edx, %edx
	movl      28(%eax), %edi
	jne       .L0804B7C1
.L0804B77D:
	movl      8(%ebp), %edx
	movl      36(%edx), %eax
	movl      -28(%ebp), %ecx
	movl      %edi, -40(%ebp)
	movl      %edi, 4(%ecx)
	movl      %eax, (%ecx)
	movl      8(%ebp), %edi
	movl      -40(%ebp), %eax
	movl      $0, -36(%ebp)
	addl      %eax, 8(%edi)
	movl      -36(%ebp), %edx
	adcl      %edx, 12(%edi)
	movl      %edi, %eax
	xorl      %edx, %edx
	call      gz_comp
.L0804B7AD:
	incl      %eax
	je        .L0804B827
.L0804B7B0:
	subl      -40(%ebp), %ebx
	sbbl      -36(%ebp), %esi
	jmp       .L0804B754
.L0804B7B8:
	movl      -24(%ebp), %edx
	testl     %edx, %edx
	movl      %ebx, %edi
	je        .L0804B77D
.L0804B7C1:
	pushl     %eax
	pushl     %edi
	pushl     $0
	movl      8(%ebp), %ecx
	pushl     36(%ecx)
	call      memset
.L0804B7D0:
	addl      $16, %esp
	movl      $0, -24(%ebp)
	jmp       .L0804B77D
.L0804B7DC:
	movl      $-1, -20(%ebp)
	jmp       .L0804B714
.L0804B7E8:
	movl      8(%ebp), %ecx
	movl      88(%ecx), %edi
	movl      %edi, -20(%ebp)
	jmp       .L0804B6BF
.L0804B7F6:
	subl      $12, %esp
	addl      $96, %eax
	pushl     %eax
	call      deflateEnd
.L0804B802:
	popl      %eax
	movl      8(%ebp), %eax
	pushl     40(%eax)
	call      free
.L0804B80E:
	addl      $16, %esp
	jmp       .L0804B6D4
.L0804B816:
	xorl      %edx, %edx
	movl      8(%ebp), %eax
	call      gz_comp
.L0804B820:
	incl      %eax
	jne       .L0804B74C
.L0804B827:
	movl      8(%ebp), %esi
	movl      88(%esi), %ebx
	movl      %ebx, -20(%ebp)
	jmp       .L0804B6AB
	.size	gzclose_w, .-gzclose_w
# ----------------------
.L0804B835:
	.p2align 3
# ----------------------
	.globl	deflateEnd
	.type	deflateEnd, @function
deflateEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804B8CC
.L0804B848:
	movl      28(%ebx), %edx
	testl     %edx, %edx
	je        .L0804B8CC
.L0804B84F:
	movl      4(%edx), %esi
	cmpl      $42, %esi
	je        .L0804B880
.L0804B857:
	cmpl      $69, %esi
	je        .L0804B880
.L0804B85C:
	cmpl      $73, %esi
	je        .L0804B880
.L0804B861:
	cmpl      $91, %esi
	je        .L0804B880
.L0804B866:
	cmpl      $103, %esi
	je        .L0804B880
.L0804B86B:
	cmpl      $113, %esi
	je        .L0804B880
.L0804B870:
	cmpl      $666, %esi
	movl      $-2, %eax
	jne       .L0804B8D1
.L0804B87D:
	.p2align 3
.L0804B880:
	movl      8(%edx), %eax
	testl     %eax, %eax
	jne       .L0804B8D8
.L0804B887:
	movl      68(%edx), %eax
	testl     %eax, %eax
	jne       .L0804B8F0
.L0804B88E:
	movl      64(%edx), %eax
	testl     %eax, %eax
	jne       .L0804B908
.L0804B895:
	movl      56(%edx), %eax
	testl     %eax, %eax
	jne       .L0804B920
.L0804B8A0:
	subl      $8, %esp
	pushl     28(%ebx)
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804B8AC:
	addl      $16, %esp
	xorl      %eax, %eax
	cmpl      $113, %esi
	movl      $0, 28(%ebx)
	setne     %al
	leal      -8(%ebp), %esp
	popl      %ebx
	leal      -3(%eax,%eax,2), %eax
	popl      %esi
	leave     
	ret       
.L0804B8C9:
	.p2align 2
.L0804B8CC:
	movl      $-2, %eax
.L0804B8D1:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L0804B8D8:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804B8E2:
	movl      28(%ebx), %edx
	movl      68(%edx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804B88E
.L0804B8EF:
	.p2align 3
.L0804B8F0:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804B8FA:
	movl      28(%ebx), %edx
	movl      64(%edx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804B895
.L0804B907:
	.p2align 3
.L0804B908:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804B912:
	movl      28(%ebx), %edx
	movl      56(%edx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804B8A0
.L0804B91F:
	.p2align 3
.L0804B920:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804B92A:
	addl      $16, %esp
	jmp       .L0804B8A0
	.size	deflateEnd, .-deflateEnd
# ----------------------
.L0804B932:
	.p2align 2
# ----------------------
	.globl	deflateResetKeep
	.type	deflateResetKeep, @function
deflateResetKeep:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %esi
	testl     %esi, %esi
	je        .L0804B9C4
.L0804B944:
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L0804B9C4
.L0804B94B:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L0804B9C4
.L0804B952:
	movl      36(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804B9C4
.L0804B959:
	movl      $2, 44(%esi)
	movl      8(%ebx), %edx
	movl      %edx, 16(%ebx)
	movl      24(%ebx), %edx
	testl     %edx, %edx
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $0, 20(%ebx)
	js        .L0804B9DE
.L0804B989:
	cmpl      $1, %edx
	sbbl      %eax, %eax
	andl      $71, %eax
	addl      $42, %eax
	cmpl      $2, %edx
	movl      %eax, 4(%ebx)
	je        .L0804B9D0
.L0804B99C:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804B9A8:
	movl      %eax, 48(%esi)
	movl      $0, 40(%ebx)
	movl      %ebx, (%esp)
	call      _tr_init
.L0804B9BA:
	leal      -8(%ebp), %esp
	popl      %ebx
	xorl      %eax, %eax
	popl      %esi
	leave     
	ret       
.L0804B9C3:
	.p2align 2
.L0804B9C4:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      $-2, %eax
	popl      %esi
	leave     
	ret       
.L0804B9D0:
	pushl     %edx
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804B9DC:
	jmp       .L0804B9A8
.L0804B9DE:
	negl      %edx
	movl      %edx, 24(%ebx)
	jmp       .L0804B989
	.size	deflateResetKeep, .-deflateResetKeep
# ----------------------
.L0804B9E5:
	.p2align 3
# ----------------------
	.globl	deflateReset
	.type	deflateReset, @function
deflateReset:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %esi
	testl     %esi, %esi
	je        .L0804BB38
.L0804B9FC:
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L0804BB38
.L0804BA07:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L0804BB38
.L0804BA12:
	movl      36(%esi), %edx
	testl     %edx, %edx
	je        .L0804BB38
.L0804BA1D:
	movl      $2, 44(%esi)
	movl      24(%ebx), %edx
	movl      8(%ebx), %ecx
	testl     %edx, %edx
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	movl      $0, 20(%ebx)
	movl      %ecx, 16(%ebx)
	js        .L0804BB58
.L0804BA51:
	cmpl      $1, %edx
	sbbl      %edi, %edi
	andl      $71, %edi
	addl      $42, %edi
	cmpl      $2, %edx
	movl      %edi, 4(%ebx)
	je        .L0804BB47
.L0804BA68:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804BA74:
	movl      %eax, 48(%esi)
	movl      $0, 40(%ebx)
	movl      %ebx, (%esp)
	call      _tr_init
.L0804BA86:
	movl      28(%esi), %ebx
	movl      76(%ebx), %esi
	movl      44(%ebx), %eax
	movl      68(%ebx), %edx
	addl      $12, %esp
	leal      -2(%esi,%esi), %ecx
	sall      $1, %eax
	movw      $0, -2(%edx,%esi,2)
	movl      %eax, 60(%ebx)
	pushl     %ecx
	pushl     $0
	pushl     %edx
	call      memset
.L0804BAAE:
	movl      132(%ebx), %eax
	leal      (%eax,%eax,2), %eax
	sall      $2, %eax
	movzwl    configuration_table+2(%eax), %esi
	movl      %esi, 128(%ebx)
	movzwl    configuration_table(%eax), %ecx
	movzwl    configuration_table+6(%eax), %esi
	movzwl    configuration_table+4(%eax), %edx
	movl      %ecx, 140(%ebx)
	movl      %edx, 144(%ebx)
	movl      %esi, 124(%ebx)
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	addl      $16, %esp
	leal      -12(%ebp), %esp
	popl      %ebx
	xorl      %edi, %edi
	popl      %esi
	movl      %edi, %eax
	popl      %edi
	leave     
	ret       
.L0804BB35:
	.p2align 3
.L0804BB38:
	leal      -12(%ebp), %esp
	popl      %ebx
	movl      $-2, %edi
	popl      %esi
	movl      %edi, %eax
	popl      %edi
	leave     
	ret       
.L0804BB47:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804BB53:
	jmp       .L0804BA74
.L0804BB58:
	negl      %edx
	movl      %edx, 24(%ebx)
	jmp       .L0804BA51
	.size	deflateReset, .-deflateReset
# ----------------------
.L0804BB62:
	.p2align 2
# ----------------------
	.globl	deflateInit2_
	.type	deflateInit2_, @function
deflateInit2_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      32(%ebp), %eax
	testl     %eax, %eax
	movl      8(%ebp), %edi
	movl      12(%ebp), %esi
	movl      $1, %ebx
	je        .L0804BB84
.L0804BB7F:
	cmpb      $49, (%eax)
	je        .L0804BB94
.L0804BB84:
	movl      $-6, %eax
.L0804BB89:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804BB91:
	.p2align 2
.L0804BB94:
	cmpl      $56, 36(%ebp)
	jne       .L0804BB84
.L0804BB9A:
	testl     %edi, %edi
	movl      $-2, %eax
	je        .L0804BB89
.L0804BBA3:
	movl      32(%edi), %eax
	testl     %eax, %eax
	movl      $0, 24(%edi)
	je        .L0804BBF8
.L0804BBB1:
	movl      36(%edi), %edx
	testl     %edx, %edx
	jne       .L0804BBBF
.L0804BBB8:
	movl      $zcfree, 36(%edi)
.L0804BBBF:
	cmpl      $-1, %esi
	je        .L0804BED0
.L0804BBC8:
	movl      20(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L0804BEDA
.L0804BBD3:
	cmpl      $15, 20(%ebp)
	jle       .L0804BBE2
.L0804BBD9:
	movl      $2, %ebx
	subl      $16, 20(%ebp)
.L0804BBE2:
	movl      24(%ebp), %eax
	decl      %eax
	cmpl      $8, %eax
	ja        .L0804BBF1
.L0804BBEB:
	cmpl      $8, 16(%ebp)
	je        .L0804BC08
.L0804BBF1:
	movl      $-2, %eax
	jmp       .L0804BB89
.L0804BBF8:
	movl      $zcalloc, 32(%edi)
	movl      $0, 40(%edi)
	jmp       .L0804BBB1
.L0804BC08:
	cmpl      $7, 20(%ebp)
	jle       .L0804BBF1
.L0804BC0E:
	cmpl      $15, 20(%ebp)
	jg        .L0804BBF1
.L0804BC14:
	testl     %esi, %esi
	js        .L0804BBF1
.L0804BC18:
	cmpl      $9, %esi
	jg        .L0804BBF1
.L0804BC1D:
	movl      28(%ebp), %edx
	testl     %edx, %edx
	js        .L0804BBF1
.L0804BC24:
	cmpl      $4, 28(%ebp)
	jg        .L0804BBF1
.L0804BC2A:
	cmpl      $8, 20(%ebp)
	jne       .L0804BC37
.L0804BC30:
	movl      $9, 20(%ebp)
.L0804BC37:
	pushl     %ecx
	pushl     $5828
	pushl     $1
	pushl     40(%edi)
	call      *32(%edi)
.L0804BC45:
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %ecx
	addl      $16, %esp
	testl     %ecx, %ecx
	movl      $-4, %eax
	je        .L0804BB89
.L0804BC5B:
	movl      -16(%ebp), %eax
	movl      %ebx, 24(%eax)
	movl      20(%ebp), %ebx
	movl      %ebx, 48(%eax)
	movl      $1, %ebx
	movb      20(%ebp), %cl
	movl      %eax, 28(%edi)
	movl      %edi, (%eax)
	movl      $0, 28(%eax)
	movl      %ebx, %eax
	movl      -16(%ebp), %edx
	sall      %cl, %eax
	movl      %eax, 44(%edx)
	movl      24(%ebp), %ecx
	decl      %eax
	movl      %eax, 52(%edx)
	addl      $7, %ecx
	movl      %ebx, %eax
	sall      %cl, %eax
	movl      %ecx, 80(%edx)
	movl      %eax, %ecx
	decl      %ecx
	movl      %eax, 76(%edx)
	movl      %ecx, 84(%edx)
	movl      24(%ebp), %edx
	addl      $9, %edx
	movl      $-1431655765, %eax
	mull      %edx
	movl      %edx, %eax
	shrl      $1, %eax
	movl      -16(%ebp), %ecx
	movl      %eax, 88(%ecx)
	pushl     %eax
	pushl     $2
	pushl     44(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L0804BCC2:
	addl      $12, %esp
	movl      -16(%ebp), %edx
	movl      %eax, 56(%edx)
	pushl     $2
	pushl     44(%edx)
	pushl     40(%edi)
	call      *32(%edi)
.L0804BCD6:
	addl      $12, %esp
	movl      -16(%ebp), %ecx
	movl      %eax, 64(%ecx)
	pushl     $2
	pushl     76(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L0804BCEA:
	movl      24(%ebp), %ecx
	addl      $6, %ecx
	addl      $12, %esp
	movl      -16(%ebp), %edx
	sall      %cl, %ebx
	movl      -16(%ebp), %ecx
	movl      %ebx, 5788(%ecx)
	movl      %eax, 68(%edx)
	movl      $0, 5824(%edx)
	pushl     $4
	pushl     5788(%ecx)
	pushl     40(%edi)
	call      *32(%edi)
.L0804BD1C:
	movl      -16(%ebp), %edx
	movl      %edx, %ebx
	movl      %eax, 8(%edx)
	movl      5788(%edx), %edx
	movl      %eax, %ecx
	leal      0(,%edx,4), %eax
	movl      %eax, 12(%ebx)
	movl      56(%ebx), %eax
	addl      $16, %esp
	testl     %eax, %eax
	je        .L0804BEE4
.L0804BD44:
	movl      64(%ebx), %eax
	testl     %eax, %eax
	je        .L0804BEE4
.L0804BD4F:
	movl      68(%ebx), %eax
	testl     %eax, %eax
	je        .L0804BEE4
.L0804BD5A:
	testl     %ecx, %ecx
	je        .L0804BEE4
.L0804BD62:
	movl      %edx, %eax
	andl      $-2, %eax
	movl      -16(%ebp), %ebx
	addl      %ecx, %eax
	movl      %eax, 5796(%ebx)
	leal      (%edx,%edx,2), %eax
	leal      (%ecx,%eax), %eax
	testl     %edi, %edi
	movl      28(%ebp), %ecx
	movl      %eax, 5784(%ebx)
	movl      %esi, 132(%ebx)
	movl      %ecx, 136(%ebx)
	movb      $8, 36(%ebx)
	je        .L0804BFAD
.L0804BD99:
	movl      28(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804BFAD
.L0804BDA4:
	movl      32(%edi), %esi
	testl     %esi, %esi
	je        .L0804BFAD
.L0804BDAF:
	movl      36(%edi), %edx
	testl     %edx, %edx
	je        .L0804BFAD
.L0804BDBA:
	movl      $2, 44(%edi)
	movl      24(%ebx), %edx
	movl      8(%ebx), %ecx
	testl     %edx, %edx
	movl      $0, 20(%edi)
	movl      $0, 8(%edi)
	movl      $0, 24(%edi)
	movl      $0, 20(%ebx)
	movl      %ecx, 16(%ebx)
	jns       .L0804BDEF
.L0804BDEA:
	negl      %edx
	movl      %edx, 24(%ebx)
.L0804BDEF:
	cmpl      $1, %edx
	sbbl      %eax, %eax
	andl      $71, %eax
	addl      $42, %eax
	cmpl      $2, %edx
	movl      %eax, 4(%ebx)
	je        .L0804BFB9
.L0804BE06:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804BE12:
	movl      %eax, 48(%edi)
	movl      $0, 40(%ebx)
	movl      %ebx, (%esp)
	call      _tr_init
.L0804BE24:
	movl      28(%edi), %ebx
	movl      76(%ebx), %edx
	movl      44(%ebx), %eax
	movl      68(%ebx), %ecx
	addl      $12, %esp
	leal      -2(%edx,%edx), %edi
	sall      $1, %eax
	movw      $0, -2(%ecx,%edx,2)
	movl      %eax, 60(%ebx)
	pushl     %edi
	pushl     $0
	pushl     %ecx
	call      memset
.L0804BE4C:
	movl      132(%ebx), %eax
	leal      (%eax,%eax,2), %ecx
	sall      $2, %ecx
	movzwl    configuration_table+2(%ecx), %edx
	movzwl    configuration_table(%ecx), %edi
	xorl      %esi, %esi
	movl      %edx, 128(%ebx)
	movl      %edi, 140(%ebx)
	movzwl    configuration_table+4(%ecx), %edx
	movzwl    configuration_table+6(%ecx), %edi
	addl      $16, %esp
	movl      %esi, %eax
	movl      %edx, 144(%ebx)
	movl      %edi, 124(%ebx)
	movl      $0, 108(%ebx)
	movl      $0, 92(%ebx)
	movl      $0, 116(%ebx)
	movl      $0, 5812(%ebx)
	movl      $2, 120(%ebx)
	movl      $2, 96(%ebx)
	movl      $0, 104(%ebx)
	movl      $0, 72(%ebx)
	jmp       .L0804BB89
.L0804BED0:
	movl      $6, %esi
	jmp       .L0804BBC8
.L0804BEDA:
	xorl      %ebx, %ebx
	negl      20(%ebp)
	jmp       .L0804BBE2
.L0804BEE4:
	movl      -16(%ebp), %edx
	movl      z_errmsg+24, %esi
	testl     %edi, %edi
	movl      $666, 4(%edx)
	movl      %esi, 24(%edi)
	je        .L0804BF2A
.L0804BEFB:
	movl      28(%edi), %edx
	testl     %edx, %edx
	je        .L0804BF2A
.L0804BF02:
	movl      4(%edx), %eax
	cmpl      $42, %eax
	je        .L0804BF34
.L0804BF0A:
	cmpl      $69, %eax
	je        .L0804BF34
.L0804BF0F:
	cmpl      $73, %eax
	je        .L0804BF34
.L0804BF14:
	cmpl      $91, %eax
	je        .L0804BF34
.L0804BF19:
	cmpl      $103, %eax
	je        .L0804BF34
.L0804BF1E:
	cmpl      $113, %eax
	je        .L0804BF34
.L0804BF23:
	cmpl      $666, %eax
	je        .L0804BF34
.L0804BF2A:
	movl      $-4, %eax
	jmp       .L0804BB89
.L0804BF34:
	movl      8(%edx), %eax
	testl     %eax, %eax
	je        .L0804BF4B
.L0804BF3B:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%edi)
	call      *36(%edi)
.L0804BF45:
	addl      $16, %esp
	movl      28(%edi), %edx
.L0804BF4B:
	movl      68(%edx), %eax
	testl     %eax, %eax
	je        .L0804BF62
.L0804BF52:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%edi)
	call      *36(%edi)
.L0804BF5C:
	addl      $16, %esp
	movl      28(%edi), %edx
.L0804BF62:
	movl      64(%edx), %eax
	testl     %eax, %eax
	je        .L0804BF79
.L0804BF69:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%edi)
	call      *36(%edi)
.L0804BF73:
	addl      $16, %esp
	movl      28(%edi), %edx
.L0804BF79:
	movl      56(%edx), %eax
	testl     %eax, %eax
	je        .L0804BF8D
.L0804BF80:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%edi)
	call      *36(%edi)
.L0804BF8A:
	addl      $16, %esp
.L0804BF8D:
	subl      $8, %esp
	pushl     28(%edi)
	pushl     40(%edi)
	call      *36(%edi)
.L0804BF99:
	addl      $16, %esp
	movl      $-4, %eax
	movl      $0, 28(%edi)
	jmp       .L0804BB89
.L0804BFAD:
	movl      $-2, %esi
	movl      %esi, %eax
	jmp       .L0804BB89
.L0804BFB9:
	pushl     %edx
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804BFC5:
	jmp       .L0804BE12
	.size	deflateInit2_, .-deflateInit2_
# ----------------------
.L0804BFCA:
	.p2align 2
# ----------------------
	.globl	deflateInit_
	.type	deflateInit_, @function
deflateInit_:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	pushl     20(%ebp)
	pushl     16(%ebp)
	pushl     $0
	pushl     $8
	pushl     $15
	pushl     $8
	pushl     12(%ebp)
	pushl     8(%ebp)
	call      deflateInit2_
.L0804BFEB:
	leave     
	ret       
	.size	deflateInit_, .-deflateInit_
# ----------------------
.L0804BFED:
	.p2align 3
# ----------------------
	.globl	deflateSetHeader
	.type	deflateSetHeader, @function
deflateSetHeader:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0804C018
.L0804BFFA:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L0804C018
.L0804C001:
	cmpl      $2, 24(%edx)
	movl      $-2, %eax
	jne       .L0804C014
.L0804C00C:
	movl      12(%ebp), %eax
	movl      %eax, 28(%edx)
	xorl      %eax, %eax
.L0804C014:
	leave     
	ret       
.L0804C016:
	.p2align 3
.L0804C018:
	movl      $-2, %eax
	leave     
	ret       
	.size	deflateSetHeader, .-deflateSetHeader
# ----------------------
.L0804C01F:
	.p2align 3
# ----------------------
	.globl	deflatePending
	.type	deflatePending, @function
deflatePending:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %ecx
	movl      16(%ebp), %ebx
	je        .L0804C054
.L0804C031:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L0804C054
.L0804C038:
	testl     %ecx, %ecx
	je        .L0804C041
.L0804C03C:
	movl      20(%edx), %eax
	movl      %eax, (%ecx)
.L0804C041:
	testl     %ebx, %ebx
	je        .L0804C04D
.L0804C045:
	movl      5820(%edx), %ecx
	movl      %ecx, (%ebx)
.L0804C04D:
	xorl      %eax, %eax
	popl      %ebx
	leave     
	ret       
.L0804C052:
	.p2align 2
.L0804C054:
	movl      $-2, %eax
	popl      %ebx
	leave     
	ret       
	.size	deflatePending, .-deflatePending
# ----------------------
	.globl	deflatePrime
	.type	deflatePrime, @function
deflatePrime:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %edi
	je        .L0804C0E4
.L0804C06F:
	movl      28(%eax), %esi
	testl     %esi, %esi
	je        .L0804C0E4
.L0804C076:
	movl      16(%esi), %eax
	addl      $2, %eax
	cmpl      %eax, 5796(%esi)
	movl      $-5, %edx
	jb        .L0804C0E9
.L0804C089:
	.p2align 2
.L0804C08C:
	movl      5820(%esi), %edx
	movl      $16, %ebx
	subl      %edx, %ebx
	cmpl      %edi, %ebx
	jle       .L0804C09F
.L0804C09D:
	movl      %edi, %ebx
.L0804C09F:
	movb      %bl, %cl
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      16(%ebp), %eax
	movb      %dl, %cl
	sall      %cl, %eax
	orw       %ax, 5816(%esi)
	subl      $12, %esp
	leal      (%edx,%ebx), %eax
	movl      %eax, 5820(%esi)
	pushl     %esi
	call      _tr_flush_bits
.L0804C0C9:
	movb      %bl, %cl
	sarl      %cl, 16(%ebp)
	addl      $16, %esp
	subl      %ebx, %edi
	jne       .L0804C08C
.L0804C0D5:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804C0E1:
	.p2align 2
.L0804C0E4:
	movl      $-2, %edx
.L0804C0E9:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
	.size	deflatePrime, .-deflatePrime
# ----------------------
.L0804C0F3:
	.p2align 2
# ----------------------
	.globl	deflateTune
	.type	deflateTune, @function
deflateTune:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0804C105
.L0804C0FE:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L0804C10C
.L0804C105:
	movl      $-2, %eax
	leave     
	ret       
.L0804C10C:
	movl      12(%ebp), %ecx
	movl      16(%ebp), %eax
	movl      %ecx, 140(%edx)
	movl      %eax, 128(%edx)
	movl      20(%ebp), %ecx
	movl      24(%ebp), %eax
	movl      %eax, 124(%edx)
	movl      %ecx, 144(%edx)
	xorl      %eax, %eax
	leave     
	ret       
	.size	deflateTune, .-deflateTune
# ----------------------
.L0804C131:
	.p2align 2
# ----------------------
	.globl	deflateBound
	.type	deflateBound, @function
deflateBound:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %ecx
	movl      12(%ebp), %ecx
	leal      7(%ecx), %edx
	shrl      $3, %edx
	leal      63(%ecx), %eax
	addl      %ecx, %edx
	shrl      $6, %eax
	movl      8(%ebp), %ebx
	leal      (%edx,%eax), %eax
	testl     %ebx, %ebx
	leal      5(%eax), %edi
	je        .L0804C18C
.L0804C159:
	movl      28(%ebx), %ebx
	testl     %ebx, %ebx
	je        .L0804C18C
.L0804C160:
	movl      24(%ebx), %eax
	cmpl      $1, %eax
	je        .L0804C210
.L0804C16C:
	jle       .L0804C223
.L0804C172:
	cmpl      $2, %eax
	je        .L0804C1B5
.L0804C177:
	movl      $6, %esi
.L0804C17C:
	cmpl      $15, 48(%ebx)
	je        .L0804C198
.L0804C182:
	popl      %edx
	popl      %ebx
	leal      (%edi,%esi), %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804C18B:
	.p2align 2
.L0804C18C:
	addl      $11, %eax
.L0804C18F:
	popl      %edx
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804C195:
	.p2align 3
.L0804C198:
	cmpl      $15, 80(%ebx)
	jne       .L0804C182
.L0804C19E:
	movl      %ecx, %ebx
	shrl      $12, %ebx
	addl      %ecx, %ebx
	shrl      $14, %ecx
	addl      %ecx, %ebx
	shrl      $11, %ecx
	addl      %ecx, %ebx
	leal      7(%ebx,%esi), %eax
	jmp       .L0804C18F
.L0804C1B5:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	movl      $18, %esi
	movl      %eax, -16(%ebp)
	je        .L0804C17C
.L0804C1C4:
	movl      16(%eax), %edx
	testl     %edx, %edx
	je        .L0804C1D1
.L0804C1CB:
	movl      20(%eax), %esi
	addl      $20, %esi
.L0804C1D1:
	movl      -16(%ebp), %eax
	movl      28(%eax), %edx
	testl     %edx, %edx
	jmp       .L0804C1E2
.L0804C1DB:
	.p2align 2
.L0804C1DC:
	movb      (%edx), %al
	incl      %esi
	incl      %edx
	testb     %al, %al
.L0804C1E2:
	jne       .L0804C1DC
.L0804C1E4:
	movl      -16(%ebp), %eax
	movl      36(%eax), %edx
	testl     %edx, %edx
	jmp       .L0804C1F6
.L0804C1EE:
	.p2align 3
.L0804C1F0:
	movb      (%edx), %al
	incl      %esi
	incl      %edx
	testb     %al, %al
.L0804C1F6:
	jne       .L0804C1F0
.L0804C1F8:
	movl      -16(%ebp), %eax
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L0804C17C
.L0804C206:
	addl      $2, %esi
	jmp       .L0804C17C
.L0804C20E:
	.p2align 3
.L0804C210:
	movl      108(%ebx), %esi
	cmpl      $1, %esi
	sbbl      %eax, %eax
	andl      $-4, %eax
	leal      10(%eax), %esi
	jmp       .L0804C17C
.L0804C223:
	xorl      %esi, %esi
	testl     %eax, %eax
	je        .L0804C17C
.L0804C22D:
	jmp       .L0804C177
	.size	deflateBound, .-deflateBound
# ----------------------
.L0804C232:
	.p2align 2
# ----------------------
	.globl	deflateCopy
	.type	deflateCopy, @function
deflateCopy:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      12(%ebp), %esi
	testl     %esi, %esi
	movl      8(%ebp), %ebx
	je        .L0804C255
.L0804C247:
	testl     %ebx, %ebx
	je        .L0804C255
.L0804C24B:
	movl      28(%esi), %eax
	testl     %eax, %eax
	movl      %eax, -16(%ebp)
	jne       .L0804C264
.L0804C255:
	movl      $-2, %eax
.L0804C25A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804C262:
	.p2align 2
.L0804C264:
	cld       
	movl      $14, %ecx
	movl      %ebx, %edi
	rep movsl     
	pushl     %eax
	pushl     $5828
	pushl     $1
	pushl     40(%ebx)
	call      *32(%ebx)
.L0804C27C:
	movl      %eax, %esi
	addl      $16, %esp
	testl     %esi, %esi
	movl      $-4, %eax
	je        .L0804C25A
.L0804C28A:
	movl      %esi, 28(%ebx)
	pushl     %eax
	pushl     $5828
	pushl     -16(%ebp)
	pushl     %esi
	call      memcpy
.L0804C29C:
	addl      $12, %esp
	movl      %ebx, (%esi)
	pushl     $2
	pushl     44(%esi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0804C2AC:
	addl      $12, %esp
	movl      %eax, 56(%esi)
	pushl     $2
	pushl     44(%esi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0804C2BD:
	addl      $12, %esp
	movl      %eax, 64(%esi)
	pushl     $2
	pushl     76(%esi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0804C2CE:
	addl      $12, %esp
	movl      %eax, 68(%esi)
	pushl     $4
	pushl     5788(%esi)
	pushl     40(%ebx)
	call      *32(%ebx)
.L0804C2E2:
	movl      56(%esi), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      %eax, %edi
	movl      %eax, 8(%esi)
	je        .L0804C2F8
.L0804C2F1:
	movl      64(%esi), %eax
	testl     %eax, %eax
	jne       .L0804C358
.L0804C2F8:
	testl     %ebx, %ebx
	je        .L0804C348
.L0804C2FC:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L0804C348
.L0804C303:
	movl      4(%eax), %edx
	cmpl      $42, %edx
	je        .L0804C413
.L0804C30F:
	cmpl      $69, %edx
	je        .L0804C413
.L0804C318:
	cmpl      $73, %edx
	je        .L0804C413
.L0804C321:
	cmpl      $91, %edx
	je        .L0804C413
.L0804C32A:
	cmpl      $103, %edx
	je        .L0804C413
.L0804C333:
	cmpl      $113, %edx
	je        .L0804C413
.L0804C33C:
	cmpl      $666, %edx
	je        .L0804C413
.L0804C348:
	movl      $-4, %eax
.L0804C34D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804C355:
	.p2align 3
.L0804C358:
	movl      68(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804C2F8
.L0804C35F:
	testl     %edi, %edi
	je        .L0804C2F8
.L0804C363:
	movl      44(%esi), %ecx
	sall      $1, %ecx
	pushl     %ebx
	pushl     %ecx
	movl      -16(%ebp), %eax
	pushl     56(%eax)
	pushl     %edx
	call      memcpy
.L0804C376:
	movl      44(%esi), %edx
	addl      $12, %esp
	sall      $1, %edx
	pushl     %edx
	movl      -16(%ebp), %ecx
	pushl     64(%ecx)
	pushl     64(%esi)
	call      memcpy
.L0804C38D:
	movl      76(%esi), %ebx
	addl      $12, %esp
	sall      $1, %ebx
	pushl     %ebx
	movl      -16(%ebp), %eax
	pushl     68(%eax)
	pushl     68(%esi)
	call      memcpy
.L0804C3A4:
	addl      $12, %esp
	pushl     12(%esi)
	movl      -16(%ebp), %edx
	pushl     8(%edx)
	pushl     8(%esi)
	call      memcpy
.L0804C3B8:
	movl      -16(%ebp), %ecx
	movl      16(%ecx), %ebx
	subl      8(%ecx), %ebx
	movl      5788(%esi), %edx
	movl      8(%esi), %ecx
	leal      (%ecx,%ebx), %eax
	movl      %edx, %ebx
	andl      $-2, %ebx
	addl      %edi, %ebx
	movl      %eax, 16(%esi)
	leal      (%edx,%edx,2), %eax
	addl      %eax, %ecx
	movl      %ebx, 5796(%esi)
	leal      148(%esi), %edi
	leal      2440(%esi), %ebx
	leal      2684(%esi), %edx
	xorl      %eax, %eax
	movl      %ecx, 5784(%esi)
	movl      %edi, 2840(%esi)
	movl      %ebx, 2852(%esi)
	movl      %edx, 2864(%esi)
	jmp       .L0804C25A
.L0804C413:
	movl      8(%eax), %edx
	testl     %edx, %edx
	jne       .L0804C482
.L0804C41A:
	movl      68(%eax), %edx
	testl     %edx, %edx
	jne       .L0804C470
.L0804C421:
	movl      64(%eax), %edx
	testl     %edx, %edx
	jne       .L0804C45E
.L0804C428:
	movl      56(%eax), %eax
	testl     %eax, %eax
	jne       .L0804C44F
.L0804C42F:
	subl      $8, %esp
	pushl     28(%ebx)
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804C43B:
	addl      $16, %esp
	movl      $-4, %eax
	movl      $0, 28(%ebx)
	jmp       .L0804C34D
.L0804C44F:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804C459:
	addl      $16, %esp
	jmp       .L0804C42F
.L0804C45E:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804C468:
	addl      $16, %esp
	movl      28(%ebx), %eax
	jmp       .L0804C428
.L0804C470:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804C47A:
	addl      $16, %esp
	movl      28(%ebx), %eax
	jmp       .L0804C421
.L0804C482:
	subl      $8, %esp
	pushl     %edx
	pushl     40(%ebx)
	call      *36(%ebx)
.L0804C48C:
	addl      $16, %esp
	movl      28(%ebx), %eax
	jmp       .L0804C41A
	.size	deflateCopy, .-deflateCopy
# ----------------------
	.local	fill_window
	.type	fill_window, @function
fill_window:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $60, %esp
	movl      %eax, %esi
	movl      116(%esi), %edx
	movl      %edx, -44(%ebp)
	movl      60(%esi), %ecx
	movl      -44(%ebp), %ebx
	movl      44(%eax), %eax
	subl      %ebx, %ecx
	movl      108(%esi), %edi
	subl      %edi, %ecx
	movl      %eax, -20(%ebp)
	movl      %ecx, -16(%ebp)
	movl      -20(%ebp), %ecx
	leal      -262(%eax,%ecx), %eax
	cmpl      %eax, %edi
	jae       .L0804C5FB
.L0804C4CD:
	.p2align 3
.L0804C4D0:
	movl      (%esi), %eax
	movl      4(%eax), %edx
	testl     %edx, %edx
	movl      %eax, -24(%ebp)
	je        .L0804C67B
.L0804C4E0:
	addl      56(%esi), %edi
	movl      116(%esi), %eax
	addl      %eax, %edi
	cmpl      -16(%ebp), %edx
	movl      %edx, %ebx
	jbe       .L0804C4F2
.L0804C4EF:
	movl      -16(%ebp), %ebx
.L0804C4F2:
	xorl      %ecx, %ecx
	testl     %ebx, %ebx
	jne       .L0804C6C8
.L0804C4FC:
	addl      %ecx, %eax
	movl      5812(%esi), %edi
	movl      %eax, -28(%ebp)
	movl      %eax, -44(%ebp)
	movl      %eax, 116(%esi)
	addl      %edi, %eax
	cmpl      $2, %eax
	jbe       .L0804C5BC
.L0804C518:
	movl      56(%esi), %eax
	movl      108(%esi), %ebx
	subl      %edi, %ebx
	movl      %eax, -40(%ebp)
	movl      88(%esi), %edx
	movzbl    (%eax,%ebx), %eax
	movl      %edx, -32(%ebp)
	movb      -32(%ebp), %cl
	movl      %eax, 72(%esi)
	sall      %cl, %eax
	movl      %eax, -60(%ebp)
	movl      -40(%ebp), %edx
	movzbl    1(%edx,%ebx), %eax
	xorl      %eax, -60(%ebp)
	movl      84(%esi), %ecx
	andl      %ecx, -60(%ebp)
	movl      -60(%ebp), %edx
	testl     %edi, %edi
	movl      %ecx, -48(%ebp)
	movl      %edx, 72(%esi)
	je        .L0804C5BC
.L0804C556:
	movl      68(%esi), %eax
	movl      64(%esi), %edx
	movl      52(%esi), %ecx
	movl      %eax, -52(%ebp)
	movl      %edx, -56(%ebp)
	movl      %ecx, -36(%ebp)
.L0804C568:
	movb      -32(%ebp), %cl
	sall      %cl, -60(%ebp)
	movl      -40(%ebp), %edx
	movzbl    2(%edx,%ebx), %eax
	xorl      -60(%ebp), %eax
	andl      -48(%ebp), %eax
	movl      -36(%ebp), %edx
	movl      -52(%ebp), %ecx
	andl      %ebx, %edx
	movw      (%ecx,%eax,2), %cx
	movl      %eax, -60(%ebp)
	movl      %eax, 72(%esi)
	movl      -56(%ebp), %eax
	movw      %cx, (%eax,%edx,2)
	movl      -60(%ebp), %edx
	movl      -52(%ebp), %eax
	movw      %bx, (%eax,%edx,2)
	movl      -28(%ebp), %ecx
	leal      -1(%edi), %edx
	addl      %edx, %ecx
	incl      %ebx
	cmpl      $2, %ecx
	movl      %edx, %edi
	movl      %edx, 5812(%esi)
	jbe       .L0804C5BC
.L0804C5B5:
	testl     %edx, %edx
	jne       .L0804C568
.L0804C5B9:
	.p2align 2
.L0804C5BC:
	cmpl      $261, -28(%ebp)
	ja        .L0804C67B
.L0804C5C9:
	movl      (%esi), %edi
	movl      4(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804C67B
.L0804C5D6:
	movl      60(%esi), %ecx
	movl      -44(%ebp), %ebx
	subl      %ebx, %ecx
	movl      108(%esi), %edi
	subl      %edi, %ecx
	movl      44(%esi), %eax
	movl      %ecx, -16(%ebp)
	movl      -20(%ebp), %ecx
	leal      -262(%eax,%ecx), %eax
	cmpl      %eax, %edi
	jb        .L0804C4D0
.L0804C5FB:
	movl      56(%esi), %edi
	pushl     %ebx
	leal      (%edi,%ecx), %edx
	pushl     %ecx
	pushl     %edx
	pushl     %edi
	call      memcpy
.L0804C60A:
	movl      -20(%ebp), %eax
	movl      108(%esi), %edi
	subl      %eax, %edi
	movl      76(%esi), %ecx
	movl      68(%esi), %edx
	subl      %eax, 112(%esi)
	subl      %eax, 92(%esi)
	movl      %edi, 108(%esi)
	leal      (%edx,%ecx,2), %eax
	addl      $16, %esp
	.p2align 3
.L0804C628:
	subl      $2, %eax
	movzwl    (%eax), %edx
	xorl      %ebx, %ebx
	cmpl      -20(%ebp), %edx
	jb        .L0804C63B
.L0804C635:
	movl      %edx, %ebx
	subw      -20(%ebp), %bx
.L0804C63B:
	decl      %ecx
	movw      %bx, (%eax)
	jne       .L0804C628
.L0804C641:
	movl      -20(%ebp), %ecx
	movl      64(%esi), %ebx
	leal      (%ebx,%ecx,2), %eax
	.p2align 2
.L0804C64C:
	subl      $2, %eax
	movzwl    (%eax), %edx
	xorl      %ebx, %ebx
	cmpl      -20(%ebp), %edx
	jb        .L0804C65F
.L0804C659:
	movl      %edx, %ebx
	subw      -20(%ebp), %bx
.L0804C65F:
	decl      %ecx
	movw      %bx, (%eax)
	jne       .L0804C64C
.L0804C665:
	movl      (%esi), %eax
	movl      -20(%ebp), %ecx
	movl      4(%eax), %edx
	addl      %ecx, -16(%ebp)
	testl     %edx, %edx
	movl      %eax, -24(%ebp)
	jne       .L0804C4E0
.L0804C67B:
	movl      5824(%esi), %edx
	movl      60(%esi), %ecx
	cmpl      %ecx, %edx
	jae       .L0804C6BE
.L0804C688:
	movl      116(%esi), %ebx
	addl      108(%esi), %ebx
	cmpl      %ebx, %edx
	jae       .L0804C702
.L0804C692:
	movl      %ecx, %edi
	subl      %ebx, %edi
	cmpl      $258, %edi
	jbe       .L0804C6A3
.L0804C69E:
	movl      $258, %edi
.L0804C6A3:
	pushl     %edx
	pushl     %edi
	movl      56(%esi), %ecx
	pushl     $0
	addl      %ebx, %ecx
	pushl     %ecx
	call      memset
.L0804C6B2:
	leal      (%ebx,%edi), %eax
	movl      %eax, 5824(%esi)
	addl      $16, %esp
.L0804C6BE:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804C6C6:
	.p2align 3
.L0804C6C8:
	subl      %ebx, %edx
	movl      -24(%ebp), %eax
	movl      %edx, 4(%eax)
	pushl     %edx
	pushl     %ebx
	pushl     (%eax)
	pushl     %edi
	call      memcpy
.L0804C6DA:
	movl      -24(%ebp), %edx
	movl      28(%edx), %ecx
	movl      24(%ecx), %eax
	addl      $16, %esp
	cmpl      $1, %eax
	je        .L0804C736
.L0804C6EB:
	cmpl      $2, %eax
	je        .L0804C74C
.L0804C6F0:
	movl      -24(%ebp), %eax
	addl      %ebx, (%eax)
	addl      %ebx, 8(%eax)
	movl      %ebx, %ecx
	movl      116(%esi), %eax
	jmp       .L0804C4FC
.L0804C702:
	leal      258(%ebx), %edi
	cmpl      %edi, %edx
	jae       .L0804C6BE
.L0804C70C:
	subl      %edx, %ebx
	movl      %ecx, %eax
	addl      $258, %ebx
	subl      %edx, %eax
	cmpl      %ebx, %eax
	jae       .L0804C71E
.L0804C71C:
	movl      %eax, %ebx
.L0804C71E:
	pushl     %eax
	pushl     %ebx
	pushl     $0
	addl      56(%esi), %edx
	pushl     %edx
	call      memset
.L0804C72B:
	addl      %ebx, 5824(%esi)
	addl      $16, %esp
	jmp       .L0804C6BE
.L0804C736:
	pushl     %eax
	pushl     %ebx
	pushl     %edi
	pushl     48(%edx)
	call      adler32
.L0804C741:
	movl      -24(%ebp), %edi
	addl      $16, %esp
	movl      %eax, 48(%edi)
	jmp       .L0804C6F0
.L0804C74C:
	pushl     %eax
	pushl     %ebx
	pushl     %edi
	movl      -24(%ebp), %ecx
	pushl     48(%ecx)
	call      crc32
.L0804C75A:
	movl      -24(%ebp), %edx
	addl      $16, %esp
	movl      %eax, 48(%edx)
	jmp       .L0804C6F0
	.size	fill_window, .-fill_window
# ----------------------
.L0804C765:
	.p2align 3
# ----------------------
	.globl	deflateSetDictionary
	.type	deflateSetDictionary, @function
deflateSetDictionary:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %esi
	movl      16(%ebp), %ebx
	je        .L0804C8F0
.L0804C782:
	movl      8(%ebp), %edx
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L0804C8F0
.L0804C790:
	testl     %esi, %esi
	je        .L0804C8F0
.L0804C798:
	movl      24(%edi), %edx
	cmpl      $2, %edx
	movl      %edx, -16(%ebp)
	je        .L0804C8F0
.L0804C7A7:
	decl      %edx
	je        .L0804C8E3
.L0804C7AE:
	movl      116(%edi), %ecx
	testl     %ecx, %ecx
	jne       .L0804C8F0
.L0804C7B9:
	cmpl      $1, -16(%ebp)
	je        .L0804C8FD
.L0804C7C3:
	movl      44(%edi), %eax
	cmpl      %ebx, %eax
	movl      $0, 24(%edi)
	ja        .L0804C7E2
.L0804C7D1:
	movl      -16(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804C919
.L0804C7DC:
	subl      %eax, %ebx
	addl      %ebx, %esi
	movl      %eax, %ebx
.L0804C7E2:
	movl      8(%ebp), %eax
	movl      4(%eax), %edx
	movl      8(%ebp), %ecx
	movl      (%ecx), %eax
	movl      %edx, -20(%ebp)
	movl      8(%ebp), %edx
	movl      %eax, -24(%ebp)
	movl      %ebx, 4(%edx)
	movl      %esi, (%edx)
	movl      %edi, %eax
	call      fill_window
.L0804C802:
	movl      116(%edi), %edx
	cmpl      $2, %edx
	jbe       .L0804C898
.L0804C80E:
	movl      68(%edi), %ecx
	movl      72(%edi), %eax
	leal      -2(%edx), %esi
	movl      %ecx, -32(%ebp)
	movl      88(%edi), %edx
	movl      56(%edi), %ecx
	movl      %eax, -52(%ebp)
	movl      %edx, -48(%ebp)
	movl      %ecx, -44(%ebp)
	movl      84(%edi), %eax
	movl      52(%edi), %edx
	movl      64(%edi), %ecx
	movl      108(%edi), %ebx
	movl      %eax, -40(%ebp)
	movl      %edx, -36(%ebp)
	movl      %ecx, -28(%ebp)
	.p2align 3
.L0804C840:
	movb      -48(%ebp), %cl
	sall      %cl, -52(%ebp)
	movl      -44(%ebp), %edx
	movzbl    2(%edx,%ebx), %eax
	xorl      -52(%ebp), %eax
	andl      -40(%ebp), %eax
	movl      -36(%ebp), %edx
	movl      -32(%ebp), %ecx
	andl      %ebx, %edx
	movw      (%ecx,%eax,2), %cx
	movl      %eax, -52(%ebp)
	movl      %eax, 72(%edi)
	movl      -28(%ebp), %eax
	movw      %cx, (%eax,%edx,2)
	movl      -52(%ebp), %edx
	movl      -32(%ebp), %eax
	movw      %bx, (%eax,%edx,2)
	incl      %ebx
	decl      %esi
	jne       .L0804C840
.L0804C87B:
	movl      %ebx, 108(%edi)
	movl      $2, 116(%edi)
	movl      %edi, %eax
	call      fill_window
.L0804C88C:
	movl      116(%edi), %edx
	cmpl      $2, %edx
	ja        .L0804C80E
.L0804C898:
	movl      108(%edi), %ecx
	movl      %edx, 5812(%edi)
	movl      8(%ebp), %esi
	movl      -20(%ebp), %eax
	movl      -16(%ebp), %ebx
	addl      %edx, %ecx
	movl      -24(%ebp), %edx
	movl      %ecx, 108(%edi)
	movl      $0, 116(%edi)
	movl      $2, 120(%edi)
	movl      $2, 96(%edi)
	movl      $0, 104(%edi)
	movl      %ecx, 92(%edi)
	movl      %eax, 4(%esi)
	movl      %edx, (%esi)
	movl      %ebx, 24(%edi)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L0804C8E3:
	cmpl      $42, 4(%edi)
	je        .L0804C7AE
.L0804C8ED:
	.p2align 3
.L0804C8F0:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $-2, %eax
	popl      %edi
	leave     
	ret       
.L0804C8FD:
	pushl     %ecx
	pushl     %ebx
	pushl     %esi
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      adler32
.L0804C90B:
	movl      8(%ebp), %edx
	addl      $16, %esp
	movl      %eax, 48(%edx)
	jmp       .L0804C7C3
.L0804C919:
	movl      76(%edi), %ecx
	movl      68(%edi), %edx
	movw      $0, -2(%edx,%ecx,2)
	leal      -2(%ecx,%ecx), %eax
	pushl     %ecx
	pushl     %eax
	pushl     $0
	pushl     %edx
	call      memset
.L0804C934:
	addl      $16, %esp
	movl      44(%edi), %eax
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	jmp       .L0804C7DC
	.size	deflateSetDictionary, .-deflateSetDictionary
# ----------------------
.L0804C957:
	.p2align 3
# ----------------------
	.local	longest_match
	.type	longest_match, @function
longest_match:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $40, %esp
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %edi
	movl      56(%eax), %esi
	movl      108(%edi), %ecx
	movl      %esi, -52(%ebp)
	addl      %ecx, %esi
	movl      124(%eax), %ebx
	movl      %esi, -20(%ebp)
	movl      144(%edi), %eax
	movl      120(%edi), %esi
	movl      44(%edi), %edi
	movl      %eax, -24(%ebp)
	leal      -262(%edi), %eax
	cmpl      %eax, %ecx
	movl      $0, -28(%ebp)
	jbe       .L0804C9A4
.L0804C998:
	movl      %ecx, %eax
	subl      %edi, %eax
	addl      $262, %eax
	movl      %eax, -28(%ebp)
.L0804C9A4:
	movl      -16(%ebp), %edi
	movl      64(%edi), %eax
	movl      -16(%ebp), %edi
	movl      %eax, -32(%ebp)
	movl      52(%edi), %eax
	movl      -52(%ebp), %edi
	leal      258(%edi,%ecx), %ecx
	movl      %eax, -36(%ebp)
	movl      %ecx, -40(%ebp)
	movl      -20(%ebp), %eax
	movb      -1(%eax,%esi), %cl
	movb      %cl, -41(%ebp)
	movl      -20(%ebp), %edi
	movl      -16(%ebp), %ecx
	movb      (%edi,%esi), %al
	cmpl      140(%ecx), %esi
	movb      %al, -42(%ebp)
	jb        .L0804C9E4
.L0804C9E1:
	shrl      $2, %ebx
.L0804C9E4:
	movl      -16(%ebp), %ecx
	movl      116(%ecx), %eax
	cmpl      %eax, -24(%ebp)
	movl      %eax, -48(%ebp)
	jbe       .L0804CA14
.L0804C9F2:
	movl      %eax, -24(%ebp)
	jmp       .L0804CA14
.L0804C9F7:
	.p2align 3
.L0804C9F8:
	movl      -36(%ebp), %edi
	andl      %edx, %edi
	movl      -32(%ebp), %ecx
	movzwl    (%ecx,%edi,2), %edx
	cmpl      -28(%ebp), %edx
	jbe       .L0804CAD0
.L0804CA0D:
	decl      %ebx
	je        .L0804CAD0
.L0804CA14:
	movl      -52(%ebp), %ecx
	addl      %edx, %ecx
	movb      -42(%ebp), %al
	cmpb      %al, (%ecx,%esi)
	jne       .L0804C9F8
.L0804CA21:
	movb      -41(%ebp), %al
	cmpb      %al, -1(%ecx,%esi)
	jne       .L0804C9F8
.L0804CA2A:
	movl      -20(%ebp), %edi
	movb      (%edi), %al
	cmpb      %al, (%ecx)
	jne       .L0804C9F8
.L0804CA33:
	movb      1(%edi), %al
	cmpb      %al, 1(%ecx)
	jne       .L0804C9F8
.L0804CA3B:
	addl      $2, %edi
	addl      $2, %ecx
.L0804CA41:
	incl      %edi
	movb      1(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA49:
	incl      %edi
	movb      2(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA51:
	incl      %edi
	movb      3(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA59:
	incl      %edi
	movb      4(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA61:
	incl      %edi
	movb      5(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA69:
	incl      %edi
	movb      6(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA71:
	incl      %edi
	movb      7(%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA79:
	addl      $8, %ecx
	incl      %edi
	movb      (%ecx), %al
	cmpb      %al, (%edi)
	jne       .L0804CA88
.L0804CA83:
	cmpl      -40(%ebp), %edi
	jb        .L0804CA41
.L0804CA88:
	movl      -40(%ebp), %eax
	subl      %edi, %eax
	movl      $258, %ecx
	subl      %eax, %ecx
	movl      -40(%ebp), %eax
	subl      $258, %eax
	cmpl      %esi, %ecx
	movl      %eax, -20(%ebp)
	jle       .L0804C9F8
.L0804CAA7:
	movl      -16(%ebp), %esi
	cmpl      -24(%ebp), %ecx
	movl      %edx, 112(%esi)
	movl      %ecx, %esi
	jge       .L0804CAD0
.L0804CAB4:
	movb      -1(%eax,%ecx), %al
	movb      %al, -41(%ebp)
	movl      -40(%ebp), %edi
	movb      -258(%edi,%ecx), %cl
	movb      %cl, -42(%ebp)
	jmp       .L0804C9F8
.L0804CACD:
	.p2align 3
.L0804CAD0:
	cmpl      -48(%ebp), %esi
	movl      %esi, %eax
	jbe       .L0804CADA
.L0804CAD7:
	movl      -48(%ebp), %eax
.L0804CADA:
	addl      $40, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	longest_match, .-longest_match
# ----------------------
.L0804CAE2:
	.p2align 2
# ----------------------
	.globl	deflate
	.type	deflate, @function
deflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L0804CD24
.L0804CAF8:
	movl      8(%ebp), %edx
	movl      28(%edx), %edi
	testl     %edi, %edi
	je        .L0804CD24
.L0804CB06:
	cmpl      $5, 12(%ebp)
	jg        .L0804CD24
.L0804CB10:
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	js        .L0804CD24
.L0804CB1B:
	movl      8(%ebp), %edx
	movl      12(%edx), %esi
	testl     %esi, %esi
	je        .L0804CD17
.L0804CB29:
	movl      (%edx), %ebx
	testl     %ebx, %ebx
	jne       .L0804CB3A
.L0804CB2F:
	movl      4(%edx), %eax
	testl     %eax, %eax
	jne       .L0804CD17
.L0804CB3A:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	je        .L0804CD0D
.L0804CB48:
	movl      8(%ebp), %ebx
	movl      16(%ebx), %ecx
	testl     %ecx, %ecx
	je        .L0804DAC4
.L0804CB56:
	movl      40(%edi), %edx
	movl      8(%ebp), %ecx
	movl      12(%ebp), %ebx
	cmpl      $42, %eax
	movl      %ecx, (%edi)
	movl      %edx, -16(%ebp)
	movl      %ebx, 40(%edi)
	je        .L0804D63B
.L0804CB70:
	cmpl      $69, %eax
	je        .L0804D03D
.L0804CB79:
	movl      20(%edi), %ebx
.L0804CB7C:
	cmpl      $73, %eax
	je        .L0804D0EA
.L0804CB85:
	cmpl      $91, %eax
	je        .L0804D101
.L0804CB8E:
	cmpl      $103, %eax
	je        .L0804D118
.L0804CB97:
	testl     %ebx, %ebx
	jne       .L0804D5BF
.L0804CB9F:
	movl      8(%ebp), %eax
	movl      4(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0804CBD3
.L0804CBA9:
	movl      -16(%ebp), %eax
	movl      12(%ebp), %edx
	sall      $1, %eax
	sall      $1, %edx
	cmpl      $4, 12(%ebp)
	jle       .L0804CBBC
.L0804CBB9:
	subl      $9, %edx
.L0804CBBC:
	cmpl      $4, -16(%ebp)
	jle       .L0804CBC5
.L0804CBC2:
	subl      $9, %eax
.L0804CBC5:
	cmpl      %eax, %edx
	jg        .L0804CBD3
.L0804CBC9:
	cmpl      $4, 12(%ebp)
	jne       .L0804D76C
.L0804CBD3:
	movl      4(%edi), %eax
	cmpl      $666, %eax
	je        .L0804D764
.L0804CBE1:
	testl     %ecx, %ecx
	jne       .L0804CBFA
.L0804CBE5:
	movl      116(%edi), %ebx
	testl     %ebx, %ebx
	jne       .L0804CBFA
.L0804CBEC:
	movl      12(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804CC55
.L0804CBF3:
	cmpl      $666, %eax
	je        .L0804CC55
.L0804CBFA:
	movl      136(%edi), %eax
	cmpl      $2, %eax
	je        .L0804CE50
.L0804CC09:
	cmpl      $3, %eax
	je        .L0804CD34
.L0804CC12:
	subl      $8, %esp
	movl      132(%edi), %ecx
	pushl     12(%ebp)
	pushl     %edi
	leal      (%ecx,%ecx,2), %eax
	call      *configuration_table+8(,%eax,4)
.L0804CC29:
	movl      %eax, %edx
	addl      $16, %esp
.L0804CC2E:
	leal      -2(%edx), %ebx
	cmpl      $1, %ebx
	ja        .L0804CC3D
.L0804CC36:
	movl      $666, 4(%edi)
.L0804CC3D:
	testl     %edx, %edx
	je        .L0804D55D
.L0804CC45:
	cmpl      $2, %edx
	je        .L0804D55D
.L0804CC4E:
	decl      %edx
	je        .L0804D911
.L0804CC55:
	xorl      %eax, %eax
	cmpl      $4, 12(%ebp)
	jne       .L0804CD29
.L0804CC61:
	movl      24(%edi), %edx
	testl     %edx, %edx
	movb      $1, %al
	jle       .L0804CD29
.L0804CC6E:
	cmpl      $2, %edx
	je        .L0804DBA0
.L0804CC77:
	movl      8(%ebp), %ebx
	movl      48(%ebx), %ecx
	movl      20(%edi), %edx
	movl      8(%edi), %esi
	movl      %ecx, %ebx
	shrl      $24, %ecx
	movb      %cl, (%edx,%esi)
	movl      20(%edi), %ecx
	movl      8(%edi), %esi
	leal      1(%ecx), %eax
	shrl      $16, %ebx
	movl      %eax, 20(%edi)
	movb      %bl, 1(%ecx,%esi)
	movl      20(%edi), %ecx
	movl      8(%ebp), %edx
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%edi)
	movzwl    48(%edx), %ebx
	movl      %ebx, %eax
	movl      8(%edi), %esi
	shrl      $8, %eax
	movb      %al, 1(%ecx,%esi)
	movl      20(%edi), %ecx
	leal      1(%ecx), %edx
	movl      8(%edi), %esi
	movl      %edx, 20(%edi)
	movb      %bl, 1(%ecx,%esi)
.L0804CCCA:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	incl      20(%edi)
	pushl     %esi
	call      _tr_flush_bits
.L0804CCDC:
	movl      8(%ebp), %edx
	movl      20(%esi), %ebx
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804CCEE
.L0804CCEC:
	movl      %eax, %ebx
.L0804CCEE:
	testl     %ebx, %ebx
	jne       .L0804DB5E
.L0804CCF6:
	movl      24(%edi), %eax
	testl     %eax, %eax
	jle       .L0804CD02
.L0804CCFD:
	negl      %eax
	movl      %eax, 24(%edi)
.L0804CD02:
	xorl      %eax, %eax
	cmpl      $0, 20(%edi)
	sete      %al
	jmp       .L0804CD29
.L0804CD0D:
	cmpl      $4, 12(%ebp)
	je        .L0804CB48
.L0804CD17:
	movl      z_errmsg+16, %edx
	movl      8(%ebp), %edi
	movl      %edx, 24(%edi)
	.p2align 2
.L0804CD24:
	movl      $-2, %eax
.L0804CD29:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804CD31:
	.p2align 2
.L0804CD34:
	movl      116(%edi), %edx
.L0804CD37:
	cmpl      $258, %edx
	jbe       .L0804D1E0
.L0804CD43:
	cmpl      $2, %edx
	movl      $0, 96(%edi)
	jbe       .L0804CD6C
.L0804CD4F:
	movl      108(%edi), %eax
	testl     %eax, %eax
	je        .L0804CD6C
.L0804CD56:
	movl      56(%edi), %ecx
	addl      %eax, %ecx
	movzbl    -1(%ecx), %esi
	movzbl    (%ecx), %eax
	cmpl      %esi, %eax
	je        .L0804D3DF
.L0804CD6A:
	.p2align 2
.L0804CD6C:
	movl      96(%edi), %eax
	cmpl      $2, %eax
	jbe       .L0804D188
.L0804CD78:
	movl      5792(%edi), %ecx
	movl      5796(%edi), %ebx
	movl      5784(%edi), %esi
	leal      -3(%eax), %edx
	movw      $1, (%ebx,%ecx,2)
	movzbl    %dl, %eax
	movb      %dl, (%ecx,%esi)
	incl      5792(%edi)
	movzbl    _length_code(%eax), %ebx
	incw      1176(%edi,%ebx,4)
	movzbl    _dist_code, %ecx
	incw      2440(%edi,%ecx,4)
	movl      5788(%edi), %edx
	decl      %edx
	movl      96(%edi), %esi
	xorl      %ecx, %ecx
	cmpl      %edx, 5792(%edi)
	movl      116(%edi), %edx
	sete      %cl
	subl      %esi, %edx
	movl      %edx, 116(%edi)
	addl      %esi, 108(%edi)
	movl      $0, 96(%edi)
.L0804CDE4:
	testl     %ecx, %ecx
	je        .L0804CD37
.L0804CDEC:
	pushl     $0
	movl      108(%edi), %ebx
	subl      92(%edi), %ebx
	pushl     %ebx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804CE03
.L0804CDFE:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804CE03:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804CE0A:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %edx
	movl      %edx, (%esp)
	movl      %edx, -36(%ebp)
	call      _tr_flush_bits
.L0804CE20:
	movl      -36(%ebp), %ecx
	movl      20(%ecx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804CE32
.L0804CE30:
	movl      %eax, %ebx
.L0804CE32:
	testl     %ebx, %ebx
	jne       .L0804D358
.L0804CE3A:
	movl      (%edi), %eax
	movl      16(%eax), %edx
	testl     %edx, %edx
	jne       .L0804CD34
.L0804CE47:
	xorl      %edx, %edx
	jmp       .L0804CC2E
.L0804CE4E:
	.p2align 3
.L0804CE50:
	movl      116(%edi), %eax
.L0804CE53:
	testl     %eax, %eax
	je        .L0804D28C
.L0804CE5B:
	movl      108(%edi), %eax
	movl      56(%edi), %ecx
	movl      $0, 96(%edi)
	movb      (%ecx,%eax), %dl
	movl      5792(%edi), %esi
	movl      5796(%edi), %ebx
	movl      5784(%edi), %eax
	movw      $0, (%ebx,%esi,2)
	movb      %dl, (%esi,%eax)
	incl      5792(%edi)
	movzbl    %dl, %ecx
	incw      148(%edi,%ecx,4)
	movl      5788(%edi), %ebx
	decl      %ebx
	cmpl      %ebx, 5792(%edi)
	sete      %dl
	movl      116(%edi), %eax
	decl      %eax
	incl      108(%edi)
	andl      $1, %edx
	movl      %eax, 116(%edi)
	je        .L0804CE53
.L0804CEB6:
	pushl     $0
	movl      108(%edi), %edx
	subl      92(%edi), %edx
	pushl     %edx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804CECD
.L0804CEC8:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804CECD:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804CED4:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %ebx
	movl      %ebx, (%esp)
	movl      %ebx, -24(%ebp)
	call      _tr_flush_bits
.L0804CEEA:
	movl      -24(%ebp), %ecx
	movl      20(%ecx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804CEFC
.L0804CEFA:
	movl      %eax, %ebx
.L0804CEFC:
	testl     %ebx, %ebx
	jne       .L0804D395
.L0804CF04:
	movl      (%edi), %eax
	movl      16(%eax), %esi
	testl     %esi, %esi
	jne       .L0804CE50
.L0804CF11:
	xorl      %edx, %edx
	jmp       .L0804CC2E
.L0804CF18:
	leal      2(%ecx), %eax
	movl      %eax, 20(%edi)
	movl      44(%edx), %esi
	xorl      %eax, %eax
	cmpl      $0, (%edx)
	setne     %al
	testl     %esi, %esi
	movl      8(%edi), %ebx
	je        .L0804CF33
.L0804CF30:
	addl      $2, %eax
.L0804CF33:
	movl      16(%edx), %esi
	testl     %esi, %esi
	je        .L0804CF3D
.L0804CF3A:
	addl      $4, %eax
.L0804CF3D:
	movl      28(%edx), %esi
	testl     %esi, %esi
	je        .L0804CF47
.L0804CF44:
	addl      $8, %eax
.L0804CF47:
	movl      36(%edx), %esi
	testl     %esi, %esi
	je        .L0804CF51
.L0804CF4E:
	addl      $16, %eax
.L0804CF51:
	movb      %al, 1(%ecx,%ebx)
	movl      28(%edi), %esi
	movl      20(%edi), %ecx
	movl      4(%esi), %eax
	movl      8(%edi), %ebx
	movb      %al, (%ecx,%ebx)
	movl      28(%edi), %esi
	movl      20(%edi), %ecx
	movl      4(%esi), %eax
	movl      8(%edi), %ebx
	leal      1(%ecx), %edx
	shrl      $8, %eax
	movl      %edx, 20(%edi)
	movb      %al, 1(%ecx,%ebx)
	movl      20(%edi), %ecx
	movl      28(%edi), %esi
	movzwl    6(%esi), %eax
	leal      1(%ecx), %edx
	movl      8(%edi), %ebx
	movl      %edx, 20(%edi)
	movb      %al, 1(%ecx,%ebx)
	movl      20(%edi), %ecx
	movl      28(%edi), %esi
	leal      1(%ecx), %edx
	movl      8(%edi), %ebx
	movzbl    7(%esi), %eax
	movl      %edx, 20(%edi)
	movb      %al, 1(%ecx,%ebx)
	movl      20(%edi), %edx
	leal      1(%edx), %ecx
	addl      $2, %edx
	movl      %edx, 20(%edi)
	movl      132(%edi), %edx
	cmpl      $9, %edx
	movl      8(%edi), %ebx
	movb      $2, %al
	je        .L0804CFD6
.L0804CFC7:
	cmpl      $1, 136(%edi)
	jle       .L0804DC78
.L0804CFD4:
	movb      $4, %al
.L0804CFD6:
	movb      %al, (%ecx,%ebx)
	movl      28(%edi), %edx
	movl      12(%edx), %eax
	movl      8(%edi), %ecx
	movl      20(%edi), %esi
	movb      %al, (%esi,%ecx)
	movl      28(%edi), %eax
	movl      20(%edi), %ecx
	movl      16(%eax), %edx
	leal      1(%ecx), %ebx
	testl     %edx, %edx
	movl      %ebx, 20(%edi)
	je        .L0804D024
.L0804CFFB:
	movl      20(%eax), %eax
	movl      8(%edi), %ebx
	movb      %al, 1(%ecx,%ebx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%edi)
	movl      28(%edi), %esi
	movl      20(%esi), %eax
	shrl      $8, %eax
	movl      8(%edi), %ebx
	movb      %al, 1(%ecx,%ebx)
	incl      20(%edi)
	movl      28(%edi), %eax
.L0804D024:
	movl      44(%eax), %ecx
	testl     %ecx, %ecx
	jne       .L0804DE69
.L0804D02F:
	movl      $0, 32(%edi)
	movl      $69, 4(%edi)
.L0804D03D:
	movl      28(%edi), %esi
	movl      16(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804D0E0
.L0804D04B:
	movzwl    20(%esi), %eax
	movl      20(%edi), %ebx
	cmpl      %eax, 32(%edi)
	movl      %ebx, -20(%ebp)
	jb        .L0804D08E
.L0804D05A:
	jmp       .L0804D7F9
.L0804D05F:
	.p2align 3
.L0804D060:
	movl      16(%esi), %edx
	movl      32(%edi), %esi
	movb      (%edx,%esi), %al
	movl      8(%edi), %ecx
	movb      %al, (%ebx,%ecx)
	movl      20(%edi), %ecx
	movl      32(%edi), %edx
	incl      %ecx
	incl      %edx
	movl      %ecx, 20(%edi)
	movl      %edx, 32(%edi)
	movl      28(%edi), %esi
	movzwl    20(%esi), %eax
	cmpl      %eax, %edx
	jae       .L0804D7F7
.L0804D08C:
	movl      %ecx, %ebx
.L0804D08E:
	cmpl      12(%edi), %ebx
	jne       .L0804D060
.L0804D093:
	movl      44(%esi), %edx
	testl     %edx, %edx
	je        .L0804D0A3
.L0804D09A:
	cmpl      -20(%ebp), %ebx
	ja        .L0804D978
.L0804D0A3:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804D0B2:
	movl      8(%ebp), %ecx
	movl      20(%esi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D0C4
.L0804D0C2:
	movl      %eax, %ebx
.L0804D0C4:
	testl     %ebx, %ebx
	jne       .L0804D851
.L0804D0CC:
	movl      20(%edi), %ebx
	cmpl      12(%edi), %ebx
	movl      %ebx, -20(%ebp)
	je        .L0804DC88
.L0804D0DB:
	movl      28(%edi), %esi
	jmp       .L0804D060
.L0804D0E0:
	movl      $73, 4(%edi)
	movl      20(%edi), %ebx
.L0804D0EA:
	movl      28(%edi), %eax
	movl      28(%eax), %esi
	testl     %esi, %esi
	movl      %ebx, %ecx
	jne       .L0804D556
.L0804D0FA:
	movl      $91, 4(%edi)
.L0804D101:
	movl      28(%edi), %eax
	movl      36(%eax), %esi
	testl     %esi, %esi
	movl      %ebx, %ecx
	jne       .L0804D4D6
.L0804D111:
	movl      $103, 4(%edi)
.L0804D118:
	movl      28(%edi), %edx
	movl      44(%edx), %esi
	testl     %esi, %esi
	je        .L0804D758
.L0804D126:
	leal      2(%ebx), %eax
	movl      12(%edi), %edx
	cmpl      %edx, %eax
	ja        .L0804D8DD
.L0804D134:
	leal      2(%ebx), %esi
	cmpl      %edx, %esi
	ja        .L0804CB97
.L0804D13F:
	movl      8(%ebp), %ecx
	movl      48(%ecx), %eax
	movl      8(%edi), %edx
	movb      %al, (%ebx,%edx)
	movl      8(%ebp), %ebx
	movl      20(%edi), %ecx
	movl      48(%ebx), %eax
	movl      8(%edi), %edx
	shrl      $8, %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	incl      20(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804D173:
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	movl      20(%edi), %ebx
	movl      $113, 4(%edi)
	jmp       .L0804CB97
.L0804D188:
	movl      108(%edi), %eax
	movl      56(%edi), %edx
	movb      (%edx,%eax), %bl
	movl      5792(%edi), %ecx
	movl      5796(%edi), %esi
	movl      5784(%edi), %eax
	movw      $0, (%esi,%ecx,2)
	movb      %bl, (%ecx,%eax)
	incl      5792(%edi)
	movzbl    %bl, %esi
	incw      148(%edi,%esi,4)
	movl      5788(%edi), %edx
	decl      %edx
	xorl      %ecx, %ecx
	movl      116(%edi), %eax
	cmpl      %edx, 5792(%edi)
	sete      %cl
	decl      %eax
	movl      %eax, %edx
	incl      108(%edi)
	movl      %eax, 116(%edi)
	jmp       .L0804CDE4
.L0804D1E0:
	movl      %edi, %eax
	call      fill_window
.L0804D1E7:
	movl      116(%edi), %edx
	cmpl      $258, %edx
	ja        .L0804D1FD
.L0804D1F2:
	movl      12(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804CE47
.L0804D1FD:
	testl     %edx, %edx
	jne       .L0804CD43
.L0804D205:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%edi)
	je        .L0804DC90
.L0804D219:
	movl      5792(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0804D280
.L0804D223:
	pushl     $0
	movl      108(%edi), %edx
	subl      92(%edi), %edx
	pushl     %edx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804D23A
.L0804D235:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804D23A:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804D241:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %ebx
	movl      %ebx, (%esp)
	movl      %ebx, -44(%ebp)
	call      _tr_flush_bits
.L0804D257:
	movl      -44(%ebp), %eax
	movl      20(%eax), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D269
.L0804D267:
	movl      %eax, %ebx
.L0804D269:
	testl     %ebx, %ebx
	jne       .L0804DDEB
.L0804D271:
	movl      (%edi), %esi
	movl      16(%esi), %ebx
	xorl      %edx, %edx
	testl     %ebx, %ebx
	je        .L0804CC2E
.L0804D280:
	movl      $1, %edx
	jmp       .L0804CC2E
.L0804D28A:
	.p2align 2
.L0804D28C:
	movl      %edi, %eax
	call      fill_window
.L0804D293:
	movl      116(%edi), %eax
	testl     %eax, %eax
	jne       .L0804CE5B
.L0804D29E:
	movl      12(%ebp), %esi
	xorl      %edx, %edx
	testl     %esi, %esi
	je        .L0804CC2E
.L0804D2AB:
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%edi)
	je        .L0804DD60
.L0804D2BF:
	movl      5792(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0804D280
.L0804D2C9:
	pushl     $0
	movl      108(%edi), %ebx
	subl      92(%edi), %ebx
	pushl     %ebx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804D2E0
.L0804D2DB:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804D2E0:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804D2E7:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %edx
	movl      %edx, (%esp)
	movl      %edx, -32(%ebp)
	call      _tr_flush_bits
.L0804D2FD:
	movl      -32(%ebp), %eax
	movl      20(%eax), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D30F
.L0804D30D:
	movl      %eax, %ebx
.L0804D30F:
	testl     %ebx, %ebx
	je        .L0804D271
.L0804D317:
	pushl     %edx
	pushl     %ebx
	movl      -32(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0804D327:
	movl      -32(%ebp), %eax
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      16(%eax), %edx
	movl      %eax, %ecx
	movl      20(%eax), %eax
	subl      %ebx, %eax
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	je        .L0804DE21
.L0804D34D:
	movl      -32(%ebp), %ebx
	movl      %edx, 16(%ebx)
	jmp       .L0804D271
.L0804D358:
	pushl     %eax
	pushl     %ebx
	movl      -36(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0804D368:
	movl      -36(%ebp), %eax
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      16(%eax), %edx
	movl      %eax, %ecx
	movl      20(%eax), %eax
	subl      %ebx, %eax
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L0804D3D4
.L0804D38A:
	movl      8(%ecx), %ebx
	movl      %ebx, 16(%ecx)
	jmp       .L0804CE3A
.L0804D395:
	pushl     %eax
	pushl     %ebx
	movl      -24(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%esi)
	call      memcpy
.L0804D3A5:
	movl      -24(%ebp), %ecx
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%ecx), %eax
	subl      %ebx, %eax
	movl      16(%ecx), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L0804D575
.L0804D3C9:
	movl      8(%ecx), %ebx
	movl      %ebx, 16(%ecx)
	jmp       .L0804CF04
.L0804D3D4:
	movl      -36(%ebp), %esi
	movl      %edx, 16(%esi)
	jmp       .L0804CE3A
.L0804D3DF:
	movzbl    1(%ecx), %ebx
	cmpl      %esi, %ebx
	jne       .L0804CD6C
.L0804D3EB:
	movzbl    2(%ecx), %eax
	cmpl      %esi, %eax
	leal      2(%ecx), %ebx
	jne       .L0804CD6C
.L0804D3FA:
	addl      $258, %ecx
.L0804D400:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D408:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D410:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D418:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D420:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D428:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D430:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D438:
	incl      %ebx
	movzbl    (%ebx), %eax
	cmpl      %esi, %eax
	jne       .L0804D444
.L0804D440:
	cmpl      %ecx, %ebx
	jb        .L0804D400
.L0804D444:
	subl      %ebx, %ecx
	movl      $258, %eax
	subl      %ecx, %eax
	cmpl      %edx, %eax
	jbe       .L0804DC70
.L0804D455:
	movl      %edx, 96(%edi)
	jmp       .L0804CD6C
.L0804D45D:
	.p2align 3
.L0804D460:
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L0804D46F
.L0804D467:
	cmpl      %ecx, %ebx
	ja        .L0804D7A6
.L0804D46F:
	movl      8(%ebp), %ebx
	subl      $12, %esp
	movl      28(%ebx), %esi
	pushl     %esi
	call      _tr_flush_bits
.L0804D47E:
	movl      8(%ebp), %edx
	movl      20(%esi), %ebx
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D490
.L0804D48E:
	movl      %eax, %ebx
.L0804D490:
	testl     %ebx, %ebx
	jne       .L0804D580
.L0804D498:
	movl      20(%edi), %ebx
	cmpl      12(%edi), %ebx
	movl      %ebx, %ecx
	je        .L0804D99C
.L0804D4A6:
	movl      28(%edi), %eax
	.p2align 2
.L0804D4AC:
	movl      32(%edi), %edx
	movl      36(%eax), %eax
	movzbl    (%edx,%eax), %esi
	incl      %edx
	movl      %edx, 32(%edi)
	movl      8(%edi), %eax
	movl      %esi, %edx
	movb      %dl, (%ebx,%eax)
	movl      20(%edi), %eax
	incl      %eax
	testl     %esi, %esi
	movl      %eax, 20(%edi)
	je        .L0804D782
.L0804D4D1:
	movl      %eax, %ebx
	movl      28(%edi), %eax
.L0804D4D6:
	cmpl      12(%edi), %ebx
	jne       .L0804D4AC
.L0804D4DB:
	jmp       .L0804D460
.L0804D4DD:
	.p2align 3
.L0804D4E0:
	movl      44(%eax), %eax
	testl     %eax, %eax
	je        .L0804D4EF
.L0804D4E7:
	cmpl      %ecx, %ebx
	ja        .L0804D830
.L0804D4EF:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804D4FE:
	movl      8(%ebp), %edx
	movl      20(%esi), %ebx
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D510
.L0804D50E:
	movl      %eax, %ebx
.L0804D510:
	testl     %ebx, %ebx
	jne       .L0804D5FC
.L0804D518:
	movl      20(%edi), %ebx
	cmpl      12(%edi), %ebx
	movl      %ebx, %ecx
	je        .L0804D9A6
.L0804D526:
	movl      28(%edi), %eax
	.p2align 2
.L0804D52C:
	movl      32(%edi), %edx
	movl      28(%eax), %eax
	movzbl    (%edx,%eax), %esi
	incl      %edx
	movl      %edx, 32(%edi)
	movl      8(%edi), %eax
	movl      %esi, %edx
	movb      %dl, (%ebx,%eax)
	movl      20(%edi), %eax
	incl      %eax
	testl     %esi, %esi
	movl      %eax, 20(%edi)
	je        .L0804D7CF
.L0804D551:
	movl      %eax, %ebx
	movl      28(%edi), %eax
.L0804D556:
	cmpl      12(%edi), %ebx
	jne       .L0804D52C
.L0804D55B:
	jmp       .L0804D4E0
.L0804D55D:
	movl      8(%ebp), %esi
	movl      16(%esi), %edx
	testl     %edx, %edx
	jne       .L0804D56E
.L0804D567:
	movl      $-1, 40(%edi)
.L0804D56E:
	xorl      %eax, %eax
	jmp       .L0804CD29
.L0804D575:
	movl      -24(%ebp), %ecx
	movl      %edx, 16(%ecx)
	jmp       .L0804CF04
.L0804D580:
	pushl     %edx
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804D590:
	movl      8(%ebp), %eax
	subl      %ebx, 16(%eax)
	addl      %ebx, 12(%eax)
	movl      20(%esi), %ecx
	subl      %ebx, %ecx
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%eax)
	testl     %ecx, %ecx
	movl      %ecx, 20(%esi)
	jne       .L0804D7C7
.L0804D5B4:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	jmp       .L0804D498
.L0804D5BF:
	movl      8(%ebp), %ebx
	subl      $12, %esp
	movl      28(%ebx), %esi
	pushl     %esi
	call      _tr_flush_bits
.L0804D5CE:
	movl      8(%ebp), %edx
	movl      20(%esi), %ebx
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D5E0
.L0804D5DE:
	movl      %eax, %ebx
.L0804D5E0:
	testl     %ebx, %ebx
	jne       .L0804D898
.L0804D5E8:
	testl     %eax, %eax
	jne       .L0804D81D
.L0804D5F0:
	movl      $-1, 40(%edi)
	jmp       .L0804CD29
.L0804D5FC:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804D60C:
	movl      8(%ebp), %eax
	subl      %ebx, 16(%eax)
	addl      %ebx, 12(%eax)
	movl      20(%esi), %ecx
	subl      %ebx, %ecx
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%eax)
	testl     %ecx, %ecx
	movl      %ecx, 20(%esi)
	jne       .L0804D828
.L0804D630:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	jmp       .L0804D518
.L0804D63B:
	cmpl      $2, 24(%edi)
	je        .L0804D9D1
.L0804D645:
	movl      48(%edi), %eax
	subl      $8, %eax
	sall      $12, %eax
	cmpl      $1, 136(%edi)
	leal      2048(%eax), %ebx
	jle       .L0804D72A
.L0804D661:
	xorl      %eax, %eax
.L0804D663:
	movl      %eax, %ecx
	sall      $6, %ecx
	orl       %ebx, %ecx
	movl      108(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804D674
.L0804D671:
	orl       $32, %ecx
.L0804D674:
	movl      $31, %esi
	movl      %ecx, %eax
	xorl      %edx, %edx
	divl      %esi
	subl      %edx, %ecx
	leal      31(%ecx), %ebx
	movl      %ebx, %eax
	movl      20(%edi), %edx
	movl      8(%edi), %esi
	shrl      $8, %eax
	movl      $113, 4(%edi)
	movb      %al, (%edx,%esi)
	movl      20(%edi), %edx
	leal      1(%edx), %ecx
	movl      8(%edi), %eax
	movl      %ecx, 20(%edi)
	movb      %bl, 1(%edx,%eax)
	movl      20(%edi), %ebx
	movl      108(%edi), %ecx
	leal      1(%ebx), %esi
	testl     %ecx, %ecx
	movl      %esi, 20(%edi)
	je        .L0804D70D
.L0804D6B9:
	movl      8(%ebp), %edx
	movl      48(%edx), %eax
	movl      8(%edi), %esi
	movl      %eax, %ecx
	shrl      $24, %eax
	movb      %al, 1(%ebx,%esi)
	movl      20(%edi), %edx
	movl      8(%edi), %esi
	leal      1(%edx), %eax
	shrl      $16, %ecx
	movl      %eax, 20(%edi)
	movb      %cl, 1(%edx,%esi)
	movl      20(%edi), %ecx
	movl      8(%ebp), %eax
	leal      1(%ecx), %ebx
	movl      %ebx, 20(%edi)
	movzwl    48(%eax), %ebx
	movl      %ebx, %edx
	movl      8(%edi), %esi
	shrl      $8, %edx
	movb      %dl, 1(%ecx,%esi)
	movl      20(%edi), %edx
	leal      1(%edx), %eax
	movl      8(%edi), %ecx
	movl      %eax, 20(%edi)
	movb      %bl, 1(%edx,%ecx)
	incl      20(%edi)
.L0804D70D:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804D719:
	movl      8(%ebp), %ebx
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	movl      4(%edi), %eax
	jmp       .L0804CB70
.L0804D72A:
	movl      132(%edi), %edx
	cmpl      $1, %edx
	jle       .L0804D661
.L0804D739:
	cmpl      $5, %edx
	movl      $1, %eax
	jle       .L0804D663
.L0804D747:
	xorl      %eax, %eax
	cmpl      $6, %edx
	setne     %al
	addl      $2, %eax
	jmp       .L0804D663
.L0804D757:
	.p2align 3
.L0804D758:
	movl      $113, 4(%edi)
	jmp       .L0804CB97
.L0804D764:
	testl     %ecx, %ecx
	je        .L0804CBE5
.L0804D76C:
	movl      z_errmsg+28, %esi
	movl      8(%ebp), %edi
	movl      $-5, %eax
	movl      %esi, 24(%edi)
	jmp       .L0804CD29
.L0804D782:
	movl      %eax, %ebx
.L0804D784:
	movl      28(%edi), %eax
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L0804D796
.L0804D78E:
	cmpl      %ecx, %ebx
	ja        .L0804DAD7
.L0804D796:
	testl     %esi, %esi
	je        .L0804D111
.L0804D79E:
	movl      4(%edi), %eax
	jmp       .L0804CB8E
.L0804D7A6:
	subl      %ecx, %ebx
	pushl     %esi
	pushl     %ebx
	addl      8(%edi), %ecx
	pushl     %ecx
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      crc32
.L0804D7B9:
	movl      8(%ebp), %ecx
	addl      $16, %esp
	movl      %eax, 48(%ecx)
	jmp       .L0804D46F
.L0804D7C7:
	movl      %edx, 16(%esi)
	jmp       .L0804D498
.L0804D7CF:
	movl      %eax, %ebx
.L0804D7D1:
	movl      28(%edi), %eax
	movl      44(%eax), %edx
	testl     %edx, %edx
	je        .L0804D7E3
.L0804D7DB:
	cmpl      %ecx, %ebx
	ja        .L0804DAFB
.L0804D7E3:
	testl     %esi, %esi
	jne       .L0804D890
.L0804D7EB:
	movl      $0, 32(%edi)
	jmp       .L0804D0FA
.L0804D7F7:
	movl      %ecx, %ebx
.L0804D7F9:
	movl      44(%esi), %ecx
	testl     %ecx, %ecx
	je        .L0804D809
.L0804D800:
	cmpl      -20(%ebp), %ebx
	ja        .L0804DC43
.L0804D809:
	movl      20(%esi), %edx
	cmpl      %edx, 32(%edi)
	je        .L0804D9BE
.L0804D815:
	movl      4(%edi), %eax
	jmp       .L0804CB7C
.L0804D81D:
	movl      8(%ebp), %edx
	movl      4(%edx), %ecx
	jmp       .L0804CBD3
.L0804D828:
	movl      %edx, 16(%esi)
	jmp       .L0804D518
.L0804D830:
	subl      %ecx, %ebx
	pushl     %eax
	pushl     %ebx
	addl      8(%edi), %ecx
	pushl     %ecx
	movl      8(%ebp), %ebx
	pushl     48(%ebx)
	call      crc32
.L0804D843:
	movl      8(%ebp), %ecx
	addl      $16, %esp
	movl      %eax, 48(%ecx)
	jmp       .L0804D4EF
.L0804D851:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804D861:
	movl      8(%ebp), %eax
	subl      %ebx, 16(%eax)
	addl      %ebx, 12(%eax)
	movl      20(%esi), %ecx
	subl      %ebx, %ecx
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%eax)
	testl     %ecx, %ecx
	movl      %ecx, 20(%esi)
	jne       .L0804D970
.L0804D885:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	jmp       .L0804D0CC
.L0804D890:
	movl      4(%edi), %eax
	jmp       .L0804CB85
.L0804D898:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804D8A8:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	addl      %ebx, 12(%ecx)
	movl      20(%esi), %eax
	subl      %ebx, %eax
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%ecx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804D9B0
.L0804D8CC:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	movl      8(%ebp), %esi
	movl      16(%esi), %eax
	jmp       .L0804D5E8
.L0804D8DD:
	movl      8(%ebp), %ebx
	subl      $12, %esp
	movl      28(%ebx), %esi
	pushl     %esi
	call      _tr_flush_bits
.L0804D8EC:
	movl      8(%ebp), %ecx
	movl      20(%esi), %ebx
	movl      16(%ecx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D8FE
.L0804D8FC:
	movl      %eax, %ebx
.L0804D8FE:
	testl     %ebx, %ebx
	jne       .L0804DB1F
.L0804D906:
	movl      20(%edi), %ebx
	movl      12(%edi), %edx
	jmp       .L0804D134
.L0804D911:
	cmpl      $1, 12(%ebp)
	je        .L0804DD4F
.L0804D91B:
	cmpl      $5, 12(%ebp)
	je        .L0804D93A
.L0804D921:
	pushl     $0
	pushl     $0
	pushl     $0
	pushl     %edi
	call      _tr_stored_block
.L0804D92D:
	addl      $16, %esp
	cmpl      $3, 12(%ebp)
	je        .L0804DE89
.L0804D93A:
	movl      8(%ebp), %eax
	movl      28(%eax), %esi
	subl      $12, %esp
	pushl     %esi
	call      _tr_flush_bits
.L0804D949:
	movl      8(%ebp), %edx
	movl      20(%esi), %ebx
	movl      16(%edx), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804D95B
.L0804D959:
	movl      %eax, %ebx
.L0804D95B:
	testl     %ebx, %ebx
	jne       .L0804DCF0
.L0804D963:
	testl     %eax, %eax
	jne       .L0804CC55
.L0804D96B:
	jmp       .L0804D5F0
.L0804D970:
	movl      %edx, 16(%esi)
	jmp       .L0804D0CC
.L0804D978:
	subl      -20(%ebp), %ebx
	pushl     %eax
	pushl     %ebx
	movl      8(%edi), %ebx
	addl      %ebx, -20(%ebp)
	pushl     -20(%ebp)
	movl      8(%ebp), %esi
	pushl     48(%esi)
	call      crc32
.L0804D991:
	addl      $16, %esp
	movl      %eax, 48(%esi)
	jmp       .L0804D0A3
.L0804D99C:
	movl      $1, %esi
	jmp       .L0804D784
.L0804D9A6:
	movl      $1, %esi
	jmp       .L0804D7D1
.L0804D9B0:
	movl      8(%ebp), %ecx
	movl      16(%ecx), %eax
	movl      %edx, 16(%esi)
	jmp       .L0804D5E8
.L0804D9BE:
	movl      $0, 32(%edi)
	movl      $73, 4(%edi)
	jmp       .L0804D0EA
.L0804D9D1:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0804D9DD:
	movl      20(%edi), %ebx
	movl      8(%ebp), %ecx
	movl      8(%edi), %esi
	movl      %eax, 48(%ecx)
	movb      $31, (%ebx,%esi)
	movl      20(%edi), %edx
	leal      1(%edx), %eax
	movl      8(%edi), %ecx
	movl      %eax, 20(%edi)
	movb      $139, 1(%edx,%ecx)
	movl      20(%edi), %esi
	movl      8(%edi), %eax
	leal      1(%esi), %ebx
	movl      %ebx, 20(%edi)
	movb      $8, 1(%esi,%eax)
	movl      28(%edi), %edx
	movl      20(%edi), %ecx
	addl      $16, %esp
	testl     %edx, %edx
	leal      1(%ecx), %eax
	jne       .L0804CF18
.L0804DA23:
	movl      8(%edi), %ebx
	movl      %eax, 20(%edi)
	movb      $0, 1(%ecx,%ebx)
	movl      20(%edi), %edx
	movl      8(%edi), %eax
	leal      1(%edx), %esi
	movl      %esi, 20(%edi)
	movb      $0, 1(%edx,%eax)
	movl      20(%edi), %ebx
	movl      8(%edi), %esi
	leal      1(%ebx), %ecx
	movl      %ecx, 20(%edi)
	movb      $0, 1(%ebx,%esi)
	movl      20(%edi), %edx
	leal      1(%edx), %eax
	movl      8(%edi), %ecx
	movl      %eax, 20(%edi)
	movb      $0, 1(%edx,%ecx)
	movl      20(%edi), %esi
	leal      1(%esi), %ebx
	movl      8(%edi), %eax
	movl      %ebx, 20(%edi)
	movb      $0, 1(%esi,%eax)
	movl      20(%edi), %edx
	leal      1(%edx), %ecx
	addl      $2, %edx
	movl      %edx, 20(%edi)
	movl      132(%edi), %edx
	cmpl      $9, %edx
	movl      8(%edi), %ebx
	movb      $2, %al
	je        .L0804DA99
.L0804DA8E:
	cmpl      $1, 136(%edi)
	jle       .L0804DABA
.L0804DA97:
	movb      $4, %al
.L0804DA99:
	movb      %al, (%ecx,%ebx)
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	movb      $3, (%eax,%ecx)
	incl      20(%edi)
	movl      $113, %eax
	movl      $113, 4(%edi)
	jmp       .L0804CB79
.L0804DABA:
	xorl      %eax, %eax
	decl      %edx
	jg        .L0804DA99
.L0804DABF:
	jmp       .L0804DA97
.L0804DAC1:
	.p2align 2
.L0804DAC4:
	movl      z_errmsg+28, %esi
	movl      $-5, %eax
	movl      %esi, 24(%ebx)
	jmp       .L0804CD29
.L0804DAD7:
	subl      %ecx, %ebx
	pushl     %eax
	pushl     %ebx
	addl      8(%edi), %ecx
	pushl     %ecx
	movl      8(%ebp), %ebx
	pushl     48(%ebx)
	call      crc32
.L0804DAEA:
	movl      8(%ebp), %ecx
	addl      $16, %esp
	movl      20(%edi), %ebx
	movl      %eax, 48(%ecx)
	jmp       .L0804D796
.L0804DAFB:
	subl      %ecx, %ebx
	pushl     %eax
	pushl     %ebx
	addl      8(%edi), %ecx
	pushl     %ecx
	movl      8(%ebp), %ebx
	pushl     48(%ebx)
	call      crc32
.L0804DB0E:
	movl      8(%ebp), %ecx
	addl      $16, %esp
	movl      20(%edi), %ebx
	movl      %eax, 48(%ecx)
	jmp       .L0804D7E3
.L0804DB1F:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804DB2F:
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	addl      %ebx, 12(%ecx)
	movl      20(%esi), %eax
	subl      %ebx, %eax
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%ecx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804DD31
.L0804DB53:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	jmp       .L0804D906
.L0804DB5E:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %ecx
	pushl     12(%ecx)
	call      memcpy
.L0804DB6E:
	movl      8(%ebp), %eax
	subl      %ebx, 16(%eax)
	movl      8(%ebp), %edx
	addl      %ebx, 12(%edx)
	movl      20(%esi), %ecx
	subl      %ebx, %ecx
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%eax)
	testl     %ecx, %ecx
	movl      %ecx, 20(%esi)
	jne       .L0804DD39
.L0804DB95:
	movl      8(%esi), %ebx
	movl      %ebx, 16(%esi)
	jmp       .L0804CCF6
.L0804DBA0:
	movl      8(%ebp), %ebx
	movl      20(%edi), %edx
	movl      8(%edi), %ecx
	movl      48(%ebx), %eax
	movb      %al, (%edx,%ecx)
	movl      20(%edi), %ecx
	movl      48(%ebx), %eax
	movl      8(%edi), %edx
	leal      1(%ecx), %esi
	shrl      $8, %eax
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movzwl    50(%ebx), %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movzbl    51(%ebx), %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%edi), %edx
	movl      8(%ebx), %eax
	leal      1(%ecx), %esi
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	movl      8(%ebx), %eax
	leal      1(%ecx), %esi
	movl      8(%edi), %edx
	shrl      $8, %eax
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %esi
	movl      8(%edi), %edx
	movzwl    10(%ebx), %eax
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %esi
	movl      8(%edi), %edx
	movzbl    11(%ebx), %eax
	movl      %esi, 20(%edi)
	movb      %al, 1(%ecx,%edx)
	jmp       .L0804CCCA
.L0804DC43:
	subl      -20(%ebp), %ebx
	pushl     %ecx
	pushl     %ebx
	movl      8(%edi), %esi
	addl      %esi, -20(%ebp)
	pushl     -20(%ebp)
	movl      8(%ebp), %eax
	pushl     48(%eax)
	call      crc32
.L0804DC5C:
	movl      8(%ebp), %ebx
	movl      %eax, 48(%ebx)
	addl      $16, %esp
	movl      20(%edi), %ebx
	movl      28(%edi), %esi
	jmp       .L0804D809
.L0804DC70:
	movl      %eax, 96(%edi)
	jmp       .L0804CD6C
.L0804DC78:
	xorl      %eax, %eax
	decl      %edx
	jg        .L0804CFD6
.L0804DC81:
	jmp       .L0804CFD4
.L0804DC86:
	.p2align 3
.L0804DC88:
	movl      28(%edi), %esi
	jmp       .L0804D7F9
.L0804DC90:
	pushl     $1
	movl      108(%edi), %ecx
	subl      92(%edi), %ecx
	pushl     %ecx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804DCA7
.L0804DCA2:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804DCA7:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804DCAE:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %ebx
	movl      %ebx, (%esp)
	movl      %ebx, -40(%ebp)
	call      _tr_flush_bits
.L0804DCC4:
	movl      -40(%ebp), %edx
	movl      20(%edx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804DCD6
.L0804DCD4:
	movl      %eax, %ebx
.L0804DCD6:
	testl     %ebx, %ebx
	jne       .L0804DE2C
.L0804DCDE:
	movl      (%edi), %eax
	movl      16(%eax), %esi
	cmpl      $1, %esi
	sbbl      %ebx, %ebx
	leal      3(%ebx), %edx
	jmp       .L0804CC2E
.L0804DCF0:
	pushl     %eax
	pushl     %ebx
	pushl     16(%esi)
	movl      8(%ebp), %edx
	pushl     12(%edx)
	call      memcpy
.L0804DD00:
	movl      8(%ebp), %ecx
	addl      %ebx, 12(%ecx)
	movl      8(%ebp), %ecx
	subl      %ebx, 16(%ecx)
	movl      20(%esi), %eax
	subl      %ebx, %eax
	movl      16(%esi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%ecx)
	testl     %eax, %eax
	movl      %eax, 20(%esi)
	jne       .L0804DD41
.L0804DD23:
	movl      8(%esi), %ebx
	movl      16(%ecx), %eax
	movl      %ebx, 16(%esi)
	jmp       .L0804D963
.L0804DD31:
	movl      %edx, 16(%esi)
	jmp       .L0804D906
.L0804DD39:
	movl      %edx, 16(%esi)
	jmp       .L0804CCF6
.L0804DD41:
	movl      %edx, 16(%esi)
	movl      8(%ebp), %esi
	movl      16(%esi), %eax
	jmp       .L0804D963
.L0804DD4F:
	subl      $12, %esp
	pushl     %edi
	call      _tr_align
.L0804DD58:
	addl      $16, %esp
	jmp       .L0804D93A
.L0804DD60:
	pushl     $1
	movl      108(%edi), %edx
	subl      92(%edi), %edx
	pushl     %edx
	movl      92(%edi), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	js        .L0804DD77
.L0804DD72:
	movl      56(%edi), %edx
	addl      %eax, %edx
.L0804DD77:
	pushl     %edx
	pushl     %edi
	call      _tr_flush_block
.L0804DD7E:
	movl      108(%edi), %esi
	movl      %esi, 92(%edi)
	movl      (%edi), %esi
	movl      28(%esi), %ebx
	movl      %ebx, (%esp)
	movl      %ebx, -28(%ebp)
	call      _tr_flush_bits
.L0804DD94:
	movl      -28(%ebp), %ecx
	movl      20(%ecx), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804DDA6
.L0804DDA4:
	movl      %eax, %ebx
.L0804DDA6:
	testl     %ebx, %ebx
	je        .L0804DCDE
.L0804DDAE:
	pushl     %eax
	pushl     %ebx
	movl      -28(%ebp), %edx
	pushl     16(%edx)
	pushl     12(%esi)
	call      memcpy
.L0804DDBE:
	movl      -28(%ebp), %eax
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      16(%eax), %edx
	movl      %eax, %ecx
	movl      20(%eax), %eax
	subl      %ebx, %eax
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	je        .L0804DE5E
.L0804DDE0:
	movl      -28(%ebp), %ebx
	movl      %edx, 16(%ebx)
	jmp       .L0804DCDE
.L0804DDEB:
	pushl     %eax
	pushl     %ebx
	movl      -44(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0804DDFB:
	movl      -44(%ebp), %eax
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      16(%eax), %edx
	movl      %eax, %ecx
	movl      20(%eax), %eax
	subl      %ebx, %eax
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L0804DECF
.L0804DE21:
	movl      8(%ecx), %edx
	movl      %edx, 16(%ecx)
	jmp       .L0804D271
.L0804DE2C:
	pushl     %eax
	pushl     %ebx
	movl      -40(%ebp), %ecx
	pushl     16(%ecx)
	pushl     12(%esi)
	call      memcpy
.L0804DE3C:
	movl      -40(%ebp), %eax
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      16(%eax), %edx
	movl      %eax, %ecx
	movl      20(%eax), %eax
	subl      %ebx, %eax
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%ecx)
	jne       .L0804DEDA
.L0804DE5E:
	movl      8(%ecx), %edx
	movl      %edx, 16(%ecx)
	jmp       .L0804DCDE
.L0804DE69:
	pushl     %esi
	pushl     20(%edi)
	pushl     8(%edi)
	movl      8(%ebp), %edx
	pushl     48(%edx)
	call      crc32
.L0804DE7B:
	movl      8(%ebp), %esi
	addl      $16, %esp
	movl      %eax, 48(%esi)
	jmp       .L0804D02F
.L0804DE89:
	movl      76(%edi), %ecx
	movl      68(%edi), %ebx
	movw      $0, -2(%ebx,%ecx,2)
	leal      -2(%ecx,%ecx), %edx
	pushl     %ecx
	pushl     %edx
	pushl     $0
	pushl     %ebx
	call      memset
.L0804DEA4:
	movl      116(%edi), %eax
	addl      $16, %esp
	testl     %eax, %eax
	jne       .L0804D93A
.L0804DEB2:
	movl      $0, 108(%edi)
	movl      $0, 92(%edi)
	movl      $0, 5812(%edi)
	jmp       .L0804D93A
.L0804DECF:
	movl      -44(%ebp), %ebx
	movl      %edx, 16(%ebx)
	jmp       .L0804D271
.L0804DEDA:
	movl      -40(%ebp), %ebx
	movl      %edx, 16(%ebx)
	jmp       .L0804DCDE
	.size	deflate, .-deflate
# ----------------------
.L0804DEE5:
	.p2align 3
# ----------------------
	.globl	deflateParams
	.type	deflateParams, @function
deflateParams:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %ecx
	testl     %ecx, %ecx
	movl      12(%ebp), %esi
	movl      $0, -16(%ebp)
	je        .L0804DFB0
.L0804DF06:
	movl      28(%ecx), %ebx
	testl     %ebx, %ebx
	je        .L0804DFB0
.L0804DF11:
	cmpl      $-1, %esi
	je        .L0804DFC0
.L0804DF1A:
	cmpl      $9, %esi
	ja        .L0804DFB0
.L0804DF23:
	movl      16(%ebp), %eax
	testl     %eax, %eax
	js        .L0804DFB0
.L0804DF2E:
	cmpl      $4, 16(%ebp)
	jg        .L0804DFB0
.L0804DF34:
	movl      132(%ebx), %edx
	leal      (%edx,%edx,2), %eax
	movl      configuration_table+8(,%eax,4), %edi
	movl      16(%ebp), %eax
	cmpl      %eax, 136(%ebx)
	je        .L0804DFCA
.L0804DF4F:
	movl      8(%ecx), %edi
	testl     %edi, %edi
	jne       .L0804DFDF
.L0804DF5A:
	cmpl      %esi, %edx
	je        .L0804DF9B
.L0804DF5E:
	leal      (%esi,%esi,2), %edi
	sall      $2, %edi
	movl      %esi, 132(%ebx)
	movzwl    configuration_table+2(%edi), %edx
	movzwl    configuration_table(%edi), %eax
	movzwl    configuration_table+4(%edi), %esi
	movzwl    configuration_table+6(%edi), %ecx
	movl      %edx, 128(%ebx)
	movl      %eax, 140(%ebx)
	movl      %esi, 144(%ebx)
	movl      %ecx, 124(%ebx)
.L0804DF9B:
	movl      16(%ebp), %ecx
	movl      %ecx, 136(%ebx)
	movl      -16(%ebp), %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804DFAF:
	.p2align 3
.L0804DFB0:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $-2, %eax
	popl      %edi
	leave     
	ret       
.L0804DFBD:
	.p2align 3
.L0804DFC0:
	movl      $6, %esi
	jmp       .L0804DF23
.L0804DFCA:
	leal      (%esi,%esi,2), %eax
	cmpl      %edi, configuration_table+8(,%eax,4)
	jne       .L0804DF4F
.L0804DFDA:
	jmp       .L0804DF5A
.L0804DFDF:
	subl      $8, %esp
	pushl     $5
	pushl     %ecx
	call      deflate
.L0804DFEA:
	addl      $16, %esp
	cmpl      $-5, %eax
	movl      %eax, -16(%ebp)
	je        .L0804E000
.L0804DFF5:
	movl      132(%ebx), %edx
	jmp       .L0804DF5A
.L0804E000:
	movl      20(%ebx), %edx
	testl     %edx, %edx
	jne       .L0804DFF5
.L0804E007:
	movl      $0, -16(%ebp)
	jmp       .L0804DFF5
	.size	deflateParams, .-deflateParams
# ----------------------
	.local	deflate_stored
	.type	deflate_stored, @function
deflate_stored:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %edx
	movl      12(%edx), %eax
	subl      $5, %eax
	cmpl      $65535, %eax
	movl      $65535, -16(%ebp)
	jae       .L0804E034
.L0804E030:
	movl      %eax, -16(%ebp)
	.p2align 2
.L0804E034:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %eax
	cmpl      $1, %eax
	jbe       .L0804E150
.L0804E043:
	movl      8(%ebp), %edx
	movl      8(%ebp), %esi
	movl      92(%edx), %ecx
	movl      -16(%ebp), %edi
	addl      108(%esi), %eax
	leal      (%ecx,%edi), %edx
	je        .L0804E05F
.L0804E057:
	cmpl      %edx, %eax
	jb        .L0804E13C
.L0804E05F:
	subl      %edx, %eax
	movl      8(%ebp), %ebx
	movl      %eax, 116(%ebx)
	movl      %edx, 108(%ebx)
	xorl      %eax, %eax
	subl      %ecx, %edx
	pushl     $0
	testl     %ecx, %ecx
	pushl     %edx
	js        .L0804E07A
.L0804E075:
	movl      56(%ebx), %eax
	addl      %ecx, %eax
.L0804E07A:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E083:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %ebx
	movl      (%ecx), %esi
	movl      %ebx, 92(%ecx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E099:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E0A8
.L0804E0A6:
	movl      %eax, %ebx
.L0804E0A8:
	testl     %ebx, %ebx
	jne       .L0804E1F4
.L0804E0B0:
	movl      8(%ebp), %ecx
	movl      (%ecx), %edx
	movl      16(%edx), %edi
	testl     %edi, %edi
	je        .L0804E12D
.L0804E0BC:
	movl      108(%ecx), %eax
	movl      92(%ecx), %ecx
.L0804E0C2:
	movl      8(%ebp), %ebx
	movl      %eax, %edx
	movl      44(%ebx), %eax
	subl      %ecx, %edx
	subl      $262, %eax
	cmpl      %eax, %edx
	jb        .L0804E034
.L0804E0D9:
	pushl     $0
	xorl      %eax, %eax
	testl     %ecx, %ecx
	pushl     %edx
	js        .L0804E0E7
.L0804E0E2:
	movl      56(%ebx), %eax
	addl      %ecx, %eax
.L0804E0E7:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E0F0:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
	movl      (%ecx), %esi
	movl      %edi, 92(%ecx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E106:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E115
.L0804E113:
	movl      %eax, %ebx
.L0804E115:
	testl     %ebx, %ebx
	jne       .L0804E22C
.L0804E11D:
	movl      8(%ebp), %ecx
	movl      (%ecx), %eax
	movl      16(%eax), %ebx
	testl     %ebx, %ebx
	jne       .L0804E034
.L0804E12D:
	xorl      %edx, %edx
.L0804E12F:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804E139:
	.p2align 2
.L0804E13C:
	movl      8(%ebp), %esi
	movl      $0, 116(%esi)
	movl      %eax, 108(%esi)
	jmp       .L0804E0C2
.L0804E14E:
	.p2align 3
.L0804E150:
	movl      %ecx, %eax
	call      fill_window
.L0804E157:
	movl      8(%ebp), %ebx
	movl      116(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804E043
.L0804E165:
	movl      12(%ebp), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L0804E12F
.L0804E16E:
	movl      8(%ebp), %ebx
	cmpl      $4, 12(%ebp)
	movl      $0, 5812(%ebx)
	je        .L0804E274
.L0804E185:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %eax
	movl      92(%ebx), %edx
	cmpl      %edx, %eax
	jle       .L0804E1EA
.L0804E192:
	subl      %edx, %eax
	pushl     $0
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804E1A2
.L0804E19D:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L0804E1A2:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E1AB:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %eax
	movl      (%ebx), %esi
	movl      %eax, 92(%ebx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E1C1:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E1D0
.L0804E1CE:
	movl      %eax, %ebx
.L0804E1D0:
	testl     %ebx, %ebx
	jne       .L0804E2D1
.L0804E1D8:
	movl      8(%ebp), %ebx
	movl      (%ebx), %esi
	movl      16(%esi), %edi
	xorl      %edx, %edx
	testl     %edi, %edi
	je        .L0804E12F
.L0804E1EA:
	movl      $1, %edx
	jmp       .L0804E12F
.L0804E1F4:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E201:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %eax
	subl      %ebx, %eax
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804E264
.L0804E21E:
	movl      8(%edi), %esi
	movl      %esi, 16(%edi)
	jmp       .L0804E0B0
.L0804E229:
	.p2align 2
.L0804E22C:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E239:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L0804E26C
.L0804E256:
	movl      8(%edi), %edx
	movl      %edx, 16(%edi)
	jmp       .L0804E11D
.L0804E261:
	.p2align 2
.L0804E264:
	movl      %edx, 16(%edi)
	jmp       .L0804E0B0
.L0804E26C:
	movl      %edx, 16(%edi)
	jmp       .L0804E11D
.L0804E274:
	pushl     $1
	movl      92(%ebx), %edx
	movl      108(%ebx), %edi
	subl      %edx, %edi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %edi
	js        .L0804E28A
.L0804E285:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L0804E28A:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E293:
	movl      8(%ebp), %edx
	movl      108(%edx), %esi
	movl      %esi, 92(%edx)
	movl      (%edx), %esi
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E2A9:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E2B8
.L0804E2B6:
	movl      %eax, %ebx
.L0804E2B8:
	testl     %ebx, %ebx
	jne       .L0804E306
.L0804E2BC:
	movl      8(%ebp), %esi
	movl      (%esi), %edx
	movl      16(%edx), %edi
	cmpl      $1, %edi
	sbbl      %ecx, %ecx
	leal      3(%ecx), %edx
	jmp       .L0804E12F
.L0804E2D1:
	pushl     %edx
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E2DE:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %ecx
	subl      %ebx, %ecx
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edi)
	jne       .L0804E338
.L0804E2FB:
	movl      8(%edi), %edx
	movl      %edx, 16(%edi)
	jmp       .L0804E1D8
.L0804E306:
	pushl     %ecx
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E313:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %eax
	subl      %ebx, %eax
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804E340
.L0804E330:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0804E2BC
.L0804E338:
	movl      %edx, 16(%edi)
	jmp       .L0804E1D8
.L0804E340:
	movl      %edx, 16(%edi)
	jmp       .L0804E2BC
	.size	deflate_stored, .-deflate_stored
# ----------------------
	.local	deflate_fast
	.type	deflate_fast, @function
deflate_fast:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %eax
	movl      116(%eax), %esi
	.p2align 3
.L0804E358:
	cmpl      $261, %esi
	jbe       .L0804E601
.L0804E364:
	cmpl      $2, %esi
	ja        .L0804E4B4
.L0804E36D:
	movl      8(%ebp), %ebx
.L0804E370:
	movl      108(%ebx), %edi
.L0804E373:
	movl      8(%ebp), %esi
	movl      96(%esi), %eax
	cmpl      $2, %eax
	jbe       .L0804E524
.L0804E382:
	movl      %edi, %ebx
	subw      112(%esi), %bx
	movl      5792(%esi), %ecx
	movl      5796(%esi), %edi
	leal      -3(%eax), %edx
	movl      5784(%esi), %eax
	movw      %bx, (%edi,%ecx,2)
	movb      %dl, (%ecx,%eax)
	leal      -1(%ebx), %ecx
	movzbl    %dl, %ebx
	incl      5792(%esi)
	movzbl    _length_code(%ebx), %edi
	incw      1176(%esi,%edi,4)
	cmpw      $255, %cx
	ja        .L0804E700
.L0804E3CA:
	movzwl    %cx, %esi
	movzbl    _dist_code(%esi), %eax
.L0804E3D4:
	movl      8(%ebp), %edi
	leal      2432(,%eax,4), %esi
	incw      8(%edi,%esi)
	movl      5788(%edi), %ecx
	decl      %ecx
	cmpl      %ecx, 5792(%edi)
	sete      %al
	movzbl    %al, %ebx
	movl      116(%edi), %esi
	movl      96(%edi), %eax
	subl      %eax, %esi
	cmpl      128(%edi), %eax
	movl      %ebx, -16(%ebp)
	movl      %esi, 116(%edi)
	ja        .L0804E6C8
.L0804E410:
	cmpl      $2, %esi
	jbe       .L0804E6C8
.L0804E419:
	movl      72(%edi), %edx
	movl      88(%edi), %ecx
	movl      56(%edi), %ebx
	decl      %eax
	movl      %edx, -44(%ebp)
	movl      8(%ebp), %edx
	movl      %eax, 96(%edi)
	movl      %ecx, -40(%ebp)
	movl      84(%edi), %eax
	movl      %ebx, -24(%ebp)
	movl      8(%ebp), %ecx
	movl      108(%edi), %ebx
	movl      52(%edx), %edi
	movl      8(%ebp), %edx
	movl      %eax, -36(%ebp)
	movl      %edi, -20(%ebp)
	movl      64(%ecx), %eax
	movl      68(%edx), %edi
	movl      %eax, -28(%ebp)
	movl      %edi, -32(%ebp)
	.p2align 2
.L0804E454:
	leal      1(%ebx), %edx
	movl      8(%ebp), %eax
	movb      -40(%ebp), %cl
	sall      %cl, -44(%ebp)
	movl      %edx, 108(%eax)
	movl      -24(%ebp), %ecx
	movzbl    2(%ecx,%edx), %eax
	xorl      -44(%ebp), %eax
	andl      -36(%ebp), %eax
	movl      %ebx, %edi
	movl      %edx, %ebx
	movl      8(%ebp), %edx
	movl      %eax, 72(%edx)
	movl      -32(%ebp), %ecx
	movl      -20(%ebp), %edx
	movw      (%ecx,%eax,2), %cx
	andl      %ebx, %edx
	movl      %eax, -44(%ebp)
	movl      -28(%ebp), %eax
	movw      %cx, (%eax,%edx,2)
	movl      -44(%ebp), %edx
	movl      -32(%ebp), %ecx
	movw      %bx, (%ecx,%edx,2)
	movl      8(%ebp), %edx
	movl      96(%edx), %eax
	decl      %eax
	testl     %eax, %eax
	movl      %eax, 96(%edx)
	jne       .L0804E454
.L0804E4A9:
	leal      2(%edi), %ebx
	movl      %ebx, 108(%edx)
	jmp       .L0804E585
.L0804E4B4:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %edi
	movl      72(%ebx), %eax
	movl      88(%ebx), %ecx
	movl      56(%ebx), %esi
	sall      %cl, %eax
	movzbl    2(%esi,%edi), %ecx
	movl      8(%ebp), %edx
	xorl      %ecx, %eax
	andl      84(%ebx), %eax
	movl      68(%edx), %ecx
	movl      %edi, %esi
	andl      52(%edx), %esi
	movl      %eax, 72(%ebx)
	movl      64(%edx), %ebx
	movzwl    (%ecx,%eax,2), %edx
	testl     %edx, %edx
	movw      %dx, (%ebx,%esi,2)
	movl      %edx, %ebx
	movw      %di, (%ecx,%eax,2)
	je        .L0804E373
.L0804E4F6:
	movl      8(%ebp), %ecx
	movl      %edi, %edx
	movl      44(%ecx), %eax
	subl      %ebx, %edx
	subl      $262, %eax
	cmpl      %eax, %edx
	ja        .L0804E373
.L0804E50D:
	movl      %ebx, %edx
	movl      %ecx, %eax
	call      longest_match
.L0804E516:
	movl      8(%ebp), %ebx
	movl      %eax, 96(%ebx)
	jmp       .L0804E370
.L0804E521:
	.p2align 2
.L0804E524:
	movl      8(%ebp), %edx
	movl      56(%edx), %ebx
	movb      (%ebx,%edi), %dl
	movl      8(%ebp), %ebx
	movl      5792(%ebx), %esi
	movl      5796(%ebx), %ecx
	movl      5784(%ebx), %eax
	movw      $0, (%ecx,%esi,2)
	movb      %dl, (%esi,%eax)
	incl      5792(%ebx)
	movzbl    %dl, %edi
	incw      148(%ebx,%edi,4)
	movl      5788(%ebx), %ecx
	decl      %ecx
	cmpl      %ecx, 5792(%ebx)
	movl      116(%ebx), %eax
	sete      %dl
	movl      8(%ebp), %edi
	decl      %eax
	movl      %eax, 116(%ebx)
	movl      108(%edi), %ebx
	movzbl    %dl, %esi
	incl      %ebx
	movl      %esi, -16(%ebp)
	movl      %ebx, 108(%edi)
	movl      %eax, %esi
.L0804E585:
	movl      -16(%ebp), %edi
	testl     %edi, %edi
	je        .L0804E358
.L0804E590:
	pushl     $0
	movl      8(%ebp), %esi
	movl      92(%esi), %eax
	subl      %eax, %ebx
	xorl      %edx, %edx
	testl     %eax, %eax
	pushl     %ebx
	js        .L0804E5A9
.L0804E5A1:
	movl      8(%ebp), %ecx
	movl      56(%ecx), %edx
	addl      %eax, %edx
.L0804E5A9:
	pushl     %edx
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E5B2:
	movl      8(%ebp), %ebx
	movl      (%ebx), %esi
	movl      108(%ebx), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%ebx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E5C8:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E5D7
.L0804E5D5:
	movl      %eax, %ebx
.L0804E5D7:
	testl     %ebx, %ebx
	jne       .L0804E714
.L0804E5DF:
	movl      8(%ebp), %ebx
	movl      (%ebx), %ecx
	movl      16(%ecx), %edi
	testl     %edi, %edi
	je        .L0804E754
.L0804E5EF:
	movl      8(%ebp), %edx
	movl      116(%edx), %esi
	cmpl      $261, %esi
	ja        .L0804E364
.L0804E601:
	movl      8(%ebp), %eax
	call      fill_window
.L0804E609:
	movl      8(%ebp), %ecx
	movl      116(%ecx), %esi
	cmpl      $261, %esi
	ja        .L0804E622
.L0804E617:
	movl      12(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804E754
.L0804E622:
	testl     %esi, %esi
	jne       .L0804E364
.L0804E62A:
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	cmpl      $2, %eax
	movl      %eax, %edx
	jbe       .L0804E63C
.L0804E637:
	movl      $2, %edx
.L0804E63C:
	movl      8(%ebp), %ecx
	cmpl      $4, 12(%ebp)
	movl      %edx, 5812(%ecx)
	je        .L0804E768
.L0804E64F:
	movl      8(%ebp), %edi
	movl      5792(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0804E6B7
.L0804E65C:
	pushl     $0
	movl      92(%edi), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804E66F
.L0804E66A:
	movl      56(%edi), %eax
	addl      %edx, %eax
.L0804E66F:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E678:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %edi
	movl      (%ebx), %esi
	movl      %edi, 92(%ebx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E68E:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E69D
.L0804E69B:
	movl      %eax, %ebx
.L0804E69D:
	testl     %ebx, %ebx
	jne       .L0804E7BF
.L0804E6A5:
	movl      8(%ebp), %ecx
	movl      (%ecx), %ebx
	movl      16(%ebx), %eax
	xorl      %edx, %edx
	testl     %eax, %eax
	je        .L0804E756
.L0804E6B7:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $1, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804E6C6:
	.p2align 3
.L0804E6C8:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %ebx
	addl      %eax, %ebx
	movl      %ebx, 108(%ecx)
	movl      $0, 96(%ecx)
	movl      56(%ecx), %edx
	movzbl    (%edx,%ebx), %eax
	movl      %eax, 72(%ecx)
	movl      %ecx, %edi
	movl      88(%ecx), %ecx
	sall      %cl, %eax
	movzbl    1(%edx,%ebx), %ecx
	xorl      %ecx, %eax
	andl      84(%edi), %eax
	movl      %eax, 72(%edi)
	jmp       .L0804E585
.L0804E6FD:
	.p2align 3
.L0804E700:
	shrw      $7, %cx
	movzwl    %cx, %edx
	movzbl    _dist_code+256(%edx), %eax
	jmp       .L0804E3D4
.L0804E713:
	.p2align 2
.L0804E714:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E721:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L0804E760
.L0804E73E:
	movl      8(%ebp), %ebx
	movl      8(%edi), %edx
	movl      (%ebx), %ecx
	movl      %edx, 16(%edi)
	movl      16(%ecx), %edi
	testl     %edi, %edi
	jne       .L0804E5EF
.L0804E754:
	xorl      %edx, %edx
.L0804E756:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804E760:
	movl      %edx, 16(%edi)
	jmp       .L0804E5DF
.L0804E768:
	pushl     $1
	movl      92(%ecx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804E77B
.L0804E776:
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L0804E77B:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804E784:
	movl      8(%ebp), %edx
	movl      (%edx), %esi
	movl      108(%edx), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%edx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804E79A:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804E7A9
.L0804E7A7:
	movl      %eax, %ebx
.L0804E7A9:
	testl     %ebx, %ebx
	jne       .L0804E7F4
.L0804E7AD:
	movl      8(%ebp), %eax
	movl      (%eax), %edx
	movl      16(%edx), %esi
	cmpl      $1, %esi
	sbbl      %edi, %edi
	leal      3(%edi), %edx
	jmp       .L0804E756
.L0804E7BF:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E7CC:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L0804E826
.L0804E7E9:
	movl      8(%edi), %edx
	movl      %edx, 16(%edi)
	jmp       .L0804E6A5
.L0804E7F4:
	pushl     %ecx
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804E801:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %ecx
	subl      %ebx, %ecx
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edi)
	jne       .L0804E82E
.L0804E81E:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0804E7AD
.L0804E826:
	movl      %edx, 16(%edi)
	jmp       .L0804E6A5
.L0804E82E:
	movl      %edx, 16(%edi)
	jmp       .L0804E7AD
	.size	deflate_fast, .-deflate_fast
# ----------------------
.L0804E836:
	.p2align 3
# ----------------------
	.local	deflate_slow
	.type	deflate_slow, @function
deflate_slow:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $44, %esp
	movl      8(%ebp), %edx
	movl      116(%edx), %eax
	movl      %eax, -32(%ebp)
	.p2align 2
.L0804E84C:
	cmpl      $261, -32(%ebp)
	jbe       .L0804EA98
.L0804E859:
	xorl      %ebx, %ebx
	cmpl      $2, -32(%ebp)
	jbe       .L0804EC74
.L0804E865:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %edi
	movl      72(%ebx), %eax
	movl      88(%ebx), %ecx
	movl      56(%ebx), %esi
	movzbl    2(%esi,%edi), %edx
	sall      %cl, %eax
	xorl      %edx, %eax
	movl      64(%ebx), %ecx
	andl      84(%ebx), %eax
	movl      52(%ebx), %esi
	movl      %ecx, -40(%ebp)
	movl      68(%ebx), %ecx
	movzwl    (%ecx,%eax,2), %edx
	andl      %edi, %esi
	movl      %eax, 72(%ebx)
	movl      -40(%ebp), %ebx
	movw      %dx, (%ebx,%esi,2)
	movl      %esi, -20(%ebp)
	movl      %edx, %ebx
	movw      %di, (%ecx,%eax,2)
.L0804E8A5:
	movl      8(%ebp), %eax
	movl      96(%eax), %ecx
	movl      112(%eax), %esi
	testl     %ebx, %ebx
	movl      %ecx, 120(%eax)
	movl      %esi, 100(%eax)
	movl      $2, 96(%eax)
	je        .L0804E8E0
.L0804E8BF:
	cmpl      128(%eax), %ecx
	jae       .L0804E8E0
.L0804E8C7:
	movl      8(%ebp), %esi
	movl      %edi, %edx
	movl      44(%esi), %eax
	subl      %ebx, %edx
	subl      $262, %eax
	cmpl      %eax, %edx
	jbe       .L0804ECB2
.L0804E8DE:
	.p2align 3
.L0804E8E0:
	cmpl      $2, %ecx
	jbe       .L0804EBAC
.L0804E8E9:
	movl      8(%ebp), %edx
	cmpl      %ecx, 96(%edx)
	ja        .L0804EBAC
.L0804E8F5:
	movl      %edi, %ebx
	movl      8(%ebp), %esi
	addl      116(%edx), %ebx
	subw      100(%esi), %di
	subl      $3, %ebx
	movl      5796(%esi), %eax
	movw      %di, -26(%ebp)
	movl      %ebx, -24(%ebp)
	leal      -3(%ecx), %edx
	decl      %edi
	movl      5792(%esi), %ecx
	movl      %esi, %ebx
	movl      5784(%esi), %esi
	movw      %di, (%eax,%ecx,2)
	movb      %dl, (%ecx,%esi)
	movw      -26(%ebp), %cx
	movzbl    %dl, %eax
	incl      5792(%ebx)
	subl      $2, %ecx
	movzbl    _length_code(%eax), %edi
	incw      1176(%ebx,%edi,4)
	cmpw      $255, %cx
	ja        .L0804EC9F
.L0804E954:
	movzwl    %cx, %edi
	movzbl    _dist_code(%edi), %eax
.L0804E95E:
	movl      8(%ebp), %esi
	leal      2432(,%eax,4), %edi
	incw      8(%esi,%edi)
	movl      5788(%esi), %ebx
	decl      %ebx
	cmpl      %ebx, 5792(%esi)
	movl      116(%esi), %eax
	movl      120(%esi), %edi
	sete      %cl
	subl      %edi, %eax
	incl      %eax
	movl      8(%ebp), %ebx
	movzbl    %cl, %edx
	movl      %eax, 116(%esi)
	movl      %eax, -32(%ebp)
	movl      108(%ebx), %ecx
	leal      -2(%edi), %eax
	movl      %edx, -16(%ebp)
	movl      %eax, %esi
	movl      %ecx, -36(%ebp)
.L0804E9A0:
	movl      -36(%ebp), %edi
	incl      %edi
	cmpl      -24(%ebp), %edi
	movl      %edi, -36(%ebp)
	ja        .L0804E9F5
.L0804E9AC:
	movl      8(%ebp), %edx
	movl      88(%edx), %ecx
	movl      %eax, 120(%edx)
	movl      72(%edx), %eax
	sall      %cl, %eax
	movl      %edi, 108(%edx)
	movl      56(%edx), %ecx
	movl      %edx, %ebx
	movzbl    2(%ecx,%edi), %edx
	xorl      %edx, %eax
	movl      52(%ebx), %ecx
	andl      84(%ebx), %eax
	andl      %edi, %ecx
	movl      %ecx, -48(%ebp)
	movl      %eax, 72(%ebx)
	movl      64(%ebx), %ecx
	movl      68(%ebx), %ebx
	movw      (%ebx,%eax,2), %dx
	movl      %ebx, -52(%ebp)
	movl      -48(%ebp), %ebx
	movw      %dx, (%ecx,%ebx,2)
	movl      -52(%ebp), %edx
	movl      %ecx, -44(%ebp)
	movw      %di, (%edx,%eax,2)
.L0804E9F5:
	leal      -1(%esi), %eax
	testl     %eax, %eax
	movl      %eax, %esi
	jne       .L0804E9A0
.L0804E9FE:
	movl      -16(%ebp), %esi
	movl      8(%ebp), %ecx
	leal      1(%edi), %eax
	testl     %esi, %esi
	movl      $0, 120(%ecx)
	movl      $0, 104(%ecx)
	movl      $2, 96(%ecx)
	movl      %eax, 108(%ecx)
	je        .L0804E84C
.L0804EA27:
	pushl     $0
	movl      92(%ecx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804EA3A
.L0804EA35:
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L0804EA3A:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804EA43:
	movl      8(%ebp), %edi
	movl      108(%edi), %eax
	movl      (%edi), %esi
	movl      %eax, 92(%edi)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804EA59:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804EA68
.L0804EA66:
	movl      %eax, %ebx
.L0804EA68:
	testl     %ebx, %ebx
	jne       .L0804ED20
.L0804EA70:
	movl      8(%ebp), %esi
	movl      (%esi), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	je        .L0804EC68
.L0804EA80:
	movl      8(%ebp), %ebx
	movl      116(%ebx), %ecx
	movl      %ecx, -32(%ebp)
	cmpl      $261, -32(%ebp)
	ja        .L0804E859
.L0804EA96:
	.p2align 3
.L0804EA98:
	movl      8(%ebp), %eax
	call      fill_window
.L0804EAA0:
	movl      8(%ebp), %edi
	movl      116(%edi), %esi
	cmpl      $261, %esi
	movl      %esi, -32(%ebp)
	ja        .L0804EABC
.L0804EAB1:
	movl      12(%ebp), %eax
	testl     %eax, %eax
	je        .L0804EC68
.L0804EABC:
	movl      -32(%ebp), %edx
	testl     %edx, %edx
	jne       .L0804E859
.L0804EAC7:
	movl      8(%ebp), %esi
	movl      104(%esi), %edi
	testl     %edi, %edi
	je        .L0804EB0E
.L0804EAD1:
	movl      108(%esi), %eax
	movl      56(%esi), %edx
	movb      -1(%edx,%eax), %bl
	movl      5792(%esi), %edi
	movl      5796(%esi), %ecx
	movl      5784(%esi), %eax
	movw      $0, (%ecx,%edi,2)
	movb      %bl, (%edi,%eax)
	incl      5792(%esi)
	movzbl    %bl, %ecx
	incw      148(%esi,%ecx,4)
	movl      $0, 104(%esi)
.L0804EB0E:
	movl      8(%ebp), %esi
	movl      108(%esi), %eax
	cmpl      $2, %eax
	movl      %eax, %edx
	jbe       .L0804EB20
.L0804EB1B:
	movl      $2, %edx
.L0804EB20:
	movl      8(%ebp), %ecx
	cmpl      $4, 12(%ebp)
	movl      %edx, 5812(%ecx)
	je        .L0804EDB0
.L0804EB33:
	movl      8(%ebp), %edx
	movl      5792(%edx), %ecx
	testl     %ecx, %ecx
	je        .L0804EB9D
.L0804EB40:
	pushl     $0
	movl      %edx, %ecx
	movl      92(%edx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804EB55
.L0804EB50:
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L0804EB55:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804EB5E:
	movl      8(%ebp), %edx
	movl      (%edx), %esi
	movl      108(%edx), %eax
	movl      28(%esi), %edi
	movl      %eax, 92(%edx)
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804EB74:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804EB83
.L0804EB81:
	movl      %eax, %ebx
.L0804EB83:
	testl     %ebx, %ebx
	jne       .L0804EE0F
.L0804EB8B:
	movl      8(%ebp), %edx
	movl      (%edx), %ecx
	movl      16(%ecx), %edi
	xorl      %edx, %edx
	testl     %edi, %edi
	je        .L0804EC6A
.L0804EB9D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $1, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804EBAC:
	movl      8(%ebp), %eax
	movl      104(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0804EC80
.L0804EBBA:
	movl      56(%eax), %ebx
	movb      -1(%ebx,%edi), %dl
	movl      8(%ebp), %ebx
	movl      5792(%ebx), %esi
	movl      5796(%ebx), %ecx
	movl      5784(%ebx), %edi
	movw      $0, (%ecx,%esi,2)
	movb      %dl, (%esi,%edi)
	incl      5792(%ebx)
	movzbl    %dl, %edx
	incw      148(%ebx,%edx,4)
	movl      5788(%ebx), %eax
	decl      %eax
	cmpl      %eax, 5792(%ebx)
	jne       .L0804EC4B
.L0804EBFF:
	pushl     $0
	movl      92(%ebx), %edx
	movl      108(%ebx), %eax
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804EC15
.L0804EC10:
	movl      56(%ebx), %eax
	addl      %edx, %eax
.L0804EC15:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804EC1E:
	movl      8(%ebp), %esi
	movl      108(%esi), %ecx
	movl      %ecx, 92(%esi)
	movl      (%esi), %esi
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804EC34:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804EC43
.L0804EC41:
	movl      %eax, %ebx
.L0804EC43:
	testl     %ebx, %ebx
	jne       .L0804ECEB
.L0804EC4B:
	movl      8(%ebp), %esi
	movl      116(%esi), %ecx
	decl      %ecx
	incl      108(%esi)
	movl      %ecx, 116(%esi)
	movl      (%esi), %edi
	movl      16(%edi), %edx
	testl     %edx, %edx
	movl      %ecx, -32(%ebp)
	jne       .L0804E84C
.L0804EC68:
	xorl      %edx, %edx
.L0804EC6A:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804EC74:
	movl      8(%ebp), %eax
	movl      108(%eax), %edi
	jmp       .L0804E8A5
.L0804EC7F:
	.p2align 3
.L0804EC80:
	movl      8(%ebp), %ebx
	movl      116(%ebx), %eax
	decl      %eax
	leal      1(%edi), %edx
	movl      $1, 104(%ebx)
	movl      %edx, 108(%ebx)
	movl      %eax, -32(%ebp)
	movl      %eax, 116(%ebx)
	jmp       .L0804E84C
.L0804EC9F:
	shrw      $7, %cx
	movzwl    %cx, %edx
	movzbl    _dist_code+256(%edx), %eax
	jmp       .L0804E95E
.L0804ECB2:
	movl      %ebx, %edx
	movl      %esi, %eax
	call      longest_match
.L0804ECBB:
	cmpl      $5, %eax
	ja        .L0804ED55
.L0804ECC4:
	cmpl      $1, 136(%esi)
	je        .L0804ED76
.L0804ECD1:
	cmpl      $3, %eax
	je        .L0804ED8E
.L0804ECDA:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %edi
	movl      120(%ebx), %ecx
	movl      %eax, 96(%ebx)
	jmp       .L0804E8E0
.L0804ECEB:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804ECF8:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %eax
	subl      %ebx, %eax
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %eax, %eax
	movl      %eax, 20(%edi)
	jne       .L0804ED66
.L0804ED15:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0804EC4B
.L0804ED20:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804ED2D:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %ecx
	subl      %ebx, %ecx
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edi)
	jne       .L0804ED6E
.L0804ED4A:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0804EA70
.L0804ED55:
	movl      8(%ebp), %edx
	movl      108(%edx), %edi
	movl      120(%edx), %ecx
	movl      %eax, 96(%edx)
	jmp       .L0804E8E0
.L0804ED66:
	movl      %edx, 16(%edi)
	jmp       .L0804EC4B
.L0804ED6E:
	movl      %edx, 16(%edi)
	jmp       .L0804EA70
.L0804ED76:
	movl      8(%ebp), %ecx
	movl      108(%ecx), %edi
.L0804ED7C:
	movl      8(%ebp), %esi
	movl      120(%esi), %ecx
	movl      $2, 96(%esi)
	jmp       .L0804E8E0
.L0804ED8E:
	movl      108(%esi), %edi
	movl      %edi, %ebx
	subl      112(%esi), %ebx
	cmpl      $4096, %ebx
	ja        .L0804ED7C
.L0804ED9E:
	movl      8(%ebp), %esi
	movl      120(%esi), %ecx
	movl      $3, 96(%esi)
	jmp       .L0804E8E0
.L0804EDB0:
	pushl     $1
	movl      92(%ecx), %edx
	subl      %edx, %eax
	pushl     %eax
	xorl      %eax, %eax
	testl     %edx, %edx
	js        .L0804EDC3
.L0804EDBE:
	movl      56(%ecx), %eax
	addl      %edx, %eax
.L0804EDC3:
	pushl     %eax
	pushl     8(%ebp)
	call      _tr_flush_block
.L0804EDCC:
	movl      8(%ebp), %ebx
	movl      108(%ebx), %edi
	movl      (%ebx), %esi
	movl      %edi, 92(%ebx)
	movl      28(%esi), %edi
	movl      %edi, (%esp)
	call      _tr_flush_bits
.L0804EDE2:
	movl      20(%edi), %ebx
	movl      16(%esi), %eax
	addl      $16, %esp
	cmpl      %ebx, %eax
	jae       .L0804EDF1
.L0804EDEF:
	movl      %eax, %ebx
.L0804EDF1:
	testl     %ebx, %ebx
	jne       .L0804EE44
.L0804EDF5:
	movl      8(%ebp), %edi
	movl      (%edi), %ebx
	movl      16(%ebx), %esi
	cmpl      $1, %esi
	sbbl      %eax, %eax
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	leal      3(%eax), %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804EE0F:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804EE1C:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	addl      %ebx, 20(%esi)
	movl      20(%edi), %esi
	subl      %ebx, %esi
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	testl     %esi, %esi
	movl      %esi, 20(%edi)
	jne       .L0804EE79
.L0804EE39:
	movl      8(%edi), %ebx
	movl      %ebx, 16(%edi)
	jmp       .L0804EB8B
.L0804EE44:
	pushl     %eax
	pushl     %ebx
	pushl     16(%edi)
	pushl     12(%esi)
	call      memcpy
.L0804EE51:
	subl      %ebx, 16(%esi)
	addl      %ebx, 12(%esi)
	movl      20(%edi), %ecx
	subl      %ebx, %ecx
	movl      16(%edi), %edx
	addl      $16, %esp
	addl      %ebx, %edx
	addl      %ebx, 20(%esi)
	testl     %ecx, %ecx
	movl      %ecx, 20(%edi)
	jne       .L0804EE81
.L0804EE6E:
	movl      8(%edi), %edx
	movl      %edx, 16(%edi)
	jmp       .L0804EDF5
.L0804EE79:
	movl      %edx, 16(%edi)
	jmp       .L0804EB8B
.L0804EE81:
	movl      %edx, 16(%edi)
	jmp       .L0804EDF5
	.size	deflate_slow, .-deflate_slow
# ----------------------
.L0804EE89:
	.p2align 2
# ----------------------
	.globl	inflateResetKeep
	.type	inflateResetKeep, @function
inflateResetKeep:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804EF28
.L0804EE9A:
	movl      28(%ecx), %edx
	testl     %edx, %edx
	je        .L0804EF28
.L0804EEA5:
	movl      8(%edx), %eax
	testl     %eax, %eax
	movl      $0, 28(%edx)
	movl      $0, 24(%ecx)
	movl      $0, 20(%ecx)
	movl      $0, 8(%ecx)
	je        .L0804EECE
.L0804EEC8:
	andl      $1, %eax
	movl      %eax, 48(%ecx)
.L0804EECE:
	leal      1328(%edx), %eax
	movl      %eax, 108(%edx)
	movl      %eax, 80(%edx)
	movl      %eax, 76(%edx)
	movl      $0, (%edx)
	movl      $0, 4(%edx)
	movl      $0, 12(%edx)
	movl      $32768, 20(%edx)
	movl      $0, 32(%edx)
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	movl      $1, 7104(%edx)
	movl      $-1, 7108(%edx)
	xorl      %eax, %eax
	leave     
	ret       
.L0804EF25:
	.p2align 3
.L0804EF28:
	movl      $-2, %eax
	leave     
	ret       
	.size	inflateResetKeep, .-inflateResetKeep
# ----------------------
.L0804EF2F:
	.p2align 3
# ----------------------
	.globl	inflateReset
	.type	inflateReset, @function
inflateReset:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804EFE0
.L0804EF3E:
	movl      28(%ecx), %edx
	testl     %edx, %edx
	je        .L0804EFE0
.L0804EF49:
	movl      8(%edx), %eax
	testl     %eax, %eax
	movl      $0, 28(%edx)
	movl      $0, 40(%edx)
	movl      $0, 44(%edx)
	movl      $0, 48(%edx)
	movl      $0, 20(%ecx)
	movl      $0, 8(%ecx)
	movl      $0, 24(%ecx)
	je        .L0804EF87
.L0804EF81:
	andl      $1, %eax
	movl      %eax, 48(%ecx)
.L0804EF87:
	leal      1328(%edx), %eax
	movl      %eax, 108(%edx)
	movl      %eax, 80(%edx)
	movl      %eax, 76(%edx)
	movl      $0, (%edx)
	movl      $0, 4(%edx)
	movl      $0, 12(%edx)
	movl      $32768, 20(%edx)
	movl      $0, 32(%edx)
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	movl      $1, 7104(%edx)
	movl      $-1, 7108(%edx)
	xorl      %eax, %eax
	leave     
	ret       
.L0804EFDE:
	.p2align 3
.L0804EFE0:
	movl      $-2, %eax
	leave     
	ret       
	.size	inflateReset, .-inflateReset
# ----------------------
.L0804EFE7:
	.p2align 3
# ----------------------
	.globl	inflateReset2
	.type	inflateReset2, @function
inflateReset2:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %edi
	testl     %edi, %edi
	movl      12(%ebp), %ebx
	je        .L0804F002
.L0804EFFB:
	movl      28(%edi), %esi
	testl     %esi, %esi
	jne       .L0804F014
.L0804F002:
	movl      $-2, %edx
.L0804F007:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804F011:
	.p2align 2
.L0804F014:
	testl     %ebx, %ebx
	js        .L0804F130
.L0804F01C:
	movl      %ebx, %eax
	sarl      $4, %eax
	incl      %eax
	cmpl      $47, %ebx
	movl      %eax, -16(%ebp)
	jle       .L0804F128
.L0804F02E:
	testl     %ebx, %ebx
	je        .L0804F03F
.L0804F032:
	leal      -8(%ebx), %ecx
	cmpl      $7, %ecx
	movl      $-2, %edx
	ja        .L0804F007
.L0804F03F:
	movl      52(%esi), %eax
	testl     %eax, %eax
	je        .L0804F060
.L0804F046:
	cmpl      %ebx, 36(%esi)
	je        .L0804F060
.L0804F04B:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%edi)
	call      *36(%edi)
.L0804F055:
	movl      $0, 52(%esi)
	addl      $16, %esp
	.p2align 3
.L0804F060:
	movl      -16(%ebp), %edx
	testl     %edi, %edi
	movl      %edx, 8(%esi)
	movl      %ebx, 36(%esi)
	je        .L0804F11C
.L0804F071:
	movl      28(%edi), %edx
	testl     %edx, %edx
	je        .L0804F11C
.L0804F07C:
	movl      8(%edx), %eax
	testl     %eax, %eax
	movl      $0, 28(%edx)
	movl      $0, 40(%edx)
	movl      $0, 44(%edx)
	movl      $0, 48(%edx)
	movl      $0, 20(%edi)
	movl      $0, 8(%edi)
	movl      $0, 24(%edi)
	je        .L0804F0BA
.L0804F0B4:
	andl      $1, %eax
	movl      %eax, 48(%edi)
.L0804F0BA:
	leal      1328(%edx), %ebx
	xorl      %eax, %eax
	movl      $0, (%edx)
	movl      $0, 4(%edx)
	movl      $0, 12(%edx)
	movl      $32768, 20(%edx)
	movl      $0, 32(%edx)
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	movl      %ebx, 108(%edx)
	movl      %ebx, 80(%edx)
	movl      %ebx, 76(%edx)
	movl      $1, 7104(%edx)
	movl      $-1, 7108(%edx)
	movl      %eax, %edx
.L0804F111:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L0804F11B:
	.p2align 2
.L0804F11C:
	movl      $-2, %eax
	movl      %eax, %edx
	jmp       .L0804F111
.L0804F125:
	.p2align 3
.L0804F128:
	andl      $15, %ebx
	jmp       .L0804F02E
.L0804F130:
	negl      %ebx
	movl      $0, -16(%ebp)
	jmp       .L0804F02E
	.size	inflateReset2, .-inflateReset2
# ----------------------
.L0804F13E:
	.p2align 3
# ----------------------
	.globl	inflateInit2_
	.type	inflateInit2_, @function
inflateInit2_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      16(%ebp), %eax
	testl     %eax, %eax
	movl      8(%ebp), %esi
	je        .L0804F158
.L0804F153:
	cmpb      $49, (%eax)
	je        .L0804F168
.L0804F158:
	movl      $-6, %eax
.L0804F15D:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804F165:
	.p2align 3
.L0804F168:
	cmpl      $56, 20(%ebp)
	jne       .L0804F158
.L0804F16E:
	testl     %esi, %esi
	movl      $-2, %eax
	je        .L0804F15D
.L0804F177:
	movl      32(%esi), %eax
	testl     %eax, %eax
	movl      $0, 24(%esi)
	je        .L0804F247
.L0804F189:
	movl      36(%esi), %ecx
	testl     %ecx, %ecx
	jne       .L0804F197
.L0804F190:
	movl      $zcfree, 36(%esi)
.L0804F197:
	pushl     %edx
	pushl     $7116
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L0804F1A4:
	movl      %eax, %edi
	addl      $16, %esp
	testl     %edi, %edi
	movl      $-4, %eax
	je        .L0804F15D
.L0804F1B2:
	movl      12(%ebp), %ebx
	testl     %ebx, %ebx
	movl      %edi, 28(%esi)
	movl      $0, 52(%edi)
	js        .L0804F2F3
.L0804F1C7:
	movl      %ebx, %eax
	sarl      $4, %eax
	incl      %eax
	cmpl      $47, %ebx
	movl      %eax, -20(%ebp)
	jg        .L0804F1D8
.L0804F1D5:
	andl      $15, %ebx
.L0804F1D8:
	testl     %ebx, %ebx
	je        .L0804F1EB
.L0804F1DC:
	leal      -8(%ebx), %edx
	cmpl      $7, %edx
	movl      $-2, -16(%ebp)
	ja        .L0804F22B
.L0804F1EB:
	movl      52(%edi), %eax
	testl     %eax, %eax
	je        .L0804F20B
.L0804F1F2:
	cmpl      %ebx, 36(%edi)
	je        .L0804F20B
.L0804F1F7:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%esi)
	call      *36(%esi)
.L0804F201:
	addl      $16, %esp
	movl      $0, 52(%edi)
.L0804F20B:
	movl      -20(%ebp), %ecx
	testl     %esi, %esi
	movl      %ecx, 8(%edi)
	movl      %ebx, 36(%edi)
	je        .L0804F21F
.L0804F218:
	movl      28(%esi), %edx
	testl     %edx, %edx
	jne       .L0804F25B
.L0804F21F:
	movl      $-2, %eax
.L0804F224:
	testl     %eax, %eax
	movl      %eax, -16(%ebp)
	je        .L0804F23F
.L0804F22B:
	subl      $8, %esp
	pushl     %edi
	pushl     40(%esi)
	call      *36(%esi)
.L0804F235:
	movl      $0, 28(%esi)
	addl      $16, %esp
.L0804F23F:
	movl      -16(%ebp), %eax
	jmp       .L0804F15D
.L0804F247:
	movl      $zcalloc, %eax
	movl      %eax, 32(%esi)
	movl      $0, 40(%esi)
	jmp       .L0804F189
.L0804F25B:
	movl      8(%edx), %eax
	testl     %eax, %eax
	movl      $0, 28(%edx)
	movl      $0, 40(%edx)
	movl      $0, 44(%edx)
	movl      $0, 48(%edx)
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	je        .L0804F299
.L0804F293:
	andl      $1, %eax
	movl      %eax, 48(%esi)
.L0804F299:
	leal      1328(%edx), %ebx
	xorl      %eax, %eax
	movl      $0, (%edx)
	movl      $0, 4(%edx)
	movl      $0, 12(%edx)
	movl      $32768, 20(%edx)
	movl      $0, 32(%edx)
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	movl      %ebx, 108(%edx)
	movl      %ebx, 80(%edx)
	movl      %ebx, 76(%edx)
	movl      $1, 7104(%edx)
	movl      $-1, 7108(%edx)
	jmp       .L0804F224
.L0804F2F3:
	negl      %ebx
	movl      $0, -20(%ebp)
	jmp       .L0804F1D8
	.size	inflateInit2_, .-inflateInit2_
# ----------------------
.L0804F301:
	.p2align 2
# ----------------------
	.globl	inflateInit_
	.type	inflateInit_, @function
inflateInit_:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $8, %esp
	pushl     16(%ebp)
	pushl     12(%ebp)
	pushl     $15
	pushl     8(%ebp)
	call      inflateInit2_
.L0804F31A:
	leave     
	ret       
	.size	inflateInit_, .-inflateInit_
# ----------------------
	.globl	inflatePrime
	.type	inflatePrime, @function
inflatePrime:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %ecx
	movl      16(%ebp), %ebx
	je        .L0804F34C
.L0804F32F:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L0804F34C
.L0804F336:
	testl     %ecx, %ecx
	js        .L0804F374
.L0804F33A:
	cmpl      $16, %ecx
	jg        .L0804F34C
.L0804F33F:
	movl      60(%edx), %esi
	leal      (%esi,%ecx), %edi
	cmpl      $32, %edi
	jbe       .L0804F358
.L0804F34A:
	.p2align 2
.L0804F34C:
	popl      %ebx
	popl      %esi
	movl      $-2, %eax
	popl      %edi
	leave     
	ret       
.L0804F356:
	.p2align 3
.L0804F358:
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %eax, %ebx
	movl      %esi, %ecx
	sall      %cl, %ebx
	addl      %ebx, 56(%edx)
	movl      %edi, 60(%edx)
	xorl      %eax, %eax
.L0804F36E:
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804F373:
	.p2align 2
.L0804F374:
	xorl      %eax, %eax
	movl      $0, 56(%edx)
	movl      $0, 60(%edx)
	jmp       .L0804F36E
	.size	inflatePrime, .-inflatePrime
# ----------------------
.L0804F386:
	.p2align 3
# ----------------------
	.globl	inflate
	.type	inflate, @function
inflate:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $140, %esp
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F3FC
.L0804F39B:
	movl      8(%ebp), %eax
	movl      28(%eax), %edi
	testl     %edi, %edi
	je        .L0804F3FC
.L0804F3A5:
	movl      12(%eax), %ecx
	testl     %ecx, %ecx
	je        .L0804F3FC
.L0804F3AC:
	movl      (%eax), %ebx
	testl     %ebx, %ebx
	je        .L0804F3F4
.L0804F3B2:
	movl      8(%ebp), %eax
	movl      4(%eax), %edx
.L0804F3B8:
	movl      (%edi), %eax
	cmpl      $11, %eax
	je        .L0804F409
.L0804F3BF:
	movl      %ecx, -24(%ebp)
	movl      8(%ebp), %ecx
	movl      16(%ecx), %ecx
	movl      56(%edi), %esi
	movl      %esi, -36(%ebp)
	movl      %ecx, -32(%ebp)
	movl      %ebx, -20(%ebp)
	movl      %edx, -28(%ebp)
	movl      60(%edi), %esi
	movl      %edx, -40(%ebp)
	movl      %ecx, -44(%ebp)
	movl      $0, -52(%ebp)
.L0804F3E7:
	cmpl      $30, %eax
	ja        .L0804F3FC
.L0804F3EC:
	jmp       *.LC080552A0(,%eax,4)
.L0804F3F3:
	.p2align 2
.L0804F3F4:
	movl      4(%eax), %edx
	testl     %edx, %edx
	je        .L0804F3B8
.L0804F3FB:
	.p2align 2
.L0804F3FC:
	movl      $-2, %eax
.L0804F401:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804F409:
	movb      $12, %al
	movl      $12, (%edi)
	jmp       .L0804F3BF
.L0804F413:
	cmpl      $15, %esi
	ja        .L0804F43F
.L0804F418:
	movl      -28(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804F580
.L0804F423:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	cmpl      $15, %esi
	jbe       .L0804F418
.L0804F43F:
	movl      -36(%ebp), %ebx
	cmpb      $8, %bl
	movl      %ebx, 16(%edi)
	je        .L080506E8
.L0804F44E:
	movl      8(%ebp), %edx
	movl      $.LC0805531C, 24(%edx)
	jmp       .L0804FA24
.L0804F45D:
	cmpl      $13, %esi
	ja        .L0804F489
.L0804F462:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L0804F46D:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %edx
	movl      %esi, %ecx
	sall      %cl, %edx
	incl      %ebx
	addl      %edx, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
	cmpl      $13, %esi
	jbe       .L0804F462
.L0804F489:
	movl      -36(%ebp), %eax
	movl      -36(%ebp), %ebx
	shrl      $10, -36(%ebp)
	andl      $31, %eax
	shrl      $5, %ebx
	movl      -36(%ebp), %edx
	andl      $31, %ebx
	addl      $257, %eax
	andl      $15, %edx
	leal      1(%ebx), %ecx
	shrl      $4, -36(%ebp)
	leal      4(%edx), %ebx
	subl      $14, %esi
	cmpl      $286, %eax
	movl      %eax, 96(%edi)
	movl      %ecx, 100(%edi)
	movl      %ebx, 92(%edi)
	ja        .L0804F4CD
.L0804F4C4:
	cmpl      $30, %ecx
	jbe       .L08050728
.L0804F4CD:
	movl      8(%ebp), %ecx
	movl      $.LC080554A0, 24(%ecx)
	jmp       .L0804FA24
.L0804F4DC:
	cmpl      $31, %esi
	ja        .L0804F507
.L0804F4E1:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804F4EC:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $31, %esi
	jbe       .L0804F4E1
.L0804F507:
	movl      -36(%ebp), %ecx
	movl      -36(%ebp), %ebx
	movl      -36(%ebp), %eax
	shrl      $8, %ecx
	shrl      $24, %ebx
	andl      $65280, %ecx
	andl      $65280, %eax
	addl      %ecx, %ebx
	sall      $8, %eax
	sall      $24, -36(%ebp)
	addl      %eax, %ebx
	addl      -36(%ebp), %ebx
	movl      8(%ebp), %esi
	movl      %ebx, 24(%edi)
	movl      $0, -36(%ebp)
	movl      %ebx, 48(%esi)
	movl      $10, (%edi)
	xorl      %esi, %esi
.L0804F547:
	movl      12(%edi), %edx
	testl     %edx, %edx
	je        .L080509A4
.L0804F552:
	pushl     %edx
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L0804F55E:
	movl      8(%ebp), %ebx
	movl      %eax, 24(%edi)
	movl      $11, (%edi)
	movl      %eax, 48(%ebx)
	addl      $16, %esp
.L0804F570:
	movl      12(%ebp), %eax
	subl      $5, %eax
	cmpl      $1, %eax
	ja        .L0804FA34
.L0804F57F:
	.p2align 3
.L0804F580:
	movl      8(%ebp), %edx
	movl      -24(%ebp), %ebx
	movl      -32(%ebp), %ecx
	movl      %ebx, 12(%edx)
	movl      -28(%ebp), %ebx
	movl      %ecx, 16(%edx)
	movl      %ebx, 4(%edx)
	movl      %esi, 60(%edi)
	movl      40(%edi), %esi
	movl      -20(%ebp), %eax
	movl      -36(%ebp), %ecx
	testl     %esi, %esi
	movl      %eax, (%edx)
	movl      %ecx, 56(%edi)
	jne       .L080501E8
.L0804F5AE:
	movl      16(%edx), %eax
	cmpl      -44(%ebp), %eax
	je        .L0804F672
.L0804F5BA:
	movl      (%edi), %edx
	cmpl      $28, %edx
	ja        .L0804F672
.L0804F5C5:
	cmpl      $25, %edx
	jbe       .L0804F5D4
.L0804F5CA:
	cmpl      $4, 12(%ebp)
	je        .L0804F672
.L0804F5D4:
	movl      -44(%ebp), %ecx
	subl      %eax, %ecx
	movl      8(%ebp), %eax
	movl      28(%eax), %ebx
	movl      52(%ebx), %esi
	testl     %esi, %esi
	movl      %ecx, -88(%ebp)
	movl      %esi, -92(%ebp)
	je        .L0804FDAE
.L0804F5F0:
	movl      40(%ebx), %eax
	testl     %eax, %eax
	jne       .L0804F60F
.L0804F5F7:
	movl      36(%ebx), %ecx
	movb      $1, %al
	sall      %cl, %eax
	movl      %eax, 40(%ebx)
	movl      $0, 48(%ebx)
	movl      $0, 44(%ebx)
.L0804F60F:
	cmpl      -88(%ebp), %eax
	jbe       .L080503F0
.L0804F618:
	movl      48(%ebx), %edx
	movl      %eax, %esi
	subl      %edx, %esi
	cmpl      -88(%ebp), %esi
	jbe       .L0804F627
.L0804F624:
	movl      -88(%ebp), %esi
.L0804F627:
	movl      -24(%ebp), %eax
	subl      -88(%ebp), %eax
	addl      -92(%ebp), %edx
	pushl     %ecx
	pushl     %esi
	pushl     %eax
	pushl     %edx
	call      memcpy
.L0804F639:
	movl      -88(%ebp), %eax
	addl      $16, %esp
	subl      %esi, %eax
	movl      %eax, -136(%ebp)
	jne       .L08050468
.L0804F64D:
	movl      48(%ebx), %eax
	addl      %esi, %eax
	movl      40(%ebx), %edx
	cmpl      %edx, %eax
	je        .L080504E1
.L0804F65D:
	movl      %eax, 48(%ebx)
.L0804F660:
	movl      44(%ebx), %eax
	cmpl      %edx, %eax
	jae       .L0804F66C
.L0804F667:
	addl      %esi, %eax
.L0804F669:
	movl      %eax, 44(%ebx)
.L0804F66C:
	movl      8(%ebp), %ebx
	movl      16(%ebx), %eax
.L0804F672:
	movl      -40(%ebp), %esi
	movl      8(%ebp), %edx
	movl      -44(%ebp), %ebx
	subl      %eax, %ebx
	subl      4(%edx), %esi
	movl      8(%ebp), %eax
	addl      %esi, 8(%eax)
	addl      %ebx, 20(%eax)
	movl      8(%edi), %ecx
	addl      %ebx, 28(%edi)
	testl     %ecx, %ecx
	je        .L0804F6C0
.L0804F693:
	testl     %ebx, %ebx
	je        .L0804F6C0
.L0804F697:
	movl      16(%edi), %ecx
	testl     %ecx, %ecx
	je        .L0805048C
.L0804F6A2:
	pushl     %edx
	pushl     %ebx
	movl      12(%eax), %eax
	subl      %ebx, %eax
	pushl     %eax
	pushl     24(%edi)
	call      crc32
.L0804F6B2:
	movl      8(%ebp), %ecx
	movl      %eax, 24(%edi)
	addl      $16, %esp
	movl      %eax, 48(%ecx)
	.p2align 3
.L0804F6C0:
	movl      4(%edi), %edx
	testl     %edx, %edx
	movl      60(%edi), %eax
	je        .L0804F6CD
.L0804F6CA:
	addl      $64, %eax
.L0804F6CD:
	movl      %eax, %edx
	movl      (%edi), %eax
	cmpl      $11, %eax
	je        .L080503D1
.L0804F6DA:
	cmpl      $19, %eax
	je        .L080501F3
.L0804F6E3:
	cmpl      $14, %eax
	je        .L080501F3
.L0804F6EC:
	movl      8(%ebp), %edi
	testl     %esi, %esi
	movl      %edx, 44(%edi)
	jne       .L0804F6FE
.L0804F6F6:
	testl     %ebx, %ebx
	je        .L0804FA5A
.L0804F6FE:
	cmpl      $4, 12(%ebp)
	je        .L0804FA5A
.L0804F708:
	movl      -52(%ebp), %eax
.L0804F70B:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0804F713:
	movl      32(%edi), %edx
	testl     %edx, %edx
	je        .L0804F725
.L0804F71A:
	movl      -36(%ebp), %esi
	shrl      $8, %esi
	andl      $1, %esi
	movl      %esi, (%edx)
.L0804F725:
	testb     $2, 17(%edi)
	jne       .L0805084C
.L0804F72F:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
	movl      $2, (%edi)
.L0804F73E:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L0804F749:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %edx
	movl      %esi, %ecx
	sall      %cl, %edx
	incl      %ebx
	addl      %edx, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
.L0804F760:
	cmpl      $31, %esi
	jbe       .L0804F73E
.L0804F765:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L0804F772
.L0804F76C:
	movl      -36(%ebp), %esi
	movl      %esi, 4(%eax)
.L0804F772:
	testb     $2, 17(%edi)
	jne       .L08050692
.L0804F77C:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
	movl      $3, (%edi)
	.p2align 2
.L0804F78C:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804F797:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
.L0804F7AE:
	cmpl      $15, %esi
	jbe       .L0804F78C
.L0804F7B3:
	movl      32(%edi), %edx
	testl     %edx, %edx
	je        .L0804F7CA
.L0804F7BA:
	movl      -36(%ebp), %esi
	movzbl    -36(%ebp), %ebx
	shrl      $8, %esi
	movl      %ebx, 8(%edx)
	movl      %esi, 12(%edx)
.L0804F7CA:
	movl      16(%edi), %edx
	testb     $2, %dh
	jne       .L0805058D
.L0804F7D6:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
	movl      $4, (%edi)
.L0804F7E5:
	testb     $4, %dh
	je        .L08050412
.L0804F7EE:
	cmpl      $15, %esi
	ja        .L0804F819
.L0804F7F3:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804F7FE:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $15, %esi
	jbe       .L0804F7F3
.L0804F819:
	movl      32(%edi), %eax
	movl      -36(%ebp), %ebx
	testl     %eax, %eax
	movl      %ebx, 64(%edi)
	je        .L0804F82C
.L0804F826:
	movl      %ebx, 20(%eax)
	movl      16(%edi), %edx
.L0804F82C:
	testb     $2, %dh
	jne       .L08050665
.L0804F835:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
.L0804F83E:
	movl      $5, (%edi)
.L0804F844:
	testb     $4, %dh
	je        .L0804F8D6
.L0804F84D:
	movl      64(%edi), %eax
	cmpl      -28(%ebp), %eax
	movl      %eax, %ebx
	jbe       .L0804F85A
.L0804F857:
	movl      -28(%ebp), %ebx
.L0804F85A:
	testl     %ebx, %ebx
	je        .L0804F8CB
.L0804F85E:
	movl      32(%edi), %ecx
	testl     %ecx, %ecx
	movl      %ecx, -140(%ebp)
	je        .L0804F8B4
.L0804F86B:
	movl      16(%ecx), %ecx
	testl     %ecx, %ecx
	movl      %ecx, -56(%ebp)
	je        .L0804F8B4
.L0804F875:
	movl      -140(%ebp), %ecx
	movl      20(%ecx), %edx
	subl      %eax, %edx
	leal      (%edx,%ebx), %eax
	movl      %eax, -144(%ebp)
	movl      24(%ecx), %ecx
	cmpl      %ecx, -144(%ebp)
	movl      %ebx, -60(%ebp)
	jbe       .L0804F89C
.L0804F897:
	subl      %edx, %ecx
	movl      %ecx, -60(%ebp)
.L0804F89C:
	movl      -56(%ebp), %ecx
	addl      %edx, %ecx
	pushl     %edx
	pushl     -60(%ebp)
	pushl     -20(%ebp)
	pushl     %ecx
	call      memcpy
.L0804F8AE:
	addl      $16, %esp
	movl      16(%edi), %edx
.L0804F8B4:
	andb      $2, %dh
	jne       .L080506D0
.L0804F8BD:
	movl      64(%edi), %eax
	subl      %ebx, %eax
	subl      %ebx, -28(%ebp)
	addl      %ebx, -20(%ebp)
	movl      %eax, 64(%edi)
.L0804F8CB:
	testl     %eax, %eax
	jne       .L0804F580
.L0804F8D3:
	movl      16(%edi), %edx
.L0804F8D6:
	movl      $0, 64(%edi)
	movl      $6, (%edi)
.L0804F8E3:
	testb     $8, %dh
	je        .L080503D9
.L0804F8EC:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804F8F7:
	xorl      %ebx, %ebx
	.p2align 2
.L0804F8FC:
	movl      -20(%ebp), %eax
	movzbl    (%ebx,%eax), %edx
	movl      32(%edi), %eax
	incl      %ebx
	testl     %eax, %eax
	movl      %edx, -108(%ebp)
	je        .L0804F928
.L0804F90E:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L0804F928
.L0804F915:
	movl      64(%edi), %ecx
	cmpl      32(%eax), %ecx
	jae       .L0804F928
.L0804F91D:
	movb      -108(%ebp), %al
	movb      %al, (%ecx,%edx)
	incl      64(%edi)
	.p2align 3
.L0804F928:
	movl      -108(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804F934
.L0804F92F:
	cmpl      -28(%ebp), %ebx
	jb        .L0804F8FC
.L0804F934:
	testb     $2, 17(%edi)
	jne       .L0805055E
.L0804F93E:
	subl      %ebx, -28(%ebp)
	addl      %ebx, -20(%ebp)
	movl      -108(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L0804F580
.L0804F94F:
	movl      16(%edi), %edx
.L0804F952:
	movl      $0, 64(%edi)
	movl      $7, (%edi)
.L0804F95F:
	testb     $16, %dh
	je        .L080503BA
.L0804F968:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0804F973:
	xorl      %ebx, %ebx
	.p2align 3
.L0804F978:
	movl      -20(%ebp), %ecx
	movzbl    (%ebx,%ecx), %eax
	movl      %eax, -112(%ebp)
	movl      32(%edi), %eax
	incl      %ebx
	testl     %eax, %eax
	je        .L0804F9A4
.L0804F98A:
	movl      36(%eax), %edx
	testl     %edx, %edx
	je        .L0804F9A4
.L0804F991:
	movl      64(%edi), %ecx
	cmpl      40(%eax), %ecx
	jae       .L0804F9A4
.L0804F999:
	movb      -112(%ebp), %al
	movb      %al, (%ecx,%edx)
	incl      64(%edi)
	.p2align 2
.L0804F9A4:
	movl      -112(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F9B0
.L0804F9AB:
	cmpl      -28(%ebp), %ebx
	jb        .L0804F978
.L0804F9B0:
	testb     $2, 17(%edi)
	jne       .L080504C9
.L0804F9BA:
	subl      %ebx, -28(%ebp)
	addl      %ebx, -20(%ebp)
	movl      -112(%ebp), %ebx
	testl     %ebx, %ebx
	jne       .L0804F580
.L0804F9CB:
	movl      16(%edi), %edx
.L0804F9CE:
	movl      $8, (%edi)
.L0804F9D4:
	testb     $2, %dh
	je        .L08050207
.L0804F9DD:
	cmpl      $15, %esi
	ja        .L0804FA0A
.L0804F9E2:
	.p2align 2
.L0804F9E4:
	movl      -28(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804F580
.L0804F9EF:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $15, %esi
	jbe       .L0804F9E4
.L0804FA0A:
	movzwl    24(%edi), %eax
	cmpl      -36(%ebp), %eax
	je        .L080501FE
.L0804FA17:
	movl      8(%ebp), %edx
	movl      $.LC08055337, 24(%edx)
	.p2align 2
.L0804FA24:
	movl      $29, %eax
	movl      $29, (%edi)
	jmp       .L0804F3EC
.L0804FA34:
	movl      4(%edi), %ecx
	testl     %ecx, %ecx
	je        .L080501BA
.L0804FA3F:
	movl      %esi, %ecx
	andl      $7, %ecx
	shrl      %cl, -36(%ebp)
	andl      $-8, %esi
	movl      $26, %eax
	movl      $26, (%edi)
	jmp       .L0804F3EC
.L0804FA5A:
	movl      -52(%ebp), %esi
	testl     %esi, %esi
	jne       .L0804F708
.L0804FA65:
	movl      $-5, -52(%ebp)
	movl      -52(%ebp), %eax
	jmp       .L0804F70B
.L0804FA74:
	movl      72(%edi), %ebx
.L0804FA77:
	testl     %ebx, %ebx
	je        .L0804FAC0
.L0804FA7B:
	cmpl      %esi, %ebx
	jbe       .L0804FAA5
.L0804FA7F:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L0804FA8A:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	cmpl      %esi, %ebx
	ja        .L0804FA7F
.L0804FAA5:
	movb      %bl, %cl
	movl      $1, %edx
	sall      %cl, %edx
	decl      %edx
	andl      -36(%ebp), %edx
	addl      %edx, 68(%edi)
	shrl      %cl, -36(%ebp)
	subl      %ebx, %esi
	addl      %ebx, 7108(%edi)
.L0804FAC0:
	movl      $24, (%edi)
.L0804FAC6:
	movl      -32(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804FAD1:
	movl      -44(%ebp), %edx
	subl      -32(%ebp), %edx
	movl      68(%edi), %eax
	cmpl      %edx, %eax
	jbe       .L08050429
.L0804FAE2:
	subl      %edx, %eax
	cmpl      %eax, 44(%edi)
	movl      %eax, %edx
	jae       .L080504A4
.L0804FAEF:
	movl      7104(%edi), %eax
	testl     %eax, %eax
	je        .L080504A4
.L0804FAFD:
	movl      8(%ebp), %ecx
	movl      $.LC0805534B, 24(%ecx)
	jmp       .L0804FA24
.L0804FB0C:
	movl      $15, (%edi)
.L0804FB12:
	movl      64(%edi), %ebx
	testl     %ebx, %ebx
	jne       .L08050966
.L0804FB1D:
	movl      $11, %eax
	movl      $11, (%edi)
	jmp       .L0804F3EC
.L0804FB2D:
	movl      $20, (%edi)
.L0804FB33:
	cmpl      $5, -28(%ebp)
	jbe       .L0804FB46
.L0804FB39:
	cmpl      $257, -32(%ebp)
	ja        .L080505ED
.L0804FB46:
	movl      84(%edi), %ecx
	movl      $1, %eax
	movl      76(%edi), %edx
	sall      %cl, %eax
	movl      %edx, -124(%ebp)
	leal      -1(%eax), %edx
	movl      $0, 7108(%edi)
	jmp       .L0804FB8A
.L0804FB65:
	.p2align 3
.L0804FB68:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804FB73:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %ebx
	addl      %eax, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
.L0804FB8A:
	movl      -36(%ebp), %eax
	andl      %edx, %eax
	movl      -124(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	movzbl    %bh, %eax
	cmpl      %esi, %eax
	ja        .L0804FB68
.L0804FB9C:
	testb     %bl, %bl
	je        .L0804FC1B
.L0804FBA0:
	testb     $240, %bl
	jne       .L0804FC1B
.L0804FBA5:
	movl      %ebx, -48(%ebp)
	movzbl    -48(%ebp), %edx
	shrl      $16, %ebx
	movl      %ebx, -72(%ebp)
	movl      %edx, -76(%ebp)
	jmp       .L0804FBD9
.L0804FBB7:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0804FBC2:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %ebx
	addl      %eax, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
.L0804FBD9:
	movl      -48(%ebp), %ebx
	movzbl    %bh, %ecx
	addl      -76(%ebp), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	movl      -48(%ebp), %edx
	andl      -36(%ebp), %eax
	movzbl    %dh, %ecx
	shrl      %cl, %eax
	addl      -72(%ebp), %eax
	movl      -124(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	movzbl    %bh, %ecx
	movzbl    %dh, %eax
	addl      %ecx, %eax
	cmpl      %esi, %eax
	ja        .L0804FBB7
.L0804FC0A:
	movl      -48(%ebp), %eax
	movzbl    %ah, %ecx
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	addl      %ecx, 7108(%edi)
.L0804FC1B:
	movzbl    %bh, %ecx
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	movl      %ecx, %edx
	movl      %ebx, %ecx
	shrl      $16, %ecx
	addl      7108(%edi), %edx
	testb     %bl, %bl
	movl      %ecx, 64(%edi)
	jne       .L080505D3
.L0804FC3B:
	movl      $25, %eax
	movl      %edx, 7108(%edi)
	movl      $25, (%edi)
	jmp       .L0804F3EC
.L0804FC51:
	movl      72(%edi), %ebx
.L0804FC54:
	testl     %ebx, %ebx
	je        .L0804FC9D
.L0804FC58:
	cmpl      %esi, %ebx
	jbe       .L0804FC82
.L0804FC5C:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0804FC67:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	cmpl      %esi, %ebx
	ja        .L0804FC5C
.L0804FC82:
	movb      %bl, %cl
	movl      $1, %edx
	sall      %cl, %edx
	decl      %edx
	andl      -36(%ebp), %edx
	addl      %edx, 64(%edi)
	shrl      %cl, -36(%ebp)
	subl      %ebx, %esi
	addl      %ebx, 7108(%edi)
.L0804FC9D:
	movl      64(%edi), %ebx
	movl      %ebx, 7112(%edi)
	movl      $22, (%edi)
.L0804FCAC:
	movl      88(%edi), %ecx
	movl      $1, %eax
	movl      80(%edi), %edx
	sall      %cl, %eax
	movl      %edx, -128(%ebp)
	leal      -1(%eax), %edx
	jmp       .L0804FCE6
.L0804FCC1:
	.p2align 2
.L0804FCC4:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804FCCF:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %ebx
	addl      %eax, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
.L0804FCE6:
	movl      -36(%ebp), %eax
	andl      %edx, %eax
	movl      -128(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	movzbl    %bh, %eax
	cmpl      %esi, %eax
	ja        .L0804FCC4
.L0804FCF8:
	testb     $240, %bl
	jne       .L0804FD86
.L0804FD01:
	movl      %ebx, -132(%ebp)
	movzbl    -132(%ebp), %edx
	shrl      $16, %ebx
	movl      %ebx, -80(%ebp)
	movl      %edx, -84(%ebp)
	jmp       .L0804FD3B
.L0804FD19:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0804FD24:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %ebx
	addl      %eax, -36(%ebp)
	movl      %ebx, -20(%ebp)
	addl      $8, %esi
.L0804FD3B:
	movl      -132(%ebp), %ebx
	movzbl    %bh, %ecx
	addl      -84(%ebp), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	movl      -132(%ebp), %edx
	andl      -36(%ebp), %eax
	movzbl    %dh, %ecx
	shrl      %cl, %eax
	addl      -80(%ebp), %eax
	movl      -128(%ebp), %ecx
	movl      (%ecx,%eax,4), %ebx
	movzbl    %bh, %ecx
	movzbl    %dh, %eax
	addl      %ecx, %eax
	cmpl      %esi, %eax
	ja        .L0804FD19
.L0804FD72:
	movl      -132(%ebp), %eax
	movzbl    %ah, %ecx
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	addl      %ecx, 7108(%edi)
.L0804FD86:
	movzbl    %bh, %ecx
	movzbl    %bl, %eax
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	addl      %ecx, 7108(%edi)
	testb     $64, %al
	je        .L080505BA
.L0804FD9F:
	movl      8(%ebp), %ebx
	movl      $.LC08055369, 24(%ebx)
	jmp       .L0804FA24
.L0804FDAE:
	pushl     %eax
	pushl     $1
	movl      36(%ebx), %ecx
	movl      $1, %esi
	sall      %cl, %esi
	pushl     %esi
	movl      8(%ebp), %edx
	pushl     40(%edx)
	call      *32(%edx)
.L0804FDC5:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -92(%ebp)
	movl      %eax, 52(%ebx)
	jne       .L0804F5F0
.L0804FDD6:
	movl      $30, (%edi)
.L0804FDDC:
	movl      $-4, %eax
	jmp       .L0804F401
.L0804FDE6:
	movl      $0, 104(%edi)
	movl      $18, (%edi)
.L0804FDF3:
	movl      96(%edi), %ebx
	movl      100(%edi), %edx
	movl      %ebx, %eax
	movl      104(%edi), %ecx
	addl      %edx, %eax
	cmpl      %eax, %ecx
	movl      %ebx, -100(%ebp)
	movl      %edx, -104(%ebp)
	movl      %ecx, -116(%ebp)
	jae       .L0804FEA2
.L0804FE11:
	movl      84(%edi), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	movl      76(%edi), %edx
	decl      %eax
	movl      %edx, -96(%ebp)
	movl      %eax, -64(%ebp)
	.p2align 3
.L0804FE28:
	movl      -64(%ebp), %edx
	andl      -36(%ebp), %edx
	movl      -96(%ebp), %ecx
	movl      (%ecx,%edx,4), %ebx
	movzbl    %bh, %eax
	cmpl      %esi, %eax
	jbe       .L0804FE6F
.L0804FE3B:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0804FE46:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	movl      -64(%ebp), %edx
	andl      -36(%ebp), %edx
	movl      -96(%ebp), %ecx
	movl      (%ecx,%edx,4), %ebx
	movzbl    %bh, %eax
	cmpl      %esi, %eax
	ja        .L0804FE3B
.L0804FE6F:
	movl      %ebx, %edx
	shrl      $16, %edx
	cmpw      $15, %dx
	ja        .L08050246
.L0804FE7E:
	movzbl    %bh, %ecx
	movl      -116(%ebp), %ebx
	movl      %ebx, %eax
	incl      %eax
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	movw      %dx, 112(%edi,%ebx,2)
	movl      %eax, 104(%edi)
.L0804FE94:
	movl      %eax, -116(%ebp)
.L0804FE97:
	movl      -100(%ebp), %ebx
	addl      -104(%ebp), %ebx
	cmpl      %ebx, -116(%ebp)
	jb        .L0804FE28
.L0804FEA2:
	movl      (%edi), %eax
	cmpl      $29, %eax
	je        .L0804F3E7
.L0804FEAD:
	cmpw      $0, 624(%edi)
	jne       .L0805075B
.L0804FEBB:
	movl      8(%ebp), %ecx
	movl      $.LC080554C4, 24(%ecx)
	jmp       .L0804FA24
.L0804FECA:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
.L0804FED3:
	movl      $28, (%edi)
.L0804FED9:
	movl      $1, -52(%ebp)
	jmp       .L0804F580
.L0804FEE5:
	movl      -32(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L0804F580
.L0804FEF0:
	movl      -24(%ebp), %ebx
	movl      64(%edi), %eax
	movb      %al, (%ebx)
	incl      %ebx
	movl      %ebx, -24(%ebp)
	decl      -32(%ebp)
.L0804FEFF:
	movl      $20, %eax
	movl      $20, (%edi)
	jmp       .L0804F3EC
.L0804FF0F:
	movl      $-3, -52(%ebp)
	jmp       .L0804F580
.L0804FF1B:
	movl      8(%edi), %eax
.L0804FF1E:
	testl     %eax, %eax
	je        .L0804FED3
.L0804FF22:
	movl      16(%edi), %ebx
	testl     %ebx, %ebx
	je        .L0804FED3
.L0804FF29:
	cmpl      $31, %esi
	ja        .L0804FF56
.L0804FF2E:
	.p2align 3
.L0804FF30:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L0804FF3B:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %edx
	movl      %esi, %ecx
	sall      %cl, %edx
	addl      %edx, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $31, %esi
	jbe       .L0804FF30
.L0804FF56:
	movl      -36(%ebp), %eax
	cmpl      %eax, 28(%edi)
	je        .L0804FECA
.L0804FF62:
	movl      8(%ebp), %edx
	movl      $.LC0805537F, 24(%edx)
	jmp       .L0804FA24
.L0804FF71:
	movl      8(%edi), %eax
	testl     %eax, %eax
	je        .L08050582
.L0804FF7C:
	cmpl      $31, %esi
	ja        .L0804FFA7
.L0804FF81:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0804FF8C:
	movl      -20(%ebp), %eax
	decl      -28(%ebp)
	movzbl    (%eax), %ebx
	movl      %esi, %ecx
	sall      %cl, %ebx
	addl      %ebx, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $31, %esi
	jbe       .L0804FF81
.L0804FFA7:
	movl      -44(%ebp), %eax
	subl      -32(%ebp), %eax
	movl      8(%ebp), %edx
	addl      %eax, 20(%edx)
	addl      %eax, 28(%edi)
	testl     %eax, %eax
	je        .L0804FFE1
.L0804FFBA:
	movl      16(%edi), %ebx
	testl     %ebx, %ebx
	je        .L080507BD
.L0804FFC5:
	pushl     %ecx
	pushl     %eax
	movl      -24(%ebp), %edx
	subl      %eax, %edx
	pushl     %edx
	pushl     24(%edi)
	call      crc32
.L0804FFD5:
	movl      8(%ebp), %ecx
	movl      %eax, 24(%edi)
	addl      $16, %esp
	movl      %eax, 48(%ecx)
.L0804FFE1:
	movl      16(%edi), %edx
	movl      -32(%ebp), %eax
	testl     %edx, %edx
	movl      %eax, -44(%ebp)
	movl      24(%edi), %ecx
	jne       .L0805073A
.L0804FFF5:
	movl      -36(%ebp), %edx
	shrl      $8, %edx
	movl      -36(%ebp), %ebx
	movl      -36(%ebp), %eax
	andl      $65280, %edx
	shrl      $24, %ebx
	andl      $65280, %eax
	addl      %edx, %ebx
	sall      $8, %eax
	movl      -36(%ebp), %edx
	addl      %eax, %ebx
	sall      $24, %edx
	addl      %edx, %ebx
	cmpl      %ecx, %ebx
.L08050020:
	je        .L08050576
.L08050026:
	movl      8(%ebp), %ecx
	movl      $.LC08055396, 24(%ecx)
	jmp       .L0804FA24
.L08050035:
	movl      92(%edi), %ebx
.L08050038:
	movl      104(%edi), %eax
.L0805003B:
	cmpl      %ebx, %eax
	jae       .L080504ED
.L08050043:
	cmpl      $2, %esi
	ja        .L0805006F
.L08050048:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L08050053:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	cmpl      $2, %esi
	jbe       .L08050048
.L0805006F:
	movl      104(%edi), %ecx
	movl      -36(%ebp), %eax
	andl      $7, %eax
	movzwl    order.0(%ecx,%ecx), %edx
	movw      %ax, 112(%edi,%edx,2)
	shrl      $3, -36(%ebp)
	leal      1(%ecx), %eax
	subl      $3, %esi
	movl      %eax, 104(%edi)
	jmp       .L0805003B
.L08050094:
	movl      16(%edi), %edx
	jmp       .L0804F95F
.L0805009C:
	movl      16(%edi), %edx
	jmp       .L0804F8E3
.L080500A4:
	movl      8(%edi), %edx
	testl     %edx, %edx
	jne       .L080500BB
.L080500AB:
	movl      $12, %eax
	movl      $12, (%edi)
	jmp       .L0804F3EC
.L080500BB:
	cmpl      $15, %esi
	ja        .L080500E6
.L080500C0:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L080500CB:
	movl      -20(%ebp), %ebx
	decl      -28(%ebp)
	movzbl    (%ebx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	cmpl      $15, %esi
	jbe       .L080500C0
.L080500E6:
	testb     $2, %dl
	je        .L080500F8
.L080500EB:
	cmpl      $35615, -36(%ebp)
	je        .L08050876
.L080500F8:
	movl      32(%edi), %eax
	testl     %eax, %eax
	movl      $0, 16(%edi)
	je        .L08050110
.L08050106:
	movl      $-1, 48(%eax)
	movl      8(%edi), %edx
.L08050110:
	andl      $1, %edx
	je        .L08050135
.L08050115:
	movzbl    -36(%ebp), %eax
	movl      -36(%ebp), %edx
	shrl      $8, %edx
	sall      $8, %eax
	addl      %edx, %eax
	movl      $31, %ebx
	xorl      %edx, %edx
	divl      %ebx
	testl     %edx, %edx
	je        .L080507D2
.L08050135:
	movl      8(%ebp), %eax
	movl      $.LC080553AB, 24(%eax)
	jmp       .L0804FA24
.L08050144:
	movl      %esi, %ecx
	andl      $7, %ecx
	andl      $-8, %esi
	shrl      %cl, -36(%ebp)
	cmpl      $31, %esi
	ja        .L0805017B
.L08050154:
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0804F580
.L0805015F:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	cmpl      $31, %esi
	jbe       .L08050154
.L0805017B:
	movl      -36(%ebp), %ebx
	shrl      $16, %ebx
	movzwl    -36(%ebp), %edx
	xorl      $65535, %ebx
	cmpl      %ebx, %edx
	je        .L08050704
.L08050193:
	movl      8(%ebp), %edx
	movl      $.LC080553C2, 24(%edx)
	jmp       .L0804FA24
.L080501A2:
	movl      16(%edi), %edx
	jmp       .L0804F844
.L080501AA:
	movl      16(%edi), %edx
	jmp       .L0804F9D4
.L080501B2:
	movl      16(%edi), %edx
	jmp       .L0804F7E5
.L080501BA:
	cmpl      $2, %esi
	ja        .L08050913
.L080501C3:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L080501CE:
	movl      -20(%ebp), %eax
	decl      -28(%ebp)
	movzbl    (%eax), %ebx
	movl      %esi, %ecx
	sall      %cl, %ebx
	addl      %ebx, -36(%ebp)
	incl      -20(%ebp)
	addl      $8, %esi
	jmp       .L080501BA
.L080501E6:
	.p2align 3
.L080501E8:
	movl      8(%ebp), %edx
	movl      16(%edx), %eax
	jmp       .L0804F5D4
.L080501F3:
	addl      $256, %edx
	jmp       .L0804F6EC
.L080501FE:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
.L08050207:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L0805021E
.L0805020E:
	sarl      $9, %edx
	andl      $1, %edx
	movl      %edx, 44(%eax)
	movl      $1, 48(%eax)
.L0805021E:
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L0805022A:
	movl      8(%ebp), %ecx
	movl      %eax, 24(%edi)
	addl      $16, %esp
	movl      %eax, 48(%ecx)
	movl      $11, %eax
	movl      $11, (%edi)
	jmp       .L0804F3EC
.L08050246:
	cmpw      $16, %dx
	je        .L080502F2
.L08050250:
	cmpw      $17, %dx
	je        .L0805035B
.L0805025A:
	movzbl    %bh, %eax
	addl      $7, %eax
	cmpl      %esi, %eax
	jbe       .L08050290
.L08050264:
	movl      -28(%ebp), %edx
	testl     %edx, %edx
	je        .L0804F580
.L0805026F:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	movzbl    %bh, %eax
	addl      $7, %eax
	cmpl      %esi, %eax
	ja        .L08050264
.L08050290:
	movzbl    %bh, %ecx
	movl      -36(%ebp), %edx
	shrl      %cl, %edx
	movl      %ecx, %ebx
	movl      %esi, %ecx
	movl      %edx, %esi
	andl      $127, %esi
	subl      %ebx, %ecx
	addl      $11, %esi
	shrl      $7, %edx
	movl      %esi, -120(%ebp)
	xorl      %ebx, %ebx
	movl      %edx, -36(%ebp)
	leal      -7(%ecx), %esi
.L080502B4:
	movl      -116(%ebp), %edx
	movl      -100(%ebp), %eax
	addl      -120(%ebp), %edx
	addl      -104(%ebp), %eax
	cmpl      %eax, %edx
	ja        .L08050837
.L080502C8:
	movl      -120(%ebp), %edx
	decl      %edx
	cmpl      $-1, %edx
	jne       .L080502DB
.L080502D1:
	jmp       .L0804FE97
.L080502D6:
	.p2align 3
.L080502D8:
	movl      %eax, -116(%ebp)
.L080502DB:
	movl      -116(%ebp), %eax
	decl      %edx
	movw      %bx, 112(%edi,%eax,2)
	incl      %eax
	cmpl      $-1, %edx
	movl      %eax, 104(%edi)
	jne       .L080502D8
.L080502ED:
	jmp       .L0804FE94
.L080502F2:
	movzbl    %bh, %edx
	addl      $2, %edx
	cmpl      %esi, %edx
	jbe       .L08050328
.L080502FC:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L08050307:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	movzbl    %bh, %edx
	addl      $2, %edx
	cmpl      %esi, %edx
	ja        .L080502FC
.L08050328:
	movzbl    %bh, %ecx
	movl      -116(%ebp), %ebx
	shrl      %cl, -36(%ebp)
	subl      %ecx, %esi
	testl     %ebx, %ebx
	je        .L08050904
.L0805033B:
	movl      -36(%ebp), %eax
	movl      -116(%ebp), %edx
	andl      $3, %eax
	addl      $3, %eax
	movzwl    110(%edi,%edx,2), %ebx
	shrl      $2, -36(%ebp)
	subl      $2, %esi
	movl      %eax, -120(%ebp)
	jmp       .L080502B4
.L0805035B:
	movzbl    %bh, %ecx
	addl      $3, %ecx
	cmpl      %esi, %ecx
	jbe       .L08050391
.L08050365:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	je        .L0804F580
.L08050370:
	movl      -20(%ebp), %edx
	decl      -28(%ebp)
	movzbl    (%edx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	incl      %edx
	addl      %eax, -36(%ebp)
	movl      %edx, -20(%ebp)
	addl      $8, %esi
	movzbl    %bh, %ecx
	addl      $3, %ecx
	cmpl      %esi, %ecx
	ja        .L08050365
.L08050391:
	movzbl    %bh, %ecx
	movl      -36(%ebp), %edx
	shrl      %cl, %edx
	movl      %ecx, %ebx
	movl      %esi, %ecx
	movl      %edx, %esi
	andl      $7, %esi
	subl      %ebx, %ecx
	addl      $3, %esi
	movl      %esi, -120(%ebp)
	shrl      $3, %edx
	xorl      %ebx, %ebx
	leal      -3(%ecx), %esi
	movl      %edx, -36(%ebp)
	jmp       .L080502B4
.L080503BA:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L0804F9CE
.L080503C5:
	movl      $0, 36(%eax)
	jmp       .L0804F9CE
.L080503D1:
	subl      $-128, %edx
	jmp       .L0804F6DA
.L080503D9:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L0804F952
.L080503E4:
	movl      $0, 28(%eax)
	jmp       .L0804F952
.L080503F0:
	subl      %eax, -24(%ebp)
	pushl     %esi
	pushl     %eax
	pushl     -24(%ebp)
	pushl     -92(%ebp)
	call      memcpy
.L08050400:
	addl      $16, %esp
	movl      40(%ebx), %eax
	movl      $0, 48(%ebx)
	jmp       .L0804F669
.L08050412:
	movl      32(%edi), %eax
	testl     %eax, %eax
	je        .L0804F83E
.L0805041D:
	movl      $0, 16(%eax)
	jmp       .L0804F83E
.L08050429:
	movl      -24(%ebp), %ecx
	movl      64(%edi), %edx
	subl      %eax, %ecx
	movl      %edx, %eax
.L08050433:
	cmpl      -32(%ebp), %edx
	jbe       .L0805043B
.L08050438:
	movl      -32(%ebp), %edx
.L0805043B:
	subl      %edx, %eax
	subl      %edx, -32(%ebp)
	movl      %eax, 64(%edi)
	.p2align 2
.L08050444:
	movb      (%ecx), %al
	movl      -24(%ebp), %ebx
	movb      %al, (%ebx)
	incl      %ecx
	incl      %ebx
	decl      %edx
	movl      %ebx, -24(%ebp)
	jne       .L08050444
.L08050453:
	movl      64(%edi), %edx
	testl     %edx, %edx
	je        .L0804FEFF
.L0805045E:
	movl      (%edi), %eax
	jmp       .L0804F3E7
.L08050465:
	.p2align 3
.L08050468:
	subl      %eax, -24(%ebp)
	pushl     %ecx
	pushl     %eax
	pushl     -24(%ebp)
	pushl     52(%ebx)
	call      memcpy
.L08050478:
	movl      -136(%ebp), %edx
	addl      $16, %esp
	movl      40(%ebx), %eax
	movl      %edx, 48(%ebx)
	jmp       .L0804F669
.L0805048C:
	pushl     %ecx
	pushl     %ebx
	movl      8(%ebp), %edx
	movl      12(%edx), %ecx
	subl      %ebx, %ecx
	pushl     %ecx
	pushl     24(%edi)
	call      adler32
.L0805049F:
	jmp       .L0804F6B2
.L080504A4:
	movl      48(%edi), %eax
	cmpl      %edx, %eax
	movl      %eax, %ecx
	jae       .L080504B2
.L080504AD:
	subl      %eax, %edx
	movl      40(%edi), %ecx
.L080504B2:
	subl      %edx, %ecx
	movl      64(%edi), %eax
	addl      52(%edi), %ecx
	cmpl      %edx, %eax
	jae       .L08050433
.L080504C2:
	movl      %eax, %edx
	jmp       .L08050433
.L080504C9:
	pushl     %eax
	pushl     %ebx
	pushl     -20(%ebp)
	pushl     24(%edi)
	call      crc32
.L080504D6:
	addl      $16, %esp
	movl      %eax, 24(%edi)
	jmp       .L0804F9BA
.L080504E1:
	movl      $0, 48(%ebx)
	jmp       .L0804F660
.L080504ED:
	cmpl      $18, %eax
	ja        .L0805050F
.L080504F2:
	leal      1(%eax), %edx
.L080504F5:
	movl      %edx, %eax
	movzwl    .LC080549DE(%edx,%edx), %ebx
	incl      %edx
	cmpl      $18, %eax
	movw      $0, 112(%edi,%ebx,2)
	jbe       .L080504F5
.L0805050C:
	movl      %eax, 104(%edi)
.L0805050F:
	subl      $8, %esp
	leal      1328(%edi), %ecx
	leal      752(%edi), %ebx
	movl      %ecx, 108(%edi)
	movl      %ecx, 76(%edi)
	movl      $7, 84(%edi)
	leal      84(%edi), %eax
	pushl     %ebx
	pushl     %eax
	leal      108(%edi), %edx
	pushl     %edx
	pushl     $19
	leal      112(%edi), %ecx
	pushl     %ecx
	pushl     $0
	call      inflate_table
.L08050541:
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, -52(%ebp)
	je        .L0804FDE6
.L0805054F:
	movl      8(%ebp), %edx
	movl      $.LC080553DF, 24(%edx)
	jmp       .L0804FA24
.L0805055E:
	pushl     %ecx
	pushl     %ebx
	pushl     -20(%ebp)
	pushl     24(%edi)
	call      crc32
.L0805056B:
	addl      $16, %esp
	movl      %eax, 24(%edi)
	jmp       .L0804F93E
.L08050576:
	movl      $0, -36(%ebp)
	xorl      %esi, %esi
	movl      8(%edi), %eax
.L08050582:
	movl      $27, (%edi)
	jmp       .L0804FF1E
.L0805058D:
	movb      -36(%ebp), %cl
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %al
	movb      %cl, -16(%ebp)
	movb      %al, -15(%ebp)
	pushl     %esi
	pushl     $2
	leal      -16(%ebp), %edx
	pushl     %edx
	pushl     24(%edi)
	call      crc32
.L080505AC:
	addl      $16, %esp
	movl      16(%edi), %edx
	movl      %eax, 24(%edi)
	jmp       .L0804F7D6
.L080505BA:
	shrl      $16, %ebx
	movl      %ebx, 68(%edi)
	movl      %eax, %ebx
	andl      $15, %ebx
	movl      %ebx, 72(%edi)
	movl      $23, (%edi)
	jmp       .L0804FA77
.L080505D3:
	movzbl    %bl, %eax
	testb     $32, %al
	je        .L08050742
.L080505DE:
	movl      $-1, 7108(%edi)
	jmp       .L0804FB1D
.L080505ED:
	movl      8(%ebp), %edx
	movl      -24(%ebp), %ebx
	movl      -32(%ebp), %ecx
	movl      %ecx, 16(%edx)
	movl      %ebx, 12(%edx)
	movl      -20(%ebp), %eax
	movl      -28(%ebp), %ebx
	movl      -36(%ebp), %ecx
	subl      $8, %esp
	movl      %ebx, 4(%edx)
	movl      %eax, (%edx)
	movl      %ecx, 56(%edi)
	movl      %esi, 60(%edi)
	pushl     -44(%ebp)
	pushl     %edx
	call      inflate_fast
.L0805061C:
	movl      8(%ebp), %eax
	movl      8(%ebp), %edx
	movl      12(%eax), %ebx
	movl      8(%ebp), %ecx
	movl      (%edx), %eax
	movl      16(%ecx), %esi
	movl      %ebx, -24(%ebp)
	movl      %eax, -20(%ebp)
	movl      8(%ebp), %ebx
	movl      (%edi), %eax
	movl      %esi, -32(%ebp)
	movl      4(%ebx), %ecx
	movl      56(%edi), %esi
	addl      $16, %esp
	cmpl      $11, %eax
	movl      %esi, -36(%ebp)
	movl      %ecx, -28(%ebp)
	movl      60(%edi), %esi
	jne       .L0804F3E7
.L08050656:
	movl      $-1, 7108(%edi)
	jmp       .L0804F3EC
.L08050665:
	movb      -36(%ebp), %al
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %dl
	movb      %dl, -15(%ebp)
	movb      %al, -16(%ebp)
	pushl     %ecx
	pushl     $2
	leal      -16(%ebp), %esi
	pushl     %esi
	pushl     24(%edi)
	call      crc32
.L08050684:
	addl      $16, %esp
	movl      16(%edi), %edx
	movl      %eax, 24(%edi)
	jmp       .L0804F835
.L08050692:
	movb      -36(%ebp), %al
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %cl
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %dl
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %bl
	movb      %al, -16(%ebp)
	movb      %cl, -15(%ebp)
	movb      %dl, -14(%ebp)
	movb      %bl, -13(%ebp)
	pushl     %eax
	pushl     $4
	leal      -16(%ebp), %eax
	pushl     %eax
	pushl     24(%edi)
	call      crc32
.L080506C5:
	addl      $16, %esp
	movl      %eax, 24(%edi)
	jmp       .L0804F77C
.L080506D0:
	pushl     %eax
	pushl     %ebx
	pushl     -20(%ebp)
	pushl     24(%edi)
	call      crc32
.L080506DD:
	addl      $16, %esp
	movl      %eax, 24(%edi)
	jmp       .L0804F8BD
.L080506E8:
	testl     $57344, -36(%ebp)
	je        .L0804F713
.L080506F5:
	movl      8(%ebp), %eax
	movl      $.LC080553F8, 24(%eax)
	jmp       .L0804FA24
.L08050704:
	xorl      %esi, %esi
	cmpl      $6, 12(%ebp)
	movl      %edx, 64(%edi)
	movl      $0, -36(%ebp)
	jne       .L0804FB0C
.L0805071A:
	movl      $14, (%edi)
	jmp       .L0804F580
.L08050725:
	.p2align 3
.L08050728:
	movl      $0, 104(%edi)
	movl      $17, (%edi)
	jmp       .L08050038
.L0805073A:
	cmpl      -36(%ebp), %ecx
	jmp       .L08050020
.L08050742:
	testb     $64, %al
	movl      %edx, 7108(%edi)
	je        .L080507AA
.L0805074C:
	movl      8(%ebp), %ebx
	movl      $.LC08055411, 24(%ebx)
	jmp       .L0804FA24
.L0805075B:
	leal      1328(%edi), %ebx
	subl      $8, %esp
	movl      %ebx, 108(%edi)
	movl      %ebx, 76(%edi)
	leal      752(%edi), %ebx
	movl      $9, 84(%edi)
	leal      84(%edi), %ecx
	pushl     %ebx
	pushl     %ecx
	leal      108(%edi), %edx
	movl      %edx, -68(%ebp)
	pushl     %edx
	pushl     96(%edi)
	leal      112(%edi), %eax
	pushl     %eax
	pushl     $1
	call      inflate_table
.L08050791:
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, -52(%ebp)
	je        .L080507F0
.L0805079B:
	movl      8(%ebp), %eax
	movl      $.LC0805542D, 24(%eax)
	jmp       .L0804FA24
.L080507AA:
	movl      %eax, %ebx
	andl      $15, %ebx
	movl      %ebx, 72(%edi)
	movl      $21, (%edi)
	jmp       .L0804FC54
.L080507BD:
	pushl     %edx
	pushl     %eax
	movl      -24(%ebp), %ebx
	subl      %eax, %ebx
	pushl     %ebx
	pushl     24(%edi)
	call      adler32
.L080507CD:
	jmp       .L0804FFD5
.L080507D2:
	movl      -36(%ebp), %ecx
	andl      $15, %ecx
	cmpl      $8, %ecx
	je        .L080508BD
.L080507E1:
	movl      8(%ebp), %ebx
	movl      $.LC0805531C, 24(%ebx)
	jmp       .L0804FA24
.L080507F0:
	subl      $8, %esp
	movl      108(%edi), %eax
	movl      %eax, 80(%edi)
	movl      $6, 88(%edi)
	pushl     %ebx
	leal      88(%edi), %ebx
	pushl     %ebx
	pushl     -68(%ebp)
	pushl     100(%edi)
	movl      96(%edi), %ecx
	leal      112(%edi,%ecx,2), %edx
	pushl     %edx
	pushl     $2
	call      inflate_table
.L0805081A:
	addl      $32, %esp
	testl     %eax, %eax
	movl      %eax, -52(%ebp)
	je        .L080508EF
.L08050828:
	movl      8(%ebp), %edx
	movl      $.LC08055449, 24(%edx)
	jmp       .L0804FA24
.L08050837:
	movl      8(%ebp), %ebx
	movl      $.LC0805545F, 24(%ebx)
.L08050841:
	movl      $29, (%edi)
	jmp       .L0804FEA2
.L0805084C:
	movb      -36(%ebp), %dl
	shrl      $8, -36(%ebp)
	movb      -36(%ebp), %bl
	movb      %dl, -16(%ebp)
	movb      %bl, -15(%ebp)
	pushl     %eax
	pushl     $2
	leal      -16(%ebp), %ecx
	pushl     %ecx
	pushl     24(%edi)
	call      crc32
.L0805086B:
	addl      $16, %esp
	movl      %eax, 24(%edi)
	jmp       .L0804F72F
.L08050876:
	pushl     %edx
	pushl     $0
	pushl     $0
	pushl     $0
	call      crc32
.L08050882:
	addl      $12, %esp
	movl      %eax, 24(%edi)
	leal      -16(%ebp), %edx
	movb      $31, -16(%ebp)
	movb      $139, -15(%ebp)
	pushl     $2
	pushl     %edx
	pushl     24(%edi)
	call      crc32
.L0805089E:
	movl      %eax, 24(%edi)
	addl      $16, %esp
	xorl      %esi, %esi
	movl      $1, %eax
	movl      $0, -36(%ebp)
	movl      $1, (%edi)
	jmp       .L0804F3EC
.L080508BD:
	shrl      $4, -36(%ebp)
	movl      -36(%ebp), %edx
	movl      36(%edi), %eax
	andl      $15, %edx
	subl      $4, %esi
	testl     %eax, %eax
	leal      8(%edx), %ecx
	je        .L08050A1F
.L080508D8:
	cmpl      %ecx, %eax
	jae       .L08050A22
.L080508E0:
	movl      8(%ebp), %eax
	movl      $.LC08055479, 24(%eax)
	jmp       .L0804FA24
.L080508EF:
	cmpl      $6, 12(%ebp)
	jne       .L0804FB2D
.L080508F9:
	movl      $19, (%edi)
	jmp       .L0804F580
.L08050904:
	movl      8(%ebp), %eax
	movl      $.LC0805545F, 24(%eax)
	jmp       .L08050841
.L08050913:
	movl      -36(%ebp), %edx
	andl      $1, %edx
	movl      %edx, 4(%edi)
	movl      -36(%ebp), %edx
	shrl      $1, %edx
	movl      %edx, %eax
	andl      $3, %eax
	cmpl      $1, %eax
	leal      -1(%esi), %ecx
	je        .L080509D1
.L08050932:
	jb        .L08050A14
.L08050938:
	cmpl      $2, %eax
	je        .L08050A09
.L08050941:
	cmpl      $3, %eax
	jne       .L08050956
.L08050946:
	movl      8(%ebp), %esi
	movl      $.LC0805548D, 24(%esi)
	movl      $29, (%edi)
.L08050956:
	shrl      $2, %edx
	leal      -2(%ecx), %esi
	movl      (%edi), %eax
	movl      %edx, -36(%ebp)
	jmp       .L0804F3E7
.L08050966:
	cmpl      -28(%ebp), %ebx
	jbe       .L0805096E
.L0805096B:
	movl      -28(%ebp), %ebx
.L0805096E:
	cmpl      -32(%ebp), %ebx
	jbe       .L08050976
.L08050973:
	movl      -32(%ebp), %ebx
.L08050976:
	testl     %ebx, %ebx
	je        .L0804F580
.L0805097E:
	pushl     %eax
	pushl     %ebx
	pushl     -20(%ebp)
	pushl     -24(%ebp)
	call      memcpy
.L0805098B:
	subl      %ebx, -28(%ebp)
	addl      %ebx, -20(%ebp)
	subl      %ebx, -32(%ebp)
	addl      %ebx, -24(%ebp)
	subl      %ebx, 64(%edi)
	addl      $16, %esp
	movl      (%edi), %eax
	jmp       .L0804F3E7
.L080509A4:
	movl      8(%ebp), %ecx
	movl      -24(%ebp), %eax
	movl      -32(%ebp), %ebx
	movl      %eax, 12(%ecx)
	movl      -28(%ebp), %eax
	movl      %ebx, 16(%ecx)
	movl      %eax, 4(%ecx)
	movl      -20(%ebp), %edx
	movl      -36(%ebp), %ebx
	movl      $2, %eax
	movl      %edx, (%ecx)
	movl      %ebx, 56(%edi)
	movl      %esi, 60(%edi)
	jmp       .L0804F401
.L080509D1:
	cmpl      $6, 12(%ebp)
	movl      $lenfix.1, 76(%edi)
	movl      $9, 84(%edi)
	movl      $distfix.2, 80(%edi)
	movl      $5, 88(%edi)
	movl      $19, (%edi)
	jne       .L08050956
.L080509FD:
	shrl      $3, -36(%ebp)
	subl      $3, %esi
	jmp       .L0804F580
.L08050A09:
	movl      $16, (%edi)
	jmp       .L08050956
.L08050A14:
	movl      $13, (%edi)
	jmp       .L08050956
.L08050A1F:
	movl      %ecx, 36(%edi)
.L08050A22:
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      %ebx, 20(%edi)
	pushl     %eax
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L08050A38:
	andl      $512, -36(%ebp)
	movl      8(%ebp), %esi
	addl      $16, %esp
	cmpl      $1, -36(%ebp)
	movl      %eax, 24(%edi)
	movl      %eax, 48(%esi)
	sbbl      %eax, %eax
	andl      $2, %eax
	addl      $9, %eax
	xorl      %esi, %esi
	movl      %eax, (%edi)
	movl      $0, -36(%ebp)
	jmp       .L0804F3E7
	.size	inflate, .-inflate
# ----------------------
.L08050A67:
	.p2align 3
# ----------------------
	.globl	inflateEnd
	.type	inflateEnd, @function
inflateEnd:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	pushl     %eax
	movl      8(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L08050AA4
.L08050A74:
	movl      28(%ebx), %eax
	testl     %eax, %eax
	je        .L08050AA4
.L08050A7B:
	movl      36(%ebx), %edx
	testl     %edx, %edx
	je        .L08050AA4
.L08050A82:
	movl      52(%eax), %eax
	testl     %eax, %eax
	jne       .L08050AAE
.L08050A89:
	subl      $8, %esp
	pushl     28(%ebx)
	pushl     40(%ebx)
	call      *%edx
.L08050A94:
	movl      $0, 28(%ebx)
	xorl      %eax, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L08050AA2:
	.p2align 2
.L08050AA4:
	movl      $-2, %eax
	movl      -4(%ebp), %ebx
	leave     
	ret       
.L08050AAE:
	subl      $8, %esp
	pushl     %eax
	pushl     40(%ebx)
	call      *%edx
.L08050AB7:
	addl      $16, %esp
	movl      36(%ebx), %edx
	jmp       .L08050A89
	.size	inflateEnd, .-inflateEnd
# ----------------------
.L08050ABF:
	.p2align 3
# ----------------------
	.globl	inflateGetDictionary
	.type	inflateGetDictionary, @function
inflateGetDictionary:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %esi
	movl      16(%ebp), %edi
	je        .L08050ADD
.L08050AD6:
	movl      28(%eax), %ebx
	testl     %ebx, %ebx
	jne       .L08050AEC
.L08050ADD:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      $-2, %eax
	popl      %edi
	leave     
	ret       
.L08050AEA:
	.p2align 2
.L08050AEC:
	movl      44(%ebx), %edx
	testl     %edx, %edx
	je        .L08050B20
.L08050AF3:
	testl     %esi, %esi
	je        .L08050B20
.L08050AF7:
	movl      48(%ebx), %eax
	subl      %eax, %edx
	addl      52(%ebx), %eax
	pushl     %ecx
	pushl     %edx
	pushl     %eax
	pushl     %esi
	call      memcpy
.L08050B08:
	movl      48(%ebx), %eax
	addl      $12, %esp
	addl      44(%ebx), %esi
	pushl     %eax
	pushl     52(%ebx)
	subl      %eax, %esi
	pushl     %esi
	call      memcpy
.L08050B1D:
	addl      $16, %esp
.L08050B20:
	testl     %edi, %edi
	je        .L08050B29
.L08050B24:
	movl      44(%ebx), %edx
	movl      %edx, (%edi)
.L08050B29:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
	.size	inflateGetDictionary, .-inflateGetDictionary
# ----------------------
.L08050B33:
	.p2align 2
# ----------------------
	.globl	inflateSetDictionary
	.type	inflateSetDictionary, @function
inflateSetDictionary:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %esi
	testl     %esi, %esi
	je        .L08050C30
.L08050B48:
	movl      28(%esi), %edi
	testl     %edi, %edi
	movl      %edi, %ebx
	je        .L08050C30
.L08050B55:
	movl      8(%edi), %eax
	testl     %eax, %eax
	je        .L08050C40
.L08050B60:
	cmpl      $10, (%edi)
	movl      $-2, %edx
	jne       .L08050C35
.L08050B6E:
	pushl     %ecx
	pushl     $0
	pushl     $0
	pushl     $0
	call      adler32
.L08050B7A:
	addl      $12, %esp
	pushl     16(%ebp)
	pushl     12(%ebp)
	pushl     %eax
	call      adler32
.L08050B89:
	addl      $16, %esp
	cmpl      %eax, 24(%edi)
	movl      $-3, %edx
	jne       .L08050C35
.L08050B9A:
	movl      28(%esi), %ebx
	movl      52(%ebx), %eax
	movl      12(%ebp), %edx
	addl      16(%ebp), %edx
	testl     %eax, %eax
	movl      %edx, -16(%ebp)
	movl      %eax, -24(%ebp)
	je        .L08050C60
.L08050BB4:
	movl      40(%ebx), %eax
	testl     %eax, %eax
	je        .L08050C90
.L08050BBF:
	cmpl      16(%ebp), %eax
	jbe       .L08050CB1
.L08050BC8:
	movl      48(%ebx), %edx
	movl      %eax, %esi
	subl      %edx, %esi
	cmpl      16(%ebp), %esi
	jbe       .L08050BD7
.L08050BD4:
	movl      16(%ebp), %esi
.L08050BD7:
	movl      -16(%ebp), %eax
	subl      16(%ebp), %eax
	addl      -24(%ebp), %edx
	pushl     %ecx
	pushl     %esi
	pushl     %eax
	pushl     %edx
	call      memcpy
.L08050BE9:
	movl      16(%ebp), %eax
	addl      $16, %esp
	subl      %esi, %eax
	movl      %eax, -20(%ebp)
	jne       .L08050CD3
.L08050BFA:
	movl      48(%ebx), %eax
	addl      %esi, %eax
	movl      40(%ebx), %edx
	cmpl      %edx, %eax
	je        .L08050CF4
.L08050C0A:
	movl      %eax, 48(%ebx)
.L08050C0D:
	movl      44(%ebx), %eax
	cmpl      %edx, %eax
	jae       .L08050C1B
.L08050C14:
	addl      %esi, %eax
	.p2align 3
.L08050C18:
	movl      %eax, 44(%ebx)
.L08050C1B:
	movl      $1, 12(%edi)
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	xorl      %edx, %edx
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L08050C2E:
	.p2align 3
.L08050C30:
	movl      $-2, %edx
.L08050C35:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	movl      %edx, %eax
	popl      %edi
	leave     
	ret       
.L08050C3F:
	.p2align 3
.L08050C40:
	cmpl      $10, (%edi)
	je        .L08050B6E
.L08050C49:
	movl      52(%ebx), %eax
	movl      12(%ebp), %edx
	addl      16(%ebp), %edx
	testl     %eax, %eax
	movl      %edx, -16(%ebp)
	movl      %eax, -24(%ebp)
	jne       .L08050BB4
.L08050C60:
	pushl     %edx
	pushl     $1
	movl      36(%ebx), %ecx
	movb      $1, %al
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%esi)
	call      *32(%esi)
.L08050C71:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -24(%ebp)
	movl      %eax, 52(%ebx)
	jne       .L08050BB4
.L08050C82:
	movl      $-4, %edx
	movl      $30, (%edi)
	jmp       .L08050C35
.L08050C8F:
	.p2align 3
.L08050C90:
	movl      36(%ebx), %ecx
	movb      $1, %al
	sall      %cl, %eax
	cmpl      16(%ebp), %eax
	movl      %eax, 40(%ebx)
	movl      $0, 48(%ebx)
	movl      $0, 44(%ebx)
	ja        .L08050BC8
.L08050CB1:
	subl      %eax, -16(%ebp)
	pushl     %esi
	pushl     %eax
	pushl     -16(%ebp)
	pushl     -24(%ebp)
	call      memcpy
.L08050CC1:
	addl      $16, %esp
	movl      40(%ebx), %eax
	movl      $0, 48(%ebx)
	jmp       .L08050C18
.L08050CD3:
	subl      %eax, -16(%ebp)
	pushl     %esi
	pushl     %eax
	pushl     -16(%ebp)
	pushl     52(%ebx)
	call      memcpy
.L08050CE3:
	movl      -20(%ebp), %esi
	addl      $16, %esp
	movl      40(%ebx), %eax
	movl      %esi, 48(%ebx)
	jmp       .L08050C18
.L08050CF4:
	movl      $0, 48(%ebx)
	jmp       .L08050C0D
	.size	inflateSetDictionary, .-inflateSetDictionary
# ----------------------
	.globl	inflateGetHeader
	.type	inflateGetHeader, @function
inflateGetHeader:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %ecx
	je        .L08050D30
.L08050D0D:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L08050D30
.L08050D14:
	testb     $2, 8(%edx)
	movl      $-2, %eax
	je        .L08050D2B
.L08050D1F:
	movl      %ecx, 32(%edx)
	movl      $0, 48(%ecx)
	xorl      %eax, %eax
.L08050D2B:
	leave     
	ret       
.L08050D2D:
	.p2align 3
.L08050D30:
	movl      $-2, %eax
	leave     
	ret       
	.size	inflateGetHeader, .-inflateGetHeader
# ----------------------
.L08050D37:
	.p2align 3
# ----------------------
	.globl	inflateSync
	.type	inflateSync, @function
inflateSync:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $8, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L08050F04
.L08050D4C:
	movl      8(%ebp), %edx
	movl      28(%edx), %ebx
	testl     %ebx, %ebx
	je        .L08050F04
.L08050D5A:
	movl      8(%ebp), %ecx
	movl      4(%ecx), %edi
	testl     %edi, %edi
	jne       .L08050D73
.L08050D64:
	cmpl      $7, 60(%ebx)
	movl      $-5, %eax
	jbe       .L08050F09
.L08050D73:
	leal      104(%ebx), %esi
	cmpl      $31, (%ebx)
	movl      %esi, -20(%ebp)
	je        .L08050E06
.L08050D82:
	movl      60(%ebx), %eax
	movl      %eax, %ecx
	movl      56(%ebx), %edx
	andl      $7, %ecx
	sall      %cl, %edx
	andl      $-8, %eax
	xorl      %esi, %esi
	leal      -16(%ebp), %edi
	movl      $31, (%ebx)
	movl      %edx, 56(%ebx)
	movl      %eax, 60(%ebx)
	jmp       .L08050DC0
.L08050DA5:
	.p2align 3
.L08050DA8:
	movb      %dl, (%esi,%edi)
	movl      56(%ebx), %eax
	shrl      $8, %eax
	movl      %eax, %edx
	movl      %eax, 56(%ebx)
	movl      60(%ebx), %eax
	subl      $8, %eax
	incl      %esi
	movl      %eax, 60(%ebx)
.L08050DC0:
	cmpl      $7, %eax
	ja        .L08050DA8
.L08050DC5:
	leal      104(%ebx), %edx
	movl      %edx, -20(%ebp)
	xorl      %edx, %edx
	xorl      %ecx, %ecx
	cmpl      %esi, %edx
	movl      $0, 104(%ebx)
	jae       .L08050DFB
.L08050DDA:
	.p2align 2
.L08050DDC:
	cmpl      $1, %edx
	ja        .L08050F1C
.L08050DE5:
	cmpb      $0, (%edi,%ecx)
	je        .L08050F14
.L08050DEF:
	xorl      %edx, %edx
.L08050DF1:
	incl      %ecx
	cmpl      %esi, %ecx
	jae       .L08050DFB
.L08050DF6:
	cmpl      $3, %edx
	jbe       .L08050DDC
.L08050DFB:
	movl      -20(%ebp), %edi
	movl      %edx, (%edi)
	movl      8(%ebp), %esi
	movl      4(%esi), %edi
.L08050E06:
	xorl      %esi, %esi
	movl      8(%ebp), %ecx
	cmpl      %edi, %esi
	movl      (%ecx), %eax
	movl      104(%ebx), %edx
	jae       .L08050E34
.L08050E14:
	cmpl      $3, %edx
	ja        .L08050E34
.L08050E19:
	cmpl      $1, %edx
	ja        .L08050F44
.L08050E22:
	cmpb      $0, (%eax,%esi)
	jne       .L08050F3C
.L08050E2C:
	incl      %edx
	incl      %esi
.L08050E2E:
	cmpl      %edi, %esi
	jb        .L08050E14
.L08050E32:
	.p2align 2
.L08050E34:
	movl      -20(%ebp), %edi
	movl      %edx, (%edi)
	movl      8(%ebp), %edx
	subl      %esi, 4(%edx)
	movl      8(%edx), %ecx
	addl      %esi, %eax
	addl      %esi, %ecx
	cmpl      $4, 104(%ebx)
	movl      %eax, (%edx)
	jne       .L08050F63
.L08050E52:
	movl      8(%ebp), %esi
	testl     %ebx, %ebx
	movl      20(%esi), %edx
	je        .L08050EEB
.L08050E60:
	movl      8(%ebx), %eax
	testl     %eax, %eax
	movl      $0, 28(%ebx)
	movl      $0, 40(%ebx)
	movl      $0, 44(%ebx)
	movl      $0, 48(%ebx)
	movl      $0, 20(%esi)
	movl      $0, 8(%esi)
	movl      $0, 24(%esi)
	je        .L08050E9E
.L08050E98:
	andl      $1, %eax
	movl      %eax, 48(%esi)
.L08050E9E:
	leal      1328(%ebx), %eax
	movl      $0, 4(%ebx)
	movl      $0, 12(%ebx)
	movl      $32768, 20(%ebx)
	movl      $0, 32(%ebx)
	movl      $0, 56(%ebx)
	movl      $0, 60(%ebx)
	movl      %eax, 108(%ebx)
	movl      %eax, 80(%ebx)
	movl      %eax, 76(%ebx)
	movl      $1, 7104(%ebx)
	movl      $-1, 7108(%ebx)
.L08050EEB:
	movl      8(%ebp), %esi
	movl      %ecx, 8(%esi)
	movl      %edx, 20(%esi)
	movl      $11, (%ebx)
	addl      $8, %esp
	popl      %ebx
	popl      %esi
	xorl      %eax, %eax
	popl      %edi
	leave     
	ret       
.L08050F04:
	movl      $-2, %eax
.L08050F09:
	addl      $8, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08050F11:
	.p2align 2
.L08050F14:
	incl      %edx
	jmp       .L08050DF1
.L08050F1A:
	.p2align 2
.L08050F1C:
	movb      (%edi,%ecx), %al
	cmpb      $255, %al
	je        .L08050F14
.L08050F23:
	testb     %al, %al
	jne       .L08050DEF
.L08050F2B:
	movl      $4, %eax
	subl      %edx, %eax
	movl      %eax, %edx
	jmp       .L08050DF1
.L08050F39:
	.p2align 2
.L08050F3C:
	xorl      %edx, %edx
	incl      %esi
	jmp       .L08050E2E
.L08050F44:
	movb      (%eax,%esi), %cl
	cmpb      $255, %cl
	je        .L08050E2C
.L08050F50:
	testb     %cl, %cl
	jne       .L08050F3C
.L08050F54:
	movl      $4, %ecx
	subl      %edx, %ecx
	movl      %ecx, %edx
	incl      %esi
	jmp       .L08050E2E
.L08050F63:
	movl      $-3, %eax
	movl      %ecx, 8(%edx)
	jmp       .L08050F09
	.size	inflateSync, .-inflateSync
# ----------------------
.L08050F6D:
	.p2align 3
# ----------------------
	.globl	inflateSyncPoint
	.type	inflateSyncPoint, @function
inflateSyncPoint:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L08050F81
.L08050F7A:
	movl      28(%eax), %edx
	testl     %edx, %edx
	jne       .L08050F88
.L08050F81:
	movl      $-2, %eax
.L08050F86:
	leave     
	ret       
.L08050F88:
	xorl      %eax, %eax
	cmpl      $13, (%edx)
	jne       .L08050F86
.L08050F8F:
	movl      60(%edx), %edx
	testl     %edx, %edx
	jne       .L08050F86
.L08050F96:
	movb      $1, %al
	leave     
	ret       
	.size	inflateSyncPoint, .-inflateSyncPoint
# ----------------------
.L08050F9A:
	.p2align 2
# ----------------------
	.globl	inflateCopy
	.type	inflateCopy, @function
inflateCopy:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	movl      12(%ebp), %esi
	je        .L08050FC8
.L08050FAF:
	testl     %esi, %esi
	je        .L08050FC8
.L08050FB3:
	movl      28(%esi), %ebx
	testl     %ebx, %ebx
	je        .L08050FC8
.L08050FBA:
	movl      32(%esi), %eax
	testl     %eax, %eax
	je        .L08050FC8
.L08050FC1:
	movl      36(%esi), %edi
	testl     %edi, %edi
	jne       .L08050FD5
.L08050FC8:
	movl      $-2, %eax
.L08050FCD:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08050FD5:
	pushl     %ecx
	pushl     $7116
	pushl     $1
	pushl     40(%esi)
	call      *%eax
.L08050FE2:
	movl      %eax, -16(%ebp)
	movl      -16(%ebp), %edx
	addl      $16, %esp
	testl     %edx, %edx
	movl      $-4, %eax
	je        .L08050FCD
.L08050FF4:
	movl      52(%ebx), %ecx
	testl     %ecx, %ecx
	movl      $0, -20(%ebp)
	jne       .L08051096
.L08051006:
	cld       
	movl      8(%ebp), %edi
	movl      $14, %ecx
	rep movsl     
	pushl     %edi
	pushl     $7116
	pushl     %ebx
	pushl     -16(%ebp)
	call      memcpy
.L08051020:
	leal      1328(%ebx), %esi
	movl      76(%ebx), %edx
	addl      $16, %esp
	cmpl      %esi, %edx
	jb        .L08051051
.L08051030:
	leal      7100(%ebx), %eax
	cmpl      %eax, %edx
	ja        .L08051051
.L0805103A:
	subl      %ebx, %edx
	movl      80(%ebx), %esi
	movl      -16(%ebp), %ecx
	addl      %edx, %ecx
	subl      %ebx, %esi
	movl      -16(%ebp), %edx
	addl      %edx, %esi
	movl      %ecx, 76(%edx)
	movl      %esi, 80(%edx)
.L08051051:
	movl      108(%ebx), %eax
	subl      %ebx, %eax
	movl      -20(%ebp), %edi
	addl      -16(%ebp), %eax
	movl      -16(%ebp), %edx
	testl     %edi, %edi
	movl      %eax, 108(%edx)
	je        .L08051080
.L08051066:
	movl      36(%ebx), %ecx
	movl      $1, %esi
	sall      %cl, %esi
	pushl     %ecx
	pushl     %esi
	pushl     52(%ebx)
	pushl     -20(%ebp)
	call      memcpy
.L0805107D:
	addl      $16, %esp
.L08051080:
	movl      -16(%ebp), %edi
	movl      -20(%ebp), %edx
	movl      8(%ebp), %ebx
	xorl      %eax, %eax
	movl      %edx, 52(%edi)
	movl      %edi, 28(%ebx)
	jmp       .L08050FCD
.L08051096:
	pushl     %eax
	pushl     $1
	movl      36(%ebx), %ecx
	movl      $1, %eax
	sall      %cl, %eax
	pushl     %eax
	pushl     40(%esi)
	call      *32(%esi)
.L080510AA:
	addl      $16, %esp
	testl     %eax, %eax
	movl      %eax, -20(%ebp)
	jne       .L08051006
.L080510B8:
	subl      $8, %esp
	pushl     -16(%ebp)
	pushl     40(%esi)
	call      *36(%esi)
.L080510C4:
	movl      $-4, %eax
	jmp       .L08050FCD
	.size	inflateCopy, .-inflateCopy
# ----------------------
.L080510CE:
	.p2align 3
# ----------------------
	.globl	inflateUndermine
	.type	inflateUndermine, @function
inflateUndermine:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L080510E1
.L080510DA:
	movl      28(%eax), %eax
	testl     %eax, %eax
	jne       .L080510E8
.L080510E1:
	movl      $-2, %eax
	leave     
	ret       
.L080510E8:
	movl      $1, 7104(%eax)
	leave     
	movl      $-3, %eax
	ret       
	.size	inflateUndermine, .-inflateUndermine
# ----------------------
.L080510F9:
	.p2align 2
# ----------------------
	.globl	inflateMark
	.type	inflateMark, @function
inflateMark:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L08051128
.L08051107:
	movl      28(%eax), %edx
	testl     %edx, %edx
	je        .L08051128
.L0805110E:
	movl      7108(%edx), %ecx
	movl      (%edx), %ebx
	sall      $16, %ecx
	cmpl      $15, %ebx
	je        .L08051140
.L0805111E:
	cmpl      $24, %ebx
	movl      %ecx, %eax
	je        .L08051130
.L08051125:
	popl      %ebx
	leave     
	ret       
.L08051128:
	movl      $-65536, %eax
	popl      %ebx
	leave     
	ret       
.L08051130:
	movl      7112(%edx), %eax
	subl      64(%edx), %eax
	leal      (%ecx,%eax), %eax
	popl      %ebx
	leave     
	ret       
.L0805113F:
	.p2align 3
.L08051140:
	movl      %ecx, %eax
	addl      64(%edx), %eax
	popl      %ebx
	leave     
	ret       
	.size	inflateMark, .-inflateMark
# ----------------------
	.hidden	inflate_table
	.globl	inflate_table
	.type	inflate_table, @function
inflate_table:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $172, %esp
	movl      16(%ebp), %edi
	movl      $0, -136(%ebp)
	xorl      %eax, %eax
	.p2align 2
.L08051164:
	movw      $0, -56(%ebp,%eax,2)
	incl      %eax
	cmpl      $15, %eax
	jbe       .L08051164
.L08051171:
	xorl      %edx, %edx
	jmp       .L08051185
.L08051175:
	.p2align 3
.L08051178:
	movl      12(%ebp), %ebx
	movzwl    (%ebx,%edx,2), %eax
	incw      -56(%ebp,%eax,2)
	incl      %edx
.L08051185:
	cmpl      %edi, %edx
	jb        .L08051178
.L08051189:
	movl      24(%ebp), %edx
	movl      (%edx), %esi
	movl      %esi, -96(%ebp)
	movl      $15, -92(%ebp)
.L08051198:
	movl      -92(%ebp), %eax
	cmpw      $0, -56(%ebp,%eax,2)
	jne       .L080511A9
.L080511A3:
	decl      %eax
	movl      %eax, -92(%ebp)
	jne       .L08051198
.L080511A9:
	movl      -92(%ebp), %edx
	cmpl      %edx, -96(%ebp)
	jbe       .L080511B4
.L080511B1:
	movl      %edx, -96(%ebp)
.L080511B4:
	movl      -92(%ebp), %ecx
	testl     %ecx, %ecx
	movl      $1, %ebx
	jne       .L080511EF
.L080511C0:
	movl      20(%ebp), %ebx
	movl      (%ebx), %ecx
	movl      $320, %edx
	movl      %edx, (%ecx)
	movl      (%ebx), %esi
	leal      4(%esi), %eax
	movl      %eax, (%ebx)
	movl      24(%ebp), %edi
	movl      %edx, 4(%esi)
	addl      $4, (%ebx)
	movl      $1, (%edi)
.L080511E2:
	xorl      %eax, %eax
.L080511E4:
	addl      $172, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080511EF:
	cmpl      -92(%ebp), %ebx
	jae       .L08051202
.L080511F4:
	cmpw      $0, -56(%ebp,%ebx,2)
	jne       .L08051202
.L080511FC:
	incl      %ebx
	cmpl      -92(%ebp), %ebx
	jb        .L080511F4
.L08051202:
	cmpl      %ebx, -96(%ebp)
	jae       .L0805120A
.L08051207:
	movl      %ebx, -96(%ebp)
.L0805120A:
	movl      $1, %eax
	movl      $1, %ecx
.L08051214:
	leal      (%eax,%eax), %esi
	movzwl    -56(%ebp,%ecx,2), %edx
	subl      %edx, %esi
	movl      %esi, %eax
	js        .L08051239
.L08051222:
	incl      %ecx
	cmpl      $15, %ecx
	jbe       .L08051214
.L08051228:
	testl     %esi, %esi
	jle       .L08051249
.L0805122C:
	movl      8(%ebp), %eax
	testl     %eax, %eax
	je        .L08051239
.L08051233:
	cmpl      $1, -92(%ebp)
	je        .L08051249
.L08051239:
	addl      $172, %esp
	popl      %ebx
	popl      %esi
	movl      $-1, %eax
	popl      %edi
	leave     
	ret       
.L08051249:
	movw      $0, -86(%ebp)
	movl      $1, %edx
.L08051254:
	movw      -56(%ebp,%edx,2), %cx
	addw      -88(%ebp,%edx,2), %cx
	movw      %cx, -86(%ebp,%edx,2)
	incl      %edx
	cmpl      $14, %edx
	jbe       .L08051254
.L08051269:
	xorl      %esi, %esi
	cmpl      %edi, %esi
	jae       .L080512AA
.L0805126F:
	movl      12(%ebp), %edx
	movw      (%edx,%esi,2), %ax
	testw     %ax, %ax
	je        .L080512A5
.L0805127B:
	movzwl    %ax, %eax
	movw      -88(%ebp,%eax,2), %dx
	movzwl    %dx, %ecx
	movl      %eax, -172(%ebp)
	movl      28(%ebp), %eax
	movw      %si, (%eax,%ecx,2)
	incl      %edx
	movl      -172(%ebp), %eax
	movl      %ecx, -160(%ebp)
	movw      %dx, -88(%ebp,%eax,2)
.L080512A5:
	incl      %esi
	cmpl      %edi, %esi
	jb        .L0805126F
.L080512AA:
	movl      8(%ebp), %edi
	testl     %edi, %edi
	je        .L08051584
.L080512B5:
	cmpl      $1, 8(%ebp)
	je        .L080515BC
.L080512BF:
	movl      $dbase.2, -124(%ebp)
	movl      $dext.3, -128(%ebp)
	movl      $-1, -132(%ebp)
.L080512D7:
	movl      $1, -104(%ebp)
	movb      -96(%ebp), %cl
	sall      %cl, -104(%ebp)
	movl      %ebx, %edi
	movl      20(%ebp), %esi
	movl      -104(%ebp), %ebx
	decl      %ebx
	movl      (%esi), %eax
	movl      -96(%ebp), %edx
	cmpl      $1, 8(%ebp)
	movl      $0, -108(%ebp)
	movl      $0, -140(%ebp)
	movl      %eax, -120(%ebp)
	movl      %edx, -156(%ebp)
	movl      $0, -100(%ebp)
	movl      $-1, -112(%ebp)
	movl      %ebx, -116(%ebp)
	je        .L0805159C
.L08051327:
	cmpl      $2, 8(%ebp)
	je        .L080515B3
.L08051331:
	.p2align 2
.L08051334:
	movl      %edi, %eax
	subb      -100(%ebp), %al
	movl      -136(%ebp), %edx
	movl      -140(%ebp), %ecx
	movl      28(%ebp), %ebx
	movb      %al, %dh
	movzwl    (%ebx,%ecx,2), %eax
	cmpl      -132(%ebp), %eax
	movl      %edx, -136(%ebp)
	jge       .L080514EA
.L08051360:
	sall      $16, %eax
	andl      $65280, %edx
.L08051369:
	orl       %eax, %edx
	movl      %edx, -136(%ebp)
.L08051371:
	movl      %edi, %ecx
	subl      -100(%ebp), %ecx
	movl      $1, %ebx
	sall      %cl, %ebx
	movl      $1, %edx
	movb      -156(%ebp), %cl
	sall      %cl, %edx
	movl      -108(%ebp), %eax
	movb      -100(%ebp), %cl
	shrl      %cl, %eax
	movl      %edx, -144(%ebp)
	movl      %eax, -160(%ebp)
	.p2align 3
.L080513A0:
	subl      %ebx, %edx
	movl      -160(%ebp), %eax
	addl      %edx, %eax
	movl      -136(%ebp), %ecx
	movl      -120(%ebp), %esi
	testl     %edx, %edx
	movl      %ecx, (%esi,%eax,4)
	jne       .L080513A0
.L080513BA:
	leal      -1(%edi), %ecx
	movb      $1, %dl
	sall      %cl, %edx
	jmp       .L080513C6
.L080513C3:
	.p2align 2
.L080513C4:
	shrl      $1, %edx
.L080513C6:
	testl     %edx, -108(%ebp)
	jne       .L080513C4
.L080513CB:
	testl     %edx, %edx
	je        .L080514DE
.L080513D3:
	leal      -1(%edx), %ebx
	andl      -108(%ebp), %ebx
	addl      %edx, %ebx
	movl      %ebx, -108(%ebp)
.L080513DE:
	movw      -56(%ebp,%edi,2), %dx
	decl      %edx
	incl      -140(%ebp)
	testw     %dx, %dx
	movw      %dx, -56(%ebp,%edi,2)
	jne       .L08051411
.L080513F4:
	cmpl      -92(%ebp), %edi
	je        .L08051545
.L080513FD:
	movl      28(%ebp), %edi
	movl      -140(%ebp), %ecx
	movzwl    (%edi,%ecx,2), %eax
	movl      12(%ebp), %esi
	movzwl    (%esi,%eax,2), %edi
.L08051411:
	cmpl      -96(%ebp), %edi
	jbe       .L08051334
.L0805141A:
	movl      -108(%ebp), %ebx
	andl      -116(%ebp), %ebx
	cmpl      -112(%ebp), %ebx
	je        .L08051334
.L08051429:
	movl      -100(%ebp), %edx
	testl     %edx, %edx
	jne       .L08051436
.L08051430:
	movl      -96(%ebp), %esi
	movl      %esi, -100(%ebp)
.L08051436:
	movl      %edi, %ecx
	subl      -100(%ebp), %ecx
	movl      -120(%ebp), %edx
	movl      -144(%ebp), %eax
	leal      (%edx,%eax,4), %ebx
	movl      %ecx, %eax
	movl      $1, %edx
	addl      -100(%ebp), %eax
	sall      %cl, %edx
	cmpl      -92(%ebp), %eax
	movl      %ebx, -120(%ebp)
	movl      %ecx, -156(%ebp)
	jae       .L08051486
.L08051461:
	.p2align 2
.L08051464:
	movzwl    -56(%ebp,%eax,2), %esi
	subl      %esi, %edx
	testl     %edx, %edx
	jle       .L08051486
.L0805146F:
	incl      -156(%ebp)
	leal      (%edx,%edx), %edx
	movl      -156(%ebp), %eax
	addl      -100(%ebp), %eax
	cmpl      -92(%ebp), %eax
	jb        .L08051464
.L08051486:
	movl      $1, %ebx
	movb      -156(%ebp), %cl
	sall      %cl, %ebx
	addl      %ebx, -104(%ebp)
	cmpl      $1, 8(%ebp)
	je        .L08051523
.L080514A0:
	cmpl      $2, 8(%ebp)
	je        .L0805153C
.L080514AA:
	movl      20(%ebp), %esi
	movl      -108(%ebp), %ebx
	andl      -116(%ebp), %ebx
	movl      (%esi), %eax
	movb      -156(%ebp), %dl
	movl      %ebx, -112(%ebp)
	movb      %dl, (%eax,%ebx,4)
	movl      (%esi), %edx
	movb      -96(%ebp), %cl
	movb      %cl, 1(%edx,%ebx,4)
	movl      (%esi), %edx
	movl      -120(%ebp), %eax
	subl      %edx, %eax
	sarl      $2, %eax
	movw      %ax, 2(%edx,%ebx,4)
	jmp       .L08051334
.L080514DE:
	movl      $0, -108(%ebp)
	jmp       .L080513DE
.L080514EA:
	jle       .L0805150D
.L080514EC:
	movl      -136(%ebp), %edx
	movl      -128(%ebp), %ebx
	movl      -124(%ebp), %esi
	movb      (%ebx,%eax,2), %dl
	movzwl    (%esi,%eax,2), %eax
	sall      $16, %eax
	andl      $65535, %edx
	jmp       .L08051369
.L0805150D:
	movb      $96, -136(%ebp)
	andl      $65535, -136(%ebp)
	jmp       .L08051371
.L08051523:
	cmpl      $852, -104(%ebp)
.L0805152A:
	jbe       .L080514AA
.L08051530:
	movl      $1, %eax
	jmp       .L080511E4
.L0805153A:
	.p2align 2
.L0805153C:
	cmpl      $592, -104(%ebp)
	jmp       .L0805152A
.L08051545:
	movl      -108(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L0805156C
.L0805154C:
	movb      $64, -136(%ebp)
	movl      %edi, %eax
	subb      -100(%ebp), %al
	movl      -136(%ebp), %edx
	movb      %al, %dh
	movzwl    %dx, %ecx
	movl      -108(%ebp), %esi
	movl      -120(%ebp), %edi
	movl      %ecx, (%edi,%esi,4)
.L0805156C:
	movl      -104(%ebp), %ecx
	sall      $2, %ecx
	movl      20(%ebp), %esi
	movl      -96(%ebp), %edi
	movl      24(%ebp), %ebx
	addl      %ecx, (%esi)
	movl      %edi, (%ebx)
	jmp       .L080511E2
.L08051584:
	movl      28(%ebp), %esi
	movl      %esi, -128(%ebp)
	movl      %esi, -124(%ebp)
	movl      $19, -132(%ebp)
	jmp       .L080512D7
.L0805159C:
	cmpl      $852, -104(%ebp)
.L080515A3:
	jbe       .L08051334
.L080515A9:
	movl      $1, %eax
	jmp       .L080511E4
.L080515B3:
	cmpl      $592, -104(%ebp)
	jmp       .L080515A3
.L080515BC:
	movl      $.LC0805533E, -124(%ebp)
	movl      $.LC0805537E, -128(%ebp)
	movl      $256, -132(%ebp)
	jmp       .L080512D7
	.size	inflate_table, .-inflate_table
# ----------------------
.L080515D9:
	.p2align 2
# ----------------------
	.hidden	_tr_init
	.globl	_tr_init
	.type	_tr_init, @function
_tr_init:
	pushl     %ebp
	movl      %esp, %ebp
	movl      8(%ebp), %edx
	leal      148(%edx), %eax
	movl      %eax, 2840(%edx)
	leal      2440(%edx), %ecx
	leal      2684(%edx), %eax
	movl      %eax, 2864(%edx)
	movl      $static_l_desc, 2848(%edx)
	movl      %ecx, 2852(%edx)
	movl      $static_d_desc, 2860(%edx)
	movl      $static_bl_desc, 2872(%edx)
	movw      $0, 5816(%edx)
	movl      $0, 5820(%edx)
	xorl      %eax, %eax
	.p2align 2
.L0805163C:
	movw      $0, 148(%edx,%eax,4)
	incl      %eax
	cmpl      $285, %eax
	jle       .L0805163C
.L0805164E:
	xorl      %eax, %eax
.L08051650:
	movw      $0, 2440(%edx,%eax,4)
	incl      %eax
	cmpl      $29, %eax
	jle       .L08051650
.L08051660:
	xorl      %eax, %eax
.L08051662:
	movw      $0, 2684(%edx,%eax,4)
	incl      %eax
	cmpl      $18, %eax
	jle       .L08051662
.L08051672:
	movw      $1, 1172(%edx)
	movl      $0, 5804(%edx)
	movl      $0, 5800(%edx)
	movl      $0, 5808(%edx)
	movl      $0, 5792(%edx)
	leave     
	ret       
	.size	_tr_init, .-_tr_init
# ----------------------
.L080516A5:
	.p2align 3
# ----------------------
	.local	build_tree
	.type	build_tree, @function
build_tree:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $188, %esp
	movl      8(%edx), %esi
	movl      %eax, %ebx
	movl      (%edx), %ecx
	movl      12(%esi), %eax
	movl      %edx, -60(%ebp)
	xorl      %edx, %edx
	cmpl      %eax, %edx
	movl      %ecx, -64(%ebp)
	movl      %eax, -68(%ebp)
	movl      (%esi), %ecx
	movl      $-1, -72(%ebp)
	movl      $0, 5200(%ebx)
	movl      $573, 5204(%ebx)
	jge       .L0805171F
.L080516EA:
	.p2align 2
.L080516EC:
	movl      -64(%ebp), %edi
	cmpw      $0, (%edi,%edx,4)
	je        .L08051C71
.L080516FA:
	movl      5200(%ebx), %esi
	incl      %esi
	movl      %edx, -72(%ebp)
	movl      %edx, 2908(%ebx,%esi,4)
	movb      $0, 5208(%edx,%ebx)
	incl      %edx
	movl      %esi, 5200(%ebx)
	cmpl      -68(%ebp), %edx
.L0805171D:
	jl        .L080516EC
.L0805171F:
	movl      5200(%ebx), %eax
	cmpl      $1, %eax
	jle       .L08051CF3
.L0805172E:
	movl      -72(%ebp), %esi
	movl      -60(%ebp), %eax
	movl      %esi, 4(%eax)
	movl      5200(%ebx), %esi
	movl      %esi, %ecx
	shrl      $31, %ecx
	leal      (%esi,%ecx), %eax
	sarl      $1, %eax
	testl     %eax, %eax
	movl      %eax, -136(%ebp)
	jle       .L0805182C
.L08051755:
	.p2align 3
.L08051758:
	movl      -136(%ebp), %edi
	movl      2908(%ebx,%edi,4), %edx
	movl      %edx, -80(%ebp)
	movl      %edi, %edx
	movl      %edi, -156(%ebp)
	jmp       .L080517DA
.L08051772:
	.p2align 2
.L08051774:
	movl      2908(%ebx,%edx,4), %edi
	movl      2912(%ebx,%edx,4), %ecx
	movl      %edi, -192(%ebp)
	movl      %ecx, -84(%ebp)
	movl      -64(%ebp), %eax
	movw      (%eax,%edi,4), %ax
	movl      -64(%ebp), %edi
	cmpw      %ax, (%edi,%ecx,4)
	jb        .L08051CA4
.L0805179F:
	je        .L08051C84
.L080517A5:
	movl      -192(%ebp), %ecx
	movl      -64(%ebp), %eax
	movw      (%eax,%ecx,4), %di
	movl      -80(%ebp), %ecx
	cmpw      %di, (%eax,%ecx,4)
	jb        .L08051808
.L080517BB:
	je        .L08051CB8
.L080517C1:
	movl      -156(%ebp), %eax
	movl      -192(%ebp), %ecx
	movl      %ecx, 2908(%ebx,%eax,4)
	movl      %edx, -156(%ebp)
.L080517DA:
	sall      $1, %edx
	cmpl      %edx, %esi
	jl        .L08051808
.L080517E0:
	cmpl      %edx, %esi
	jg        .L08051774
.L080517E4:
	movl      2908(%ebx,%edx,4), %ecx
	movl      %ecx, -192(%ebp)
	movl      -192(%ebp), %ecx
	movl      -64(%ebp), %eax
	movw      (%eax,%ecx,4), %di
	movl      -80(%ebp), %ecx
	cmpw      %di, (%eax,%ecx,4)
	jae       .L080517BB
.L08051807:
	.p2align 3
.L08051808:
	movl      -80(%ebp), %edi
	movl      -156(%ebp), %edx
	decl      -136(%ebp)
	movl      %edi, 2908(%ebx,%edx,4)
	movl      -136(%ebp), %eax
.L08051824:
	testl     %eax, %eax
	jg        .L08051758
.L0805182C:
	movl      -68(%ebp), %eax
	movl      %eax, -76(%ebp)
	.p2align 2
.L08051834:
	leal      -1(%esi), %edx
	movl      2912(%ebx), %ecx
	movl      2908(%ebx,%esi,4), %esi
	movl      %ecx, -140(%ebp)
	cmpl      $2, %edx
	movl      $2, %ecx
	movl      %edx, -156(%ebp)
	movl      %edx, 5200(%ebx)
	movl      %esi, -88(%ebp)
	movl      %esi, 2912(%ebx)
	movl      $1, -92(%ebp)
	jmp       .L080518CF
.L08051870:
	movl      2912(%ebx,%ecx,4), %eax
	movl      %eax, -188(%ebp)
	movl      2908(%ebx,%ecx,4), %edx
	movl      -64(%ebp), %esi
	movw      (%esi,%edx,4), %si
	movl      -64(%ebp), %edi
	cmpw      %si, (%edi,%eax,4)
	jb        .L08051DB0
.L08051898:
	je        .L08051D93
.L0805189E:
	movl      -64(%ebp), %edi
	movw      (%edi,%edx,4), %di
	movl      -88(%ebp), %eax
	movl      -64(%ebp), %esi
	cmpw      %di, (%esi,%eax,4)
	jb        .L080518F4
.L080518B1:
	.p2align 2
.L080518B4:
	je        .L08051DC0
.L080518BA:
	movl      -92(%ebp), %edi
	movl      %ecx, -92(%ebp)
	sall      $1, %ecx
	movl      %edx, 2908(%ebx,%edi,4)
	cmpl      %ecx, -156(%ebp)
.L080518CF:
	jl        .L080518F4
.L080518D1:
	cmpl      %ecx, -156(%ebp)
	jg        .L08051870
.L080518D9:
	movl      2908(%ebx,%ecx,4), %edx
.L080518E0:
	movl      -64(%ebp), %edi
	movw      (%edi,%edx,4), %di
	movl      -88(%ebp), %eax
	movl      -64(%ebp), %esi
	cmpw      %di, (%esi,%eax,4)
	jae       .L080518B4
.L080518F3:
	.p2align 2
.L080518F4:
	movl      -88(%ebp), %esi
	movl      -92(%ebp), %edx
	movl      %esi, 2908(%ebx,%edx,4)
	movl      5204(%ebx), %edi
	movl      -140(%ebp), %esi
	movl      2912(%ebx), %edx
	movl      %esi, 2904(%ebx,%edi,4)
	subl      $2, %edi
	movl      %edi, 5204(%ebx)
	movl      %edx, 2908(%ebx,%edi,4)
	movl      -64(%ebp), %edi
	movw      (%edi,%edx,4), %ax
	addw      (%edi,%esi,4), %ax
	movl      -76(%ebp), %ecx
	movw      %ax, (%edi,%ecx,4)
	movb      5208(%esi,%ebx), %cl
	movb      5208(%edx,%ebx), %al
	cmpb      %al, %cl
	jb        .L08051E30
.L08051952:
	leal      1(%ecx), %eax
.L08051955:
	movl      -76(%ebp), %ecx
	movb      %al, 5208(%ecx,%ebx)
	movl      -64(%ebp), %edi
	movw      %cx, 2(%edi,%edx,4)
	movl      -76(%ebp), %edx
	movl      -140(%ebp), %esi
	movw      %dx, 2(%edi,%esi,4)
	movl      -76(%ebp), %eax
	movl      %eax, -96(%ebp)
	movl      -96(%ebp), %ecx
	movl      5200(%ebx), %esi
	incl      %eax
	movl      %ecx, 2912(%ebx)
	cmpl      $2, %esi
	movl      $2, %ecx
	movl      %eax, -76(%ebp)
	movl      $1, -100(%ebp)
	jmp       .L08051A07
.L0805199F:
	.p2align 3
.L080519A0:
	movl      2908(%ebx,%ecx,4), %eax
	movl      2912(%ebx,%ecx,4), %edi
	movl      %eax, -160(%ebp)
	movl      %edi, -156(%ebp)
	movl      -64(%ebp), %edx
	movw      (%edx,%eax,4), %dx
	movl      -64(%ebp), %eax
	cmpw      %dx, (%eax,%edi,4)
	jb        .L08051DF8
.L080519CE:
	je        .L08051DDC
.L080519D4:
	movl      -64(%ebp), %edi
	movl      -160(%ebp), %edx
	movw      (%edi,%edx,4), %dx
	movl      -96(%ebp), %eax
	cmpw      %dx, (%edi,%eax,4)
	jb        .L08051A30
.L080519EA:
	je        .L08051E0C
.L080519F0:
	movl      -100(%ebp), %eax
	movl      -160(%ebp), %edi
	movl      %ecx, -100(%ebp)
	sall      $1, %ecx
	movl      %edi, 2908(%ebx,%eax,4)
	cmpl      %ecx, %esi
.L08051A07:
	jl        .L08051A30
.L08051A09:
	cmpl      %ecx, %esi
	jg        .L080519A0
.L08051A0D:
	movl      2908(%ebx,%ecx,4), %eax
	movl      %eax, -160(%ebp)
	movl      -64(%ebp), %edi
	movl      -160(%ebp), %edx
	movw      (%edi,%edx,4), %dx
	movl      -96(%ebp), %eax
	cmpw      %dx, (%edi,%eax,4)
	jae       .L080519EA
.L08051A30:
	movl      -96(%ebp), %edx
	movl      -100(%ebp), %ecx
	cmpl      $1, %esi
	movl      %edx, 2908(%ebx,%ecx,4)
	jg        .L08051834
.L08051A46:
	movl      5204(%ebx), %esi
	decl      %esi
	movl      2912(%ebx), %eax
	movl      %esi, 5204(%ebx)
	movl      %eax, 2908(%ebx,%esi,4)
	movl      -60(%ebp), %edi
	movl      4(%edi), %eax
	movl      -60(%ebp), %edx
	movl      -60(%ebp), %esi
	movl      (%edx), %ecx
	movl      %eax, -108(%ebp)
	movl      8(%esi), %eax
	movl      (%eax), %edx
	movl      8(%eax), %edi
	movl      16(%eax), %esi
	movl      %ecx, -104(%ebp)
	movl      4(%eax), %ecx
	movl      %edx, -112(%ebp)
	movl      %ecx, -116(%ebp)
	movl      %edi, -120(%ebp)
	movl      %esi, -124(%ebp)
	movl      $0, -132(%ebp)
	xorl      %eax, %eax
	.p2align 2
.L08051A9C:
	movw      $0, 2876(%ebx,%eax,2)
	incl      %eax
	cmpl      $15, %eax
	jle       .L08051A9C
.L08051AAC:
	movl      5204(%ebx), %esi
	movl      2908(%ebx,%esi,4), %edx
	movl      -104(%ebp), %ecx
	movw      $0, 2(%ecx,%edx,4)
	movl      5204(%ebx), %edi
	incl      %edi
	cmpl      $572, %edi
	movl      %edi, -128(%ebp)
	jle       .L08051AEC
.L08051AD5:
	jmp       .L08051C24
.L08051ADA:
	.p2align 2
.L08051ADC:
	incl      -128(%ebp)
	cmpl      $572, -128(%ebp)
	jg        .L08051B78
.L08051AEC:
	movl      -128(%ebp), %esi
	movl      2908(%ebx,%esi,4), %ecx
	movl      -104(%ebp), %edx
	movzwl    2(%edx,%ecx,4), %edi
	movzwl    2(%edx,%edi,4), %eax
	leal      1(%eax), %esi
	cmpl      -124(%ebp), %esi
	jle       .L08051B14
.L08051B0B:
	movl      -124(%ebp), %esi
	incl      -132(%ebp)
.L08051B14:
	movl      -104(%ebp), %eax
	movw      %si, 2(%eax,%ecx,4)
	cmpl      -108(%ebp), %ecx
	jg        .L08051ADC
.L08051B21:
	incw      2876(%ebx,%esi,2)
	xorl      %edx, %edx
	cmpl      -120(%ebp), %ecx
	jl        .L08051B3B
.L08051B30:
	movl      %ecx, %eax
	subl      -120(%ebp), %eax
	movl      -116(%ebp), %edi
	movl      (%edi,%eax,4), %edx
.L08051B3B:
	movl      -104(%ebp), %eax
	movzwl    (%eax,%ecx,4), %edi
	leal      (%esi,%edx), %eax
	imull     %edi, %eax
	movl      -112(%ebp), %esi
	addl      %eax, 5800(%ebx)
	testl     %esi, %esi
	je        .L08051ADC
.L08051B55:
	movl      -112(%ebp), %esi
	movzwl    2(%esi,%ecx,4), %eax
	addl      %edx, %eax
	imull     %eax, %edi
	incl      -128(%ebp)
	addl      %edi, 5804(%ebx)
	cmpl      $572, -128(%ebp)
	jle       .L08051AEC
.L08051B78:
	movl      -132(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L08051C24
.L08051B86:
	movl      -124(%ebp), %edi
	leal      -1(%edi), %edx
.L08051B8C:
	movl      %edx, %ecx
	jmp       .L08051B91
.L08051B90:
	decl      %ecx
.L08051B91:
	movw      2876(%ebx,%ecx,2), %ax
	testw     %ax, %ax
	je        .L08051B90
.L08051B9E:
	decl      %eax
	subl      $2, -132(%ebp)
	movw      %ax, 2876(%ebx,%ecx,2)
	addw      $2, 2878(%ebx,%ecx,2)
	movl      -124(%ebp), %eax
	movl      -132(%ebp), %esi
	decw      2876(%ebx,%eax,2)
	testl     %esi, %esi
	jg        .L08051B8C
.L08051BCC:
	testl     %eax, %eax
	movl      %eax, %edi
	je        .L08051C24
.L08051BD2:
	movzwl    2876(%ebx,%edi,2), %esi
	.p2align 2
.L08051BDC:
	testl     %esi, %esi
	je        .L08051C21
.L08051BE0:
	decl      -128(%ebp)
	movl      -128(%ebp), %edx
	movl      2908(%ebx,%edx,4), %ecx
	cmpl      -108(%ebp), %ecx
	jg        .L08051BDC
.L08051BF2:
	movl      -104(%ebp), %edx
	movzwl    2(%edx,%ecx,4), %eax
	cmpl      %edi, %eax
	je        .L08051C1C
.L08051BFE:
	movl      %edi, %edx
	subl      %eax, %edx
	movl      %edx, %eax
	movl      -104(%ebp), %edx
	movzwl    (%edx,%ecx,4), %edx
	imull     %edx, %eax
	addl      %eax, 5800(%ebx)
	movl      -104(%ebp), %eax
	movw      %di, 2(%eax,%ecx,4)
.L08051C1C:
	decl      %esi
	testl     %esi, %esi
	jne       .L08051BE0
.L08051C21:
	decl      %edi
	jne       .L08051BD2
.L08051C24:
	leal      2876(%ebx), %ecx
	xorl      %eax, %eax
	movl      $1, %edx
	.p2align 2
.L08051C34:
	addw      -2(%ecx,%edx,2), %ax
	sall      $1, %eax
	movw      %ax, -56(%ebp,%edx,2)
	incl      %edx
	cmpl      $15, %edx
	jle       .L08051C34
.L08051C46:
	xorl      %esi, %esi
	cmpl      -72(%ebp), %esi
	jg        .L08051C66
.L08051C4D:
	.p2align 3
.L08051C50:
	movl      -64(%ebp), %ebx
	movzwl    2(%ebx,%esi,4), %edx
	testl     %edx, %edx
	jne       .L08051E36
.L08051C60:
	incl      %esi
.L08051C61:
	cmpl      -72(%ebp), %esi
	jle       .L08051C50
.L08051C66:
	addl      $188, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08051C71:
	movl      -64(%ebp), %edi
	movw      $0, 2(%edi,%edx,4)
	incl      %edx
	cmpl      -68(%ebp), %edx
	jmp       .L0805171D
.L08051C84:
	movl      -192(%ebp), %edi
	movb      5208(%edi,%ebx), %al
	movl      -84(%ebp), %ecx
	cmpb      %al, 5208(%ecx,%ebx)
	ja        .L080517A5
.L08051CA1:
	.p2align 2
.L08051CA4:
	incl      %edx
	movl      2908(%ebx,%edx,4), %eax
	movl      %eax, -192(%ebp)
	jmp       .L080517A5
.L08051CB7:
	.p2align 3
.L08051CB8:
	movl      -192(%ebp), %edi
	movb      5208(%edi,%ebx), %al
	cmpb      %al, 5208(%ecx,%ebx)
	ja        .L080517C1
.L08051CD2:
	decl      -136(%ebp)
	movl      -80(%ebp), %edi
	movl      -156(%ebp), %edx
	movl      -136(%ebp), %eax
	movl      %edi, 2908(%ebx,%edx,4)
	jmp       .L08051824
.L08051CF3:
	testl     %ecx, %ecx
	jne       .L08051D34
.L08051CF7:
	jmp       .L08051D80
.L08051CFC:
	movl      %eax, 2908(%ebx,%edx,4)
	movl      -64(%ebp), %edx
	movw      $1, (%edx,%eax,4)
	decl      5800(%ebx)
	movb      $0, 5208(%eax,%ebx)
	movzwl    2(%ecx,%eax,4), %esi
	movl      5200(%ebx), %eax
	subl      %esi, 5804(%ebx)
	cmpl      $1, %eax
	jg        .L0805172E
.L08051D34:
	leal      1(%eax), %edx
	xorl      %eax, %eax
	cmpl      $1, -72(%ebp)
	movl      %edx, 5200(%ebx)
	jg        .L08051CFC
.L08051D45:
	incl      -72(%ebp)
	movl      -72(%ebp), %eax
	jmp       .L08051CFC
.L08051D4D:
	incl      -72(%ebp)
	movl      -72(%ebp), %eax
.L08051D53:
	movl      %eax, 2908(%ebx,%edx,4)
	movl      -64(%ebp), %edx
	movw      $1, (%edx,%eax,4)
	movb      $0, 5208(%eax,%ebx)
	movl      5200(%ebx), %eax
	decl      5800(%ebx)
	cmpl      $1, %eax
	jg        .L0805172E
.L08051D80:
	leal      1(%eax), %edx
	xorl      %eax, %eax
	cmpl      $1, -72(%ebp)
	movl      %edx, 5200(%ebx)
	jg        .L08051D53
.L08051D91:
	jmp       .L08051D4D
.L08051D93:
	movb      5208(%edx,%ebx), %al
	movl      -188(%ebp), %edi
	cmpb      %al, 5208(%edi,%ebx)
	ja        .L0805189E
.L08051DAD:
	.p2align 3
.L08051DB0:
	incl      %ecx
	movl      2908(%ebx,%ecx,4), %edx
	jmp       .L080518E0
.L08051DBD:
	.p2align 3
.L08051DC0:
	movb      5208(%edx,%ebx), %al
	movl      -88(%ebp), %esi
	cmpb      %al, 5208(%esi,%ebx)
	ja        .L080518BA
.L08051DD7:
	jmp       .L080518F4
.L08051DDC:
	movl      -160(%ebp), %edx
	movb      5208(%edx,%ebx), %al
	cmpb      %al, 5208(%edi,%ebx)
	ja        .L080519D4
.L08051DF6:
	.p2align 3
.L08051DF8:
	incl      %ecx
	movl      2908(%ebx,%ecx,4), %edi
	movl      %edi, -160(%ebp)
	jmp       .L080519D4
.L08051E0B:
	.p2align 2
.L08051E0C:
	movl      -160(%ebp), %edx
	movb      5208(%edx,%ebx), %al
	movl      -96(%ebp), %edi
	cmpb      %al, 5208(%edi,%ebx)
	ja        .L080519F0
.L08051E29:
	jmp       .L08051A30
.L08051E2E:
	.p2align 3
.L08051E30:
	incl      %eax
	jmp       .L08051955
.L08051E36:
	movw      -56(%ebp,%edx,2), %di
	movzwl    %di, %ecx
	incl      %edi
	movw      %di, -56(%ebp,%edx,2)
	xorl      %ebx, %ebx
	.p2align 3
.L08051E48:
	movl      %ecx, %eax
	andl      $1, %eax
	decl      %edx
	orl       %ebx, %eax
	shrl      $1, %ecx
	testl     %edx, %edx
	leal      (%eax,%eax), %ebx
	jg        .L08051E48
.L08051E59:
	shrl      $1, %ebx
	movl      -64(%ebp), %ecx
	movw      %bx, (%ecx,%esi,4)
	incl      %esi
	jmp       .L08051C61
	.size	build_tree, .-build_tree
# ----------------------
	.local	send_tree
	.type	send_tree, @function
send_tree:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $40, %esp
	movl      %edx, -16(%ebp)
	movl      %eax, %esi
	movzwl    2(%edx), %eax
	movl      %eax, -28(%ebp)
	movl      -28(%ebp), %ebx
	testl     %ebx, %ebx
	movl      $-1, %ecx
	movl      $0, -32(%ebp)
	movl      $7, %edx
	movl      $4, %eax
	jne       .L08051E9E
.L08051E9A:
	movb      $138, %dl
	movb      $3, %al
.L08051E9E:
	movl      $0, -20(%ebp)
	movl      8(%ebp), %edi
	cmpl      %edi, -20(%ebp)
	jg        .L08052117
.L08051EB1:
	.p2align 2
.L08051EB4:
	movl      -28(%ebp), %ebx
	movl      %ebx, -24(%ebp)
	movl      -16(%ebp), %edi
	movl      -20(%ebp), %ebx
	movzwl    6(%edi,%ebx,4), %ebx
	incl      -32(%ebp)
	cmpl      %edx, -32(%ebp)
	movl      %ebx, -28(%ebp)
	jge       .L08051ED9
.L08051ED0:
	cmpl      %ebx, -24(%ebp)
	je        .L08052108
.L08051ED9:
	cmpl      %eax, -32(%ebp)
	jge       .L08051F8C
.L08051EE2:
	movl      5820(%esi), %ecx
	jmp       .L08051F58
.L08051EEA:
	.p2align 2
.L08051EEC:
	movl      -24(%ebp), %eax
	movzwl    2684(%esi,%eax,4), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %edx
	movl      $16, %ecx
	subl      %edx, %ecx
	sarl      %cl, %ebx
	incl      20(%esi)
	movw      %bx, 5816(%esi)
	leal      -16(%edx,%edi), %ecx
.L08051F49:
	decl      -32(%ebp)
	movl      %ecx, 5820(%esi)
	je        .L080520D6
.L08051F58:
	movl      -24(%ebp), %eax
	movzwl    2686(%esi,%eax,4), %edi
	movl      $16, %edx
	subl      %edi, %edx
	cmpl      %edx, %ecx
	jg        .L08051EEC
.L08051F72:
	movl      -24(%ebp), %ebx
	movzwl    2684(%esi,%ebx,4), %edx
	sall      %cl, %edx
	orw       %dx, 5816(%esi)
	addl      %edi, %ecx
	jmp       .L08051F49
.L08051F8A:
	.p2align 2
.L08051F8C:
	movl      -24(%ebp), %edi
	testl     %edi, %edi
	je        .L0805211F
.L08051F97:
	cmpl      %ecx, -24(%ebp)
	je        .L08052432
.L08051FA0:
	movl      -24(%ebp), %ecx
	movzwl    2686(%esi,%ecx,4), %edi
	movl      $16, %eax
	subl      %edi, %eax
	movl      5820(%esi), %ecx
	cmpl      %eax, %ecx
	movl      $16, -36(%ebp)
	jg        .L08052287
.L08051FC7:
	movl      -24(%ebp), %ebx
	movzwl    2684(%esi,%ebx,4), %edx
	sall      %cl, %edx
	orw       %dx, 5816(%esi)
	addl      %edi, %ecx
.L08051FDD:
	movl      %ecx, 5820(%esi)
	decl      -32(%ebp)
.L08051FE6:
	movzwl    2750(%esi), %edi
	movl      $16, %eax
	subl      %edi, %eax
	cmpl      %eax, %ecx
	movl      $16, -40(%ebp)
	jle       .L0805241A
.L08052003:
	movzwl    2748(%esi), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, -40(%ebp)
	movb      -40(%ebp), %cl
	sarl      %cl, %ebx
	incl      20(%esi)
	movw      %bx, 5816(%esi)
	leal      -16(%eax,%edi), %edx
.L0805205B:
	cmpl      $14, %edx
	movl      $16, %edi
	jle       .L080523FE
.L08052069:
	movl      -32(%ebp), %eax
	subl      $3, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -52(%ebp)
	sall      %cl, %eax
	movw      5816(%esi), %bx
	movl      %edx, 5820(%esi)
	orl       %eax, %ebx
	movl      8(%esi), %edx
	movl      20(%esi), %eax
	movw      %bx, 5816(%esi)
	movb      %bl, (%eax,%edx)
	movl      20(%esi), %ebx
	movzbw    5817(%esi), %ax
	leal      1(%ebx), %ecx
	movl      8(%esi), %edx
	movl      %ecx, 20(%esi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	sarl      %cl, -52(%ebp)
	movl      -52(%ebp), %edi
	incl      20(%esi)
	movw      %di, 5816(%esi)
	subl      $14, %eax
	.p2align 3
.L080520D0:
	movl      %eax, 5820(%esi)
.L080520D6:
	movl      -28(%ebp), %eax
	testl     %eax, %eax
	movl      $0, -32(%ebp)
	movl      -24(%ebp), %ecx
	movl      $138, %edx
	je        .L080523F4
.L080520F0:
	movl      -28(%ebp), %edx
	cmpl      %edx, -24(%ebp)
	je        .L080523EC
.L080520FC:
	movl      $7, %edx
	movl      $4, %eax
	.p2align 3
.L08052108:
	incl      -20(%ebp)
	movl      8(%ebp), %edi
	cmpl      %edi, -20(%ebp)
	jle       .L08051EB4
.L08052117:
	addl      $40, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0805211F:
	cmpl      $10, -32(%ebp)
	jg        .L080521D8
.L08052129:
	movzwl    2754(%esi), %edi
	movl      $16, %edx
	subl      %edi, %edx
	movl      5820(%esi), %ecx
	cmpl      %edx, %ecx
	movl      $16, -44(%ebp)
	jg        .L0805236A
.L0805214C:
	movzwl    2752(%esi), %ebx
	sall      %cl, %ebx
	leal      (%ecx,%edi), %edx
	orw       %bx, 5816(%esi)
	cmpl      $13, %edx
	movl      $16, %edi
	jle       .L080523D0
.L0805216D:
	movl      -32(%ebp), %eax
	subl      $3, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -52(%ebp)
	sall      %cl, %eax
	movw      5816(%esi), %bx
	movl      %edx, 5820(%esi)
	orl       %eax, %ebx
	movl      8(%esi), %edx
	movl      20(%esi), %eax
	movw      %bx, 5816(%esi)
	movb      %bl, (%eax,%edx)
	movl      20(%esi), %ebx
	movzbw    5817(%esi), %ax
	leal      1(%ebx), %ecx
	movl      8(%esi), %edx
	movl      %ecx, 20(%esi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	sarl      %cl, -52(%ebp)
	movl      -52(%ebp), %edi
	incl      20(%esi)
	subl      $13, %eax
	movw      %di, 5816(%esi)
	jmp       .L080520D0
.L080521D8:
	movzwl    2758(%esi), %edi
	movl      $16, %edx
	subl      %edi, %edx
	movl      5820(%esi), %ecx
	cmpl      %edx, %ecx
	movl      $16, -48(%ebp)
	jg        .L080522E8
.L080521FB:
	movzwl    2756(%esi), %ebx
	sall      %cl, %ebx
	leal      (%ecx,%edi), %edx
	orw       %bx, 5816(%esi)
	cmpl      $9, %edx
	movl      $16, %edi
	jle       .L0805234E
.L0805221C:
	movl      -32(%ebp), %eax
	subl      $11, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -52(%ebp)
	sall      %cl, %eax
	movw      5816(%esi), %bx
	movl      %edx, 5820(%esi)
	orl       %eax, %ebx
	movl      8(%esi), %edx
	movl      20(%esi), %eax
	movw      %bx, 5816(%esi)
	movb      %bl, (%eax,%edx)
	movl      20(%esi), %ebx
	movzbw    5817(%esi), %ax
	leal      1(%ebx), %ecx
	movl      8(%esi), %edx
	movl      %ecx, 20(%esi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	sarl      %cl, -52(%ebp)
	movl      -52(%ebp), %edi
	incl      20(%esi)
	subl      $9, %eax
	movw      %di, 5816(%esi)
	jmp       .L080520D0
.L08052287:
	movl      -24(%ebp), %eax
	movzwl    2684(%esi,%eax,4), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %edx
	subl      %edx, -36(%ebp)
	movb      -36(%ebp), %cl
	sarl      %cl, %ebx
	incl      20(%esi)
	leal      -16(%edx,%edi), %ecx
	movw      %bx, 5816(%esi)
	jmp       .L08051FDD
.L080522E8:
	movzwl    2756(%esi), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	orl       %edx, %ecx
	movl      20(%esi), %eax
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, -48(%ebp)
	leal      -16(%eax,%edi), %edx
	movb      -48(%ebp), %cl
	sarl      %cl, %ebx
	incl      20(%esi)
	cmpl      $9, %edx
	movw      %bx, 5816(%esi)
	movl      $16, %edi
	jg        .L0805221C
.L0805234E:
	movl      -32(%ebp), %ebx
	subl      $11, %ebx
	movzwl    %bx, %edi
	movb      %dl, %cl
	sall      %cl, %edi
	orw       %di, 5816(%esi)
	leal      7(%edx), %eax
	jmp       .L080520D0
.L0805236A:
	movzwl    2752(%esi), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	orl       %edx, %ecx
	movl      20(%esi), %eax
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, -44(%ebp)
	leal      -16(%eax,%edi), %edx
	movb      -44(%ebp), %cl
	sarl      %cl, %ebx
	incl      20(%esi)
	cmpl      $13, %edx
	movw      %bx, 5816(%esi)
	movl      $16, %edi
	jg        .L0805216D
.L080523D0:
	movl      -32(%ebp), %ebx
	subl      $3, %ebx
	movzwl    %bx, %edi
	movb      %dl, %cl
	sall      %cl, %edi
	orw       %di, 5816(%esi)
	leal      3(%edx), %eax
	jmp       .L080520D0
.L080523EC:
	movl      $6, %edx
	.p2align 2
.L080523F4:
	movl      $3, %eax
	jmp       .L08052108
.L080523FE:
	movl      -32(%ebp), %ebx
	subl      $3, %ebx
	movzwl    %bx, %edi
	movb      %dl, %cl
	sall      %cl, %edi
	orw       %di, 5816(%esi)
	leal      2(%edx), %eax
	jmp       .L080520D0
.L0805241A:
	movzwl    2748(%esi), %ebx
	sall      %cl, %ebx
	orw       %bx, 5816(%esi)
	leal      (%ecx,%edi), %edx
	jmp       .L0805205B
.L08052432:
	movl      5820(%esi), %ecx
	jmp       .L08051FE6
	.size	send_tree, .-send_tree
# ----------------------
.L0805243D:
	.p2align 3
# ----------------------
	.hidden	_tr_flush_bits
	.globl	_tr_flush_bits
	.type	_tr_flush_bits, @function
_tr_flush_bits:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      8(%ebp), %ebx
	movl      5820(%ebx), %eax
	cmpl      $16, %eax
	je        .L08052484
.L08052452:
	cmpl      $7, %eax
	jle       .L08052480
.L08052457:
	movl      8(%ebx), %ecx
	movl      20(%ebx), %edx
	movw      5816(%ebx), %ax
	movb      %al, (%edx,%ecx)
	movzbw    5817(%ebx), %cx
	incl      20(%ebx)
	movw      %cx, 5816(%ebx)
	subl      $8, 5820(%ebx)
.L08052480:
	popl      %ebx
	leave     
	ret       
.L08052483:
	.p2align 2
.L08052484:
	movl      20(%ebx), %edx
	movw      5816(%ebx), %ax
	movl      8(%ebx), %ecx
	movb      %al, (%edx,%ecx)
	movl      20(%ebx), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%ebx)
	movzbw    5817(%ebx), %ax
	movl      8(%ebx), %edx
	movb      %al, 1(%ecx,%edx)
	incl      20(%ebx)
	movw      $0, 5816(%ebx)
	movl      $0, 5820(%ebx)
	popl      %ebx
	leave     
	ret       
	.size	_tr_flush_bits, .-_tr_flush_bits
# ----------------------
.L080524C5:
	.p2align 3
# ----------------------
	.hidden	_tr_align
	.globl	_tr_align
	.type	_tr_align, @function
_tr_align:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	pushl     %edi
	movl      8(%ebp), %esi
	movl      5820(%esi), %ecx
	cmpl      $13, %ecx
	movl      $16, %edi
	jle       .L08052604
.L080524E6:
	movl      $2, %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	orl       %edx, %ecx
	movl      20(%esi), %eax
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	subl      $13, %eax
	sarl      %cl, %ebx
	movl      %eax, 5820(%esi)
	movl      $16, %edi
	movzwl    static_ltree+1026, %eax
	movw      %bx, 5816(%esi)
	movl      %eax, -16(%ebp)
	movl      %edi, %ebx
	subl      -16(%ebp), %ebx
	movl      5820(%esi), %ecx
	incl      20(%esi)
	cmpl      %ebx, %ecx
	jle       .L0805263D
.L08052561:
	movzwl    static_ltree+1024, %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	orl       %edx, %ecx
	movl      20(%esi), %eax
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	sarl      %cl, %ebx
	movl      -16(%ebp), %ecx
	leal      -16(%eax,%ecx), %eax
	movl      %eax, 5820(%esi)
	movl      5820(%esi), %eax
	incl      20(%esi)
	cmpl      $16, %eax
	movw      %bx, 5816(%esi)
	je        .L08052668
.L080525CF:
	cmpl      $7, %eax
	jle       .L080525FD
.L080525D4:
	movl      20(%esi), %ebx
	movw      5816(%esi), %dx
	movl      8(%esi), %edi
	movb      %dl, (%ebx,%edi)
	movzbw    5817(%esi), %ax
	incl      20(%esi)
	movw      %ax, 5816(%esi)
	subl      $8, 5820(%esi)
.L080525FD:
	popl      %esi
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08052603:
	.p2align 2
.L08052604:
	movl      $2, %edi
	sall      %cl, %edi
	leal      3(%ecx), %eax
	orw       %di, 5816(%esi)
	movl      %eax, 5820(%esi)
	movl      $16, %edi
	movzwl    static_ltree+1026, %eax
	movl      %eax, -16(%ebp)
	movl      %edi, %ebx
	subl      -16(%ebp), %ebx
	movl      5820(%esi), %ecx
	cmpl      %ebx, %ecx
	jg        .L08052561
.L0805263D:
	movl      -16(%ebp), %edi
	leal      (%ecx,%edi), %eax
	movzwl    static_ltree+1024, %ebx
	movl      %eax, 5820(%esi)
	sall      %cl, %ebx
	movl      5820(%esi), %eax
	orw       %bx, 5816(%esi)
	cmpl      $16, %eax
	jne       .L080525CF
.L08052668:
	movl      20(%esi), %edx
	movw      5816(%esi), %cx
	movl      8(%esi), %ebx
	movb      %cl, (%edx,%ebx)
	movl      20(%esi), %ecx
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	leal      1(%ecx), %edi
	movl      %edi, 20(%esi)
	movb      %al, 1(%ecx,%edx)
	incl      20(%esi)
	movw      $0, 5816(%esi)
	movl      $0, 5820(%esi)
	popl      %esi
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	_tr_align, .-_tr_align
# ----------------------
	.local	compress_block
	.type	compress_block, @function
compress_block:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $72, %esp
	movl      %edx, -16(%ebp)
	movl      5792(%eax), %edx
	testl     %edx, %edx
	movl      %eax, %esi
	movl      $0, -24(%ebp)
	je        .L08052A90
.L080526CF:
	movl      5820(%eax), %ecx
	jmp       .L0805276A
.L080526DA:
	.p2align 2
.L080526DC:
	movl      -16(%ebp), %eax
	movzwl    2(%eax,%ebx,4), %edi
	movl      $16, %eax
	subl      %edi, %eax
	cmpl      %eax, %ecx
	movl      $16, -32(%ebp)
	jle       .L080529E8
.L080526FA:
	movl      -16(%ebp), %eax
	movzwl    (%eax,%ebx,4), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movl      %ebx, -36(%ebp)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %edx
	subl      %edx, -32(%ebp)
	movb      -32(%ebp), %cl
	sarl      %cl, %ebx
	incl      20(%esi)
	movw      %bx, 5816(%esi)
	leal      -16(%edx,%edi), %ecx
.L08052755:
	movl      %ecx, 5820(%esi)
.L0805275B:
	movl      5792(%esi), %edx
.L08052761:
	cmpl      -24(%ebp), %edx
	jbe       .L08052A96
.L0805276A:
	movl      -24(%ebp), %ebx
	movl      5796(%esi), %edi
	movzwl    (%edi,%ebx,2), %eax
	movl      %eax, -20(%ebp)
	movl      5784(%esi), %edi
	movl      -20(%ebp), %eax
	movzbl    (%ebx,%edi), %ebx
	incl      -24(%ebp)
	testl     %eax, %eax
	je        .L080526DC
.L08052792:
	movl      -16(%ebp), %eax
	movzbl    _length_code(%ebx), %edi
	movzwl    1030(%eax,%edi,4), %edx
	movl      $16, %eax
	subl      %edx, %eax
	cmpl      %eax, %ecx
	movl      %edx, -40(%ebp)
	movl      $16, -44(%ebp)
	jle       .L08052A4C
.L080527BD:
	movl      -16(%ebp), %eax
	movzwl    1028(%eax,%edi,4), %edx
	movl      %edx, -48(%ebp)
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, -44(%ebp)
	movb      -44(%ebp), %cl
	sarl      %cl, -48(%ebp)
	movl      -48(%ebp), %ecx
	movl      -40(%ebp), %edx
	movw      %cx, 5816(%esi)
	incl      20(%esi)
	leal      -16(%eax,%edx), %ecx
.L08052821:
	movl      extra_lbits(,%edi,4), %eax
	testl     %eax, %eax
	movl      %eax, -28(%ebp)
	je        .L08052A40
.L08052833:
	subl      base_length(,%edi,4), %ebx
	movl      $16, %edi
	subl      -28(%ebp), %edi
	cmpl      %edi, %ecx
	movl      $16, -52(%ebp)
	jle       .L08052A68
.L08052851:
	movzwl    %bx, %edi
	movl      %edi, %eax
	movl      %ecx, 5820(%esi)
	sall      %cl, %eax
	movw      5816(%esi), %cx
	movl      20(%esi), %edx
	orl       %eax, %ecx
	movl      8(%esi), %ebx
	movw      %cx, 5816(%esi)
	movb      %cl, (%edx,%ebx)
	movl      20(%esi), %edx
	leal      1(%edx), %ecx
	movl      8(%esi), %ebx
	movzbw    5817(%esi), %ax
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      5820(%esi), %edx
	subl      %edx, -52(%ebp)
	movb      -52(%ebp), %cl
	sarl      %cl, %edi
	movl      -28(%ebp), %ebx
	incl      20(%esi)
	movw      %di, 5816(%esi)
	leal      -16(%edx,%ebx), %ecx
.L080528AE:
	movl      %ecx, 5820(%esi)
.L080528B4:
	movl      -20(%ebp), %edi
	decl      %edi
	cmpl      $255, %edi
	movl      %edi, -80(%ebp)
	ja        .L08052A2C
.L080528C7:
	movzbl    _dist_code(%edi), %edi
.L080528CE:
	movl      8(%ebp), %ebx
	movzwl    2(%ebx,%edi,4), %eax
	movl      %eax, -56(%ebp)
	movl      $16, %edx
	subl      -56(%ebp), %edx
	cmpl      %edx, %ecx
	movl      $16, -60(%ebp)
	jle       .L08052A14
.L080528F0:
	movl      8(%ebp), %edx
	movzwl    (%edx,%edi,4), %ebx
	movl      %ebx, %eax
	sall      %cl, %eax
	movw      5816(%esi), %cx
	movl      %ebx, -64(%ebp)
	movl      20(%esi), %edx
	orl       %eax, %ecx
	movl      8(%esi), %ebx
	movw      %cx, 5816(%esi)
	movb      %cl, (%edx,%ebx)
	movl      20(%esi), %edx
	leal      1(%edx), %ecx
	movzbw    5817(%esi), %ax
	movl      8(%esi), %ebx
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      5820(%esi), %eax
	subl      %eax, -60(%ebp)
	movb      -60(%ebp), %cl
	sarl      %cl, -64(%ebp)
	movl      -64(%ebp), %ecx
	movl      -56(%ebp), %edx
	movw      %cx, 5816(%esi)
	incl      20(%esi)
	leal      -16(%eax,%edx), %ecx
.L08052952:
	movl      extra_dbits(,%edi,4), %eax
	testl     %eax, %eax
	movl      %eax, -84(%ebp)
	je        .L08052A08
.L08052964:
	movl      -80(%ebp), %ebx
	subl      base_dist(,%edi,4), %ebx
	movl      $16, %edi
	subl      -84(%ebp), %edi
	cmpl      %edi, %ecx
	movl      $16, -68(%ebp)
	jle       .L08052A7C
.L08052985:
	movzwl    %bx, %edi
	movl      %edi, %eax
	movl      %ecx, 5820(%esi)
	sall      %cl, %eax
	movw      5816(%esi), %cx
	movl      20(%esi), %ebx
	orl       %eax, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%ebx,%edx)
	movl      20(%esi), %ebx
	leal      1(%ebx), %ecx
	movl      8(%esi), %edx
	movzbw    5817(%esi), %ax
	movl      %ecx, 20(%esi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%esi), %ebx
	subl      %ebx, -68(%ebp)
	movb      -68(%ebp), %cl
	movl      -84(%ebp), %edx
	sarl      %cl, %edi
	incl      20(%esi)
	leal      -16(%ebx,%edx), %ecx
	movw      %di, 5816(%esi)
	jmp       .L08052755
.L080529E7:
	.p2align 3
.L080529E8:
	movl      -16(%ebp), %eax
	movzwl    (%eax,%ebx,4), %ebx
	sall      %cl, %ebx
	orw       %bx, 5816(%esi)
	addl      %edi, %ecx
	movl      %ecx, 5820(%esi)
	jmp       .L08052761
.L08052A05:
	.p2align 3
.L08052A08:
	movl      %ecx, 5820(%esi)
	jmp       .L0805275B
.L08052A13:
	.p2align 2
.L08052A14:
	movl      8(%ebp), %ebx
	movzwl    (%ebx,%edi,4), %eax
	sall      %cl, %eax
	orw       %ax, 5816(%esi)
	addl      -56(%ebp), %ecx
	jmp       .L08052952
.L08052A2C:
	movl      -80(%ebp), %ebx
	shrl      $7, %ebx
	movzbl    _dist_code+256(%ebx), %edi
	jmp       .L080528CE
.L08052A3E:
	.p2align 3
.L08052A40:
	movl      %ecx, 5820(%esi)
	jmp       .L080528B4
.L08052A4B:
	.p2align 2
.L08052A4C:
	movl      -16(%ebp), %edx
	movzwl    1028(%edx,%edi,4), %eax
	sall      %cl, %eax
	orw       %ax, 5816(%esi)
	addl      -40(%ebp), %ecx
	jmp       .L08052821
.L08052A68:
	movzwl    %bx, %edi
	sall      %cl, %edi
	orw       %di, 5816(%esi)
	addl      -28(%ebp), %ecx
	jmp       .L080528AE
.L08052A7C:
	movzwl    %bx, %edi
	sall      %cl, %edi
	orw       %di, 5816(%esi)
	addl      -84(%ebp), %ecx
	jmp       .L08052755
.L08052A90:
	movl      5820(%eax), %ecx
.L08052A96:
	movl      -16(%ebp), %eax
	movzwl    1026(%eax), %ebx
	movl      $16, %edx
	subl      %ebx, %edx
	cmpl      %edx, %ecx
	movl      %ebx, -72(%ebp)
	movl      $16, -76(%ebp)
	jle       .L08052B24
.L08052AB5:
	movl      -16(%ebp), %ebx
	movzwl    1024(%ebx), %edi
	movl      %edi, %eax
	sall      %cl, %eax
	movw      5816(%esi), %cx
	movl      20(%esi), %edx
	movl      8(%esi), %ebx
	orl       %eax, %ecx
	movw      %cx, 5816(%esi)
	movb      %cl, (%edx,%ebx)
	movl      20(%esi), %edx
	movzbw    5817(%esi), %ax
	movl      8(%esi), %ebx
	leal      1(%edx), %ecx
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      5820(%esi), %edx
	subl      %edx, -76(%ebp)
	movb      -76(%ebp), %cl
	sarl      %cl, %edi
	movl      -72(%ebp), %ecx
	leal      -16(%edx,%ecx), %eax
	incl      20(%esi)
	movw      %di, 5816(%esi)
	movl      %eax, 5820(%esi)
	addl      $72, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08052B21:
	.p2align 2
.L08052B24:
	movl      -16(%ebp), %eax
	movzwl    1024(%eax), %edx
	movl      -72(%ebp), %edi
	leal      (%ecx,%edi), %eax
	sall      %cl, %edx
	orw       %dx, 5816(%esi)
	movl      %eax, 5820(%esi)
	addl      $72, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	compress_block, .-compress_block
# ----------------------
.L08052B4B:
	.p2align 2
# ----------------------
	.hidden	_tr_stored_block
	.globl	_tr_stored_block
	.type	_tr_stored_block, @function
_tr_stored_block:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	movl      8(%ebp), %esi
	movl      5820(%esi), %ecx
	cmpl      $13, %ecx
	movl      20(%ebp), %eax
	movl      $16, %edi
	jle       .L08052CA6
.L08052B6C:
	movzwl    %ax, %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%esi), %cx
	movl      20(%esi), %eax
	orl       %edx, %ecx
	movl      8(%esi), %edx
	movw      %cx, 5816(%esi)
	movb      %cl, (%eax,%edx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%esi)
	movzbw    5817(%esi), %ax
	movl      8(%esi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%esi), %eax
	subl      %eax, %edi
	movl      %edi, %ecx
	incl      20(%esi)
	sarl      %cl, %ebx
	subl      $13, %eax
.L08052BB6:
	movl      %eax, 5820(%esi)
	movl      5820(%esi), %eax
	cmpl      $8, %eax
	movl      12(%ebp), %edi
	jle       .L08052C89
.L08052BCE:
	movl      20(%esi), %eax
	movl      8(%esi), %ecx
	movw      %bx, 5816(%esi)
	movb      %bl, (%eax,%ecx)
	movl      20(%esi), %ecx
	leal      1(%ecx), %edx
	movl      8(%esi), %ebx
	movzbw    5817(%esi), %ax
	movl      %edx, 20(%esi)
	movb      %al, 1(%ecx,%ebx)
.L08052BF6:
	incl      20(%esi)
.L08052BF9:
	movl      20(%esi), %edx
	movl      8(%esi), %ebx
	movb      16(%ebp), %al
	movw      $0, 5816(%esi)
	movl      $0, 5820(%esi)
	movb      %al, (%edx,%ebx)
	movl      20(%esi), %edx
	movl      16(%ebp), %eax
	movl      8(%esi), %ebx
	leal      1(%edx), %ecx
	shrw      $8, %ax
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      20(%esi), %edx
	movb      16(%ebp), %al
	leal      1(%edx), %ecx
	movl      8(%esi), %ebx
	notl      %eax
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      16(%ebp), %eax
	movl      20(%esi), %edx
	notl      %eax
	leal      1(%edx), %ecx
	movl      8(%esi), %ebx
	shrw      $8, %ax
	movl      %ecx, 20(%esi)
	movb      %al, 1(%edx,%ebx)
	movl      20(%esi), %ebx
	incl      %ebx
	movl      16(%ebp), %ecx
	movl      %ebx, 20(%esi)
	jmp       .L08052C7E
.L08052C69:
	.p2align 2
.L08052C6C:
	movb      (%edi), %al
	movl      8(%esi), %edx
	movb      %al, (%ebx,%edx)
	movl      20(%esi), %edx
	incl      %edx
	incl      %edi
	movl      %edx, %ebx
	movl      %edx, 20(%esi)
.L08052C7E:
	decl      %ecx
	cmpl      $-1, %ecx
	jne       .L08052C6C
.L08052C84:
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08052C89:
	testl     %eax, %eax
	jle       .L08052BF9
.L08052C91:
	movl      8(%esi), %edx
	movl      20(%esi), %ecx
	movw      %bx, 5816(%esi)
	movb      %bl, (%ecx,%edx)
	jmp       .L08052BF6
.L08052CA6:
	movzwl    %ax, %edi
	sall      %cl, %edi
	movw      5816(%esi), %bx
	orl       %edi, %ebx
	leal      3(%ecx), %eax
	jmp       .L08052BB6
	.size	_tr_stored_block, .-_tr_stored_block
# ----------------------
	.hidden	_tr_flush_block
	.globl	_tr_flush_block
	.type	_tr_flush_block, @function
_tr_flush_block:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $76, %esp
	movl      8(%ebp), %edi
	movl      132(%edi), %eax
	testl     %eax, %eax
	movl      $0, -16(%ebp)
	jle       .L0805318E
.L08052CDD:
	movl      (%edi), %ecx
	cmpl      $2, 44(%ecx)
	je        .L0805315E
.L08052CE9:
	leal      2840(%edi), %edx
	movl      %edi, %eax
	call      build_tree
.L08052CF6:
	leal      2852(%edi), %edx
	movl      %edi, %eax
	call      build_tree
.L08052D03:
	leal      148(%edi), %ebx
	movl      2844(%edi), %edx
	movl      %edx, -24(%ebp)
	movl      %ebx, -20(%ebp)
	movl      $-1, -28(%ebp)
	movzwl    2(%ebx), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	movl      $7, -32(%ebp)
	movl      $4, -72(%ebp)
	je        .L0805308B
.L08052D38:
	movl      -24(%ebp), %eax
	movl      -20(%ebp), %esi
	movw      $65535, 6(%esi,%eax,4)
	xorl      %ebx, %ebx
	cmpl      -24(%ebp), %ebx
	jg        .L08052D92
.L08052D4C:
	incl      %edx
	movl      -20(%ebp), %esi
	cmpl      -32(%ebp), %edx
	movl      %ecx, %eax
	movzwl    6(%esi,%ebx,4), %ecx
	jge       .L08052D60
.L08052D5C:
	cmpl      %ecx, %eax
	je        .L08052D8C
.L08052D60:
	cmpl      -72(%ebp), %edx
	jge       .L080530BA
.L08052D69:
	addw      %dx, 2684(%edi,%eax,4)
.L08052D71:
	xorl      %edx, %edx
	testl     %ecx, %ecx
	movl      %eax, -28(%ebp)
	jne       .L0805309E
.L08052D7E:
	movl      $138, -32(%ebp)
.L08052D85:
	movl      $3, -72(%ebp)
.L08052D8C:
	incl      %ebx
.L08052D8D:
	cmpl      -24(%ebp), %ebx
	jle       .L08052D4C
.L08052D92:
	leal      2440(%edi), %ebx
	movl      2856(%edi), %ecx
	movl      %ebx, -36(%ebp)
	movl      %ecx, -40(%ebp)
	movl      $-1, -44(%ebp)
	movzwl    2(%ebx), %ecx
	xorl      %edx, %edx
	testl     %ecx, %ecx
	movl      $7, -48(%ebp)
	movl      $4, -72(%ebp)
	jne       .L08052DD1
.L08052DC3:
	movl      $138, -48(%ebp)
	movl      $3, -72(%ebp)
.L08052DD1:
	movl      -40(%ebp), %esi
	movl      -36(%ebp), %eax
	movw      $65535, 6(%eax,%esi,4)
	xorl      %ebx, %ebx
	cmpl      -40(%ebp), %ebx
	jg        .L08052E2B
.L08052DE5:
	incl      %edx
	movl      -36(%ebp), %esi
	cmpl      -48(%ebp), %edx
	movl      %ecx, %eax
	movzwl    6(%esi,%ebx,4), %ecx
	jge       .L08052DF9
.L08052DF5:
	cmpl      %ecx, %eax
	je        .L08052E25
.L08052DF9:
	cmpl      -72(%ebp), %edx
	jge       .L08053100
.L08052E02:
	addw      %dx, 2684(%edi,%eax,4)
.L08052E0A:
	xorl      %edx, %edx
	testl     %ecx, %ecx
	movl      %eax, -44(%ebp)
	jne       .L080530E8
.L08052E17:
	movl      $138, -48(%ebp)
.L08052E1E:
	movl      $3, -72(%ebp)
.L08052E25:
	incl      %ebx
.L08052E26:
	cmpl      -40(%ebp), %ebx
	jle       .L08052DE5
.L08052E2B:
	leal      2864(%edi), %edx
	movl      %edi, %eax
	call      build_tree
.L08052E38:
	movl      $18, %ecx
.L08052E3D:
	movzbl    bl_order(%ecx), %edx
	cmpw      $0, 2686(%edi,%edx,4)
	jne       .L08052E55
.L08052E4F:
	decl      %ecx
	cmpl      $2, %ecx
	jg        .L08052E3D
.L08052E55:
	leal      (%ecx,%ecx,2), %ebx
	addl      5800(%edi), %ebx
	movl      %ecx, -16(%ebp)
	movl      5804(%edi), %ecx
	addl      $10, %ecx
	leal      27(%ebx), %edx
	shrl      $3, %edx
	shrl      $3, %ecx
	leal      17(%ebx), %eax
	cmpl      %edx, %ecx
	movl      %eax, 5800(%edi)
	ja        .L08052E82
.L08052E80:
	movl      %ecx, %edx
.L08052E82:
	movl      16(%ebp), %esi
	addl      $4, %esi
	cmpl      %edx, %esi
	ja        .L08053199
.L08052E90:
	movl      12(%ebp), %ebx
	testl     %ebx, %ebx
	je        .L08053199
.L08052E9B:
	movl      5820(%edi), %ecx
	cmpl      $13, %ecx
	movl      $16, %esi
	jle       .L0805341D
.L08052EAF:
	movzwl    20(%ebp), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%edi), %cx
	movl      20(%edi), %eax
	orl       %edx, %ecx
	movl      8(%edi), %edx
	movw      %cx, 5816(%edi)
	movb      %cl, (%eax,%edx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%edi)
	movzbw    5817(%edi), %ax
	movl      8(%edi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%edi), %eax
	subl      %eax, %esi
	movl      %esi, %ecx
	incl      20(%edi)
	sarl      %cl, %ebx
	subl      $13, %eax
.L08052EFA:
	movl      %eax, 5820(%edi)
	movl      5820(%edi), %eax
	cmpl      $8, %eax
	movl      12(%ebp), %esi
	jle       .L08053400
.L08052F12:
	movl      20(%edi), %eax
	movl      8(%edi), %ecx
	movw      %bx, 5816(%edi)
	movb      %bl, (%eax,%ecx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %edx
	movl      8(%edi), %ebx
	movzbw    5817(%edi), %ax
	movl      %edx, 20(%edi)
	movb      %al, 1(%ecx,%ebx)
.L08052F3A:
	incl      20(%edi)
.L08052F3D:
	movl      20(%edi), %eax
	movl      8(%edi), %edx
	movb      16(%ebp), %bl
	movw      $0, 5816(%edi)
	movl      $0, 5820(%edi)
	movb      %bl, (%eax,%edx)
	movl      20(%edi), %edx
	movl      16(%ebp), %eax
	movl      8(%edi), %ebx
	leal      1(%edx), %ecx
	shrw      $8, %ax
	movl      %ecx, 20(%edi)
	movb      %al, 1(%edx,%ebx)
	movl      20(%edi), %edx
	movb      16(%ebp), %al
	leal      1(%edx), %ecx
	movl      8(%edi), %ebx
	notl      %eax
	movl      %ecx, 20(%edi)
	movb      %al, 1(%edx,%ebx)
	movl      16(%ebp), %eax
	movl      20(%edi), %edx
	notl      %eax
	leal      1(%edx), %ecx
	movl      8(%edi), %ebx
	shrw      $8, %ax
	movl      %ecx, 20(%edi)
	movb      %al, 1(%edx,%ebx)
	movl      20(%edi), %ebx
	incl      %ebx
	movl      16(%ebp), %ecx
	movl      %ebx, 20(%edi)
	jmp       .L08052FBF
.L08052FAD:
	movb      (%esi), %al
	movl      8(%edi), %edx
	movb      %al, (%ebx,%edx)
	movl      20(%edi), %edx
	incl      %edx
	incl      %esi
	movl      %edx, %ebx
	movl      %edx, 20(%edi)
.L08052FBF:
	decl      %ecx
	cmpl      $-1, %ecx
	jne       .L08052FAD
.L08052FC5:
	xorl      %eax, %eax
	.p2align 3
.L08052FC8:
	movw      $0, 148(%edi,%eax,4)
	incl      %eax
	cmpl      $285, %eax
	jle       .L08052FC8
.L08052FDA:
	xorl      %eax, %eax
.L08052FDC:
	movw      $0, 2440(%edi,%eax,4)
	incl      %eax
	cmpl      $29, %eax
	jle       .L08052FDC
.L08052FEC:
	xorl      %eax, %eax
.L08052FEE:
	movw      $0, 2684(%edi,%eax,4)
	incl      %eax
	cmpl      $18, %eax
	jle       .L08052FEE
.L08052FFE:
	movl      20(%ebp), %eax
	testl     %eax, %eax
	movw      $1, 1172(%edi)
	movl      $0, 5804(%edi)
	movl      $0, 5800(%edi)
	movl      $0, 5808(%edi)
	movl      $0, 5792(%edi)
	je        .L08053083
.L08053036:
	movl      5820(%edi), %eax
	cmpl      $8, %eax
	jle       .L0805362D
.L08053045:
	movl      20(%edi), %edx
	movl      8(%edi), %ebx
	movw      5816(%edi), %ax
	movb      %al, (%edx,%ebx)
	movl      20(%edi), %ebx
	leal      1(%ebx), %esi
	movl      8(%edi), %edx
	movzbw    5817(%edi), %cx
	movl      %esi, 20(%edi)
	movb      %cl, 1(%ebx,%edx)
.L0805306D:
	incl      20(%edi)
.L08053070:
	movw      $0, 5816(%edi)
	movl      $0, 5820(%edi)
.L08053083:
	leal      -12(%ebp), %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0805308B:
	movl      $138, -32(%ebp)
	movl      $3, -72(%ebp)
	jmp       .L08052D38
.L0805309E:
	cmpl      %ecx, %eax
	je        .L0805313A
.L080530A6:
	incl      %ebx
	movl      $7, -32(%ebp)
	movl      $4, -72(%ebp)
	jmp       .L08052D8D
.L080530BA:
	testl     %eax, %eax
	je        .L080530D7
.L080530BE:
	cmpl      -28(%ebp), %eax
	je        .L080530CB
.L080530C3:
	incw      2684(%edi,%eax,4)
.L080530CB:
	incw      2748(%edi)
	jmp       .L08052D71
.L080530D7:
	cmpl      $10, %edx
	jg        .L08053152
.L080530DC:
	incw      2752(%edi)
	jmp       .L08052D71
.L080530E8:
	cmpl      %ecx, %eax
	je        .L0805312E
.L080530EC:
	incl      %ebx
	movl      $7, -48(%ebp)
	movl      $4, -72(%ebp)
	jmp       .L08052E26
.L08053100:
	testl     %eax, %eax
	je        .L0805311D
.L08053104:
	cmpl      -44(%ebp), %eax
	je        .L08053111
.L08053109:
	incw      2684(%edi,%eax,4)
.L08053111:
	incw      2748(%edi)
	jmp       .L08052E0A
.L0805311D:
	cmpl      $10, %edx
	jg        .L08053146
.L08053122:
	incw      2752(%edi)
	jmp       .L08052E0A
.L0805312E:
	movl      $6, -48(%ebp)
	jmp       .L08052E1E
.L0805313A:
	movl      $6, -32(%ebp)
	jmp       .L08052D85
.L08053146:
	incw      2756(%edi)
	jmp       .L08052E0A
.L08053152:
	incw      2756(%edi)
	jmp       .L08052D71
.L0805315E:
	movl      $-201342849, %edx
	xorl      %eax, %eax
	jmp       .L08053174
.L08053167:
	.p2align 3
.L08053168:
	incl      %eax
	shrl      $1, %edx
	cmpl      $31, %eax
	jg        .L080535DF
.L08053174:
	testb     $1, %dl
	je        .L08053168
.L08053179:
	cmpw      $0, 148(%edi,%eax,4)
	je        .L08053168
.L08053184:
	xorl      %eax, %eax
	movl      %eax, 44(%ecx)
	jmp       .L08052CE9
.L0805318E:
	movl      16(%ebp), %ecx
	addl      $5, %ecx
	jmp       .L08052E80
.L08053199:
	cmpl      $4, 136(%edi)
	je        .L08053499
.L080531A6:
	cmpl      %edx, %ecx
	je        .L08053499
.L080531AE:
	movl      5820(%edi), %edx
	cmpl      $13, %edx
	movl      $16, %esi
	jg        .L08053434
.L080531C2:
	movl      20(%ebp), %ebx
	addl      $4, %ebx
	movzwl    %bx, %esi
	movb      %dl, %cl
	sall      %cl, %esi
	orw       %si, 5816(%edi)
	leal      3(%edx), %eax
.L080531D9:
	movl      %eax, 5820(%edi)
	movl      -16(%ebp), %edx
	movl      2844(%edi), %eax
	incl      %edx
	leal      1(%eax), %esi
	movl      %esi, -52(%ebp)
	movl      %edx, -56(%ebp)
	movl      2856(%edi), %esi
	movl      5820(%edi), %edx
	incl      %esi
	cmpl      $11, %edx
	movl      $16, -60(%ebp)
	jle       .L080535A4
.L0805320F:
	leal      -256(%eax), %ecx
	movzwl    %cx, %ebx
	movl      %ebx, %eax
	movb      %dl, %cl
	movl      %ebx, -76(%ebp)
	sall      %cl, %eax
	movw      5816(%edi), %bx
	orl       %eax, %ebx
	movl      8(%edi), %edx
	movl      20(%edi), %eax
	movw      %bx, 5816(%edi)
	movb      %bl, (%eax,%edx)
	movl      20(%edi), %ebx
	movzbw    5817(%edi), %ax
	leal      1(%ebx), %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%edi), %eax
	subl      %eax, -60(%ebp)
	movb      -60(%ebp), %cl
	sarl      %cl, -76(%ebp)
	movl      -76(%ebp), %ecx
	incl      20(%edi)
	movw      %cx, 5816(%edi)
	subl      $11, %eax
.L08053271:
	movl      %eax, 5820(%edi)
	movl      5820(%edi), %ecx
	cmpl      $11, %ecx
	movl      $16, -64(%ebp)
	jle       .L08053558
.L0805328D:
	decl      %esi
	movzwl    %si, %ebx
	movl      %ebx, %eax
	sall      %cl, %eax
	movw      5816(%edi), %cx
	orl       %eax, %ecx
	movl      %esi, -68(%ebp)
	movl      8(%edi), %edx
	movl      20(%edi), %esi
	movw      %cx, 5816(%edi)
	movb      %cl, (%esi,%edx)
	movl      20(%edi), %esi
	leal      1(%esi), %ecx
	movl      8(%edi), %edx
	movzbw    5817(%edi), %ax
	movl      %ecx, 20(%edi)
	movb      %al, 1(%esi,%edx)
	movl      5820(%edi), %esi
	subl      %esi, -64(%ebp)
	subl      $11, %esi
	movl      %esi, 5820(%edi)
	movb      -64(%ebp), %cl
	movl      5820(%edi), %edx
	sarl      %cl, %ebx
	incl      20(%edi)
	cmpl      $12, %edx
	movw      %bx, 5816(%edi)
	movl      $16, %esi
	jle       .L08053588
.L080532FE:
	movl      -56(%ebp), %eax
	subl      $4, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -76(%ebp)
	sall      %cl, %eax
	movw      5816(%edi), %bx
	orl       %eax, %ebx
	movl      8(%edi), %edx
	movl      20(%edi), %eax
	movw      %bx, 5816(%edi)
	movb      %bl, (%eax,%edx)
	movl      20(%edi), %ebx
	movzbw    5817(%edi), %ax
	leal      1(%ebx), %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%edi), %eax
	subl      %eax, %esi
	movl      %esi, %ecx
	sarl      %cl, -76(%ebp)
	movl      -76(%ebp), %esi
	incl      20(%edi)
	movw      %si, 5816(%edi)
	subl      $12, %eax
.L0805335E:
	xorl      %esi, %esi
	movl      %eax, 5820(%edi)
	jmp       .L080533CF
.L08053368:
	movzbl    bl_order(%esi), %eax
	movzwl    2686(%edi,%eax,4), %ebx
	movl      %ebx, %edx
	sall      %cl, %edx
	movw      5816(%edi), %cx
	movl      20(%edi), %eax
	orl       %edx, %ecx
	movl      8(%edi), %edx
	movw      %cx, 5816(%edi)
	movb      %cl, (%eax,%edx)
	movl      20(%edi), %ecx
	leal      1(%ecx), %edx
	movl      %edx, 20(%edi)
	movzbw    5817(%edi), %ax
	movl      8(%edi), %edx
	movb      %al, 1(%ecx,%edx)
	movl      5820(%edi), %eax
	movl      $16, %ecx
	subl      %eax, %ecx
	sarl      %cl, %ebx
	incl      20(%edi)
	movw      %bx, 5816(%edi)
	subl      $13, %eax
.L080533C8:
	movl      %eax, 5820(%edi)
	incl      %esi
.L080533CF:
	cmpl      -56(%ebp), %esi
	jge       .L0805352A
.L080533D8:
	movl      5820(%edi), %ecx
	cmpl      $13, %ecx
	jg        .L08053368
.L080533E3:
	movzbl    bl_order(%esi), %edx
	movzwl    2686(%edi,%edx,4), %ebx
	sall      %cl, %ebx
	orw       %bx, 5816(%edi)
	leal      3(%ecx), %eax
	jmp       .L080533C8
.L08053400:
	testl     %eax, %eax
	jle       .L08052F3D
.L08053408:
	movl      8(%edi), %edx
	movl      20(%edi), %ecx
	movw      %bx, 5816(%edi)
	movb      %bl, (%ecx,%edx)
	jmp       .L08052F3A
.L0805341D:
	movzwl    20(%ebp), %esi
	sall      %cl, %esi
	movw      5816(%edi), %bx
	orl       %esi, %ebx
	leal      3(%ecx), %eax
	jmp       .L08052EFA
.L08053434:
	movl      20(%ebp), %eax
	addl      $4, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -76(%ebp)
	sall      %cl, %eax
	movw      5816(%edi), %bx
	orl       %eax, %ebx
	movl      8(%edi), %edx
	movl      20(%edi), %eax
	movw      %bx, 5816(%edi)
	movb      %bl, (%eax,%edx)
	movl      20(%edi), %ebx
	movzbw    5817(%edi), %ax
	leal      1(%ebx), %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%edi), %eax
	subl      %eax, %esi
	movl      %esi, %ecx
	sarl      %cl, -76(%ebp)
	movl      -76(%ebp), %edx
	incl      20(%edi)
	subl      $13, %eax
	movw      %dx, 5816(%edi)
	jmp       .L080531D9
.L08053499:
	movl      5820(%edi), %edx
	cmpl      $13, %edx
	movl      $16, %esi
	jle       .L080535C3
.L080534AD:
	movl      20(%ebp), %eax
	addl      $2, %eax
	movzwl    %ax, %ebx
	movb      %dl, %cl
	movl      %ebx, %eax
	movl      %ebx, -76(%ebp)
	sall      %cl, %eax
	movw      5816(%edi), %bx
	orl       %eax, %ebx
	movl      8(%edi), %edx
	movl      20(%edi), %eax
	movw      %bx, 5816(%edi)
	movb      %bl, (%eax,%edx)
	movl      20(%edi), %ebx
	movzbw    5817(%edi), %ax
	leal      1(%ebx), %ecx
	movl      8(%edi), %edx
	movl      %ecx, 20(%edi)
	movb      %al, 1(%ebx,%edx)
	movl      5820(%edi), %eax
	subl      %eax, %esi
	movl      %esi, %ecx
	sarl      %cl, -76(%ebp)
	movl      -76(%ebp), %esi
	incl      20(%edi)
	movw      %si, 5816(%edi)
	subl      $13, %eax
.L0805350D:
	movl      %eax, 5820(%edi)
	movl      $static_ltree, %edx
	pushl     $static_dtree
.L0805351D:
	movl      %edi, %eax
	call      compress_block
.L08053524:
	popl      %eax
	jmp       .L08052FC5
.L0805352A:
	movl      -52(%ebp), %ecx
	decl      %ecx
	leal      148(%edi), %ebx
	pushl     %ecx
	movl      %ebx, %edx
	movl      %edi, %eax
	call      send_tree
.L0805353E:
	leal      2440(%edi), %esi
	popl      %eax
	pushl     -68(%ebp)
	movl      %esi, %edx
	movl      %edi, %eax
	call      send_tree
.L08053551:
	movl      %ebx, %edx
	movl      %esi, (%esp)
	jmp       .L0805351D
.L08053558:
	leal      -1(%esi), %eax
	movzwl    %ax, %edx
	leal      5(%ecx), %ebx
	sall      %cl, %edx
	movl      %ebx, 5820(%edi)
	orw       %dx, 5816(%edi)
	movl      5820(%edi), %edx
	decl      %esi
	cmpl      $12, %edx
	movl      %esi, -68(%ebp)
	movl      $16, %esi
	jg        .L080532FE
.L08053588:
	movl      -56(%ebp), %ebx
	subl      $4, %ebx
	movzwl    %bx, %esi
	movb      %dl, %cl
	sall      %cl, %esi
	orw       %si, 5816(%edi)
	leal      4(%edx), %eax
	jmp       .L0805335E
.L080535A4:
	movl      -52(%ebp), %ebx
	subl      $257, %ebx
	movzwl    %bx, %eax
	movb      %dl, %cl
	sall      %cl, %eax
	orw       %ax, 5816(%edi)
	leal      5(%edx), %eax
	jmp       .L08053271
.L080535C3:
	movl      20(%ebp), %ebx
	addl      $2, %ebx
	movzwl    %bx, %esi
	movb      %dl, %cl
	sall      %cl, %esi
	orw       %si, 5816(%edi)
	leal      3(%edx), %eax
	jmp       .L0805350D
.L080535DF:
	cmpw      $0, 184(%edi)
	jne       .L08053602
.L080535E9:
	cmpw      $0, 188(%edi)
	jne       .L08053602
.L080535F3:
	cmpw      $0, 200(%edi)
	movl      $32, %eax
	je        .L0805361B
.L08053602:
	movl      $1, %eax
.L08053607:
	movl      %eax, 44(%ecx)
	jmp       .L08052CE9
.L0805360F:
	incl      %eax
	cmpl      $255, %eax
	jg        .L08053184
.L0805361B:
	cmpw      $0, 148(%edi,%eax,4)
	je        .L0805360F
.L08053626:
	movl      $1, %eax
	jmp       .L08053607
.L0805362D:
	testl     %eax, %eax
	jle       .L08053070
.L08053635:
	movl      8(%edi), %ecx
	movl      20(%edi), %esi
	movw      5816(%edi), %bx
	movb      %bl, (%esi,%ecx)
	jmp       .L0805306D
	.size	_tr_flush_block, .-_tr_flush_block
# ----------------------
.L0805364A:
	.p2align 2
.L08053680:
	incw      148(%ecx,%esi,4)
	movl      5788(%ecx), %eax
	decl      %eax
	cmpl      %eax, 5792(%ecx)
	popl      %ebx
	popl      %esi
	sete      %cl
	movzbl    %cl, %eax
	popl      %edi
	leave     
	ret       
.L080536A0:
	incl      5808(%ecx)
	leal      -1(%ebx), %edx
	movzbl    _length_code(%esi), %ebx
	incw      1176(%ecx,%ebx,4)
	cmpl      $255, %edx
	jbe       .L080536F0
.L080536C0:
	shrl      $7, %edx
	movzbl    _dist_code+256(%edx), %eax
.L080536CA:
	leal      2432(,%eax,4), %esi
	incw      8(%ecx,%esi)
	movl      5788(%ecx), %eax
	decl      %eax
	cmpl      %eax, 5792(%ecx)
	popl      %ebx
	popl      %esi
	sete      %cl
	movzbl    %cl, %eax
	popl      %edi
	leave     
	ret       
.L080536EE:
	.p2align 3
.L080536F0:
	movzbl    _dist_code(%edx), %eax
	jmp       .L080536CA
# ----------------------
.L080536F9:
	.p2align 2
# ----------------------
	.globl	zlibVersion
	.type	zlibVersion, @function
zlibVersion:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $.LC0805482C, %eax
	leave     
	ret       
	.size	zlibVersion, .-zlibVersion
# ----------------------
.L08053706:
	.p2align 3
# ----------------------
	.globl	zlibCompileFlags
	.type	zlibCompileFlags, @function
zlibCompileFlags:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $85, %eax
	leave     
	ret       
	.size	zlibCompileFlags, .-zlibCompileFlags
# ----------------------
.L08053712:
	.p2align 2
# ----------------------
	.globl	zError
	.type	zError, @function
zError:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $2, %eax
	subl      8(%ebp), %eax
	movl      z_errmsg(,%eax,4), %eax
	leave     
	ret       
	.size	zError, .-zError
# ----------------------
	.hidden	zcalloc
	.globl	zcalloc
	.type	zcalloc, @function
zcalloc:
	pushl     %ebp
	movl      %esp, %ebp
	movl      16(%ebp), %eax
	imull     12(%ebp), %eax
	movl      %eax, 8(%ebp)
	leave     
	jmp       malloc
	.size	zcalloc, .-zcalloc
# ----------------------
.L0805373B:
	.p2align 2
# ----------------------
	.hidden	zcfree
	.globl	zcfree
	.type	zcfree, @function
zcfree:
	pushl     %ebp
	movl      %esp, %ebp
	subl      $20, %esp
	pushl     12(%ebp)
	call      free
.L0805374A:
	addl      $16, %esp
	leave     
	ret       
	.size	zcfree, .-zcfree
# ----------------------
.L0805374F:
	.p2align 3
# ----------------------
	.globl	adler32
	.type	adler32, @function
adler32:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $12, %esp
	movl      8(%ebp), %eax
	movl      16(%ebp), %edi
	movl      %eax, %edx
	shrl      $16, %edx
	movzwl    %ax, %ecx
	cmpl      $1, %edi
	movl      12(%ebp), %ebx
	movl      %edx, -20(%ebp)
	je        .L08053965
.L08053776:
	testl     %ebx, %ebx
	movl      $1, %esi
	je        .L080537B9
.L0805377F:
	cmpl      $15, %edi
	ja        .L080537DA
.L08053784:
	leal      -1(%edi), %esi
	jmp       .L08053793
.L08053789:
	movzbl    (%ebx), %edi
	addl      %edi, %ecx
	incl      %ebx
	addl      %ecx, -20(%ebp)
	decl      %esi
.L08053793:
	cmpl      $-1, %esi
	jne       .L08053789
.L08053798:
	cmpl      $65520, %ecx
	jbe       .L080537A6
.L080537A0:
	subl      $65521, %ecx
.L080537A6:
	movl      $65521, %ebx
	movl      -20(%ebp), %eax
	xorl      %edx, %edx
	divl      %ebx
	movl      %edx, %esi
	sall      $16, %esi
	orl       %ecx, %esi
.L080537B9:
	addl      $12, %esp
	popl      %ebx
	movl      %esi, %eax
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080537C3:
	movl      %ecx, %eax
	movl      $65521, %esi
	xorl      %edx, %edx
	divl      %esi
	movl      %edx, %ecx
	movl      -20(%ebp), %eax
	xorl      %edx, %edx
	divl      %esi
	movl      %edx, -20(%ebp)
.L080537DA:
	cmpl      $5551, %edi
	jbe       .L0805388A
.L080537E6:
	subl      $5552, %edi
	movl      $347, %esi
	.p2align 2
.L080537F4:
	movzbl    (%ebx), %edx
	leal      (%ecx,%edx), %eax
	movzbl    1(%ebx), %ecx
	movl      -20(%ebp), %edx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    2(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    3(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    4(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    5(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    6(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    7(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    8(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    9(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    10(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    11(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    12(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    13(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    14(%ebx), %ecx
	addl      %eax, %edx
	addl      %ecx, %eax
	movzbl    15(%ebx), %ecx
	addl      %eax, %edx
	leal      (%eax,%ecx), %ecx
	addl      %ecx, %edx
	addl      $16, %ebx
	decl      %esi
	movl      %edx, -20(%ebp)
	jne       .L080537F4
.L08053885:
	jmp       .L080537C3
.L0805388A:
	testl     %edi, %edi
	je        .L08053958
.L08053892:
	jmp       .L08053924
.L08053897:
	movzbl    (%ebx), %eax
	leal      (%ecx,%eax), %edx
	movl      -20(%ebp), %esi
	movzbl    1(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    2(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    3(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    4(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    5(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    6(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    7(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    8(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    9(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    10(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    11(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    12(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    13(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    14(%ebx), %ecx
	addl      %edx, %esi
	addl      %ecx, %edx
	movzbl    15(%ebx), %ecx
	addl      %edx, %esi
	leal      (%edx,%ecx), %ecx
	addl      %ecx, %esi
	subl      $16, %edi
	movl      %esi, -20(%ebp)
	addl      $16, %ebx
.L08053924:
	cmpl      $15, %edi
	ja        .L08053897
.L0805392D:
	leal      -1(%edi), %esi
	jmp       .L0805393C
.L08053932:
	movzbl    (%ebx), %edi
	addl      %edi, %ecx
	incl      %ebx
	addl      %ecx, -20(%ebp)
	decl      %esi
.L0805393C:
	cmpl      $-1, %esi
	jne       .L08053932
.L08053941:
	movl      $65521, %ebx
	movl      %ecx, %eax
	xorl      %edx, %edx
	divl      %ebx
	movl      %edx, %ecx
	movl      -20(%ebp), %eax
	xorl      %edx, %edx
	divl      %ebx
	movl      %edx, -20(%ebp)
.L08053958:
	movl      -20(%ebp), %esi
	sall      $16, %esi
	orl       %ecx, %esi
	jmp       .L080537B9
.L08053965:
	movzbl    (%ebx), %esi
	addl      %esi, %ecx
	cmpl      $65520, %ecx
	jbe       .L08053978
.L08053972:
	subl      $65521, %ecx
.L08053978:
	movl      -20(%ebp), %eax
	addl      %ecx, %eax
	cmpl      $65520, %eax
	jbe       .L08053989
.L08053984:
	subl      $65521, %eax
.L08053989:
	movl      %eax, %esi
	sall      $16, %esi
	orl       %ecx, %esi
	jmp       .L080537B9
	.size	adler32, .-adler32
# ----------------------
.L08053995:
	.p2align 3
# ----------------------
	.globl	adler32_combine
	.type	adler32_combine, @function
adler32_combine:
	pushl     %ebp
	movl      %esp, %ebp
	movl      16(%ebp), %eax
	cltd      
	pushl     %esi
	testl     %edx, %edx
	pushl     %ebx
	movl      $-1, %ecx
	js        .L08053A1A
.L080539AA:
	pushl     $0
	pushl     $65521
	pushl     %edx
	pushl     %eax
	call      __moddi3
.L080539B8:
	movzwl    8(%ebp), %ecx
	movl      $65521, %edx
	movl      %edx, %esi
	movl      %eax, %ebx
	xorl      %edx, %edx
	imull     %ecx, %eax
	divl      %esi
	shrl      $16, 8(%ebp)
	movzwl    12(%ebp), %esi
	leal      (%esi,%ecx), %ecx
	shrl      $16, 12(%ebp)
	movl      8(%ebp), %eax
	addl      12(%ebp), %eax
	leal      65520(%ecx), %esi
	subl      %ebx, %eax
	addl      $16, %esp
	cmpl      $65520, %esi
	leal      65521(%eax,%edx), %eax
	ja        .L08053A24
.L080539FB:
	cmpl      $131041, %eax
	jbe       .L08053A07
.L08053A02:
	subl      $131042, %eax
.L08053A07:
	cmpl      $65520, %eax
	jbe       .L08053A13
.L08053A0E:
	subl      $65521, %eax
.L08053A13:
	movl      %eax, %ecx
	sall      $16, %ecx
	orl       %esi, %ecx
.L08053A1A:
	leal      -8(%ebp), %esp
	popl      %ebx
	movl      %ecx, %eax
	popl      %esi
	leave     
	ret       
.L08053A23:
	.p2align 2
.L08053A24:
	leal      -1(%ecx), %esi
	cmpl      $65520, %esi
	jbe       .L080539FB
.L08053A2F:
	leal      -65522(%ecx), %esi
	jmp       .L080539FB
	.size	adler32_combine, .-adler32_combine
# ----------------------
.L08053A37:
	.p2align 3
# ----------------------
	.globl	adler32_combine64
	.type	adler32_combine64, @function
adler32_combine64:
	pushl     %ebp
	movl      %esp, %ebp
	movl      20(%ebp), %ecx
	pushl     %esi
	testl     %ecx, %ecx
	pushl     %ebx
	movl      16(%ebp), %edx
	movl      $-1, %eax
	js        .L08053ABA
.L08053A4C:
	pushl     $0
	pushl     $65521
	pushl     %ecx
	pushl     %edx
	call      __moddi3
.L08053A5A:
	movzwl    8(%ebp), %ecx
	movl      $65521, %edx
	movl      %edx, %esi
	movl      %eax, %ebx
	xorl      %edx, %edx
	imull     %ecx, %eax
	divl      %esi
	shrl      $16, 8(%ebp)
	movzwl    12(%ebp), %eax
	leal      (%eax,%ecx), %esi
	shrl      $16, 12(%ebp)
	movl      8(%ebp), %eax
	addl      12(%ebp), %eax
	leal      65520(%esi), %ecx
	subl      %ebx, %eax
	addl      $16, %esp
	cmpl      $65520, %ecx
	leal      65521(%eax,%edx), %eax
	ja        .L08053AC4
.L08053A9D:
	cmpl      $131041, %eax
	jbe       .L08053AA9
.L08053AA4:
	subl      $131042, %eax
.L08053AA9:
	cmpl      $65520, %eax
	jbe       .L08053AB5
.L08053AB0:
	subl      $65521, %eax
.L08053AB5:
	sall      $16, %eax
	orl       %ecx, %eax
.L08053ABA:
	leal      -8(%ebp), %esp
	popl      %ebx
	popl      %esi
	leave     
	ret       
.L08053AC1:
	.p2align 2
.L08053AC4:
	leal      -1(%esi), %ecx
	cmpl      $65520, %ecx
	jbe       .L08053A9D
.L08053ACF:
	leal      -65522(%esi), %ecx
	jmp       .L08053A9D
	.size	adler32_combine64, .-adler32_combine64
# ----------------------
.L08053AD7:
	.p2align 3
# ----------------------
	.globl	get_crc_table
	.type	get_crc_table, @function
get_crc_table:
	pushl     %ebp
	movl      %esp, %ebp
	movl      $crc_table, %eax
	leave     
	ret       
	.size	get_crc_table, .-get_crc_table
# ----------------------
.L08053AE2:
	.p2align 2
# ----------------------
	.globl	crc32
	.type	crc32, @function
crc32:
	pushl     %ebp
	movl      %esp, %ebp
	movl      12(%ebp), %edx
	pushl     %edi
	pushl     %esi
	xorl      %eax, %eax
	testl     %edx, %edx
	pushl     %ebx
	je        .L08053D0D
.L08053AF7:
	movl      16(%ebp), %edi
	movl      8(%ebp), %eax
	movl      %eax, %ebx
	testl     %edi, %edi
	movl      %edx, %ecx
	notl      %ebx
	je        .L08053B24
.L08053B07:
	.p2align 3
.L08053B08:
	testb     $3, %cl
	je        .L08053B24
.L08053B0D:
	movb      (%ecx), %al
	xorl      %ebx, %eax
	movzbl    %al, %edx
	shrl      $8, %ebx
	xorl      crc_table(,%edx,4), %ebx
	incl      %ecx
	decl      %edi
	jne       .L08053B08
.L08053B22:
	.p2align 2
.L08053B24:
	movl      %ecx, %esi
	jmp       .L08053CA3
.L08053B2B:
	.p2align 2
.L08053B2C:
	movl      %ebx, %edx
	xorl      (%esi), %edx
	movzbl    %dh, %eax
	movzbl    %dl, %ecx
	movl      crc_table+2048(,%eax,4), %eax
	shrl      $16, %edx
	movzbl    %dl, %ebx
	xorl      crc_table+3072(,%ecx,4), %eax
	xorl      crc_table+1024(,%ebx,4), %eax
	shrl      $8, %edx
	xorl      crc_table(,%edx,4), %eax
	xorl      4(%esi), %eax
	movzbl    %ah, %edx
	movzbl    %al, %ecx
	movl      crc_table+2048(,%edx,4), %ebx
	shrl      $16, %eax
	xorl      crc_table+3072(,%ecx,4), %ebx
	movzbl    %al, %ecx
	xorl      crc_table+1024(,%ecx,4), %ebx
	shrl      $8, %eax
	xorl      crc_table(,%eax,4), %ebx
	xorl      8(%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %eax
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %eax
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %eax
	shrl      $8, %ebx
	xorl      crc_table(,%ebx,4), %eax
	xorl      12(%esi), %eax
	movzbl    %ah, %edx
	movzbl    %al, %ecx
	movl      crc_table+2048(,%edx,4), %ebx
	shrl      $16, %eax
	xorl      crc_table+3072(,%ecx,4), %ebx
	movzbl    %al, %ecx
	xorl      crc_table+1024(,%ecx,4), %ebx
	shrl      $8, %eax
	xorl      crc_table(,%eax,4), %ebx
	xorl      16(%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %eax
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %eax
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %eax
	shrl      $8, %ebx
	xorl      crc_table(,%ebx,4), %eax
	xorl      20(%esi), %eax
	movzbl    %ah, %edx
	movzbl    %al, %ecx
	movl      crc_table+2048(,%edx,4), %ebx
	shrl      $16, %eax
	xorl      crc_table+3072(,%ecx,4), %ebx
	movzbl    %al, %ecx
	xorl      crc_table+1024(,%ecx,4), %ebx
	shrl      $8, %eax
	xorl      crc_table(,%eax,4), %ebx
	xorl      24(%esi), %ebx
	movzbl    %bh, %eax
	movzbl    %bl, %ecx
	movl      crc_table+2048(,%eax,4), %eax
	shrl      $16, %ebx
	xorl      crc_table+3072(,%ecx,4), %eax
	movzbl    %bl, %ecx
	xorl      crc_table+1024(,%ecx,4), %eax
	shrl      $8, %ebx
	xorl      crc_table(,%ebx,4), %eax
	xorl      28(%esi), %eax
	movzbl    %ah, %edx
	movzbl    %al, %ecx
	movl      crc_table+2048(,%edx,4), %ebx
	shrl      $16, %eax
	xorl      crc_table+3072(,%ecx,4), %ebx
	movzbl    %al, %ecx
	xorl      crc_table+1024(,%ecx,4), %ebx
	shrl      $8, %eax
	addl      $32, %esi
	xorl      crc_table(,%eax,4), %ebx
	subl      $32, %edi
.L08053CA3:
	cmpl      $31, %edi
	ja        .L08053B2C
.L08053CAC:
	cmpl      $3, %edi
	jbe       .L08053CEE
.L08053CB1:
	.p2align 2
.L08053CB4:
	movl      %ebx, %eax
	xorl      (%esi), %eax
	movzbl    %ah, %edx
	movzbl    %al, %ecx
	movl      crc_table+2048(,%edx,4), %ebx
	shrl      $16, %eax
	movzbl    %al, %edx
	xorl      crc_table+3072(,%ecx,4), %ebx
	xorl      crc_table+1024(,%edx,4), %ebx
	shrl      $8, %eax
	addl      $4, %esi
	xorl      crc_table(,%eax,4), %ebx
	subl      $4, %edi
	cmpl      $3, %edi
	ja        .L08053CB4
.L08053CEE:
	movl      %esi, %edx
	testl     %edi, %edi
	jmp       .L08053D07
.L08053CF4:
	movb      (%edx), %al
	xorl      %ebx, %eax
	movzbl    %al, %esi
	shrl      $8, %ebx
	xorl      crc_table(,%esi,4), %ebx
	incl      %edx
	decl      %edi
.L08053D07:
	jne       .L08053CF4
.L08053D09:
	movl      %ebx, %eax
	notl      %eax
.L08053D0D:
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	crc32, .-crc32
# ----------------------
.L08053D12:
	.p2align 2
# ----------------------
	.local	crc32_combine_
	.type	crc32_combine_, @function
crc32_combine_:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $284, %esp
	cmpl      $0, 12(%ebp)
	movl      %eax, -284(%ebp)
	movl      %edx, -288(%ebp)
	jle       .L08053EA9
.L08053D36:
	movl      $-306674912, -280(%ebp)
	movl      $1, %edx
	movl      $1, %eax
.L08053D4A:
	movl      %edx, -280(%ebp,%eax,4)
	incl      %eax
	sall      $1, %edx
	cmpl      $31, %eax
	jle       .L08053D4A
.L08053D59:
	leal      -152(%ebp), %edi
	leal      -280(%ebp), %esi
	xorl      %ebx, %ebx
.L08053D67:
	movl      (%esi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L08053D81
.L08053D72:
	.p2align 2
.L08053D74:
	testb     $1, %al
	je        .L08053D7A
.L08053D78:
	xorl      (%edx), %ecx
.L08053D7A:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053D74
.L08053D81:
	movl      %ecx, (%edi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L08053D67
.L08053D8A:
	xorl      %ebx, %ebx
.L08053D8C:
	movl      (%edi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L08053DA5
.L08053D97:
	.p2align 3
.L08053D98:
	testb     $1, %al
	je        .L08053D9E
.L08053D9C:
	xorl      (%edx), %ecx
.L08053D9E:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053D98
.L08053DA5:
	movl      %ecx, (%esi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L08053D8C
.L08053DAE:
	xorl      %ebx, %ebx
.L08053DB0:
	movl      (%esi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L08053DC9
.L08053DBB:
	.p2align 2
.L08053DBC:
	testb     $1, %al
	je        .L08053DC2
.L08053DC0:
	xorl      (%edx), %ecx
.L08053DC2:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053DBC
.L08053DC9:
	movl      %ecx, (%edi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L08053DB0
.L08053DD2:
	movl      8(%ebp), %eax
	andl      $1, %eax
	testl     %eax, %eax
	je        .L08053DFD
.L08053DDC:
	movl      -284(%ebp), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L08053DF7
.L08053DEA:
	testb     $1, %al
	je        .L08053DF0
.L08053DEE:
	xorl      (%edx), %ecx
.L08053DF0:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053DEA
.L08053DF7:
	movl      %ecx, -284(%ebp)
.L08053DFD:
	movl      12(%ebp), %edx
	movl      8(%ebp), %ecx
	shrdl     $1, %edx, %ecx
	sarl      $1, %edx
	movl      %edx, -292(%ebp)
	orl       %ecx, %edx
	movl      %ecx, -296(%ebp)
	je        .L08053E8C
.L08053E19:
	xorl      %ebx, %ebx
	.p2align 2
.L08053E1C:
	movl      (%edi,%ebx,4), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %edi, %edx
	je        .L08053E35
.L08053E27:
	.p2align 3
.L08053E28:
	testb     $1, %al
	je        .L08053E2E
.L08053E2C:
	xorl      (%edx), %ecx
.L08053E2E:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053E28
.L08053E35:
	movl      %ecx, (%esi,%ebx,4)
	incl      %ebx
	cmpl      $31, %ebx
	jle       .L08053E1C
.L08053E3E:
	movl      -296(%ebp), %ebx
	andl      $1, %ebx
	testl     %ebx, %ebx
	je        .L08053E6C
.L08053E4B:
	movl      -284(%ebp), %eax
	xorl      %ecx, %ecx
	testl     %eax, %eax
	movl      %esi, %edx
	je        .L08053E66
.L08053E59:
	testb     $1, %al
	je        .L08053E5F
.L08053E5D:
	xorl      (%edx), %ecx
.L08053E5F:
	addl      $4, %edx
	shrl      $1, %eax
	jne       .L08053E59
.L08053E66:
	movl      %ecx, -284(%ebp)
.L08053E6C:
	movl      -292(%ebp), %ecx
	movl      -296(%ebp), %eax
	shrdl     $1, %ecx, %eax
	sarl      $1, %ecx
	movl      %ecx, 12(%ebp)
	orl       %eax, %ecx
	movl      %eax, 8(%ebp)
	jne       .L08053DAE
.L08053E8C:
	movl      -288(%ebp), %esi
	xorl      %esi, -284(%ebp)
.L08053E98:
	movl      -284(%ebp), %eax
	addl      $284, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L08053EA9:
	jl        .L08053E98
.L08053EAB:
	cmpl      $0, 8(%ebp)
	ja        .L08053D36
.L08053EB5:
	movl      -284(%ebp), %eax
	addl      $284, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
	.size	crc32_combine_, .-crc32_combine_
# ----------------------
.L08053EC6:
	.p2align 3
# ----------------------
	.globl	crc32_combine
	.type	crc32_combine, @function
crc32_combine:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      16(%ebp), %ecx
	movl      %ecx, %ebx
	sarl      $31, %ebx
	movl      8(%ebp), %eax
	movl      12(%ebp), %edx
	movl      %ecx, 8(%ebp)
	movl      %ebx, 12(%ebp)
	popl      %ebx
	leave     
	jmp       crc32_combine_
	.size	crc32_combine, .-crc32_combine
# ----------------------
.L08053EE7:
	.p2align 3
# ----------------------
	.globl	crc32_combine64
	.type	crc32_combine64, @function
crc32_combine64:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %ebx
	movl      20(%ebp), %ebx
	movl      16(%ebp), %ecx
	movl      8(%ebp), %eax
	movl      12(%ebp), %edx
	movl      %ecx, 8(%ebp)
	movl      %ebx, 12(%ebp)
	popl      %ebx
	leave     
	jmp       crc32_combine_
	.size	crc32_combine64, .-crc32_combine64
# ----------------------
.L08053F05:
	.p2align 3
# ----------------------
	.hidden	inflate_fast
	.globl	inflate_fast
	.type	inflate_fast, @function
inflate_fast:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	pushl     %ebx
	subl      $68, %esp
	movl      8(%ebp), %esi
	movl      (%esi), %ebx
	decl      %ebx
	movl      %ebx, %edi
	addl      4(%esi), %edi
	movl      8(%ebp), %ecx
	subl      $5, %edi
	movl      28(%ecx), %eax
	movl      %edi, -24(%ebp)
	movl      12(%esi), %edi
	movl      %eax, -16(%ebp)
	movl      12(%ebp), %edx
	movl      16(%esi), %eax
	decl      %edi
	subl      %eax, %edx
	movl      %edi, %ecx
	subl      %edx, %ecx
	movl      -16(%ebp), %edx
	movl      %ebx, -20(%ebp)
	movl      %ecx, -28(%ebp)
	movl      -16(%ebp), %ebx
	movl      44(%edx), %ecx
	leal      -257(%eax,%edi), %esi
	movl      %ecx, -40(%ebp)
	movl      40(%ebx), %eax
	movl      -16(%ebp), %ecx
	movl      %esi, -32(%ebp)
	movl      %eax, -36(%ebp)
	movl      -16(%ebp), %esi
	movl      76(%ecx), %eax
	movl      48(%esi), %ebx
	movl      80(%ecx), %edx
	movl      %eax, -48(%ebp)
	movl      $1, %eax
	movl      %ebx, -44(%ebp)
	movl      60(%ecx), %esi
	movl      56(%ecx), %ebx
	movl      %edx, -52(%ebp)
	movl      84(%ecx), %ecx
	movl      %eax, %edx
	sall      %cl, %edx
	movl      %edx, %ecx
	decl      %ecx
	movl      -16(%ebp), %edx
	movl      %ecx, -56(%ebp)
	movl      88(%edx), %ecx
	sall      %cl, %eax
	movl      52(%edx), %ecx
	decl      %eax
	decl      %ecx
	movl      %eax, -60(%ebp)
	movl      %ecx, -68(%ebp)
.L08053FA0:
	cmpl      $14, %esi
	ja        .L08053FC7
.L08053FA5:
	movl      -20(%ebp), %edx
	movzbl    1(%edx), %eax
	addl      $2, %edx
	movl      %esi, %ecx
	movl      %edx, -20(%ebp)
	sall      %cl, %eax
	movzbl    (%edx), %edx
	leal      8(%esi), %ecx
	leal      (%ebx,%eax), %eax
	sall      %cl, %edx
	leal      (%eax,%edx), %ebx
	addl      $16, %esi
.L08053FC7:
	movl      -56(%ebp), %eax
	andl      %ebx, %eax
	jmp       .L08053FEE
.L08053FCE:
	.p2align 3
.L08053FD0:
	testb     $16, %cl
	jne       .L0805401E
.L08053FD5:
	testb     $64, %cl
	jne       .L08054164
.L08053FDE:
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	shrl      $16, %edx
	andl      %ebx, %eax
	leal      (%edx,%eax), %eax
.L08053FEE:
	movl      -48(%ebp), %ecx
	movl      (%ecx,%eax,4), %edx
	movzbl    %dh, %ecx
	shrl      %cl, %ebx
	subl      %ecx, %esi
	movzbl    %dl, %ecx
	testl     %ecx, %ecx
	jne       .L08053FD0
.L08054002:
	incl      %edi
	shrl      $16, %edx
	movb      %dl, (%edi)
.L08054008:
	movl      -24(%ebp), %eax
	cmpl      %eax, -20(%ebp)
	jae       .L08054180
.L08054014:
	cmpl      -32(%ebp), %edi
	jb        .L08053FA0
.L08054019:
	jmp       .L08054180
.L0805401E:
	shrl      $16, %edx
	andl      $15, %ecx
	movl      %edx, -64(%ebp)
	movl      %ecx, -80(%ebp)
	je        .L08054057
.L0805402C:
	cmpl      %ecx, %esi
	jae       .L08054042
.L08054030:
	incl      -20(%ebp)
	movl      -20(%ebp), %edx
	movl      %esi, %ecx
	movzbl    (%edx), %eax
	sall      %cl, %eax
	addl      %eax, %ebx
	addl      $8, %esi
.L08054042:
	movb      -80(%ebp), %cl
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %ebx, %eax
	addl      %eax, -64(%ebp)
	shrl      %cl, %ebx
	subl      -80(%ebp), %esi
.L08054057:
	cmpl      $14, %esi
	ja        .L0805407E
.L0805405C:
	movl      -20(%ebp), %edx
	movzbl    1(%edx), %eax
	addl      $2, %edx
	movl      %esi, %ecx
	movl      %edx, -20(%ebp)
	sall      %cl, %eax
	movzbl    (%edx), %edx
	leal      8(%esi), %ecx
	leal      (%ebx,%eax), %eax
	sall      %cl, %edx
	leal      (%eax,%edx), %ebx
	addl      $16, %esi
.L0805407E:
	movl      -60(%ebp), %eax
	andl      %ebx, %eax
	jmp       .L080540A1
.L08054085:
	.p2align 3
.L08054088:
	testb     $64, %cl
	jne       .L0805422A
.L08054091:
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	shrl      $16, %edx
	andl      %ebx, %eax
	leal      (%edx,%eax), %eax
.L080540A1:
	movl      -52(%ebp), %ecx
	movl      (%ecx,%eax,4), %edx
	movzbl    %dh, %ecx
	shrl      %cl, %ebx
	subl      %ecx, %esi
	movzbl    %dl, %ecx
	testb     $16, %cl
	je        .L08054088
.L080540B6:
	andl      $15, %ecx
	shrl      $16, %edx
	cmpl      %ecx, %esi
	movl      %ecx, -80(%ebp)
	jae       .L080540EF
.L080540C3:
	incl      -20(%ebp)
	movl      -20(%ebp), %eax
	movzbl    (%eax), %eax
	movl      %esi, %ecx
	movl      %eax, -76(%ebp)
	addl      $8, %esi
	sall      %cl, %eax
	addl      %eax, %ebx
	cmpl      -80(%ebp), %esi
	jae       .L080540EF
.L080540DD:
	incl      -20(%ebp)
	movl      -20(%ebp), %ecx
	movzbl    (%ecx), %eax
	movl      %esi, %ecx
	sall      %cl, %eax
	addl      %eax, %ebx
	addl      $8, %esi
.L080540EF:
	movb      -80(%ebp), %cl
	movl      $1, %eax
	sall      %cl, %eax
	decl      %eax
	andl      %ebx, %eax
	leal      (%edx,%eax), %eax
	movl      %eax, -72(%ebp)
	movl      %edi, %eax
	subl      -28(%ebp), %eax
	shrl      %cl, %ebx
	subl      -80(%ebp), %esi
	cmpl      %eax, -72(%ebp)
	jbe       .L08054239
.L08054115:
	movl      -72(%ebp), %ecx
	subl      %eax, %ecx
	cmpl      -40(%ebp), %ecx
	jbe       .L08054130
.L0805411F:
	movl      -16(%ebp), %eax
	movl      7104(%eax), %edx
	testl     %edx, %edx
	jne       .L08054313
.L08054130:
	movl      -44(%ebp), %edx
	testl     %edx, %edx
	jne       .L08054284
.L0805413B:
	movl      -36(%ebp), %eax
	subl      %ecx, %eax
	movl      -68(%ebp), %edx
	addl      %eax, %edx
	cmpl      -64(%ebp), %ecx
	jae       .L080542E6
.L0805414E:
	subl      %ecx, -64(%ebp)
.L08054151:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	decl      %ecx
	movb      %al, (%edi)
	jne       .L08054151
.L0805415A:
	movl      %edi, %edx
	subl      -72(%ebp), %edx
	jmp       .L080542E6
.L08054164:
	andl      $32, %ecx
	jne       .L0805421C
.L0805416D:
	movl      8(%ebp), %ecx
	movl      $.LC08055411, 24(%ecx)
.L08054177:
	movl      -16(%ebp), %edx
	movl      $29, (%edx)
.L08054180:
	movl      %esi, %eax
	shrl      $3, %eax
	movl      -20(%ebp), %edx
	subl      %eax, %edx
	movl      %esi, %ecx
	sall      $3, %eax
	subl      %eax, %ecx
	movl      $1, %eax
	sall      %cl, %eax
	leal      -1(%eax), %esi
	andl      %ebx, %esi
	leal      1(%edx), %eax
	movl      8(%ebp), %ebx
	movl      %eax, (%ebx)
	cmpl      -24(%ebp), %edx
	leal      1(%edi), %eax
	movl      %eax, 12(%ebx)
	jae       .L080541E6
.L080541B0:
	subl      %edx, -24(%ebp)
	movl      -24(%ebp), %eax
	addl      $5, %eax
	movl      8(%ebp), %ebx
	cmpl      -32(%ebp), %edi
	movl      %eax, 4(%ebx)
	jae       .L080541FB
.L080541C4:
	subl      %edi, -32(%ebp)
	movl      -32(%ebp), %eax
	movl      -16(%ebp), %edi
	movl      8(%ebp), %edx
	addl      $257, %eax
	movl      %eax, 16(%edx)
	movl      %esi, 56(%edi)
	movl      %ecx, 60(%edi)
	addl      $68, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080541E6:
	subl      -24(%ebp), %edx
	movl      $5, %eax
	subl      %edx, %eax
	movl      8(%ebp), %ebx
	cmpl      -32(%ebp), %edi
	movl      %eax, 4(%ebx)
	jb        .L080541C4
.L080541FB:
	subl      -32(%ebp), %edi
	movl      $257, %eax
	movl      8(%ebp), %edx
	subl      %edi, %eax
	movl      -16(%ebp), %edi
	movl      %eax, 16(%edx)
	movl      %esi, 56(%edi)
	movl      %ecx, 60(%edi)
	addl      $68, %esp
	popl      %ebx
	popl      %esi
	popl      %edi
	leave     
	ret       
.L0805421C:
	movl      -16(%ebp), %ecx
	movl      $11, (%ecx)
	jmp       .L08054180
.L0805422A:
	movl      8(%ebp), %edx
	movl      $.LC08055369, 24(%edx)
	jmp       .L08054177
.L08054239:
	movl      %edi, %edx
	subl      -72(%ebp), %edx
.L0805423E:
	movb      1(%edx), %al
	movb      %al, 1(%edi)
	movb      2(%edx), %cl
	movb      %cl, 2(%edi)
	addl      $3, %edx
	addl      $3, %edi
	movb      (%edx), %al
	movb      %al, (%edi)
	subl      $3, -64(%ebp)
	cmpl      $2, -64(%ebp)
	ja        .L0805423E
.L0805425E:
	movl      -64(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L08054008
.L08054269:
	incl      %edi
	movb      1(%edx), %al
	movb      %al, (%edi)
	cmpl      $1, -64(%ebp)
	jbe       .L08054008
.L08054279:
	incl      %edi
	movb      2(%edx), %cl
	movb      %cl, (%edi)
	jmp       .L08054008
.L08054284:
	cmpl      %ecx, -44(%ebp)
	jae       .L080542F1
.L08054289:
	movl      -36(%ebp), %eax
	addl      -44(%ebp), %eax
	subl      %ecx, %eax
	movl      -68(%ebp), %edx
	subl      -44(%ebp), %ecx
	addl      %eax, %edx
	cmpl      -64(%ebp), %ecx
	jae       .L080542E6
.L0805429E:
	subl      %ecx, -64(%ebp)
.L080542A1:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	decl      %ecx
	movb      %al, (%edi)
	jne       .L080542A1
.L080542AA:
	movl      -64(%ebp), %ecx
	cmpl      %ecx, -44(%ebp)
	movl      -68(%ebp), %edx
	jae       .L080542E6
.L080542B5:
	movl      -44(%ebp), %ecx
	subl      %ecx, -64(%ebp)
.L080542BB:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	decl      %ecx
	movb      %al, (%edi)
	jne       .L080542BB
.L080542C4:
	movl      %edi, %edx
	subl      -72(%ebp), %edx
	jmp       .L080542E6
.L080542CB:
	.p2align 2
.L080542CC:
	movb      1(%edx), %cl
	movb      %cl, 1(%edi)
	movb      2(%edx), %al
	movb      %al, 2(%edi)
	addl      $3, %edx
	movb      (%edx), %cl
	addl      $3, %edi
	movb      %cl, (%edi)
	subl      $3, -64(%ebp)
.L080542E6:
	cmpl      $2, -64(%ebp)
	ja        .L080542CC
.L080542EC:
	jmp       .L0805425E
.L080542F1:
	movl      -44(%ebp), %eax
	subl      %ecx, %eax
	movl      -68(%ebp), %edx
	addl      %eax, %edx
	cmpl      -64(%ebp), %ecx
	jae       .L080542E6
.L08054300:
	subl      %ecx, -64(%ebp)
.L08054303:
	incl      %edx
	incl      %edi
	movb      (%edx), %al
	decl      %ecx
	movb      %al, (%edi)
	jne       .L08054303
.L0805430C:
	movl      %edi, %edx
	subl      -72(%ebp), %edx
	jmp       .L080542E6
.L08054313:
	movl      8(%ebp), %eax
	movl      -16(%ebp), %edx
	movl      $.LC0805534B, 24(%eax)
	movl      $29, (%edx)
	jmp       .L08054180
	.size	inflate_fast, .-inflate_fast
# ----------------------
.L0805432B:
	.p2align 2
# ----------------------
	.hidden	__moddi3
	.globl	__moddi3
	.type	__moddi3, @function
__moddi3:
	pushl     %ebp
	movl      %esp, %ebp
	pushl     %edi
	pushl     %esi
	subl      $48, %esp
	movl      12(%ebp), %edi
	testl     %edi, %edi
	movl      $0, -32(%ebp)
	movl      $0, -28(%ebp)
	movl      $0, -20(%ebp)
	movl      8(%ebp), %esi
	movl      16(%ebp), %eax
	movl      20(%ebp), %edx
	js        .L08054480
.L0805435D:
	testl     %edx, %edx
	js        .L08054474
.L08054365:
	leal      -16(%ebp), %ecx
	testl     %edx, %edx
	movl      %ecx, -24(%ebp)
	movl      %eax, -52(%ebp)
	movl      %edx, -36(%ebp)
	movl      %esi, -40(%ebp)
	movl      %edi, -44(%ebp)
	jne       .L080543B8
.L0805437B:
	cmpl      %edi, %eax
	jbe       .L08054448
.L08054383:
	movl      %esi, %eax
	movl      %edi, %edx
	divl      -52(%ebp)
.L0805438A:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	movl      %edx, -40(%ebp)
	je        .L080543AF
.L08054394:
	movl      -40(%ebp), %eax
	movl      %eax, -32(%ebp)
	movl      $0, -28(%ebp)
.L080543A1:
	movl      -24(%ebp), %eax
	movl      -32(%ebp), %edx
	movl      -28(%ebp), %ecx
	movl      %edx, (%eax)
	movl      %ecx, 4(%eax)
.L080543AF:
	movl      -16(%ebp), %eax
	movl      -12(%ebp), %edx
	jmp       .L080543D4
.L080543B7:
	.p2align 3
.L080543B8:
	movl      -44(%ebp), %edx
	cmpl      %edx, -36(%ebp)
	jbe       .L080543F0
.L080543C0:
	movl      %esi, -32(%ebp)
	movl      %edx, -28(%ebp)
	movl      -32(%ebp), %eax
	movl      -28(%ebp), %edx
	movl      %eax, -16(%ebp)
	movl      %edx, -12(%ebp)
	.p2align 2
.L080543D4:
	movl      -20(%ebp), %ecx
	testl     %ecx, %ecx
	je        .L080543E8
.L080543DB:
	negl      %eax
	adcl      $0, %edx
	negl      %edx
	movl      %eax, -16(%ebp)
	movl      %edx, -12(%ebp)
.L080543E8:
	addl      $48, %esp
	popl      %esi
	popl      %edi
	leave     
	ret       
.L080543EF:
	.p2align 3
.L080543F0:
	bsrl      -36(%ebp), %eax
	movl      %eax, %esi
	xorl      $31, %esi
	jne       .L08054494
.L080543FF:
	movl      -36(%ebp), %ecx
	cmpl      %ecx, -44(%ebp)
	ja        .L0805440F
.L08054407:
	movl      -52(%ebp), %eax
	cmpl      %eax, -40(%ebp)
	jb        .L08054421
.L0805440F:
	movl      -44(%ebp), %ecx
	movl      -40(%ebp), %edx
	subl      -52(%ebp), %edx
	sbbl      -36(%ebp), %ecx
	movl      %edx, -40(%ebp)
	movl      %ecx, -44(%ebp)
.L08054421:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	je        .L080543AF
.L08054428:
	movl      -40(%ebp), %eax
	movl      -44(%ebp), %edx
	movl      %eax, -32(%ebp)
	movl      %edx, -28(%ebp)
	movl      -24(%ebp), %ecx
	movl      -32(%ebp), %eax
	movl      -28(%ebp), %edx
	movl      %eax, (%ecx)
	movl      %edx, 4(%ecx)
	jmp       .L080543AF
.L08054447:
	.p2align 3
.L08054448:
	movl      -52(%ebp), %eax
	testl     %eax, %eax
	jne       .L0805445C
.L0805444F:
	movl      $1, %eax
	xorl      %edx, %edx
	divl      -52(%ebp)
	movl      %eax, -52(%ebp)
.L0805445C:
	movl      -44(%ebp), %eax
	movl      -36(%ebp), %edx
	divl      -52(%ebp)
	movl      -40(%ebp), %eax
	movl      %edx, -44(%ebp)
	divl      -52(%ebp)
	jmp       .L0805438A
.L08054473:
	.p2align 2
.L08054474:
	negl      %eax
	adcl      $0, %edx
	negl      %edx
	jmp       .L08054365
.L08054480:
	negl      %esi
	adcl      $0, %edi
	negl      %edi
	movl      $-1, -20(%ebp)
	jmp       .L0805435D
.L08054493:
	.p2align 2
.L08054494:
	movl      $32, %eax
	subl      %esi, %eax
	movl      %eax, -48(%ebp)
	movl      -36(%ebp), %edx
	movl      %esi, %ecx
	sall      %cl, %edx
	movl      -52(%ebp), %eax
	movb      -48(%ebp), %cl
	shrl      %cl, %eax
	orl       %eax, %edx
	movl      %esi, %ecx
	sall      %cl, -52(%ebp)
	movl      %edx, -36(%ebp)
	movb      -48(%ebp), %cl
	movl      -44(%ebp), %edx
	shrl      %cl, %edx
	movl      -44(%ebp), %edi
	movl      %esi, %ecx
	sall      %cl, %edi
	movl      -40(%ebp), %eax
	movb      -48(%ebp), %cl
	shrl      %cl, %eax
	orl       %eax, %edi
	movl      %edi, -44(%ebp)
	movl      %edi, %eax
	movl      %esi, %ecx
	divl      -36(%ebp)
	movl      %edx, -44(%ebp)
	sall      %cl, -40(%ebp)
	mull      -52(%ebp)
	cmpl      -44(%ebp), %edx
	movl      %eax, %edi
	ja        .L080544F1
.L080544EA:
	jne       .L080544F7
.L080544EC:
	cmpl      -40(%ebp), %eax
	jbe       .L080544F7
.L080544F1:
	subl      -52(%ebp), %edi
	sbbl      -36(%ebp), %edx
.L080544F7:
	movl      -24(%ebp), %eax
	testl     %eax, %eax
	je        .L080543AF
.L08054502:
	movl      -44(%ebp), %ecx
	movl      -40(%ebp), %eax
	subl      %edi, %eax
	sbbl      %edx, %ecx
	movl      %ecx, -44(%ebp)
	movl      %ecx, %edx
	movb      -48(%ebp), %cl
	sall      %cl, %edx
	movl      %esi, %ecx
	movl      %eax, -40(%ebp)
	shrl      %cl, %eax
	orl       %eax, %edx
	movl      -44(%ebp), %eax
	shrl      %cl, %eax
	movl      %edx, -32(%ebp)
	movl      %eax, -28(%ebp)
	jmp       .L080543A1
	.size	__moddi3, .-__moddi3
# ----------------------
	.section       .rodata
.LC08054628:
	.string	"%s: %s\n"
.LC08054630:
	.string	"fread"
.LC08054636:
	.string	"failed gzclose"
.LC08054645:
	.string	"failed fwrite"
.LC08054653:
	.string	"failed fclose"
.LC08054661:
	.long	8021806
.LC08054665:
	.string	"rb"
.LC08054668:
	.ascii	"%s: filename too long\n"
.LC0805467E:
	.byte	0
.LC0805467F:
	.string	"%s: can't gzopen %s\n"
.LC08054694:
	.string	"wb"
.LC08054697:
	.string	"wb6 "
.LC0805469C:
	.string	"gunzip"
.LC080546A3:
	.string	"zcat"
.LC080546A8:
	.string	"can't gzdopen stdout"
.LC080546BD:
	.string	"can't gzdopen stdin"
.LC080546D1:
	.string	": "
.LC080546D4:
	.value	29477
.LC080546D6:
	.value	29477
.LC080546D8:
	.string	"%s"
.LC080546DB:
	.string	"<fd:%d>"
.LC080546E3:
	.string	"out of memory"
# ----------------------
.LC080546F1:
	.zero	3
	.align 4
.LC080546F4:
	.long	.L08049326
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L0804934B
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L08049358
	.long	.L080491C5
	.long	.L08049365
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L08049372
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L0804937D
	.long	.L080491C5
	.long	.L0804938A
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L08049397
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080491C5
	.long	.L080493A2
	.long	.L08049319
.LC0805482C:
	.string	"1.2.8"
.LC08054832:
	.ascii	"compressed "
.LC0805483D:
	.string	"data error"
.LC08054848:
	.string	"unexpected end of file"
# ----------------------
.LC0805485F:
	.byte	0
	.align 2
.LC08054860:
	.string	"internal error: inflate stream corrupt"
# ----------------------
.LC08054887:
	.byte	0
	.align 2
.LC08054888:
	.string	"requested length does not fit in int"
# ----------------------
.LC080548AD:
	.zero	3
	.align 4
.LC080548B0:
	.string	"out of room to push characters"
# ----------------------
.LC080548CF:
	.byte	0
	.align 2
.LC080548D0:
	.string	"internal error: deflate stream corrupt"
# ----------------------
.LC080548F7:
	.zero	9
# ----------------------
	.globl	deflate_copyright
	.type	deflate_copyright, @object
deflate_copyright:
	.string	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly and Mark Adler "
	.size	deflate_copyright, 68
# ----------------------
.LC08054944:
	.zero	28
# ----------------------
	.local	configuration_table
	.type	configuration_table, @object
configuration_table:
	.value	0
	.value	0
	.value	0
	.value	0
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
	.size	configuration_table, 120
# ----------------------
	.local	my_version.0
	.type	my_version.0, @object
my_version.0:
	.string	"1.2.8"
	.size	my_version.0, 6
# ----------------------
.LC080549DE:
	.value	0
# ----------------------
	.align 32
	.local	order.0
	.type	order.0, @object
order.0:
	.ascii	"\020\000\021\000\022\000\000\000\010\000\007\000\t\000\006\000\n\000\005\000\013\000\004\000\014\000\003\000\r\000\002\000\016\000\001\000\017\000"
	.size	order.0, 38
# ----------------------
.LC08054A06:
	.zero	26
# ----------------------
	.local	lenfix.1
	.type	lenfix.1, @object
lenfix.1:
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12585216
	.long	657168
	.long	6293504
	.long	2099200
	.long	10488064
	.long	2048
	.long	8390656
	.long	4196352
	.long	14682368
	.long	395024
	.long	5769216
	.long	1574912
	.long	9439488
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13633792
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11536640
	.long	526336
	.long	8914944
	.long	4720640
	.long	15730944
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13109504
	.long	853777
	.long	6555648
	.long	2361344
	.long	11012352
	.long	264192
	.long	8652800
	.long	4458496
	.long	15206656
	.long	526096
	.long	6031360
	.long	1837056
	.long	9963776
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14158080
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12060928
	.long	788480
	.long	9177088
	.long	4982784
	.long	16255232
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12847360
	.long	722705
	.long	6424576
	.long	2230272
	.long	10750208
	.long	133120
	.long	8521728
	.long	4327424
	.long	14944512
	.long	460560
	.long	5900288
	.long	1705984
	.long	9701632
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13895936
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11798784
	.long	657408
	.long	9046016
	.long	4851712
	.long	15993088
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13371648
	.long	984849
	.long	6686720
	.long	2492416
	.long	11274496
	.long	395264
	.long	8783872
	.long	4589568
	.long	15468800
	.long	591632
	.long	6162432
	.long	1968128
	.long	10225920
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14420224
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12323072
	.long	919552
	.long	9308160
	.long	5113856
	.long	16517376
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12716288
	.long	657168
	.long	6359040
	.long	2164736
	.long	10619136
	.long	67584
	.long	8456192
	.long	4261888
	.long	14813440
	.long	395024
	.long	5834752
	.long	1640448
	.long	9570560
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13764864
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11667712
	.long	591872
	.long	8980480
	.long	4786176
	.long	15862016
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13240576
	.long	853777
	.long	6621184
	.long	2426880
	.long	11143424
	.long	329728
	.long	8718336
	.long	4524032
	.long	15337728
	.long	526096
	.long	6096896
	.long	1902592
	.long	10094848
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14289152
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12192000
	.long	854016
	.long	9242624
	.long	5048320
	.long	16386304
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	12978432
	.long	722705
	.long	6490112
	.long	2295808
	.long	10881280
	.long	198656
	.long	8587264
	.long	4392960
	.long	15075584
	.long	460560
	.long	5965824
	.long	1771520
	.long	9832704
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14027008
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11929856
	.long	722944
	.long	9111552
	.long	4917248
	.long	16124160
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13502720
	.long	984849
	.long	6752256
	.long	2557952
	.long	11405568
	.long	460800
	.long	8849408
	.long	4655104
	.long	15599872
	.long	591632
	.long	6227968
	.long	2033664
	.long	10356992
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14551296
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12454144
	.long	985088
	.long	9373696
	.long	5179392
	.long	16648448
	.long	1888
	.long	5244928
	.long	1050624
	.long	7538708
	.long	2033426
	.long	7342080
	.long	3147776
	.long	12650752
	.long	657168
	.long	6293504
	.long	2099200
	.long	10553600
	.long	2048
	.long	8390656
	.long	4196352
	.long	14747904
	.long	395024
	.long	5769216
	.long	1574912
	.long	9505024
	.long	3868435
	.long	7866368
	.long	3672064
	.long	13699328
	.long	1115921
	.long	6817792
	.long	2623488
	.long	11602176
	.long	526336
	.long	8914944
	.long	4720640
	.long	15796480
	.long	263952
	.long	5507072
	.long	1312768
	.long	14878741
	.long	2819859
	.long	7604224
	.long	3409920
	.long	13175040
	.long	853777
	.long	6555648
	.long	2361344
	.long	11077888
	.long	264192
	.long	8652800
	.long	4458496
	.long	15272192
	.long	526096
	.long	6031360
	.long	1837056
	.long	10029312
	.long	5441300
	.long	8128512
	.long	3934208
	.long	14223616
	.long	1509138
	.long	7079936
	.long	2885632
	.long	12126464
	.long	788480
	.long	9177088
	.long	4982784
	.long	16320768
	.long	198416
	.long	5376000
	.long	1181696
	.long	10684437
	.long	2295571
	.long	7473152
	.long	3278848
	.long	12912896
	.long	722705
	.long	6424576
	.long	2230272
	.long	10815744
	.long	133120
	.long	8521728
	.long	4327424
	.long	15010048
	.long	460560
	.long	5900288
	.long	1705984
	.long	9767168
	.long	4392724
	.long	7997440
	.long	3803136
	.long	13961472
	.long	1246994
	.long	6948864
	.long	2754560
	.long	11864320
	.long	657408
	.long	9046016
	.long	4851712
	.long	16058624
	.long	329488
	.long	5638144
	.long	1443840
	.long	2112
	.long	3344147
	.long	7735296
	.long	3540992
	.long	13437184
	.long	984849
	.long	6686720
	.long	2492416
	.long	11340032
	.long	395264
	.long	8783872
	.long	4589568
	.long	15534336
	.long	591632
	.long	6162432
	.long	1968128
	.long	10291456
	.long	6489876
	.long	8259584
	.long	4065280
	.long	14485760
	.long	1771282
	.long	7211008
	.long	3016704
	.long	12388608
	.long	919552
	.long	9308160
	.long	5113856
	.long	16582912
	.long	1888
	.long	5310464
	.long	1116160
	.long	8587285
	.long	2033426
	.long	7407616
	.long	3213312
	.long	12781824
	.long	657168
	.long	6359040
	.long	2164736
	.long	10684672
	.long	67584
	.long	8456192
	.long	4261888
	.long	14878976
	.long	395024
	.long	5834752
	.long	1640448
	.long	9636096
	.long	3868435
	.long	7931904
	.long	3737600
	.long	13830400
	.long	1115921
	.long	6883328
	.long	2689024
	.long	11733248
	.long	591872
	.long	8980480
	.long	4786176
	.long	15927552
	.long	263952
	.long	5572608
	.long	1378304
	.long	16910352
	.long	2819859
	.long	7669760
	.long	3475456
	.long	13306112
	.long	853777
	.long	6621184
	.long	2426880
	.long	11208960
	.long	329728
	.long	8718336
	.long	4524032
	.long	15403264
	.long	526096
	.long	6096896
	.long	1902592
	.long	10160384
	.long	5441300
	.long	8194048
	.long	3999744
	.long	14354688
	.long	1509138
	.long	7145472
	.long	2951168
	.long	12257536
	.long	854016
	.long	9242624
	.long	5048320
	.long	16451840
	.long	198416
	.long	5441536
	.long	1247232
	.long	12781589
	.long	2295571
	.long	7538688
	.long	3344384
	.long	13043968
	.long	722705
	.long	6490112
	.long	2295808
	.long	10946816
	.long	198656
	.long	8587264
	.long	4392960
	.long	15141120
	.long	460560
	.long	5965824
	.long	1771520
	.long	9898240
	.long	4392724
	.long	8062976
	.long	3868672
	.long	14092544
	.long	1246994
	.long	7014400
	.long	2820096
	.long	11995392
	.long	722944
	.long	9111552
	.long	4917248
	.long	16189696
	.long	329488
	.long	5703680
	.long	1509376
	.long	2112
	.long	3344147
	.long	7800832
	.long	3606528
	.long	13568256
	.long	984849
	.long	6752256
	.long	2557952
	.long	11471104
	.long	460800
	.long	8849408
	.long	4655104
	.long	15665408
	.long	591632
	.long	6227968
	.long	2033664
	.long	10422528
	.long	6489876
	.long	8325120
	.long	4130816
	.long	14616832
	.long	1771282
	.long	7276544
	.long	3082240
	.long	12519680
	.long	985088
	.long	9373696
	.long	5179392
	.long	16713984
	.size	lenfix.1, 2048
# ----------------------
	.local	distfix.2
	.type	distfix.2, @object
distfix.2:
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
.LC080552A0:
	.long	.L080500A4
	.long	.L0804F413
	.long	.L0804F760
	.long	.L0804F7AE
	.long	.L080501B2
	.long	.L080501A2
	.long	.L0805009C
	.long	.L08050094
	.long	.L080501AA
	.long	.L0804F4DC
	.long	.L0804F547
	.long	.L0804F570
	.long	.L0804FA34
	.long	.L08050144
	.long	.L0804FB0C
	.long	.L0804FB12
	.long	.L0804F45D
	.long	.L08050035
	.long	.L0804FDF3
	.long	.L0804FB2D
	.long	.L0804FB33
	.long	.L0804FC51
	.long	.L0804FCAC
	.long	.L0804FA74
	.long	.L0804FAC6
	.long	.L0804FEE5
	.long	.L0804FF71
	.long	.L0804FF1B
	.long	.L0804FED9
	.long	.L0804FF0F
	.long	.L0804FDDC
.LC0805531C:
	.string	"unknown compression method"
.LC08055337:
	.ascii	"header "
.LC0805533E:
	.string	"crc mismatch"
.LC0805534B:
	.string	"invalid distance too far back"
.LC08055369:
	.ascii	"invalid distance code"
.LC0805537E:
	.byte	0
.LC0805537F:
	.string	"incorrect length check"
.LC08055396:
	.string	"incorrect data check"
.LC080553AB:
	.string	"incorrect header check"
.LC080553C2:
	.string	"invalid stored block lengths"
.LC080553DF:
	.string	"invalid code lengths set"
.LC080553F8:
	.string	"unknown header flags set"
.LC08055411:
	.string	"invalid literal/length code"
.LC0805542D:
	.string	"invalid literal/lengths set"
.LC08055449:
	.string	"invalid distances set"
.LC0805545F:
	.string	"invalid bit length repeat"
.LC08055479:
	.string	"invalid window size"
.LC0805548D:
	.string	"invalid block type"
.LC080554A0:
	.string	"too many length or distance symbols"
.LC080554C4:
	.string	"invalid code -- missing end-of-block"
	.size	distfix.2, 128
# ----------------------
.LC080554E9:
	.zero	23
# ----------------------
	.globl	inflate_copyright
	.type	inflate_copyright, @object
inflate_copyright:
	.string	" inflate 1.2.8 Copyright 1995-2013 Mark Adler "
	.size	inflate_copyright, 47
# ----------------------
.LC0805552F:
	.zero	17
# ----------------------
	.local	lbase.0
	.type	lbase.0, @object
lbase.0:
	.ascii	"\003\000\004\000\005\000\006\000\007\000\010\000\t\000\n\000\013\000\r\000\017\000\021\000\023\000\027\000\033\000\037\000#\000+\0003\000;\000C\000S\000c\000s\000\203\000\243\000\303\000\343\000\002\001\000\000\000\000"
	.size	lbase.0, 62
# ----------------------
.LC0805557E:
	.value	0
# ----------------------
	.align 4
	.local	lext.1
	.type	lext.1, @object
lext.1:
	.ascii	"\020\000\020\000\020\000\020\000\020\000\020\000\020\000\020\000\021\000\021\000\021\000\021\000\022\000\022\000\022\000\022\000\023\000\023\000\023\000\023\000\024\000\024\000\024\000\024\000\025\000\025\000\025\000\025\000\020\000H\000N\000"
	.size	lext.1, 62
# ----------------------
.LC080555BE:
	.value	0
# ----------------------
	.align 4
	.local	dbase.2
	.type	dbase.2, @object
dbase.2:
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
	.size	dbase.2, 64
# ----------------------
	.local	dext.3
	.type	dext.3, @object
dext.3:
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
	.size	dext.3, 64
# ----------------------
	.hidden	_length_code
	.globl	_length_code
	.type	_length_code, @object
_length_code:
	.long	50462976
	.long	117835012
	.long	151586824
	.long	185272842
	.long	202116108
	.long	218959117
	.long	235802126
	.long	252645135
	.long	269488144
	.long	269488144
	.long	286331153
	.long	286331153
	.long	303174162
	.long	303174162
	.long	320017171
	.long	320017171
	.long	336860180
	.long	336860180
	.long	336860180
	.long	336860180
	.long	353703189
	.long	353703189
	.long	353703189
	.long	353703189
	.long	370546198
	.long	370546198
	.long	370546198
	.long	370546198
	.long	387389207
	.long	387389207
	.long	387389207
	.long	387389207
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	404232216
	.long	421075225
	.long	421075225
	.long	421075225
	.long	421075225
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
	.long	471538459
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
.LC080559B8:
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
	.value	0
	.ascii	"\007\000@\000\007\000 \000\007\000`\000\007\000\020\000\007\000P\000\007\0000\000\007\000p\000\007\000\010\000\007\000H\000\007\000(\000\007\000h\000\007\000\030\000\007\000X\000\007\0008\000\007\000x\000\007\000\004\000\007\000D\000\007\000$\000\007\000d\000\007\000\024\000\007\000T\000\007\0004\000\007\000t\000\007\000\003\000\010\000\203\000\010\000C\000\010\000\303\000\010\000#\000\010\000\243\000\010\000c\000\010\000\343\000\010\000"
	.size	static_ltree, 1152
# ----------------------
	.local	bl_order
	.type	bl_order, @object
bl_order:
	.ascii	"\020\021\022\000\010\007\t\006\n\005\013\004\014\003\r\002\016\001\017"
	.size	bl_order, 19
# ----------------------
.LC08055E53:
	.zero	13
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
.LC08055ED8:
	.zero	8
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
.LC08055F58:
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
.LC08055FD4:
	.zero	12
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
	.size	extra_lbits, 116
# ----------------------
.LC08056054:
	.zero	12
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
.LC080560AC:
	.string	"need dictionary"
.LC080560BC:
	.string	"stream end"
.LC080560C7:
	.string	"file error"
.LC080560D2:
	.string	"stream error"
.LC080560DF:
	.string	"insufficient memory"
.LC080560F3:
	.string	"buffer error"
.LC08056100:
	.string	"incompatible version"
	.size	extra_blbits, 76
# ----------------------
.LC08056115:
	.zero	11
# ----------------------
	.globl	z_errmsg
	.type	z_errmsg, @object
z_errmsg:
	.long	.LC080560AC
	.long	.LC080560BC
	.long	.LC0805467E
	.long	.LC080560C7
	.long	.LC080560D2
	.long	.LC0805483D
	.long	.LC080560DF
	.long	.LC080560F3
	.long	.LC08056100
	.long	.LC0805467E
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.size	z_errmsg, 64
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
	.local	p.0
	.type	p.0, @object
p.0:
	.long	134582716
	.size	p.0, 4
# ----------------------
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
	.align 4
	.globl	prog
	.type	prog, @object
prog:
	.zero	4
	.size	prog, 4
# ----------------------
	.ident	"GCC: (GNU) 3.4.6 20060404 (Red Hat 3.4.6-10)"
	.section	.note.GNU-stack,"",@progbits
