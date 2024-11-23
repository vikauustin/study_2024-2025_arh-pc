%include 'in_out.asm'

SECTION .data
msg1: DB 'Введите x: ', 0h
msg2: DB 'Введите a: ', 0h
ans: DB 'Результат системы: ', 0h

SECTION .bss
x: RESB 80
a: RESB 80
res: RESB 80

SECTION .text
GLOBAL _start
_start:
; Считываем значение x
mov eax, msg1
call sprint
mov ecx, x
mov edx, 80
call sread

mov eax, x
call atoi
mov [x], eax
; Считываем значение a
mov eax, msg2
call sprint
mov ecx, a
mov edx, 80
call sread

mov eax, a
call atoi
mov [a], eax

; Условие: если x < 5, то вычисляем a * x
mov eax, [x]
cmp eax, 5
jl less_than_5 ; Переход, если x < 5
; x >= 5: вычисление x - 5
sub eax, 5
jmp store_result

less_than_5:
; x < 5: вычисление a * x
mov eax, [a]
imul eax, [x]

store_result:
mov [res], eax

; Вывод результата
mov eax, ans
call sprint
mov eax, [res]
call iprintLF

; Завершение программы
call quit
