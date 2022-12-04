
org 100h

.data
test_string db "Geralt of rivia",0dh,0ah,'$'

.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,16
    mov dl,0
    lea bx,test_string
    
    start:
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
    loop start
    
    jmp print
    
    count:
    inc dl
    inc bx
    jmp start
    
    print:
    mov ah,2
    add dl,30h
    int 21h
    
main endp
end main

ret




