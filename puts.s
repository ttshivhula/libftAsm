%define SYSCALL(n) 0x2000000 | n
global	_ft_puts
extern	_strlen
section .text
_ft_puts:
	push rbp
	mov rbp, rsp
	test rdi, rdi
	jz null
norm:
	push rdi
	call _strlen
	pop rdi
	push rax
	mov rax, SYSCALL(0x4)
	push rdi
	pop rsi
	mov rdi, 0x1
	pop rdx
	syscall
	push rax
	jmp newline
null:
	mov rax, SYSCALL(0x4)
	lea rsi, [rel nul]
	mov rdi, 0x1
	mov rdx, len
	syscall
	push rax
newline:
	mov rax, SYSCALL(0x4)
	mov rdi, 0x1
	lea rsi, [rel nl]
	mov rdx, 0x1
	syscall
	pop rax
	inc rax
exit:
	leave
	ret
section .data
	nul db "(null)"
	len equ $ - nul
	nl db 0xA
