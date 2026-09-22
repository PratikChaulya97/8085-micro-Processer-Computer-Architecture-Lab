; FIND GREATER OF TWO 8-BIT NUMBERS

MVI A, 25H      ; Load 25H into A
MVI B, 35H      ; Load 35H into B

CMP B           ; Compare A and B (A - B internally)
JNC A_GREATER   ; Jump if A >= B (Carry = 0)

MOV A, B        ; If B > A, move B into A first

A_GREATER: MOV C, A        ; Store the larger value into C
HLT             ; Stop execution