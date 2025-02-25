
_main:

;cuartoProyecto.c,1 :: 		void main() {
;cuartoProyecto.c,2 :: 		TRISD=0b000000011;   //menos significativos de entrada
	MOVLW       3
	MOVWF       TRISD+0 
;cuartoProyecto.c,5 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;cuartoProyecto.c,6 :: 		PORTB.RB0=0;    //instruccion de salida logico 0
	BCF         PORTB+0, 0 
;cuartoProyecto.c,7 :: 		PORTB.RB1=1;
	BSF         PORTB+0, 1 
;cuartoProyecto.c,8 :: 		while(1){
L_main0:
;cuartoProyecto.c,9 :: 		if(PORTD.RD0==1){
	BTFSS       PORTD+0, 0 
	GOTO        L_main2
;cuartoProyecto.c,10 :: 		PORTB.RB0=1;
	BSF         PORTB+0, 0 
;cuartoProyecto.c,11 :: 		}else{
	GOTO        L_main3
L_main2:
;cuartoProyecto.c,12 :: 		PORTB.RB0=0;
	BCF         PORTB+0, 0 
;cuartoProyecto.c,13 :: 		}
L_main3:
;cuartoProyecto.c,14 :: 		if(PORTD.RD1==1){
	BTFSS       PORTD+0, 1 
	GOTO        L_main4
;cuartoProyecto.c,15 :: 		PORTB.RB1=1;
	BSF         PORTB+0, 1 
;cuartoProyecto.c,16 :: 		}else{
	GOTO        L_main5
L_main4:
;cuartoProyecto.c,17 :: 		PORTB.RB1=0;
	BCF         PORTB+0, 1 
;cuartoProyecto.c,18 :: 		}
L_main5:
;cuartoProyecto.c,22 :: 		delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
;cuartoProyecto.c,27 :: 		}
	GOTO        L_main0
;cuartoProyecto.c,28 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
