class Bomba {
  int posX;
  int posY;
  int tam;
  PImage imagen1;
  PImage imagen2;
   float  numeroRandomCasillas;
   int pantalla;

     int numero;
  Bomba(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
  }
  
  

  void dibujar() {
    
    image(imagen2, (posX* tam)+15, (posY * tam)+146, tam, tam);
 mousePresionado();
  }
  
   void mousePresionado(){
    if (mouseX > 80 && mouseX < 140 &&  mouseY > 0  &&  mouseY < 40){
      /*
    juego.volverJuego();
    */
numero  = 1;
    } 
   }
}
