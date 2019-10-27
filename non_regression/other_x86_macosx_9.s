	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12


	.section	__TEXT,__const
	.p2align	2               ## @readonly_constants
_readonly_constants:
	.long	33554434                ## 0x2000002
	.long	2                       ## 0x2
	.long	33554434                ## 0x2000002
	.long	2                       ## 0x2
	.long	33554435                ## 0x2000003
	.long	1073741827              ## 0x40000003
	.long	1                       ## 0x1
	.long	33554435                ## 0x2000003
	.long	1073741827              ## 0x40000003
	.long	2                       ## 0x2
	.long	33554435                ## 0x2000003
	.long	3221225475              ## 0xc0000003
	.long	1                       ## 0x1
	.long	33554435                ## 0x2000003
	.long	3221225475              ## 0xc0000003
	.long	2                       ## 0x2

	.section	__DATA,__const
	.p2align	2               ## @readonly_ghalf
_readonly_ghalf:
	.long	134217731               ## 0x8000003
	.long	_readonly_constants+16
	.long	_readonly_constants+28


.subsections_via_symbols
