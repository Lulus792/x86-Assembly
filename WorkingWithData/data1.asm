section .data
  ; DB ->  1 Byte
  ; DW ->  2 Byte
  ; DD ->  4 Byte
  ; DQ ->  8 Byte
  ; DT -> 10 Byte
  num DD 5

section .text
global _start

_start:
  mov eax, 1
  ; mov ebx, num    -> stores address 
  mov ebx, [num] ;  -> stores the value
  int 80h
