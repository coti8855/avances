ProgramaPrincipal programa;
 import processing.sound.*;
SoundFile fileTrack, fileTrack2;
void setup(){
  size(323, 456);
  programa = new ProgramaPrincipal();
   fileTrack = new SoundFile(this, "data/click.mp3"); 
   fileTrack2 = new SoundFile(this, "data/pum.mp3");
}

void draw(){
  background(255);
 programa.dibujar();
}

void mousePressed(){
  programa.mousePresionado();
  
}
