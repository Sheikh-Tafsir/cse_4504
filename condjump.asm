include 'emu8086.inc'
org 100h

.data

.code
main proc
           
    mov bl,0
    mov cl,5
    
    start:
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    inc bl
    
    cmp bl,cl
    je last
    jne start
    
    
    last:
    print "end"
    
    mov ah,4ch
    int 21h
main endp
end main


