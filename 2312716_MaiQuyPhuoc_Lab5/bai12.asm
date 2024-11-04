.model small
.stack 100h
.data  
    newline db 13,10,'$'
    TB1 db newline, 'So thu nhat:$'
    TB2 db newline, 'So thu hai: $'
    TB3 db newline, 'Tong la: $'
    TB4 db newline, 'Hieu la: $' 
    TB5 db newline, 'Tich la: $' 
    TB6 db newline, 'Thuong la: $' 
    output db ?     
.code
main proc
    mov ax, @data
    mov ds, ax   
    
   
    lea dx, TB1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    sub al, '0'   
    mov bl, al    
    
  
    lea dx, TB2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h 
    sub al, '0'    
    mov bh, al     
    
   
    lea dx, newline
    mov ah, 9
    int 21h
    
    lea dx, TB3
    mov ah, 9
    int 21h
    
    mov al, bl
    add al, bh     
    add al, '0'    
    mov dl, al     
    mov ah, 2
    int 21h        
    
  
    lea dx, newline
    mov ah, 9
    int 21h
    
    lea dx, TB4
    mov ah, 9
    int 21h
    
    mov al, bl
    sub al, bh    
    add al, '0'   
    mov dl, al    
    mov ah, 2
    int 21h       
    
   
    lea dx, newline
    mov ah, 9
    int 21h
    
    lea dx, TB5
    mov ah, 9
    int 21h
    
    mov al, bl
    mov ah, 0     
    mul bh        
   
    call print_result 
    
   
    lea dx, newline
    mov ah, 9
    int 21h
    
    lea dx, TB6
    mov ah, 9
    int 21h
    
    mov al, bl
    xor ah, ah     
    div bh         
    
    mov dl, al     
    call print_result 
    
   
    mov ah, 4ch
    int 21h
    
main endp


print_result proc
    
    mov ah, 0
    mov cl, 10
    xor dx, dx      
    div cl          
    add ah, '0'     
    
    
    cmp ah, '0'
    je .display_unit 
    
    mov dl, ah    
    mov ah, 2
    int 21h       

.display_unit:
   
    mov dl, al
    add dl, '0'     
    mov ah, 2
    int 21h         
    
    ret
print_result endp

end main
