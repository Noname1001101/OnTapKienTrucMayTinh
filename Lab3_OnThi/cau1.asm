.model small
.stack 100h

.data
    tb0 db "Xin moi nhap mot ky tu:$"
    tb1 db "Chao buoi sang$"
    tb2 db "Chao buoi chieu$"
    tb3 db "Chao buoi toi$"
    newline db 13,10,"$"
    
.code
main proc

    mov ax,@data
    mov ds,ax

start:
    mov ah,9
    lea dx,tb0
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    cmp al,"S"
    je sang
    cmp al,"s"
    je sang
    
    cmp al,"C"
    je chieu
    cmp al,"c"
    je chieu
    
    cmp al,"T"
    je toi
    cmp al,"t"
    je toi
    
    jmp start
    
sang:
     mov ah,9
     lea dx,newline
     int 21h
     
     mov ah,9
     lea dx,tb1
     int 21h
     jmp exit
     
chieu:
    mov ah,9
    lea dx,newline
    int 21h
     
    mov ah,9
    lea dx,tb2
    int 21h
    jmp exit
    
toi:
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb3
    int 21h
    jmp exit
        
       
    
    
    
    
    
exit:   
    mov ah,4ch
    int 21h
        
    
main endp
