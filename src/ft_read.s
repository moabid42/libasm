global	_ft_read
SECTION	.text

_ft_read:
	; fd = rdi, buffer = rsi, bytes = rdx

	mov		rax, 0x2000003
	syscall
	ret
