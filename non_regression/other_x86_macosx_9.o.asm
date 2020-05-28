	.macosx_version_min 10, 12
	.section       __TEXT,__const,regular
	.align 4
_readonly_constants:
	.long	33554434
	.long	2
	.long	33554434
	.long	2
	.long	33554435
	.long	1073741827
	.long	1
	.long	33554435
	.long	1073741827
	.long	2
	.long	33554435
	.long	-1073741821
	.long	1
	.long	33554435
	.long	-1073741821
	.long	2
# ----------------------
	.section       __DATA,__const,regular
	.align 2
_readonly_ghalf:
	.long	134217731
	.long	_readonly_constants+16
	.long	_readonly_constants+28
# ----------------------

.subsections_via_symbols
