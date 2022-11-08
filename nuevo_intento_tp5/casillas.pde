class Casilla {
   Bomba bomba;
  int posX;
  int posY;
  int tam;
  PImage imagen1;
  boolean casillaPresionada;
  boolean casillaPresionada2;
  float distancia;
 
  float  numeroRandomCasillas;
  Casilla(int _posX, int _posY, int _tam) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    imagen1 = loadImage("bloque.png");
      numeroRandomCasillas = round(random(100));
   
    bomba = new Bomba(posX, posY, tam, numeroRandomCasillas);
    casillaPresionada2 =false;
  }
  


  void dibujar() {
    if (casillaPresionada2 ==false){
   image(imagen1, (posX+0.7) * tam, (posY+7) * tam, tam, tam);
    }else{
   bomba.dibujar(); 
  }
   if( numeroRandomCasillas < 30){
        casillaPresionada = true; 
  } 
  
  }
void mousePresionado(){
    distancia = dist(mouseX, mouseY, (posX+0.7) *tam  + tam/2, (posY+7) *tam + tam/2 );    
    if (distancia < tam/2 && casillaPresionada == true ){
  casillaPresionada2 = true;
    } 
  }
}
