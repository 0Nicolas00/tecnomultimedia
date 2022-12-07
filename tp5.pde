// MANSILLA TORRES, NICOLAS // LEGAJO 91345/5
// LINK AL VIDEO NUEVO: https://youtu.be/jkIR3DMLzwk
// LINK AL VIDEO viejo: https://youtu.be/VASYl29y9xI


Juego j;
//import processing.sound.*;

//SoundFile sonido;

void setup() {
  size(600, 600);
  j = new Juego();
//  sonido = new SoundFile(this, "sonido.mp3"); 
//  sonido.loop();
}

void draw() {
  j.estados();
}

void keyPressed() {
  j.moverPersonaje(keyCode);
  j.keyPressed();
}
