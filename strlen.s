;long unsigned my_strlen(const char *s);
;rdi-----char *s

section .text
    global  my_strlen

my_strlen:
    mov     rcx, -1
    mov     rsi, rdi
    mov     al, 0       ;look for \0
    cld
    repne   scasb
    sub     rdi, rsi
    dec     rdi
    mov     rax, rdi
    ret
