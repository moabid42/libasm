global _ft_strcpy
SECTION .text

_ft_strcpy:
    ; dst = rdi, src = rsi

	xor		rcx, rcx				; i = 0
	xor		rdx, rdx				; tmp = 0
	cmp		rsi, 0					; !rsi
	jz		return

copy_loop:
	mov		dl, BYTE [rsi + rcx]
	mov		BYTE [rdi + rcx], dl
	inc		rcx
	cmp		dl, 0
	jnz		copy_loop

return:
	mov		rax, rdi
	ret

