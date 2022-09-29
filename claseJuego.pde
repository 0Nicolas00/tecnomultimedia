class Juego {
  Fondo f;
  Personaje per;
  Obstaculo o;

  Juego() {
    f = new Fondo();
    per = new Personaje(425, 135);
    o = new Obstaculo(100, 0);
  }

  void display() {
    f.dibujarFondo();
    per.dibujarPersonaje();
    o.dibujarObstaculo();
    per.colision();
  }

  void moverPersonaje(int presionada) {
    per.moverPersonaje(presionada);
  }
}
