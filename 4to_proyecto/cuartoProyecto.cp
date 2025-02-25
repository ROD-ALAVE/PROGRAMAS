#line 1 "E:/ITSO/PLAN-MATERIAL_ROD/smp-300/PROGRAMAS/4to_proyecto/cuartoProyecto.c"
void main() {
 TRISD=0b000000011;


 TRISB=0b00000000;
 PORTB.RB0=0;
 PORTB.RB1=1;
 while(1){
 if(PORTD.RD0==1){
 PORTB.RB0=1;
 }else{
 PORTB.RB0=0;
 }
 if(PORTD.RD1==1){
 PORTB.RB1=1;
 }else{
 PORTB.RB1=0;
 }



 delay_ms(100);




 }
}
