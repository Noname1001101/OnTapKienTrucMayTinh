.model small
.stack 100h
.data
 
 TBNhap db "Nhap mot ky tu:$"
 TB5KTKeTiep db 13,10,"Nam ky tu ke tiep: $"
 newline db 13,10,'$'
 inputchar db ?
 
 
 
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
    
    
    lea dx,TB5KTKeTiep
    mov ah,9
    int 21h
        
    
    
    mov cx,5
    
print_loop:  
    
    dec inputchar
    mov dl,inputchar
    
    mov ah,2
    int 21h
    
    lea dx, newline
    mov ah,9
    int 21h
    
    
    loop print_loop
        
     
             
exit:    
    mov ah,4ch
    int 21h             
         
main endp
