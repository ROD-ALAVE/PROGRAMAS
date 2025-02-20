#line 1 "E:/ITSO/DOCUMENTOS INGE RODRY/PLAN-MATERIAL_ROD/smp-300/PROGRAMAS/1er/Primer_programa.c"
void main() {
 TRISB.RB0=0;
 PORTB.RB0=0;
 while(1){
 PORTB.RB0=1;
 delay_ms(250);
 PORTB.RB0=0;
 delay_ms(250);
 }
}
