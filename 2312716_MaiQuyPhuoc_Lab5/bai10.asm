.model small
.stack 100h
.data 
    newline db 13,10,'$'
    TB1 db newline, 'Nhap chieu dai: $'
    TB2 db newline, 'Nhap chieu rong: $'
    TB3 db newline, 'Chu vi hinh chu nhat la: $'
    TB4 db newline, 'Dien tich hinh chu nhat la: $'
    
    dientich db ?
    chuvi db ?
.code
main proc
    mov ax, @data
    mov ds, ax    

    ; Nhap chieu dai             
    lea dx, TB1
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h         ; Nhap chieu dai
   
    mov bl, al      ; Luu chieu dai vao bl

    ; Nhap chieu rong     
    lea dx, TB2
    mov ah, 9
    int 21h

    mov ah, 1
    int 21h         ; Nhap chieu rong
   
    mov bh, al      ; Luu chieu rong vao bh

    ; Tinh chu vi     
    lea dx, TB3
    mov ah, 9
    int 21h
    
    mov al, bl      ; Lay chieu dai
    add al, bh      ; C?ng chi?u r?ng
    shl al, 1       ; Nhân dôi
    mov chuvi, al   ; Luu chu vi
    
    ; Hien thi chu vi
    mov ah, 2
    mov dl, chuvi
   
    int 21h

    lea dx, newline
    mov ah, 9
    int 21h 

    ; Tinh dien tich 
    lea dx, TB4
    mov ah, 9
    int 21h 

    mov al, bl      ; Lay chieu dai
    mul bh          ; Nhan chieu dai voi chieu rong
    mov dientich, al ; Luu dien tich

    ; Hien thi dien tich
    mov ah, 2
    mov dl, dientich
   
    int 21h

    lea dx, newline
    mov ah, 9
    int 21h 

    mov ah, 4ch
    int 21h         
main endp