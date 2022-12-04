org 100h

.data
var db 100 dup('$')    
var2 db 100 dup('$')
var1 db 'hello world$'
c dw 0
d db 5

.code
main proc
    mov ax,@data
    mov ds,ax
    mov si, offset var
    mov cx,0
    
    start:
    mov ah,1
    int 21h
    cmp al,13
    je fun
    mov [si],al
    inc si
    inc cx
    inc c
    jmp start
    
    
    fun:   
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    lea bx,var
    
    func:
    mov dl,[si-1]
    dec si
    int 21h
    loop func
    mov cx,c
    add si,cx
    dec d
    cmp d,0
    jg fun
    
    mov cx,5
    func1:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    lea dx,var
    mov ah,9
    int 21h
    
    loop func1
    
    
    end:
    mov ah,4ch
    int 21h
    
        
main endp
end main

ret



