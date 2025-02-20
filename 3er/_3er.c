void main() {
     int dato=0;
     int luces[4]={129,66,36,24};
     int sube=1;
     TRISA.RA0=0;
     TRISB=0b00000000;
     PORTA.RA0=0;
     while(1){
         PORTA.RA0=1;
         PORTB=luces[dato];
         if(sube==1){
               dato++;
               if(dato==4){sube=0;dato=3;}
         }else{
               dato--;
               if(dato==-1){sube=1;dato=0;}
         }
         delay_ms(700);
         PORTA.RA0=0;
         delay_ms(700);
         //cambiar el codigo
         //nuevamente modificamos el codigo
     }
}