/*class Tablero {
  int cantCasillas;
  Casilla [][] casillas; 
  
  int posX2 = -1;
  int posY2 =-1;
  int posXBomba;
  int posYBomba;
  boolean hayBomba;
  boolean no;
  int numero;
 int cantMinas;
 int posicionesX[];
 int posicionesY[];
boolean jugando;
  int numero1;
    int numero2;
  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;   
    casillas = new Casilla [cantCasillas][cantCasillas];    
    int tam = (width-25)/cantCasillas;    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if (random(100)<20) {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas, new Bomba(i, j, tam));
        } else {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas);
        }
      }
    }
    no = false;
posicionesX = new int[cantCasillas];
  posicionesY = new int[cantCasillas];
 jugando = true;
   numero1 = -1;
  }

  void dibujar() {
  
     for (int i=0; i<numero1; i++) {
      for (int j=0; j<numero2; j++) { 
        if (casillas[posX2][posY2].hayBomba( posX2, posY2)) {
          casillas[i][j].perdiste();
          
        } else {
            casillas[posicionesX[i]][posicionesY[i]].mostrar(i, j, posicionesX[i], posicionesY[i] );
           if(posicionesY[i] >0){
          casillas[posicionesX[i]][posicionesY[i]-1].mostrar(i, j, posicionesX[i], posicionesY[i]-1 );
           }if(posicionesY[i] <13){
          casillas[posicionesX[i]][posicionesY[i]+1].mostrar(i, j, posicionesX[i], posicionesY[i]+1 );
          }
          if(posicionesX[i]> 0){
          casillas[posicionesX[i]-1][posicionesY[i]].mostrar(i, j, posicionesX[i]-1, posicionesY[i]);
          if(posicionesY[i]> 0 ){
          casillas[posicionesX[i]-1][posicionesY[i]-1].mostrar(i, j, posicionesX[i]-1, posicionesY[i]-1);
           
          }if(posicionesY[i] <13){
          casillas[posicionesX[i]-1][posicionesY[i]+1].mostrar(i, j, posicionesX[i]-1, posicionesY[i]+1);
          }
        }
          if(posicionesX[i] <13){
          casillas[posicionesX[i]+1][posicionesY[i]].mostrar(i, j, posicionesX[i]+1, posicionesY[i]);
          if(posicionesY[i]> 0){
          casillas[posicionesX[i]+1][posicionesY[i]-1].mostrar(i, j, posicionesX[i]+1, posicionesY[i]-1);
          }if(posicionesY[i] <13){
          casillas[posicionesX[i]+1][posicionesY[i]+1].mostrar(i, j, posicionesX[i]+1, posicionesY[i]+1);
          }
          }
          }
      
          calcularCantidadMinas();

        }
      }
    
  }
  

void calcularCantidadMinas(){ 
   for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
     cantMinas = 0;
       if(i >0 && j >0){
       if(casillas[i-1][j-1].hayBomba(i-1,j-1)){
          cantMinas ++;
        
      }
       }if(i >0){
        if(casillas[i-1][j].hayBomba(i-1, j)){
          cantMinas ++;
         
        }
      }
    
      if(j <13 && i >0){
       if(casillas[i-1][j+1].hayBomba(i-1, j+1)){
          cantMinas ++;
      
       }
     }
       
       if(i <13 && j >0){
       if(casillas[i+1][j-1].hayBomba(i+1, j-1)){
          cantMinas ++;
        
       }
     }if(i <13){
       if(casillas[i+1][j].hayBomba(i+1, j)){
          cantMinas ++;
       
       }      
     }if(j <13){
     if(casillas[i][j+1].hayBomba(i, j+1)){
          cantMinas ++;
          
       }
     }if(j <13 && i <13){
       if(casillas[i+1][j+1].hayBomba(i+1, j+1)){
          cantMinas ++;
         
       }
     }if(j >0){
       if(casillas[i][j-1].hayBomba(i, j-1)){
          cantMinas ++;
      
       }    
     }      
    
    casillas[i][j].tieneXMinasAlrededor(cantMinas); 
   
    }
   }
}


  void mousePresionado() { 
    if(mouseX >= 15 && mouseX <= 313 && mouseY >= 146 && mouseY <= 444){
    posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
    posY2 = floor(map(mouseY, 146, 444, 0, cantCasillas));   
    }

       numero1++;
        numero2++;
   posicionesX[numero1]= posX2;
   posicionesY[numero1]= posY2;
     no = true;
    println(posicionesX);
    println(posicionesY);
    
    if (casillas[posX2][posY2].hayBomba(posX2, posY2)) {
      fileTrack2.play();
    }else {
        fileTrack.play();      
    }
    
}
}
*/



class Tablero {
  Juego juego;
  int cantCasillas;
  Casilla [][] casillas; 
  int posX2 = -1;
  int posY2 = -1;
  int posXBomba;
  int posYBomba;
  boolean hayBomba;
  int numero;
 int cantMinas;
 int tam;
 int posicionesX[];
 int posicionesY[];
boolean jugando;
  int numero1;
 int contador;
 int  contadorReiniciar;
boolean iniciar;
  Tablero(int _cantCasillas, Juego _juego) {
    juego = _juego;
    cantCasillas = _cantCasillas;   
    casillas = new Casilla [cantCasillas][cantCasillas];    
    tam = (width-25)/14;    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        if (random(100)<20) {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas, new Bomba(i, j, tam));
         
        } else {
          casillas[i][j] = new Casilla(i, j, tam, cantCasillas);
        }
      }
    }
    iniciar =true;
    contador = 0;
