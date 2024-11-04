.model small
.stack 100h
.data
     tb1 db '? $'
     tb2 db 13,10,'Nhap 1 so thap phan thu nhat: $'
     tb3 db 13,10,'Nhap 1 so thap phan thu hai: $'
     tb4 db 13,10,'Tong 2 so thap phan la: $'
     output db ?
.code
main proc
    mov AX,@data
    mov DS,AX
    
    ;xuat '?'
    mov ah,9
    lea dx,tb1         
    int 21h
    
    ;xuat tb2
    mov ah,9
    lea dx,tb2  
    int 21h
    
    ;nhap 1 so thap phan thu nhat
    mov ah,1
    int 21h
    mov bl,al
             
    ;xuat tb3
    mov ah,9
    lea dx,tb3
    int 21h
    
    ;nhap 1 so thap phan thu hai
    mov ah,1
    int 21h         
    mov bh,al
    
    ;tong cua 2 so thap phan
    
    mov al,bl;dua so thap phan dau tien vao AL
    add al,bh;cong 2 so thap phan lai 
    
    sub al,30h;tru them 30 theo he so thap luc phan
            
    mov output,al; luu ket qua vao output
    
    
    
    ;xuat tb4
    mov ah,9
    lea dx, tb4
    int 21h
    
    ;in ra ket qua cua 2 so thap phan cong lai
    mov ah,2
    mov dl,output
    int 21h
    
    
            
    mov AH, 4Ch
    int 21h 

main endp