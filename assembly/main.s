	.file	"main.cc"
	.text
	.globl	_Z5mult2llPl
	.type	_Z5mult2llPl, @function
_Z5mult2llPl:
.LFB0:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	call	_Z4multll@PLT
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z5mult2llPl, .-_Z5mult2llPl
	.ident	"GCC: (Debian 13.2.0-4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
