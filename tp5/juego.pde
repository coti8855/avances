class Juego {
  Tablero tablero;
  int pantalla;
  PImage imagenJuego; 
  Juego() {
    iniciar();
  }

 void iniciar(){
  tablero = new Tablero(14, this);
    pantalla = 1;
   imagenJuego = loadImage("buscaminasLleno.png"); 
   
 }

  void dibujar() {
    tablero.dibujar();
    
  }
   void mousePresionado(){
     tablero.mousePresionado();
  }

  
  
}
