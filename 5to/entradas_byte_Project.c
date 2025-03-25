void main() {
     TRISD=0b11111111;
     TRISB=0b00000000;
     while(1){
          if(portd=0){
               portb=0;
          }else{
               portb=255;
          }
          delay_ms(700);
     }
}