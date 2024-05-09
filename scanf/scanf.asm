section .text
global _start
_start: 
  mov rax, 0
  mov rdi, 0
  mov rsi, msg
  mov rdx, 100
  syscall

_print:
  mov rdx, rax
  mov rax, 1
  mov rdi, 1
  syscall

_exit:
  mov rax, 60
  mov rdi, 0
  syscall

section .data
  msg: times 100 db 0
