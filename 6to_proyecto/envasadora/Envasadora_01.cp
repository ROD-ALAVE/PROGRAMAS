#line 1 "E:/ITSO/SMP-300/programas/PROGRAMAS/6to_proyecto/envasadora/Envasadora_01.c"
void main() {
 int d=7;

 TRISD=0b11111111;
 TRISB=0b00000000;
 UART1_Init(9600);
 portb = 0;
 while(1){
 if(portd==15){

 portb = 2;
 while(portd==d){
 delay_ms(500);
 if(d=7){d=6;portb = 0;}
 }portb=0;

 if(portd==0){

 portb=0;
 }else if(portd==1){
 portb=1;
 }else if(portd==2){
 portb=2;
 }
 }portb=0;
 delay_ms(100);
 }
}
