%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .bss
r: RESB 80
SECTION .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi,15
mov ebx,9
next:
cmp ecx,0h
jz _end
pop eax
call atoi
mul esi
sub eax, ebx
add[r],eax
loop next
_end:
mov eax,msg
call sprint
mov eax,[r]
call iprintLF
call quit