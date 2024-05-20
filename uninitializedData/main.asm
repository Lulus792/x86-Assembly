section .bss
  num resb 3    ; reserved Byte

section .data
  num2 DB 3 dup(0)  ; initializes memory, 3 Byte with a zero

section .text
global _start
_start:
  mov bl, 20
  mov [num], bl
  mov bl, 1
  mov [num+1], bl
  mov [num+2], bl

  mov rax, 60
  syscall
