.model small
.stack 100h
.data
    TBNhap db "Hay nhap mot chu thuong(a-z):$"
    TBHoa db 13,10, "Chu hoa tuong ung la:$" 
    newline db  13,10, '$'
    Temp db ?
.code
main proc
     mov ax,@data
     mov ds,ax

Nhap:     
     lea dx,TBNhap
     mov ah,9h
     int 21h
     
  
     mov ah,1h
     int 21h 
     mov temp,al
     
     
     cmp temp,'a' 
     lea dx, newline
     mov ah,9
     int 21h 
     jl  Nhap 
     
     
     cmp temp,'z' 
     lea dx, newline
     mov ah,9
     int 21h
     jg  Nhap
     
     
     sub temp,20h
     
     
     lea dx,TBHoa
     mov ah,9h
     int 21h
     
     
     mov dl,temp
     mov ah,2h
     int 21h
     
     
     mov ah,4ch
     int 21h
           
         
         
main endp
