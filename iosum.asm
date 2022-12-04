org 100h
.data
a db ?
b db ?

.code
  main proc
    mov ah,1
    int 21h
    mov a,al
    sub a,48
    
    int 21h
    mov b,al
    sub b,48
    
    mov bh,a
    add bh,b
    add bh,48
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    mov dl,bh 
    int 21h
  main endp
end main



