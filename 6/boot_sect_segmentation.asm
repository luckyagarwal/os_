mov ah,0x0e;for tty mode

mov al,[the_secret]
int 0x10

mov bx,0x7c0
mov ds,bx
mov al,[the_secret]
int 0x10

mov al,[es:the_secret] ;but es  is intially contains 0x000
int 0x10

mov bx,0x7c0; it is not necessary!
mov es,bx
mov al,[es:the_secret]
int 0x10


jmp $

the_secret:
	db "x"
times 510-($-$$) db 0
 
dw 0xaa55
