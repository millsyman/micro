
;##### General delay routines ##### ; Adapted from code by C. Foudas, Imperial College, High Energy Physics division
DEL15ms:
	push r26
	push r27
        ldi XH, HIGH(19997)
        ldi XL, LOW (19997)
COUNT:  
        sbiw XL, 1
        brne COUNT
	pop r27
	pop r26
        ret


DEL4P1ms:
	push r26
	push r27
        ldi XH, HIGH(5464)
        ldi XL, LOW (5464)
COUNT1:
        sbiw XL, 1
        brne COUNT1
	pop r27
	pop r26
        ret 


DEL100mus:
	push r26
	push r27
        ldi XH, HIGH(131)
        ldi XL, LOW (131)
COUNT2:
        sbiw XL, 1
        brne COUNT2
	pop r27
	pop r26
        ret 


DEL49ms:
	push r26
	push r27
        ldi XH, HIGH(65535)
        ldi XL, LOW (65535)
COUNT3:
        sbiw XL, 1
        brne COUNT3
	pop r27
	pop r26
        ret

BigDel:
        rcall Del49ms
	cpi writeFlag, $80	; If the debug time flag is set, ignore 4 of the delay loops.
	jge delEnd
        rcall Del49ms
        rcall Del49ms
	rcall Del49ms
        rcall Del49ms
delEnd: ret


BiglyDel:   
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel
	rcall BigDel	
	ret