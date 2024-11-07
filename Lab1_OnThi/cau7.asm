.model small
.stack 100h
.data
    tb1 db "ENTER THREE INITIALG:$"
    newline db 13,10, "$"
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
     
     mov ah,2
     mov dl,bl
     int 21h
     
     mov ah,9
     lea dx,newline
     int 21h
     
     mov ah,2
     mov dl,bh
     int 21h
     
     mov ah,9
     lea dx,newline
     int 21h
     
     mov ah,2
     mov dl,cl
     int 21h      
         
         
         
main endp