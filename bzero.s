section .text
	global	_ft_bzero
_ft_bzero:
	push rbp
	mov rbp, rsp
	cmp rdi, 0
	je exit
	cmp rsi, 0
	je exit
	xor r10, r10
	dec r10
while:
	inc r10
	cmp r10, rsi
	je exit
	mov [rdi + r10], byte 0
	jmp while

exit:
	pop rbp
	ret
