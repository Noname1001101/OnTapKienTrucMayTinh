.model small
.stack 100h
.data
    tb1 db 'Nhap mot ky tu thap luc phan (A-F): $'
    newline db 13,10, '$'
    tb2 db 'Gia tri thap phan: $'
.code
main proc
             
    mov ax,@data
    mov ds,ax
    
    ;xuat tb1
    lea dx,tb1
    mov ah,9
    int 21h
    
    ;nhap ky tu thap luc phan
    mov ah,1
    int 21h
    mov bl,al

    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    mov bh,bl
    sub bl,10h
    sub bh,11h
    
    ;xuat tb2
    lea dx,tb2
    mov ah,9
    int 21h
    
    
    ;in ra ket qua
    mov ah,2
    mov dl,bl
    int 21h 
    
    mov ah,2 
    mov dl,bh
    int 21h
    
    
    mov ah,4ch
    int 21h 
             
main endp