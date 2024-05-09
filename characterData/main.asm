section .data
  string1 db "ABA", 0
  string2 db "CDE", 0

section .text
global _start
_start:
  mov dil, [string1]
  mov rax, 60
  syscall
