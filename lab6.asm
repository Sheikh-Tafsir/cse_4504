
org 100h

.data
str db 100 dup('$')
str1 db 'hello world$'
c dw 0
d db 5 
co db 0
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si, offset str
    mov cx,0
    
    start:
    mov ah,1
    int 21h
    cmp al,13
    je brk  
    mov [si],al
    inc si
    inc cx
    inc c
    jmp start
    
    brk:
    call revprint
    
    
    
    
    mov ah,4ch
    int 21h
main endp
    
print proc
    mov cx,5
    disp:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,str
    int 21h
    loop disp
    
    ret
print endp

revprint proc
    fun:   
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    func:
    mov dl,[si-1]
    mov al,[si-1]
    
    cmp al,'a'
    je count 
    cmp al,'e'
    je count
    cmp al,'i'
    je count
    cmp al,'o'
    je count
    cmp al,'u'
    je count
    cmp al,'A'
    je count
    cmp al,'E'
    je count
    cmp al,'I'
    je count
    cmp al,'O'
    je count
    cmp al,'U'
    je count
    
    dec si
    loop func
    
    jmp end
    
    count:
    inc co
    dec si
    jmp func
    
    end:
    mov ah,2
    mov dl,co
    add dl,30h
    int 21h
    
    ret
revprint endp
end main

ret




