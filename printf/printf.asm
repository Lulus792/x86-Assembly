section .text
global _start
_start:
  mov rax, 1              ; use the write syscall
  mov rdi, 1              ; use stdout as the fd
  mov rsi, msg        ; use the message as the buffer
  mov rdx, len ; and supply the message_length
  syscall

  mov rax, 60
  mov rdi, 0
  syscall

section .data
  msg: db "Hello World", 0xA ; new line
  len: equ $-msg
