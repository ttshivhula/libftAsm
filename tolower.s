global	_ft_tolower
extern	_ft_isupper
section	.text
_ft_tolower:
	push rbp
	mov rbp, rsp
	push rdi
	push rsi
	call _ft_isupper
	pop rsi
	pop rdi
	cmp rax, byte 0x1
	je upper
	mov rax, rdi
	jmp exit
upper:
	add rdi, 32
	mov rax, rdi
exit:
	leave
	ret
