.model small
.stack 100h
.data
    tb1 db 'Xin moi nhap 3 ky tu: $'
    newline db 13,10,'$'
    starline db '**********$'
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    ;xuat tb1
    lea dx,tb1
    mov ah,9
    int 21h
    
    ;nhap ky tu dau tien
    mov ah,1
    int 21h
    mov bl,al
    
    ;nhap ky tu thu hai
    mov ah,1
    int 21h
    mov bh,al
    
    ;nhap ky tu thu ba
    mov ah,1
    int 21h
    mov cl,al
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;in ra ky tu dau tien  
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    ;xuat starline
    lea dx,starline
    mov ah,9
    int 21h
    
    ;xuong dong
    lea dx,newline
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
     
main endp