void main() {
     TRISD=0b11111111;
     TRISB=0b00000000;
     while(1){
          if(portd==0){
               portb=0;
          }else if(portd==1){
               portb=1;
          }else if(portd==2){
               portb=2;
          }else if(portd==3){
               portb=3;
          }else if(portd==4){
               portb=4;
          }else{
               portb=254;
          }
          delay_ms(100);
     }
}