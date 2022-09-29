class Obstaculo {
  float posX, posY; 

  Obstaculo(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
  }

  void dibujarObstaculo() {
    fill(100);
    rect (posX, posY, 10, 250);
    rect (posX+100, posY+250, 10, 150);
    rect (posX+200, posY, 10, 250);
    rect (posX+300, posY+250, 10, 150);
  }
}
