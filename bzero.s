;void bzero(void* addr, long unsigned len);
;rdi----void* addr
;rsi----long unsigned len

section .text
    global my_bzero

my_bzero:
.loop:
    dec rsi
    cmp rsi, 0
    jl .ret
    mov byte [rdi + rsi], 0
    jmp .loop

.ret:
    ret
