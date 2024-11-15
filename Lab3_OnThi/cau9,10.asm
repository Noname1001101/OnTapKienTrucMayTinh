.model small
.stack 100h

.data
    CR db 13
    LF db 10
    tb1 db "Nhap mot so nhi phan:$"
    tb2 db "So nhi phan ma ban da nhap:$"
       
    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    xor bx,bx
    
    mov ah,9
    lea dx,tb1
    int 21h
    
    mov ah,1
N2:
    int 21h
    cmp al,CR
    je N8
    and al,0Fh
    shl bx,1
    or bl,al
    jmp N2   
    
N8:
    mov cx,16
    mov ah,9
    lea dx,tb2
    int 21h
    
PrintLoop:
    rol bx,1
    jc Print1
    mov dl,"0"
    mov ah,2
    int 21h
    jmp Exit1
    
Print1:
    mov dl,"1"
    mov ah,2
    int 21h
Exit1:
    dec cx
    cmp cx,0
    jne PrintLoop
           
           
           
    mov ah,4ch
    int 21h     
         
         
main endp