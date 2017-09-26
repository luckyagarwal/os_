mov ah, 0x0e ;0x0e on ah tells the video interrupt that the actual function we want to run is to 'write the contents of al in tty mode'.
mov al,'H'
int 0x10
mov al,'e'
int 0x10
mov al,'l'
int 0x10
int 0x10 ; this is general interrupt for video services. 
mov al,'o'
int 0x10
jmp $

times 510 -($-$$) db 0
dw 0xaa55
