.model small
.stack 100h
.data
   TBNhap DB "Nhap mot ky tu(hoac ESC): $"
   TBChu  DB 13,10,"Ky tu nhap la chu:$"
   
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,TBNhap
    mov ah,9h
    int 21h  
    
    mov ah,1h
    int 21h
    
    cmp al,27
    je exit     
         
    cmp al,'a'
    jmp Chu
    cmp al,'z'
    jbe Chu
    
     
    
    Chu:

    lea dx,TBChu
    mov ah,9h
    int 21h  
    
    mov ah,2h
    int 21h
      
    jmp exit 
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
main endp
