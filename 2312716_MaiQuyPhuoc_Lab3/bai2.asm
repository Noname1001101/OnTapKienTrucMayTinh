.model small
.stack 100h
.data
   TBNhap DB "Nhap mot ky tu: $"
   TBKhac DB 13,10,"Ky tu nhap khac chu/so$"
   TBChu  DB 13,10,"Ky tu nhap la chu$"
   TBSo   DB 13,10,"Ky tu nhap la so$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,TBNhap
    mov ah,9h
    int 21h  
    
    mov ah,1h
    int 21h
    
    cmp al,'0'
    jl Khac 
    cmp al,'9'
    jbe So
    
    cmp al,'A'
    jl Khac
    cmp al,'Z'
    jbe Chu
    
    cmp al,'a'
    jl Khac
    cmp al,'z'
    jbe Chu
    
     
    
Chu:

    lea dx,TBChu
    mov ah,9h
    int 21h    
    jmp exit
    
So:

    lea dx,TBSo
    mov ah,9h
    int 21h    
    jmp exit           

Khac:

    lea dx,TBKhac
    mov ah,9h
    int 21h    
    jmp exit           
           

exit:
    mov ah,4ch
    int 21h

main endp
