
_main:

;Envasadora_01.c,1 :: 		void main() {
;Envasadora_01.c,2 :: 		int d=7;
	MOVLW       7
	MOVWF       main_d_L0+0 
	MOVLW       0
	MOVWF       main_d_L0+1 
;Envasadora_01.c,3 :: 		TRISD=0b11111111;
	MOVLW       255
	MOVWF       TRISD+0 
;Envasadora_01.c,4 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;Envasadora_01.c,5 :: 		portb = 0;
	CLRF        PORTB+0 
;Envasadora_01.c,6 :: 		while(1){
L_main0:
;Envasadora_01.c,7 :: 		if(portd==15){
	MOVF        PORTD+0, 0 
	XORLW       15
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;Envasadora_01.c,9 :: 		portb = 2;
	MOVLW       2
	MOVWF       PORTB+0 
;Envasadora_01.c,10 :: 		while(portd==d){
L_main3:
	MOVLW       0
	XORWF       main_d_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main14
	MOVF        main_d_L0+0, 0 
	XORWF       PORTD+0, 0 
L__main14:
	BTFSS       STATUS+0, 2 
	GOTO        L_main4
;Envasadora_01.c,11 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
	NOP
	NOP
;Envasadora_01.c,12 :: 		if(d=7){d=6;portb = 0;}
	MOVLW       7
	MOVWF       main_d_L0+0 
	MOVLW       0
	MOVWF       main_d_L0+1 
	MOVLW       6
	MOVWF       main_d_L0+0 
	MOVLW       0
	MOVWF       main_d_L0+1 
	CLRF        PORTB+0 
;Envasadora_01.c,13 :: 		}portb=0;
	GOTO        L_main3
L_main4:
	CLRF        PORTB+0 
;Envasadora_01.c,15 :: 		if(portd==0){
	MOVF        PORTD+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L_main7
;Envasadora_01.c,17 :: 		portb=0;
	CLRF        PORTB+0 
;Envasadora_01.c,18 :: 		}else if(portd==1){
	GOTO        L_main8
L_main7:
	MOVF        PORTD+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_main9
;Envasadora_01.c,19 :: 		portb=1;
	MOVLW       1
	MOVWF       PORTB+0 
;Envasadora_01.c,20 :: 		}else if(portd==2){
	GOTO        L_main10
L_main9:
	MOVF        PORTD+0, 0 
	XORLW       2
	BTFSS       STATUS+0, 2 
	GOTO        L_main11
;Envasadora_01.c,21 :: 		portb=2;
	MOVLW       2
	MOVWF       PORTB+0 
;Envasadora_01.c,22 :: 		}//else{     //portb=254;//}
L_main11:
L_main10:
L_main8:
;Envasadora_01.c,23 :: 		}portb=0;
L_main2:
	CLRF        PORTB+0 
;Envasadora_01.c,24 :: 		delay_ms(100);
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
;Envasadora_01.c,25 :: 		}
	GOTO        L_main0
;Envasadora_01.c,26 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
