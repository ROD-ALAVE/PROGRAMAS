void main() {
     TRISD=0b000000011;   //menos significativos de entrada
     //TRISE.RE0=1;//TRISE.RE1=1;
     TRISB=0b00000000;
     PORTB.RB0=0;    //instruccion de salida logico 0
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
         //PORTB.RB1=1;
         //PORTB.RB0=0;
         //PORTB.RB2=0;
         delay_ms(100);
         //PORTB.RB1=0;
         //PORTB.RB0=1;
         //PORTB.RB2=0;
         //delay_ms(700);
     }
}