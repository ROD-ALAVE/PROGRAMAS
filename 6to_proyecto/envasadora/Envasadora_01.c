void main() {
     int d=7;
     UART1_Init(9600);
     TRISD=0b11111111;
     TRISB=0b00000000;
     portb = 0;
     while(1){
          if(portd==15){
               //proceso 1:
               UART1_Write_Text("PROCESO 1 INICIADO");
               portb = 2;
               while(portd==d){
                   delay_ms(500);
                   if(d=7){d=6;portb = 0;}
               }portb=0;
               //proceso 2:
               if(portd==0){
               //do {//i++;//} while ( portd == 6 );
                   portb=0;
               }else if(portd==1){
                   portb=1;
               }else if(portd==2){
                   portb=2;
               }//else{     //portb=254;//}
          }portb=0;
          delay_ms(100);
     }
}