.model small
.stack 100h

.data
    tb1 db "hay nhap chuoi ky tu (ket thuc bang Enter):$"
    tb2 db "Chuoi nguoc:$"
    buffer db 255 dup('$')
    length db 0
    newline db 13,10,"$" 
     
.code
main proc
     mov ax, @data
     mov ds, ax
     
     mov ah, 9
     lea dx, tb1
     int 21h
     
     lea si, buffer
     xor cx, cx
     
r_loop:
     mov ah, 1
     int 21h
     cmp al, 13
     je f_input
     mov [si], al
     inc si
     inc cx
     jmp r_loop

f_input:
     mov byte ptr [si], '$'
     mov length, cl
     
     mov ah, 9
     lea dx, newline
     int 21h
     
     mov ah, 9
     lea dx, tb2
     int 21h
     
     lea si, buffer
     xor ax, ax       
     mov al, length   
     add si, ax       
     
reverse_loop: 
     dec si
     mov dl, [si]
     mov ah, 2
     int 21h
     loop reverse_loop
     
     mov ah, 4ch
     int 21h
     
main endp
end main
