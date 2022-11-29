class Juego {
  Tablero tablero;
  int pantalla;
  PImage imagenJuego; 
  Juego() {
    tablero = new Tablero(14);
    pantalla = 1;
   imagenJuego = loadImage("buscaminasLleno.png");
  }

  void dibujar() {
    tablero.dibujar();
    
  }
   void mousePresionado(){
     tablero.mousePresionado();
  }
  void volverJuego(){
  
}
}
