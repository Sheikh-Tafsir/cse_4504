include 'emu8086.inc'
org 100h

.data

.code
main proc
    mov cx,5
    top:
    printn "running"
    
    loop top:
             
    print "end"  
    mov ah,4ch
    int 21h

main endp
end main

ret




