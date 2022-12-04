
org 100h

.data
var db 10 dup('$')  

.code
main proc
    
    mov ax,@data
    mov ds,ax
    mov si, offset var
    mov cx,5
    
    start:
    mov ah,1
    int 21h
    mov [si],al
    inc si
    loop start
    
    newline:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h 
    mov cx,5
    
    reverse:
    mov dl,[si-1]
    add dl,32
    dec si
    int 21h
    loop reverse
    
    end:
    mov ah,4ch
    int 21h
    
main endp
end main

ret




