global	_ft_isalnum
extern	_isalpha
extern	_isdigit
section	.text
_ft_isalnum:
	push rbp
	mov rbp, rsp
	push rdi
	push rsi
	call _isalpha
	pop rsi
	pop rdi
	cmp rax, byte 0x01
	je exit
	push rdi
	push rsi
	call _isdigit
	pop rsi
	pop rdi
exit:
	leave
	ret
