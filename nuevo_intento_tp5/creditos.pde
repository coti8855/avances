class Creditos {
  ProgramaPrincipal programaPrincipal;
  PImage imagenCreditos;
  int pantalla;
  Creditos(){
   imagenCreditos = loadImage("buscaminasCreditos.png");   
  }
  
  void dibujar(){   
    image(imagenCreditos,0,0, width, height);
    if (pantalla == 1){
      programaPrincipal.dibujar();
    }if (pantalla == 2){  
       programaPrincipal.dibujar();
    } 
  }
  void mousePresionado(){
    if (mouseX > 0 && mouseX < 78 &&  mouseY > 0  &&  mouseY < 40){
    pantalla = 1;
    } if (mouseX > 78 && mouseX < 140 &&  mouseY > 0  &&  mouseY < 40){
    pantalla = 2;
    } 
  }
}
