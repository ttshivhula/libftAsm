global ft_isalpha
section .text
ft_isalpha:
	push rbp
	mov rbp, rsp
	xor rax, rax
cap:
	cmp rdi, byte 65
	jge cap2
	jmp exit
cap2:
	cmp rdi, byte 90
	jle true
	jmp low
low:
	cmp rdi, byte 97
	jge low2
	jmp exit
low2:
	cmp rdi, byte 122
	jle true
	jmp exit
true:
	mov rax, 1
exit:
	leave
	ret
; 65 = A 90 = Z
; 97 = a 122 = z
