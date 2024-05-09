section .data
num: dd 1240

section .text
global _start
_start:
  mov eax, [num] 
  
loop:
  mov ebx, [eax]
  div ebx, 10
  push [eax + '0']
  cmp ebx, 0
  jne loop
