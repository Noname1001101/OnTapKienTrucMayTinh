.model small
.stack 100h
.data
  
.code   
main proc
    
  mov ax,@data
  mov ds,ax
  
  mov bl,"A"

start:
  mov ah,2
  mov dl,bl
  int 21h  
  inc bl  
   
  
  cmp bl,"Z"
  jg exit
  
  jmp start
  
  
exit:  
  mov ah,4ch
  int 21h

main endp    