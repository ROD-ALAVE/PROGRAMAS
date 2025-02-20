#line 1 "E:/ITSO/PLAN-MATERIAL_ROD/smp-300/PROGRAMAS/_2do.c"
void main() {
 int dato=4;
 TRISA.RA0=0;
 TRISB=0b00000000;
 PORTA.RA0=0;
 while(1){
 PORTA.RA0=1;
 PORTB=dato;
 dato++;
 delay_ms(700);
 PORTA.RA0=0;
 delay_ms(700);
 }
}
