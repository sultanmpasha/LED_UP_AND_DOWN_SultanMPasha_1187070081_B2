org 00h

start:
MOV p2,#00000001b
acall delay
MOV p2,#00000010b
acall delay
MOV p2,#00000100b
acall delay
MOV p2,#00001000b
acall delay
MOV p2,#00010000b
acall delay
MOV p2,#00100000b
acall delay
MOV p2,#01000000b
acall delay
MOV p2,#10000000b
acall delay

MOV p2,#01000000b
acall delay
MOV p2,#00100000b
acall delay
MOV p2,#00010000b
acall delay
MOV p2,#00001000b
acall delay
MOV p2,#00000100b
acall delay
MOV p2,#00000010b
acall delay
MOV p2,#00000001b
acall delay

MOV p2,#00000011b
acall delay
MOV p2,#00000111b
acall delay
MOV p2,#00001111b
acall delay
MOV p2,#00011111b
acall delay
MOV p2,#00111111b
acall delay
MOV p2,#01111111b
acall delay
MOV p2,#11111111b
acall delay

MOV p2,#01111111b
acall delay
MOV p2,#00111111b
acall delay
MOV p2,#00011111b
acall delay
MOV p2,#00001111b
acall delay
MOV p2,#00000111b
acall delay
MOV p2,#00000011b
acall delay
MOV p2,#00000001b
acall delay
MOV p2,#00000000b
acall delay
ajmp start

delay: mov r7,#00h
ulang2: mov r6,#00h
ulang1: mov r5,#00h
ulang: inc r5
cjne r5,#40h,ulang
inc r6
cjne r6,#40h,ulang1
inc r7
cjne r7,#40h,ulang2
ret
end