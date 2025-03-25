
_main:

;entradas_byte_Project.c,1 :: 		void main() {
;entradas_byte_Project.c,2 :: 		TRISD=0b11111111;
	MOVLW       255
	MOVWF       TRISD+0 
;entradas_byte_Project.c,3 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;entradas_byte_Project.c,4 :: 		while(1){
L_main0:
;entradas_byte_Project.c,5 :: 		if(portd=0){
	CLRF        PORTD+0 
	MOVF        PORTD+0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main2
;entradas_byte_Project.c,6 :: 		portb=0;
	CLRF        PORTB+0 
;entradas_byte_Project.c,7 :: 		}else{
	GOTO        L_main3
L_main2:
;entradas_byte_Project.c,8 :: 		portb=255;
	MOVLW       255
	MOVWF       PORTB+0 
;entradas_byte_Project.c,9 :: 		}
L_main3:
;entradas_byte_Project.c,10 :: 		delay_ms(700);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       27
	MOVWF       R12, 0
	MOVLW       39
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
;entradas_byte_Project.c,11 :: 		}
	GOTO        L_main0
;entradas_byte_Project.c,12 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
