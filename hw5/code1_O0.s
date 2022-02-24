	.file	"code1.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "%f\11\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$1056, %esp
	call	___main
	movl	$8, 1040(%esp)
	movl	$0, 1052(%esp)
	jmp	L2
L5:
	movl	$0, 1048(%esp)
	jmp	L3
L4:
	fildl	1052(%esp)
	movl	1052(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1048(%esp), %eax
	addl	%edx, %eax
	fstpl	528(%esp,%eax,8)
	addl	$1, 1048(%esp)
L3:
	movl	1048(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L4
	addl	$1, 1052(%esp)
L2:
	movl	1052(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L5
	movl	$0, 1052(%esp)
	jmp	L6
L11:
	movl	$0, 1048(%esp)
	jmp	L7
L10:
	movl	1052(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1048(%esp), %eax
	addl	%edx, %eax
	fldz
	fstpl	16(%esp,%eax,8)
	movl	$0, 1044(%esp)
	jmp	L8
L9:
	movl	1052(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1048(%esp), %eax
	addl	%edx, %eax
	fldl	16(%esp,%eax,8)
	movl	1052(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1044(%esp), %eax
	addl	%edx, %eax
	fldl	528(%esp,%eax,8)
	movl	1044(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1048(%esp), %eax
	addl	%edx, %eax
	fldl	528(%esp,%eax,8)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	movl	1052(%esp), %eax
	leal	0(,%eax,8), %edx
	movl	1048(%esp), %eax
	addl	%edx, %eax
	fstpl	16(%esp,%eax,8)
	addl	$1, 1044(%esp)
L8:
	movl	1044(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L9
	addl	$1, 1048(%esp)
L7:
	movl	1048(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L10
	addl	$1, 1052(%esp)
L6:
	movl	1052(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L11
	movl	$0, 1052(%esp)
	jmp	L12
L15:
	movl	$0, 1048(%esp)
	jmp	L13
L14:
	movl	1052(%esp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$3, %eax
	leal	1056(%esp), %ecx
	addl	%ecx, %eax
	subl	$1040, %eax
	fldl	(%eax)
	fstpl	4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 1048(%esp)
L13:
	movl	1048(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L14
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 1052(%esp)
L12:
	movl	1052(%esp), %eax
	cmpl	1040(%esp), %eax
	jl	L15
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
