.model small
.stack 100h

.data
     tb1 db "Hay nhap mot chu thuong(a-z):$"
     tb2 db "Chu hoa tuong ung la:$"    
     newline db 13,10,"$"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,tb1
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,newline 
    int 21h 
    
    mov ah,9
    lea dx,tb2
    int 21h
    
    sub bl,20h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    mov ah,4ch
    int 21h
    
main endp


