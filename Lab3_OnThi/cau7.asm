.model small
.stack 100h

.data
     tb1 db "Nhap mot ky tu(hoac ESC):$"
     tb2 db "Ky tu nhap la chu$" 
     tb3 db "Ky tu nhap la so$"
     tb4 db "Ky tu nhap khac chu/so$"
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
     cmp bl,27
     je exit
     
     cmp bl,"A"
     jmp chu
     
     cmp bl,"a"
     jmp chu
     
     cmp bl,"0"
     jmp so
     
     cmp bl,"9"
     jmp so
     
     jmp khac  
    
     
chu: 
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb2
    int 21h
    jmp exit
     
so: 
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb3
    int 21h  
    jmp exit    
   
khac:
    
    mov ah,9
    lea dx,newline
    int 21h
 
    mov ah,9
    lea dx,tb4
    int 21h   
    jmp exit    
        
exit:       
    mov ah,4ch
    int 21h   
       
 
main endp  