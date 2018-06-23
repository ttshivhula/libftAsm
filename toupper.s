global	_ft_toupper
extern	_ft_islower
section	.text
_ft_toupper:
	push rbp
	mov rbp, rsp
	push rdi
	push rsi
	call _ft_islower
	pop rsi
	pop rdi
	cmp rax, byte 0x1
	je upper
	mov rax, rdi
	jmp exit
upper:
	sub rdi, 32
	mov rax, rdi
exit:
	leave
	ret
