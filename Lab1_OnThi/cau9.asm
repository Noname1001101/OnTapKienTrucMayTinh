.model small
.stack 100h
.data
     tb0 db "?$"
     tb1 db "*******$"
             
     tb2 db "**$"
     tb3 db "**$"
     newline db 13,10,"$" 
     
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,tb0
    int 21h
   
    mov ah,1
    int 21h
    mov bl,al
    mov dl,bl
    
    mov ah,1
    int 21h
    mov bh,al
    mov dl,bh
    
    mov ah,1
    int 21h
    mov cl,al
    mov dl,cl
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb1
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
      
    mov ah,9
    lea dx,tb1
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb1
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb2
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,9
    lea dx,tb3
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb1
    int 21h
    
    mov ah,9
    lea dx,newline
    int 21h
      
    mov ah,9
    lea dx,tb1
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,9
    lea dx,tb1
    int 21h 
    
    mov ah,9
    lea dx,newline
    int 21h
    
    
    mov ah,4ch
    int 21h
              
main endp
