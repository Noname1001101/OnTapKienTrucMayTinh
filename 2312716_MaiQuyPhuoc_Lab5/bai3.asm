.model small
.stack 100h
.data
TB1 db 'Nhap so thap luc phan (toi da 4 ky tu so):$'
TB2 db 13,10,'So Hexa vua nhap:$'
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,TB1
    mov ah,9
    int 21h
    
    xor bx,bx
    mov cl,4
    mov ah,1
    
N2:
    int 21h
    cmp al,13
    je N8
    cmp al, 39h
    jg letter
    and al,0Fh
    jmp Shift
Letter:
    sub al,37h
Shift:
    shl bx,cl
    or  bl,al
    jmp N2
N8: 
    lea dx,TB2
    mov ah,9
    int 21h
  
    mov cx,4
 
PrintHex:
    mov dl,bh
    shr dl,4         
    cmp dl,9         
    jg PrintLetter
    or dl,30h
    
    mov ah,2
    int 21h
    jmp Exit
    
PrintLetter:
    add dl,37h
    mov ah,2
    int 21h
Exit:
    shl bx,4
    loop PrintHex
    
    mov ah,4ch
    int 21h
main endp
