.model small  
.stack 100h
.data
     tb1 db "Enter a hex digit:$"
     tb2 db "In decimal it is:$"
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
     
     sub bl,'A'
     add bl,10h
     
     mov ah,9
     lea dx,newline 
     int 21h
     
     mov ah,9
     lea dx,tb2
     int 21h
     
   
    mov al, bl      
    mov ah, 0       
    mov dl, 10      
    div dl          

   
    add al, '0'     
    mov dl, al
    mov ah, 2
    int 21h

 
    add ah, '0'     
    mov dl, ah
    mov ah, 2
    int 21h

     mov ah,4ch
     int 21h   
           
main endp