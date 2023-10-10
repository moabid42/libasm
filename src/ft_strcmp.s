global _ft_strcmp
SECTION .text

_ft_strcmp:
    ; s1 = rdi, s3 = rsi

    xor     rcx, rcx
    xor     rdx, rdx
    xor     r10, r10

loop:
    cmp     BYTE[rdi + rcx], 0
    je      intermediate
    mov     dl, BYTE [rdi + rcx]
    mov     r10b, BYTE [rsi + rcx]
    sub     rdx, r10
    cmp     rdx, 0
    jne     return
    inc     rcx
    jmp     loop

intermediate:
    cmp BYTE [rsi + rcx], 0
    je return
    mov eax, -1
    ret

return:
    mov     rax, rdx
    ret