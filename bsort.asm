.MODEL SMALL
.DATA
N DB 5
A DB 2,4,1,3,7
.CODE
MOV AX,@DATA
MOV DS,AX
MOV CL,N
DEC CL
OUTLOOP: MOV CH,CL
         MOV SI,0
INLOOP: MOV AL,A[SI]
        INC SI
        CMP AL,A[SI]
        JB NOXG
        XCHG AL,A[SI]
        MOV A[SI-1],AL
NOXG: DEC CH
      JNZ INLOOP
      DEC CL
      JNZ OUTLOOP
      MOV AH,4CH
      INT 21H
END 