posicionesX = new int[25];
  posicionesY = new int[25];
 jugando = true;
   contadorReiniciar = 0;
  }

  void dibujar() {
    if(posX2 >= 0 && posY2 >= 0){
     for (int i=0; i<cantCasillas; i++) {
      for (int j=0; j<cantCasillas; j++) { 
        if (casillas[posX2][posY2].hayBomba( posX2, posY2)) {
          casillas[i][j].perdiste();  
          reiniciarSolo();

        } else {
          casillas[posX2][posY2].mostrar(i, j, posX2, posY2 , numero1 );
           if(posY2 >0){
          casillas[posX2][posY2-1].mostrar(i, j, posX2, posY2-1, numero1  );
           }if(posY2 <13){
          casillas[posX2][posY2+1].mostrar(i, j, posX2, posY2+1, numero1  );
          }
          if(posX2> 0){
          casillas[posX2-1][posY2].mostrar(i, j, posX2-1, posY2, numero1 );
          if(posY2> 0 ){
          casillas[posX2-1][posY2-1].mostrar(i, j, posX2-1, posY2-1, numero1 );
           
          }if(posY2 <13){
          casillas[posX2-1][posY2+1].mostrar(i, j, posX2-1, posY2+1, numero1 );
          }
        }
          if(posX2 <13){
          casillas[posX2+1][posY2].mostrar(i, j, posX2+1, posY2, numero1 );
          if(posY2> 0){
          casillas[posX2+1][posY2-1].mostrar(i, j, posX2+1, posY2-1, numero1 );
          }if(posY2 <13){
          casillas[posX2+1][posY2+1].mostrar(i, j, posX2+1, posY2+1, numero1 );
          }
          }
             
          
            casillas[posicionesX[i]][posicionesY[i]].mostrar(i, j, posicionesX[i], posicionesY[i], numero1 );
           if(posicionesY[i] >0){
          casillas[posicionesX[i]][posicionesY[i]-1].mostrar(i, j, posicionesX[i], posicionesY[i]-1, numero1 );
           }if(posicionesY[i] <13){
          casillas[posicionesX[i]][posicionesY[i]+1].mostrar(i, j, posicionesX[i], posicionesY[i]+1, numero1 );
          }
          if(posicionesX[i]> 0){
          casillas[posicionesX[i]-1][posicionesY[i]].mostrar(i, j, posicionesX[i]-1, posicionesY[i], numero1);
          if(posicionesY[i]> 0 ){
          casillas[posicionesX[i]-1][posicionesY[i]-1].mostrar(i, j, posicionesX[i]-1, posicionesY[i]-1, numero1);
           
          }if(posicionesY[i] <13){
          casillas[posicionesX[i]-1][posicionesY[i]+1].mostrar(i, j, posicionesX[i]-1, posicionesY[i]+1, numero1);
          }
        }
          if(posicionesX[i] <13){
          casillas[posicionesX[i]+1][posicionesY[i]].mostrar(i, j, posicionesX[i]+1, posicionesY[i], numero1);
          if(posicionesY[i]> 0){
          casillas[posicionesX[i]+1][posicionesY[i]-1].mostrar(i, j, posicionesX[i]+1, posicionesY[i]-1, numero1);
          }if(posicionesY[i] <13){
          casillas[posicionesX[i]+1][posicionesY[i]+1].mostrar(i, j, posicionesX[i]+1, posicionesY[i]+1, numero1);
          }
          }
          }
          calcularCantidadMinas();

        }
      }
    }
  }
  
  void reiniciarSolo(){
    iniciar = false;
    contador++;
    if (contador% 360 == 0){
    contadorReiniciar++;
     if (contadorReiniciar == 40){
       juego.iniciar(); 
       iniciar = true;
    }
    }
    
   
  }
  

void calcularCantidadMinas(){ 
   for(int i=0; i<cantCasillas; i++){
    for(int j=0; j<cantCasillas; j++){ 
     cantMinas = 0;
       if(i >0 && j >0){
       if(casillas[i-1][j-1].hayBomba(i-1,j-1)){
          cantMinas ++;
        
      }
       }if(i >0){
        if(casillas[i-1][j].hayBomba(i-1, j)){
          cantMinas ++;
         
        }
      }
    
      if(j <13 && i >0){
       if(casillas[i-1][j+1].hayBomba(i-1, j+1)){
          cantMinas ++;
      
       }
     }
       
       if(i <13 && j >0){
       if(casillas[i+1][j-1].hayBomba(i+1, j-1)){
          cantMinas ++;
        
       }
     }if(i <13){
       if(casillas[i+1][j].hayBomba(i+1, j)){
          cantMinas ++;
       
       }      
     }if(j <13){
     if(casillas[i][j+1].hayBomba(i, j+1)){
          cantMinas ++;
          
       }
     }if(j <13 && i <13){
       if(casillas[i+1][j+1].hayBomba(i+1, j+1)){
          cantMinas ++;
         
       }
     }if(j >0){
       if(casillas[i][j-1].hayBomba(i, j-1)){
          cantMinas ++;
      
       }    
     }      
    
    casillas[i][j].tieneXMinasAlrededor(cantMinas); 
   
    }
   }
}

  void mousePresionado() { 
    if(iniciar == true){
    if(mouseX >= 15 && mouseX <= 313 && mouseY >= 146 && mouseY <= 444){
    posX2 = floor(map(mouseX, 15, 313, 0, cantCasillas));
    posY2 = floor(map(mouseY, 146, 444, 0, cantCasillas));   
    }
    if(mouseX >= 15 && mouseX <= 313 && mouseY >= 146 && mouseY <= 444){
    if (casillas[posX2][posY2].hayBomba(posX2, posY2)) {
      fileTrack2.play();
    }else {
        fileTrack.play();      
    }
  }
    }
 numero1++;
   posicionesX[numero1]= posX2;
  posicionesY[numero1]= posY2;
        
       
  
}
}
