global	_length
section	.text
_length:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
while:
	cmp [rdi + rcx], byte 0x0
	je exit
	inc rcx
	jmp while
exit:
	mov rax, rcx
	leave
	ret
