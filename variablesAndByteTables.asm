lo:
.db $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20

ro:
.db $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20


.dseg
foe1:
.byte 20

foe2:
.byte 20

foe3:
.byte 20

foe4:
.byte 20

foePoint:
.byte 8

rockets: .byte 8
/*rockets2: .byte 1
rockets3: .byte 1
rockets4: .byte 1
rockets5: .byte 1
rockets6: .byte 1*/
sixH: .byte 1
sixL: .byte 1

.cseg 
blnkRow:
.db $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20

rocket:
.db $00, $01

uDed:
.db "Congratulations! You died."

.def loLength = r18
.def roLength = r19
.def foeLength = r20
.def playerPos = r21
.def blnkRowl = r22
.def compFlag = r23
.def shift = r24
.def writeFlag = r25