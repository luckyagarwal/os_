[org 0x7c00]
mov bx,HELLO
call print 

call print_ln ;it calls label prefixed label
mov bx,GOODBYE; moves the address of GOODBYE variable in the bx; base registor
call print

call print_ln

mov dx, 0x12fe

call print_hex

jmp $


%include "boot_sect_print.asm"
%include "boot_sect_print_hex.asm"

HELLO:
     db 'Hello,word',0

GOODBYE:
     db 'Goodbye',0

times 510-($-$$) db 0
dw 0xaa55
  		
