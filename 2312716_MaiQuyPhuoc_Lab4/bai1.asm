.model small
.stack 100h
.data
    ThongBaoNhap db "Hay nhap chuoi ky tu (ket thuc bang Enter):$", 0
    ThongBaoXuat db "Chuoi nguoc: $", 0
    Chuoi db 100 dup(?)  
    LengthChuoi dw 0
    newline db 13,10,'$'        
.code
main proc
   
    mov ax, @data
    mov ds, ax

    
    lea dx, ThongBaoNhap
    mov ah, 9h
    int 21h

   
    mov di, offset Chuoi
     
NhapKyTu:
    mov ah, 1h           
    int 21h
    
    cmp al, 0Dh          
    je KetThucNhap
          
    mov [di], al         
    inc di               
    inc word ptr LengthChuoi
    jmp NhapKyTu         

KetThucNhap:
   
    mov [di], '$'
    
    lea dx, newline
    mov ah, 9h
    int 21h
    
    lea dx, ThongBaoXuat
    mov ah, 9h
    int 21h

    
    mov cx, LengthChuoi   
    dec di  
    
    
               
InNguocLai:
    
    mov dl, [di]       
    mov ah, 2h         
    int 21h            
    dec di
    
    
                 
    loop InNguocLai    

   
    mov ah, 4ch
    int 21h

main endp
end main  
