.model small
.stack 100h
.data
TB1 db 13,10,'Xuat so Hexa: $' 
.code 
main proc
    mov ax, @data
    mov ds, ax

  
    mov bx, 0ABCDh       
    
    lea dx, TB1          
    mov ah, 9            
    int 21h              
  
    mov cx, 4            

PrintHex:
    
    mov dl, bh           
    shr dl, 4            
    cmp dl, 9            
    jg PrintLetter       
    or dl, 30h           
    jmp PrintChar        

PrintLetter:
    add dl, 37h          
    
PrintChar:
    mov ah, 2            
    int 21h              

    shl bx, 4            
    loop PrintHex        
    
    mov ah, 4ch          
    int 21h
main endp
