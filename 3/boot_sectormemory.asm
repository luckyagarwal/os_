;attemp1
mov ah,0x0e
mov al,"1"
int 0x10
;mov al,the_secret
;int 0x10


;attempt2
mov al,"2"
int 0x10
mov al,[the_secret]
int 0x10

;attemp3
mov al,"3"
int 0x10
mov bx,the_secret ;how does bx work? 
add bx, 0x7c00; initial address /first address
mov al,[bx]; what does '[ ]' do? ans is derefrencing!   
int 0x10 

;attemp4
mov al,"4"	
int 0x10
mov al,[0x7c2d];in the binary file of the code location of 'X' is 0x27 and by this command we are directly accessing the location of the 'X' in attemp 4 .
int 0x10 



jmp $
;mov al,"5"
;int 0x10
the_secret:
    db "X"

times 510-($-$$) db 0
dw 0xaa55
