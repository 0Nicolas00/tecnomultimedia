// MANSILLA TORRES, NICOLAS // LEGAJO 91345/5
// LINK AL VIDEO: https://youtu.be/Qc1banRMvoY


Juego j;
import processing.sound.*;

SoundFile sonido;

void setup() {
  size(600, 400);
  j = new Juego();
  sonido = new SoundFile(this, "sonido.mp3");
  sonido.play();
}

void draw() {
  background(255);
  j.display();
}

void keyPressed() {
  j.moverPersonaje(keyCode);
}
