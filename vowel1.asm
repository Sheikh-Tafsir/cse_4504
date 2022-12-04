
org 100h

.data
var db 100 dup('$')  
var1 db 'hello world$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset var
    
    start:
    mov ah,1
    int 21h
    cmp al,13
    je vowel
    mov [si],al
    inc si
    jmp start
    
    
    vowel:
    lea bx,var
    mov cx,20
    mov dl,0
    
    vowelchk:
    mov al,[bx]
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
    
    inc bx
    loop vowelchk
         
    jmp print
    
    count:
    inc dl
    inc bx
    jmp vowelchk  
    
    
    print:
    mov bl,dl
    add bl,30h
    mov ah,2
    mov dl,0dh
    int 21h 
    mov dl,0ah
    int 21h
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
        
main endp
end main

ret




