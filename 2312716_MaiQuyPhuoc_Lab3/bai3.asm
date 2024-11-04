.model small
.stack 100h
.data

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,65
vonglap:
    
    cmp al,91
    je exit    
    
    mov dl,al    
    mov ah,2h       
    int 21h 
    
    inc al
    
    jmp vonglap 
    
exit:    
    mov ah,4ch
    int 21h     
         
         
main endp
