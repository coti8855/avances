ProgramaPrincipal programaPrincipal;

void setup(){
  size(323, 456);
  programaPrincipal = new ProgramaPrincipal();
}

void draw(){
  background(255);
 programaPrincipal.dibujar();
}

void mousePressed(){
  programaPrincipal.mousePresionado();
}
