
_main:

;Envasadora_01.c,1 :: 		void main() {
;Envasadora_01.c,2 :: 		TRISD=0b11111111;
	MOVLW       255
	MOVWF       TRISD+0 
;Envasadora_01.c,3 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;Envasadora_01.c,4 :: 		while(1){
L_main0:
;Envasadora_01.c,5 :: 		if(portd==0){
	MOVF        PORTD+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;Envasadora_01.c,6 :: 		portb=0;
	CLRF        PORTB+0 
;Envasadora_01.c,7 :: 		}else if(portd==1){
	GOTO        L_main3
L_main2:
	MOVF        PORTD+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
;Envasadora_01.c,8 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;Envasadora_01.c,9 :: 		}else if(portd==2){
	GOTO        L_main5
L_main4:
	MOVF        PORTD+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main6
;Envasadora_01.c,10 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;Envasadora_01.c,11 :: 		}else if(portd==3){
	GOTO        L_main7
L_main6:
	MOVF        PORTD+0, 0 
	XORLW       3
	BTFSS       STATUS+0, 2 
	GOTO        L_main8
;Envasadora_01.c,12 :: 		portb=3;
	MOVLW       3
	MOVWF       PORTB+0 
;Envasadora_01.c,13 :: 		}else if(portd==4){
	GOTO        L_main9
L_main8:
	MOVF        PORTD+0, 0 
	XORLW       4
	BTFSS       STATUS+0, 2 
	GOTO        L_main10
;Envasadora_01.c,14 :: 		portb=4;
	MOVLW       4
	MOVWF       PORTB+0 
;Envasadora_01.c,15 :: 		}else{
	GOTO        L_main11
L_main10:
;Envasadora_01.c,16 :: 		portb=254;
	MOVLW       254
	MOVWF       PORTB+0 
;Envasadora_01.c,17 :: 		}
L_main11:
L_main9:
L_main7:
L_main5:
L_main3:
;Envasadora_01.c,18 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
	NOP
;Envasadora_01.c,19 :: 		}
	GOTO        L_main0
;Envasadora_01.c,20 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
