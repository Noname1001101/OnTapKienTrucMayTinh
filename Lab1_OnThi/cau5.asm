.model small
.stack 100h
.data
     tb1 db "Nhap ky tu thu nhat:$"
     tb2 db "Nhap ky tu thu hai:$"
     tb3 db "Ky tu tong:$"
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
      
     mov ah,1
     int 21h
     mov bh,al
     mov dl,bh
     
     mov ah,9
     lea dx,newline
     int 21h
     
     mov ah,9
     lea dx,tb3
     int 21h
     
     add bh,bl
     add bh,2
     
     mov ah,2
     mov dl,bh
     int 21h
     
     mov ah,4ch
     int 21h    
         
         
main endp
