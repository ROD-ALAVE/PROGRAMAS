#line 1 "E:/ITSO/SMP-300/programas/PROGRAMAS/6to_proyecto/PRUEBA_SERIAL/com_serial.c"
void main() {
 UART1_Init(9600);
 TRISB=0b00000000;
 while(1){
 portb.rb0=1;
 UART1_Write_Text("PROCESO 1 INICIADO");
 delay_ms(1000);
 portb.rb0=0;
 delay_ms(1000);
 }
}
