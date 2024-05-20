section .text
global _start
_start:
  mov al, 0b11111111
  mov bl,0b0001 
  add rax, rbx
  adc ah, 0   ; adds the carry flag at the end
              ; takes a destination
