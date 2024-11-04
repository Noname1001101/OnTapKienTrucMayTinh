.model small
.stack 100h
.data
cr equ 13
lf equ 10
msg1 db "Nhap mot so nhi phan:$"
msg2 db  cr,lf,"So ban vua nhap la:$"
.code
    mov ax,@data
    mov ds,ax 
    
    xor bx, bx 
    
    mov ah,9 
    lea dx, msg1
    int 21h
    
    mov ah,1
    
N2:
    int 21h
    cmp al,cr
    je n8
    and al,0Fh
    shl bx, 1
    or bl, al
    jmp N2
N8:
    mov cx, 16
    
    mov ah, 9
    lea dx, msg2
    int 21h   
PrintLoop:
    rol bx,1
    jc Print1
    mov dl,'0'
    mov ah, 2
    int 21h
    jmp Exit1
Print1:
    mov dl, '1'
    mov ah,  2
    int 21h
Exit1:
    dec cx
    cmp cx, 0
    jne PrintLoop
    
    mov ah,4ch
    int 21h
    