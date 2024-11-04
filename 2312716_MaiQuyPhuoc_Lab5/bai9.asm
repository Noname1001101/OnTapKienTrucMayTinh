.model small
.stack 100h
.data
    msg db 'The first hex digit is: $'

.code
main proc
    
    mov ax, @data
    mov ds, ax

   
    mov bx, 12AAh 

    
    mov ah, 09h
    lea dx, msg
    int 21h

    
    mov ah, bh 
    shr ah, 4  

    
    cmp ah, 9
    jg convert_to_letter  
    add ah, 30h           
    jmp display_digit

convert_to_letter:
    add ah, 37h           

display_digit:
    mov dl, ah            
    mov ah, 02h
    int 21h               

    
    mov ah, 4Ch
    int 21h
main endp
end main
