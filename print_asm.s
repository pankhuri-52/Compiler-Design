	.file	"printf.c"
	.text
	.section	.rodata
.LC0:
	.string	" WWW.FIRMCODES.COM \n %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$9, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	Myprintf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	Myprintf
	.type	Myprintf, @function
Myprintf:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -248(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L4
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L4:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.L5
.L8:
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addq	$1, -224(%rbp)
.L6:
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L7
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
.L7:
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L31
	addq	$1, -224(%rbp)
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$99, %eax
	cmpl	$21, %eax
	ja	.L11
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L13(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L13(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L13:
	.long	.L12-.L13
	.long	.L14-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L15-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L16-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L11-.L13
	.long	.L17-.L13
	.text
.L12:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L18
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L19
.L18:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L19:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	movl	-228(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L11
.L14:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L20
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L21
.L20:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L21:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	cmpl	$0, -228(%rbp)
	jns	.L22
	negl	-228(%rbp)
	movl	$45, %edi
	call	putchar@PLT
.L22:
	movl	-228(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	convert
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L11
.L15:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L23
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L24
.L23:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L24:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	movl	-228(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	convert
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L11
.L16:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L25
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L26
.L25:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L26:
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L11
.L17:
	movl	-208(%rbp), %eax
	cmpl	$47, %eax
	ja	.L27
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L28
.L27:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L28:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
	movl	-228(%rbp), %eax
	movl	$16, %esi
	movl	%eax, %edi
	call	convert
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L11:
	addq	$1, -224(%rbp)
.L5:
	movq	-224(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	jmp	.L10
.L31:
	nop
.L10:
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	Myprintf, .-Myprintf
	.globl	convert
	.type	convert, @function
convert:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	leaq	49+buffer.2278(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L33:
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	subq	$1, -8(%rbp)
	movl	%eax, %edx
	leaq	Representation.2277(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %eax
	movl	$0, %edx
	divl	%esi
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L33
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	convert, .-convert
	.local	buffer.2278
	.comm	buffer.2278,50,32
	.data
	.align 16
	.type	Representation.2277, @object
	.size	Representation.2277, 17
Representation.2277:
	.string	"0123456789ABCDEF"
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
