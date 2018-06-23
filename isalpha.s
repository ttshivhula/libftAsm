global _ft_isalpha
section .text
_ft_isalpha:
	push rbp
	mov rbp, rsp
	xor rax, rax
cap:
	cmp rdi, 0x41
	jge cap2
	jmp exit
cap2:
	cmp rdi, 0x5A
	jle true
	jmp low
low:
	cmp rdi, 0X61
	jge low2
	jmp exit
low2:
	cmp rdi, 0x7A
	jle true
	jmp exit
true:
	mov rax, 0x1
exit:
	leave
	ret
; 65 = A 90 = Z
; 97 = a 122 = z
