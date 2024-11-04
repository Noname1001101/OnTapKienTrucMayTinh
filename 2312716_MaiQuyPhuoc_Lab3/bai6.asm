.model small
.stack 100h
.data
 
 TBNhap db "Nhap mot ky tu:$"
 TB5KTDungTruoc db 13,10,"Nam ky tu dung truoc: $"
 TB5KTDungSau db 13,10,"Nam ky tu dung sau: $"
 newline db 13,10,'$'
 inputchar db ?
 temp db ? 
 
 
.code
main proc
    mov ax,@data
    mov ds,ax

input_loop:
   
    lea dx,TBNhap
    mov ah,9h
    int 21h
    
    mov ah,1h
    int 21h
    mov inputchar,al
    
    
    lea dx,TB5KTDungTruoc
    mov ah,9
    int 21h 
    
    mov bl, inputchar 
    mov temp,bl
    mov cx,5
    
print_first:  
    
    dec inputchar
    mov dl,inputchar
    
    
    mov ah,2
    int 21h 
    
    
    loop print_first 
    
    
    lea dx, newline
    mov ah, 9
    int 21h  
    
    lea dx,TB5KTDungSau
    mov ah,9
    int 21h
    
    mov bl, inputchar
    mov cx,5 
    
             
print_later:    
    inc temp
    mov dl, temp
    mov ah,2
    int 21h
    loop print_later 
             
exit:    
    mov ah,4ch
    int 21h             
         
main endp
