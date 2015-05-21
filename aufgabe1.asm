SECTION .data
	n DD 1
	ergebnis DD 0

SECTION .text
	global main

main:
	mov eax,1

loop:
	cmp dword [n], 1
	jle end
	mul dword [n]
	dec dword[n]
	jmp loop

end:
	mov dword[ergebnis], eax
	mov ebx, 0
	mov eax, 1
	int 0x80
