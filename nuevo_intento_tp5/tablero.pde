class Tablero {
  int cantCasillas;
  Casilla [][] casillas; 
  
  Tablero(int _cantCasillas) {
    cantCasillas = _cantCasillas;   
    casillas = new Casilla [cantCasillas][cantCasillas];    
    int tam = (width-25)/cantCasillas;    
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
      casillas[i][j] = new Casilla(i, j, tam );       
      }
    }
  }

  void dibujar() {
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].dibujar();
      }
    }
  }
  void mousePresionado(){
    for (int i = 0; i < cantCasillas; i++) {
      for (int j = 0; j < cantCasillas; j++) {
        casillas[i][j].mousePresionado();
      }
    }
    }
}
