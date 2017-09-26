print:
	pusha;move all general purpose registor on the stack
start:
	mov al,[bx];bx contains only the initial address of the string,so it is referencing only the first character! 
	cmp al,0
	je done
	
	
	mov ah,0x0e
	int 0x10
	add bx,1
	jmp start

done :
	popa
	ret

print_ln:

	pusha
   	mov ah,0x0e
	mov al,0x0a;new line cahracter`
	int 0x10
    mov al,0x0d;carriage return
    int 0x10 
	popa
	ret

