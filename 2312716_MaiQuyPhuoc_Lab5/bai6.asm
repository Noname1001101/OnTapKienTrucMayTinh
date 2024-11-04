.model small
.stack 100h
.data

.code
outdec proc
    push ax
    push bx
    push cx
    push dx
    
    
    or ax, ax
    jg @endiF1
    push ax
    mov dl,'-'
    mov ah,2
    int 21h
    pop ax
    neg ax
    
  @endiF1:
    xor cx,cx
    mov bx,10
  @repeat1:
    xor dx,dx
    div bx
    push dx
    inc cx
    or ax,ax
    jnz @repeat1
    
    mov ah,2
  @for:
    pop dx
    or dl,30h
    int 21h
    loop @for
    
    pop ax
    pop bx
    pop cx
    pop dx
    ret
    
outdec endp