	.file	"code1.c"
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
	leal	32(%esp), %eax
	leal	96(%esp), %ebx
	xorl	%ecx, %ecx
	movl	%eax, 24(%esp)
	movl	%ebx, %edx
	.p2align 4,,10
	.p2align 3
L2:
	movl	%ecx, 20(%esp)
	fildl	20(%esp)
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
	movl	24(%esp), %ecx
	leal	544(%esp), %edi
	movl	%edi, 16(%esp)
	leal	0(,%ecx,8), %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	leal	576(%ecx), %eax
	movl	%eax, 20(%esp)
	.p2align 4,,10
	.p2align 3
L7:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
L6:
	fldz
	movl	24(%esp), %eax
	fstl	(%edi,%ecx,8)
	.p2align 4,,10
	.p2align 3
L5:
	leal	(%eax,%ecx), %edx
	addl	$8, %eax
	fldl	(%esi,%edx,8)
	fmull	-8(%eax)
	faddp	%st, %st(1)
	cmpl	%ebx, %eax
	jne	L5
	fstpl	(%edi,%ecx,8)
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	L6
	addl	$64, 24(%esp)
	addl	$64, %edi
	leal	64(%eax), %ebx
	subl	$512, %esi
	cmpl	20(%esp), %ebx
	jne	L7
	movl	16(%esp), %edi
	leal	576(%edi), %esi
	.p2align 4,,10
	.p2align 3
L8:
	fldl	(%edi)
	movl	$8, %ebx
	fstpl	24(%esp)
	.p2align 4,,10
	.p2align 3
L9:
	fldl	24(%esp)
	movl	$LC1, (%esp)
	fstpl	4(%esp)
	call	_printf
	subl	$1, %ebx
	jne	L9
	movl	$10, (%esp)
	addl	$72, %edi
	call	_putchar
	cmpl	%edi, %esi
	jne	L8
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
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
