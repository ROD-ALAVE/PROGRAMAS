
_main:

;com_serial.c,1 :: 		void main() {
;com_serial.c,2 :: 		UART1_Init(9600);
	MOVLW      25
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;com_serial.c,3 :: 		TRISB=0b00000000;
	CLRF       TRISB+0
;com_serial.c,4 :: 		while(1){
L_main0:
;com_serial.c,5 :: 		portb.rb0=1;
	BSF        PORTB+0, 0
;com_serial.c,6 :: 		UART1_Write_Text("PROCESO 1 INICIADO");
	MOVLW      ?lstr1_com_serial+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;com_serial.c,7 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;com_serial.c,8 :: 		portb.rb0=0;
	BCF        PORTB+0, 0
;com_serial.c,9 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;com_serial.c,10 :: 		}
	GOTO       L_main0
;com_serial.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
