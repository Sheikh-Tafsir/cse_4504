
org 100h

.data
ara db 1,2,3,4,5,6,7,8,9
n db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov n,al
    mov cl,al
    mov si,offset ara
    mov bl,0
    mov bh,9
    
    start:
    mov al,[si]
    mul al
    div bh
    add ah,bl
    div bh
    mov bl,ah
    inc si
    loop start
    
    add bl,48
    
    mov ah,2
    mov dl,0dh
    int 21h  
    mov dl,0ah
    int 21h  
    mov dl,bl
    int 21h    
    

main endp    
end main

ret




