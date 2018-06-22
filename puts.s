global	ft_puts
extern	strlen
section .text
ft_puts:
	push rbp
	mov rbp, rsp
	test rdi, rdi
	jz null
	push rdi
	call strlen
	pop rdi
	push rax
	mov rax, 4 ; write syscall
	push rdi
	mov rbx, 1 ; file descriptor
	pop rcx
	pop rdx
	int 0x80
newline:
	push rdx
	mov rax, 4
	mov rcx, line
	mov rdx, 1
	int 0x80
	pop rax
	inc rax
exit:
	leave
	ret
null:
	mov rax, 4
	mov rbx, 1
	mov rcx, nul
	mov rdx, 6
	int 0x80
	jmp newline
section	.data
	line db 10
	nul db "(null)"
