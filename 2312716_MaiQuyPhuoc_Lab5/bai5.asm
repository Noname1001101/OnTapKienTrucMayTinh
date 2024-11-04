.model small
.stack 100h
.data

.code
indec proc
    mov ax,@data
    mov ds,ax
    
    push si
    push bx
    push cx
    push dx
    
  @begin:
    mov ah,1
    int 21h
    xor bx, bx
    xor cx, cx
    cmp al, '-'
    je @minus
    cmp al, '+'
    je @plus
    jmp @repeat2
  @minus:
    mov cx,1
  @plus:
    int 21h
  @repeat2:
    cmp al,'0'
    jnge @notdigit
    cmp al, '9'
    jnle @notdigit
    
    and al, 0Fh
    mov si,ax
    
    mov ax, 10
    mul bx
    mov bx,si
    xor bh,bh
    add bx,ax
    
    mov ah,1
    int 21h
    cmp al,13
    jne @repeat2
    
    mov ax,bx
    or cx,cx
    jz @exit
    neg ax
    
  @exit:
    pop si
    pop dx
    pop cx
    pop bx
    ret
  @notdigit:  
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    jmp @begin
    
    mov ah,4ch
    int 21h      
    
indec endp   