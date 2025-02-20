
_main:

;_3er.c,1 :: 		void main() {
;_3er.c,2 :: 		int dato=0;
	CLRF        main_dato_L0+0 
	CLRF        main_dato_L0+1 
	MOVLW       129
	MOVWF       main_luces_L0+0 
	MOVLW       0
	MOVWF       main_luces_L0+1 
	MOVLW       66
	MOVWF       main_luces_L0+2 
	MOVLW       0
	MOVWF       main_luces_L0+3 
	MOVLW       36
	MOVWF       main_luces_L0+4 
	MOVLW       0
	MOVWF       main_luces_L0+5 
	MOVLW       24
	MOVWF       main_luces_L0+6 
	MOVLW       0
	MOVWF       main_luces_L0+7 
	MOVLW       1
	MOVWF       main_sube_L0+0 
	MOVLW       0
	MOVWF       main_sube_L0+1 
;_3er.c,5 :: 		TRISA.RA0=0;
	BCF         TRISA+0, 0 
;_3er.c,6 :: 		TRISB=0b00000000;
	CLRF        TRISB+0 
;_3er.c,7 :: 		PORTA.RA0=0;
	BCF         PORTA+0, 0 
;_3er.c,8 :: 		while(1){
L_main0:
;_3er.c,9 :: 		PORTA.RA0=1;
	BSF         PORTA+0, 0 
;_3er.c,10 :: 		PORTB=luces[dato];
	MOVF        main_dato_L0+0, 0 
	MOVWF       R0 
	MOVF        main_dato_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       main_luces_L0+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(main_luces_L0+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTB+0 
;_3er.c,11 :: 		if(sube==1){
	MOVLW       0
	XORWF       main_sube_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main9
	MOVLW       1
	XORWF       main_sube_L0+0, 0 
L__main9:
	BTFSS       STATUS+0, 2 
	GOTO        L_main2
;_3er.c,12 :: 		dato++;
	INFSNZ      main_dato_L0+0, 1 
	INCF        main_dato_L0+1, 1 
;_3er.c,13 :: 		if(dato==4){sube=0;dato=3;}
	MOVLW       0
	XORWF       main_dato_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main10
	MOVLW       4
	XORWF       main_dato_L0+0, 0 
L__main10:
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
	CLRF        main_sube_L0+0 
	CLRF        main_sube_L0+1 
	MOVLW       3
	MOVWF       main_dato_L0+0 
	MOVLW       0
	MOVWF       main_dato_L0+1 
L_main3:
;_3er.c,14 :: 		}else{
	GOTO        L_main4
L_main2:
;_3er.c,15 :: 		dato--;
	MOVLW       1
	SUBWF       main_dato_L0+0, 1 
	MOVLW       0
	SUBWFB      main_dato_L0+1, 1 
;_3er.c,16 :: 		if(dato==-1){sube=1;dato=0;}
	MOVLW       255
	XORWF       main_dato_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main11
	MOVLW       255
	XORWF       main_dato_L0+0, 0 
L__main11:
	BTFSS       STATUS+0, 2 
	GOTO        L_main5
	MOVLW       1
	MOVWF       main_sube_L0+0 
	MOVLW       0
	MOVWF       main_sube_L0+1 
	CLRF        main_dato_L0+0 
	CLRF        main_dato_L0+1 
L_main5:
;_3er.c,17 :: 		}
L_main4:
;_3er.c,18 :: 		delay_ms(700);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       27
	MOVWF       R12, 0
	MOVLW       39
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
;_3er.c,19 :: 		PORTA.RA0=0;
	BCF         PORTA+0, 0 
;_3er.c,20 :: 		delay_ms(700);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       27
	MOVWF       R12, 0
	MOVLW       39
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
;_3er.c,23 :: 		}
	GOTO        L_main0
;_3er.c,24 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
