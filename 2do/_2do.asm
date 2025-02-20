
_main:

;_2do.c,1 :: 		void main() {
;_2do.c,2 :: 		int dato=4;
	MOVLW       4
	MOVWF       main_dato_L0+0 
	MOVLW       0
	MOVWF       main_dato_L0+1 
;_2do.c,3 :: 		TRISA.RA0=0;
	BCF         TRISA+0, 0 
;_2do.c,4 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;_2do.c,5 :: 		PORTA.RA0=0;
	BCF         PORTA+0, 0 
;_2do.c,6 :: 		while(1){
L_main0:
;_2do.c,7 :: 		PORTA.RA0=1;
	BSF         PORTA+0, 0 
;_2do.c,8 :: 		PORTB=dato;
	MOVF        main_dato_L0+0, 0 
	MOVWF       PORTB+0 
;_2do.c,9 :: 		dato++;
	INFSNZ      main_dato_L0+0, 1 
	INCF        main_dato_L0+1, 1 
;_2do.c,10 :: 		delay_ms(700);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       27
	MOVWF       R12, 0
	MOVLW       39
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
;_2do.c,11 :: 		PORTA.RA0=0;
	BCF         PORTA+0, 0 
;_2do.c,12 :: 		delay_ms(700);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       27
	MOVWF       R12, 0
	MOVLW       39
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
;_2do.c,13 :: 		}
	GOTO        L_main0
;_2do.c,14 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
