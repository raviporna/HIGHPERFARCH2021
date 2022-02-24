	.file	"code2.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC9:
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
	leal	544(%esp), %esi
	leal	32(%esp), %eax
	fldz
	movl	%esi, %ecx
	movl	%esi, %edx
	fstl	32(%esp)
	fstl	40(%esp)
	fstl	48(%esp)
	fstl	56(%esp)
	fstl	64(%esp)
	fstl	72(%esp)
	fstl	80(%esp)
	fstpl	88(%esp)
	fld1
	fstl	96(%esp)
	fstl	104(%esp)
	fstl	112(%esp)
	fstl	120(%esp)
	fstl	128(%esp)
	fstl	136(%esp)
	fstl	144(%esp)
	fstpl	152(%esp)
	flds	LC2
	fstl	160(%esp)
	fstl	168(%esp)
	fstl	176(%esp)
	fstl	184(%esp)
	fstl	192(%esp)
	fstl	200(%esp)
	fstl	208(%esp)
	fstpl	216(%esp)
	flds	LC3
	fstl	224(%esp)
	fstl	232(%esp)
	fstl	240(%esp)
	fstl	248(%esp)
	fstl	256(%esp)
	fstl	264(%esp)
	fstl	272(%esp)
	fstpl	280(%esp)
	flds	LC4
	fstl	288(%esp)
	fstl	296(%esp)
	fstl	304(%esp)
	fstl	312(%esp)
	fstl	320(%esp)
	fstl	328(%esp)
	fstl	336(%esp)
	fstpl	344(%esp)
	flds	LC5
	fstl	352(%esp)
	fstl	360(%esp)
	fstl	368(%esp)
	fstl	376(%esp)
	fstl	384(%esp)
	fstl	392(%esp)
	fstl	400(%esp)
	fstpl	408(%esp)
	flds	LC6
	fstl	416(%esp)
	fstl	424(%esp)
	fstl	432(%esp)
	fstl	440(%esp)
	fstl	448(%esp)
	fstl	456(%esp)
	fstl	464(%esp)
	fstpl	472(%esp)
	flds	LC7
	fstl	480(%esp)
	fstl	488(%esp)
	fstl	496(%esp)
	fstl	504(%esp)
	fstl	512(%esp)
	fstl	520(%esp)
	fstl	528(%esp)
	fstpl	536(%esp)
	.p2align 4,,10
	.p2align 3
L2:
	flds	LC8
	fldl	(%eax)
	addl	$64, %eax
	addl	$64, %edx
	fadd	%st(1), %st
	fstpl	-64(%edx)
	fldl	-56(%eax)
	fadd	%st(1), %st
	fstpl	-56(%edx)
	fldl	-48(%eax)
	fadd	%st(1), %st
	fstpl	-48(%edx)
	fldl	-40(%eax)
	fadd	%st(1), %st
	fstpl	-40(%edx)
	fldl	-32(%eax)
	fadd	%st(1), %st
	fstpl	-32(%edx)
	fldl	-24(%eax)
	fadd	%st(1), %st
	fstpl	-24(%edx)
	fldl	-16(%eax)
	fadd	%st(1), %st
	fstpl	-16(%edx)
	faddl	-8(%eax)
	fstpl	-8(%edx)
	cmpl	%ecx, %eax
	jne	L2
	leal	576(%esi), %edi
	.p2align 4,,10
	.p2align 3
L3:
	fldl	(%esi)
	movl	$8, %ebx
	fstpl	24(%esp)
	.p2align 4,,10
	.p2align 3
L4:
	fldl	24(%esp)
	movl	$LC9, (%esp)
	fstpl	4(%esp)
	call	_printf
	subl	$1, %ebx
	jne	L4
	movl	$10, (%esp)
	addl	$72, %esi
	call	_putchar
	cmpl	%edi, %esi
	jne	L3
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
LC2:
	.long	1073741824
	.align 4
LC3:
	.long	1077936128
	.align 4
LC4:
	.long	1082130432
	.align 4
LC5:
	.long	1084227584
	.align 4
LC6:
	.long	1086324736
	.align 4
LC7:
	.long	1088421888
	.align 4
LC8:
	.long	1075838976
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
