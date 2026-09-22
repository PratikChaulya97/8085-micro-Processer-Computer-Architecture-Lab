;..add 2 16 bit 

LXI H,1234H
LXI D, 1111H
MOV A,L
ADD E
MOV L,A
MOV A,H

ADC D
MOV H,A

HLT
