.model small
.stack 100h
.data
    TBNhap db "Nhap mot ky tu:$"
    TBXuat db "Ky tu vua nhap la:$"
    KyTu db ?  
.code
main proc

    mov ax, @data
    mov ds, ax

    call NhapKyTu

   
    lea dx, TBXuat
    mov ah, 9h
    int 21h

    
    mov ah, 2
    mov dl, KyTu
    int 21h

    
    mov ah, 4ch
    int 21h

main endp

NhapKyTu proc
NhapLai:
    
    lea dx, TBNhap
    mov ah, 9h
    int 21h

    
    mov ah, 1h
    int 21h
    mov KyTu, al  

    
    cmp KyTu, 21h
    jb NhapLai

   
    cmp KyTu, 0FEh
    ja NhapLai

   
    cmp KyTu, 1Bh
    je NhapLai

    ret  
NhapKyTu endp

end main
