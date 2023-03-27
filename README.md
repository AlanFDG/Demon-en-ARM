# ✨ Creacion de un demon en ARM ✨
Pasos a segir para crear el demon de forma remota:

1. Es logiarnos a nuestra cuenta que tengamos en una raspbery o en el S.O. que esta especializado en ello.
2. Crearemos el documento con la consola con el siguiente comando 
```
nano index.s
```
3. Adentro ingresaremos el siguiente codigo
```
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
```
4. Compilados con el siguiente comando:
```
as -o index.o index.s
```
5. Luego crearemos una vinculacion para que se pueda ejecutar
```
lb -o index index.o
```
7. La salida del resultado en este caso seria "Hola Mundo". 
👍
