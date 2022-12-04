

org 100h

.data
var db 100 dup('$')  
var1 db 'hello world$'

.code
main proc
    mov ax,@data
    mov ds,ax
    mov si, offset var
    
    start:
    mov ah,1
    int 21h
    cmp al,13
    je fun
    mov [si],al
    inc si
    jmp start
    
    fun:
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
       
    mov ah,9
    lea dx,var
    int 21h
    
    mov ah,4ch
    int 21h
    
        
main endp
end main

ret




