.model small
.stack 100h
.data
    tb1    db "Xin moi nhap mot ky tu:$"
    tbkhac db "Ky tu nhap khac chu/so$"
    tbchu  db "Ky tu nhap la chu$"
    tbso   db "Ky tu nhap so so$"
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
    
start:
    cmp al,"A"
    je chu
    cmp al,"Z"
    je chu
    
    cmp al,"a"
    je chu
    cmp al,"z"
    je chu
    
    cmp al,"0"
    je so
    cmp al,"9"
    je so
    
    jmp kytukhac
    
chu:
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tbchu
    int 21h
    jmp exit
    
so: 
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tbso
    int 21h
    jmp exit

kytukhac:
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tbkhac
    int 21h
    jmp exit    

    
    
    
        
exit:
    mov ah,4ch
    int 21h
    
main endp

