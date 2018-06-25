%define SYSCALL(n) 0x2000000 | n
global	_ft_cat
section .text

_ft_cat:
	push rbp
	mov rbp, rsp
	mov r9, rdi
	jmp read
exit:
	leave
	ret
read:
	mov rax, SYSCALL(3)
	mov rdi, r9
	lea rsi, [rel buffer]
	mov rdx, len
	syscall
	jc exit
	cmp rax, byte 0
	je exit
	mov r8, rax
write:
	mov rax, SYSCALL(4)
	mov rdi, 1
	lea rsi, [rel buffer]
	mov rdx, r8
	syscall
	jmp read
section	.data
	buffer times 5000 db 0
	len equ $ - buffer
