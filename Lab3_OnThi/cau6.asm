.model small
.stack 100h
.data
    tb1 db "Nhap mot ky tu:$"
    tb2 db "Nam ky tu dung truoc:$"
    tb3 db "Nam ky tu dung sau:$"
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
    mov bh,bl
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb2
    int 21h 
    
    mov cx,5
    
start:
    dec bh
    
    mov ah,2
    mov dl,bh 
    int 21h
    
    loop start
    
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb3
    int 21h 
    
    mov cx,5
start1:
    inc bl   
     
    mov ah,2
    mov dl,bl
    int 21h
    
    loop start1    
        
   mov ah,4ch
   int 21h
    
main endp