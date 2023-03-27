.data

msg:
        .ascii "Hola Mundo\n"

.text
.global main

main:
        mov r0, #1
        ldr r1, =msg
        mov r2, #11
        mov r7, #4
        svc 0
        bx lr
