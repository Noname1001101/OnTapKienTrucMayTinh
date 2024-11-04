.model small
.stack 100h
.data

.code
main proc
     
     mov ax,@data
     mov ds,ax
     
     
     
    
     ;cau d
     mov ax,7132h
     mov bx,7000h
     add ax,bx
     
     ;cau e
     mov ax,6389h
     mov bx,1176h
     add ax,bx
         
main endp
