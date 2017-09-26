print_hex:
	pusha
	mov cx,0
hex_loop:
	cmp cx, 4
	je end
		
	mov ax,dx
	and ax,0x000f;to mask the first 3 bit of 0x1234->to 0x0004 ,here are aim is to get the each bit from the given hex decimal!
	add al,0x30;here,we are convereting the hex decimal to corresponding ascii value.eg. 0x0004 is now converted into '4'
	cmp al,0x39;here if value in ax>9 ,since in hexa decimal we have digits 0-9 and alphabets a,b,c,d,f. so here we are adding 7  more to get the number into alphabet.
	jle step2
	add al,7
step2:
		
	mov bx,hex_string+5;length of the string is 6+base address
	sub bx,cx;initial cx=0 ,to get the exact index of the place where we want to replace '0' with the corresponding digit in the value of dx.eg ,w ewant to replace 0 at index 5 s0 we subtract bx(=base address+5) -(cx=0)
	mov [bx],al
	ror dx,4
	add cx,1
	jmp hex_loop

end:
		
	mov bx,hex_string
	call print 
	popa
	ret

hex_string:

	db '0x0000',0
