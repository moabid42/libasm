global _ft_strdup
SECTION .text

extern	_malloc
extern _ft_strlen
extern _ft_strcpy
extern ___error

_ft_strdup:
    ; s1 = rdi

	call 	_ft_strlen
	inc		rax

	push	rdi
	mov		rdi,rax
	call	_malloc

    cmp     eax, 0
    je      catch_error

	mov		rdi,rax
	pop		rsi

	call	_ft_strcpy
	ret

catch_error:
	sub rsp, 8						; align the stack
	call ___error					; for setting errno var (from errno.h)
	add rsp, 8
	
	mov dword [rax], 12				; set errno value (number 12 ENOMEM, out of memory)
	xor rax, rax					; return NULL
	ret