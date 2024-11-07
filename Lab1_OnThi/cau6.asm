.model small
.stack 100h
.data
     tb1 db "? $"
     tb2 db "THE SUM OF$"
     tb3 db " AND $"
     tb4 db " IS $"
     newline db 13,10,"$" 
     
.code
main proc
     mov ax,@data
     mov ds,ax
;in dau "?"  
     mov ah,9
     lea dx,tb1 
     int 21h
;nhap so thu nhat     
     mov ah,1
     int 21h
     mov bl,al
     mov dl,bl
;nhap so thu hai    
     mov ah,1
     int 21h
     mov bh,al
     mov dh,bh
   
     mov ah,9
     lea dx,newline
     int 21h
;in dong "THE SUM OF"     
     mov ah,9
     lea dx,tb2
     int 21h
     
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
     
     mov ah,bl
     add bh,ah
     sub bh,30h
     
     mov ah,2
     mov dl,bh
     int 21h
     
     
     
     
     mov ah,4ch
     int 21h
         
         
main endp