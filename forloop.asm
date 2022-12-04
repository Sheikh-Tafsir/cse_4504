   include 'emu8086.inc'
org 100h

.data
n db ?
sum db 0
.code
main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   int 21h
   sub al,48
   mov n,al
   
   mov bl,1
   
   for:   
   add sum,bl
   inc bl
     
   cmp bl,n
   jg last
   jle for
   
   last:
   print "end"
   mov ah,2
   mov dl,sum
   int 21h
   mov ah,4ch
   int 21h
main endp
end main




