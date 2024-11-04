.model small
.stack 100h
.data                  
   msg0 db "Nhap mot ky tu: $"
   msg1 db 13,10,'Chao buoi sang.$'
   msg2 db 13,10,'Chao buoi chieu.$'
   msg3 db 13,10,'Chao buou toi.$'
  
.code
main proc
   mov ax,@data
   mov ds, ax

start:
    lea dx,msg0
    mov ah,9h
    int 21h          
    
    mov ah,1h
    int 21h
    
    cmp al,'S'
    je sang
    cmp al,'s'
    je sang
    
    cmp al,'C'
    je chieu
    cmp al,'c'
    je chieu
    
    cmp al,'T'
    je toi 
    cmp al,'t'
    je toi
    
    
    jmp start
    
sang:
    lea dx,msg1
    mov ah,9h
    int 21h
    jmp exit
          
chieu:
    lea dx,msg2
    mov ah,9h
    int 21h
    jmp exit
    
toi:
    lea dx,msg3
    mov ah,9h
    int 21h
    jmp exit
   
exit:
    mov ah, 4Ch
    int 21h
          
main endp  
end main