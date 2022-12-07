class Obstaculo {
  PImage obstaculo;
  float ox, oy, ancho, alto;

  Obstaculo(float ox, float oy, float ancho, float alto) {
    this.ox = ox;
    this.oy = oy;
    this.ancho = ancho;
    this.alto = alto;
    obstaculo = loadImage("madera.png");
  }

  void dibujarObstaculo() {
    push();
    imageMode(CENTER);
    image(obstaculo, ox, oy, ancho, alto);
    pop();
  }

}
