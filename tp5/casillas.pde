class Casilla {
  Bomba bomba; 
  int posX;
  int posY;
  int posXBomba;
  int posYBomba;
  int posX2;
  int posY2;
  int tam;
  PImage imagen1;
  boolean casillaPresionada; 
  PImage imagen2;
  PImage imagenUno;
  PImage imagenDos;
  PImage imagenTres;
  PImage imagenCuatro;
  PImage imagenCinco;
  PImage caraTriste;
  float  numeroRandomCasillas;
  int cantCasillas;
  int cantMinas;
  boolean noHayBomba;
  int posicionesX[];
  int posicionesY[];

  Casilla(int _posX, int _posY, int _tam, int _cantCasillas, Bomba _bomba) {
    posXBomba = _posX;
    posYBomba = _posY;
    tam = _tam;    
    bomba = _bomba;
    cantCasillas = _cantCasillas;   
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    imagenUno = loadImage("buscaminasNumeroUno.png");
    imagenDos = loadImage("buscaminasNumerosDos.png");
    imagenTres = loadImage("buscaminasNumeroTres.png");
    imagenCuatro = loadImage("bucaminasNumeroCuatro.png");
    imagenCinco = loadImage("bucaminasNumeroCinco.png");
    caraTriste= loadImage("caraTriste.png");
    bomba = new Bomba(posXBomba, posYBomba, tam);
    posicionesX = new int[25];
    posicionesY = new int[25];

  }


  Casilla(int _posX, int _posY, int _tam, int _cantCasillas) {
    posX = _posX;
    posY = _posY;
    tam = _tam;
    cantCasillas =  _cantCasillas;
    imagen1 = loadImage("bloque.png");
    imagen2 = loadImage("bomba.png");
    cantCasillas = _cantCasillas;
    imagenUno = loadImage("buscaminasNumeroUno.png");
    imagenDos = loadImage("buscaminasNumerosDos.png");
    imagenTres = loadImage("buscaminasNumeroTres.png");
    imagenCuatro = loadImage("bucaminasNumeroCuatro.png");
    imagenCinco = loadImage("bucaminasNumeroCinco.png");
    caraTriste= loadImage("caraTriste.png");
    posicionesX = new int[25];
    posicionesY = new int[25];

  }

  boolean hayBomba(int posX, int posY) {
    if (bomba != null && posX == posXBomba && posY == posYBomba) {
      return true;

    } else {
      return false;
    }
  } 

  void mostrar(int o, int j, int posX4, int posY4, int _numero1) {  
     
 
    posicionesX[_numero1]= posX4;
    posicionesY[_numero1]= posY4;

    if (cantMinas == 0 ) {
      image(imagen1, (posX* tam)+15, (posY * tam)+146, tam, tam);
    }
    if (cantMinas == 1 ) {
      image(imagenUno, (posX* tam)+15, (posY * tam)+146, tam, tam);
    }
    if (cantMinas == 2 ) {
      image(imagenDos, (posX* tam)+15, (posY * tam)+146, tam, tam);
    } 
    if (cantMinas == 3 ) {
      image(imagenTres, (posX * tam)+15, (posY * tam)+146, tam, tam);
    }
    if (cantMinas == 4 ) {
      image(imagenCuatro, (posX * tam)+15, (posY * tam)+146, tam, tam);
    }
    if (cantMinas == 5 ) {
      image(imagenCinco, (posX * tam)+15, (posY * tam)+146, tam, tam);
    }
  }

  void tieneXMinasAlrededor(int _cantMinas) {
    cantMinas = _cantMinas;
  }


  void perdiste() { 
    if (bomba != null) {
      bomba.dibujar();
    }  
    for (int i=0; i<cantCasillas; i++) {
      if (posicionesX[i] == posX && posicionesY[i]== posY) {
        if (cantMinas == 0 ) {
          image(imagen1, (posX* tam)+15, (posY * tam)+146, tam, tam);
        }
        if (cantMinas == 1 ) {
          image(imagenUno, (posX* tam)+15, (posY * tam)+146, tam, tam);
        }
        if (cantMinas == 2 ) {
          image(imagenDos, (posX* tam)+15, (posY * tam)+146, tam, tam);
        } 
        if (cantMinas == 3 ) {
          image(imagenTres, (posX * tam)+15, (posY * tam)+146, tam, tam);
        }
        if (cantMinas == 4 ) {
          image(imagenCuatro, (posX * tam)+15, (posY * tam)+146, tam, tam);
        }
        if (cantMinas == 5 ) {
          image(imagenCinco, (posX * tam)+15, (posY * tam)+146, tam, tam);
        }
      }
    } image (caraTriste, 140, 72, 48, 49);
    
    
  }
}
