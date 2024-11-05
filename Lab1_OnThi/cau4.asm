.model small
.stack 100h
.data
    tb1 db "Hay nhap mot ky tu:$"
    tb2 db "Ky tu dung truoc:$"
    tb3 db ", da nhap:$"
    tb4 db ", dung sau:$"
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
    mov dl,bl
          
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb2
    int 21h
    
    mov bh,bl
    dec bl        
            
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,9
    lea dx,tb3
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,9
    lea dx,tb4
    int 21h
    
    add bl,2
    mov ah,2
    mov dl,bl
    int 21h              
             
    mov ah,4ch
    int 21h
    
main endp
