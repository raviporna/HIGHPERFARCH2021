	.file	"code2.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "%f\11\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$1056, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	leal	96(%esp), %edx
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
L2:
	movl	%ecx, 24(%esp)
	fildl	24(%esp)
	leal	-64(%edx), %eax
	.p2align 4,,10
	.p2align 3
L3:
	fstl	(%eax)
	addl	$8, %eax
	cmpl	%edx, %eax
	jne	L3
	fstp	%st(0)
	addl	$1, %ecx
	leal	64(%eax), %edx
	cmpl	$8, %ecx
	jne	L2
	movl	$64, %edx
	.p2align 4,,10
	.p2align 3
L4:
	leal	-64(%edx), %eax
	.p2align 4,,10
	.p2align 3
L5:
	flds	LC0
	faddl	32(%esp,%eax)
	fstpl	544(%esp,%eax)
	addl	$8, %eax
	cmpl	%edx, %eax
	jne	L5
	leal	64(%eax), %edx
	cmpl	$512, %eax
	jne	L4
	leal	544(%esp), %esi
	leal	1120(%esp), %edi
	.p2align 4,,10
	.p2align 3
L6:
	fldl	(%esi)
	movl	$8, %ebx
	fstpl	24(%esp)
	.p2align 4,,10
	.p2align 3
L7:
	fldl	24(%esp)
	movl	$LC1, (%esp)
	fstpl	4(%esp)
	call	_printf
	subl	$1, %ebx
	jne	L7
	movl	$10, (%esp)
	addl	$72, %esi
	call	_putchar
	cmpl	%edi, %esi
	jne	L6
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1075838976
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
