.model small
.stack 1000h
.data

.code
main proc
     
     mov ax,@data
     mov ds,ax
     
     mov ax, 7FFFh
     mov bx, 1
     add ax,bx ;cong 2 thanh ghi
     
     mov al,1
     mov bl,0FFh
     sub al,bl ; tru 2 thanh ghi
     
     mov al,0
     dec al    ; cong thanh ghi al them 1
     
     mov al,7Fh
     neg al    ; dao dau thanh ghi al
     
     mov ax,1ABCh
     mov bx,712Ah
     XCHG ax,bx; hoan doi gia tri giua 2 thanh ghi
     
     mov al,80h
     mov bl,0FFh
     add al, bl; cong 2 thanh ghi
     
     mov ax,0
     mov bx,8000h
     sub ax, bx; tru 2 thanh ghi
     
     mov ax,1
     neg ax; dao dau thanh ghi ax
     
         
         
main endp

