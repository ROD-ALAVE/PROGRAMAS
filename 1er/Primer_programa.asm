
_main:

;Primer_programa.c,1 :: 		void main() {
;Primer_programa.c,2 :: 		TRISB.RB0=0;
	BCF         TRISB+0, 0 
;Primer_programa.c,3 :: 		PORTB.RB0=0;
	BCF         PORTB+0, 0 
;Primer_programa.c,4 :: 		while(1){
L_main0:
;Primer_programa.c,5 :: 		PORTB.RB0=1;
	BSF         PORTB+0, 0 
;Primer_programa.c,6 :: 		delay_ms(250);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;Primer_programa.c,7 :: 		PORTB.RB0=0;
	BCF         PORTB+0, 0 
;Primer_programa.c,8 :: 		delay_ms(250);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;Primer_programa.c,9 :: 		}
	GOTO        L_main0
;Primer_programa.c,10 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
