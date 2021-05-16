section .data
    msg db "Hello the string length functions!", 0ah, 0h
section .text
    global _start
_start:
    mov     rbx, msg
    mov     rax, rbx
nextchar:
    cmp     byte [rax], 0
    jz      finished
    inc     rax
    jmp     nextchar
finished:
    sub     rax, rbx
    
    mov     rdx, rax
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, msg
    syscall
    
    mov     rax, 60
    mov     rdi, 0
    syscall
    
