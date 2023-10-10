global	_ft_strlen
SECTION	.text

_ft_strlen:
    ; str = rdi

	push	rbx
	mov		rbx, rdi

loop:
	cmp		byte [rbx], 0
	jz		return
	inc		rbx
	jmp		loop

return:
	sub		rbx, rdi
	mov		rax, rbx
	pop		rbx
	ret
