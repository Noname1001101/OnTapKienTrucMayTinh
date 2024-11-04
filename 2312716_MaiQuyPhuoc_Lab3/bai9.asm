.model small
.stack 100h
.data

.code

main proc
     
    mov ax,@data
    mov ds,ax
     
    MOV BX, 0           
INPUT_LOOP:
    MOV AH, 01H          
    INT 21H              
    CMP AL, 0DH          
    JE DONE              

    SUB AL, 30H          
    SHL BX, 1            
    OR BX, AX            
    JMP INPUT_LOOP       

   
    mov ah,4ch
    int 21h
    
DONE:         
         
main endp