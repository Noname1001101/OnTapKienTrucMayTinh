.model small
.stack 100h
.data
.code

main proc

MOV CX, 16        
OUTPUT_LOOP:
    ROL BX, 1     
    JC OUTPUT_1   
    MOV AH, 02H
    MOV DL, '0'    
    INT 21H   
    JMP SHORT CONTINUE

OUTPUT_1:
    MOV AH, 02H
    MOV DL, '1'      
    INT 21H

CONTINUE:
    LOOP OUTPUT_LOOP  

    mov ah,4ch
    int 21h

main endp
