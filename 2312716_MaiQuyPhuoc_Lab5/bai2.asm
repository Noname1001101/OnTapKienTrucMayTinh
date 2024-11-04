.model small
.stack 100h
.data
    msg db 'Xuat so nhi phan trong BX: $'
    newline db 13, 10, '$' 

.code
main proc
    mov ax, @data   
    mov ds, ax

    mov bx, 0x3A5F  

   
    mov ah, 9
    lea dx, msg
    int 21h


    mov cx, 16      
print_binary:
    rol bx, 1       
    jc print_one    
    mov dl, '0'
    jmp print_digit
print_one:
    mov dl, '1'
print_digit:
    mov ah, 2       
    int 21h
    loop print_binary   

   
    mov ah, 9
    lea dx, newline
    int 21h

   
    mov ah, 4Ch
    int 21h

main endp
end main
