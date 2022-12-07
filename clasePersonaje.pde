class Personaje {
  int px, py, tam;
  PImage [] hombrecito;
  int mover;
  boolean seMueve;

  Personaje(int px, int py, int tam) {
    hombrecito = new PImage[10];
    for (int i= 0; i < 10; i++) {
      hombrecito[i] = loadImage("Hombre" + i + ".png");
    }
    this.px = px;
    this.py = py;
    this.tam = tam;
    seMueve = true;
  }

  void dibujarPersonaje() {
    if (seMueve) {
      if (frameCount%5==0) {
        mover ++;
        mover = mover%10;
      }
    }
    image(hombrecito [mover], px, py, tam, tam*2);
  }

  void moverPersonaje(int tecla) {
    if (tecla == RIGHT) {
      px += 5;
    }
    if (tecla == LEFT) {
      px -= 5;
    }
    if (tecla == DOWN) {
      py += 5;
    }
    if (tecla == UP) {
      py -= 5;
    }
  }

  void limitar() {
    py = constrain(py, 170, 400);
    px = constrain(px, -100, 520);
  }

  void reciclar() {
    px = 490;
    py = 220;
  }
  void reciclar2() {
    px = 5;
    py = 350;
  }
}
