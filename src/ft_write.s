global	_ft_write
SECTION	.text

_ft_write:
    ; fd = rdi, buffer = rsi, bytes = rdx

	mov		rax, 0x2000004
	syscall
	ret
