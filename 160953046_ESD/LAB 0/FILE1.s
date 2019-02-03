  AREA RESET,DATA,READONLY
  EXPORT __Vectors
__Vectors   
  DCD 0x10001000
  DCD Reset_Handler
  AREA mycode, CODE, READONLY
  ENTRY
  EXPORT Reset_Handler
Reset_Handler
  LDR R0, =SRC
  LDR R1, =DST
  LDR R2, [R0]
  STR R2, [R1]
  LDR R3, =12345678
  MOV R3,#12
  MOV R3,#12345678
HERE
  B HERE
  AREA mydata, DATA, READWRITE
SRC DCD 0x123456
DST DCD 0
  END