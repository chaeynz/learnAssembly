section .data
    msg db "hello, world", 0x0a, 0x0a
    len equ $ - msg

section .text
_start:
    mov eax, 4      ; sys_write
    mov ebx, 1      ; stdout descriptor
    mov ecx, msg    ; bytes to write
    mov edx, len    ; amount of bytes
    int 0x80        ; performs the system call
    mov eax, 1
    mov ebx, 0
    int 0x80