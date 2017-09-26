mov ah,0x0e

mov bx,""


times 510-($-$$) db 0
dw 0xaa55	
	
