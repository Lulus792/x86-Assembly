section .data
  mikroTick: db 3900

section .text
global _start
_start:
  mov rax, mikroTick

_loop:        ; start of the loop for mikro seconds
  cmp rax, 0
  jne loop    ; jump to start

_end:
  mov rax, 60 ; mov exit code to rax
  mov rdi, 0  ; add exit code 0
  syscall     ; exit the programm
