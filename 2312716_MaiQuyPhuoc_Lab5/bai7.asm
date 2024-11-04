.model small
.stack 100h
.data  
    newline db 13,10,'$'
    TB1 db newline, 'Ngay: $'
    TB2 db 'Thang: $'
    TB3 db 'Nam: $'
    day db ?
    month db ?
    year db ?
.code
main proc
    mov ax, @data
    mov ds, ax   

   
    mov ah, 2Ah     
    int 21h         
    mov day, dl     
    mov month, dh   
    mov year, cl    

    
    lea dx, TB1
    mov ah, 9
    int 21h

    
    call print_number
    mov ah, 2
    mov dl, 13  
    int 21h

 
    lea dx, TB2
    mov ah, 9
    int 21h

  
    call print_number
    mov ah, 2
    mov dl, 13  
    int 21h

    
    lea dx, TB3
    mov ah, 9
    int 21h

   
    mov al, year
    call print_number

   
    mov ah, 4ch
    int 21h


print_number proc
    push ax
    push bx
    push dx

    
    xor dx, dx
    mov cx, 10
    div cx
    add al, '0'
    mov dl, al
    mov ah, 2
    int 21h

   
    mov al, ah
    add al, '0'
    mov dl, al
    mov ah, 2
    int 21h

    pop dx
    pop bx
    pop ax
    ret
print_number endp


end main
