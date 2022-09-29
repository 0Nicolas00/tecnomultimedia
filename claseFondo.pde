class Fondo {
  PImage castillo;
  int miFondo; 
  int fx;

  Fondo() {
    fx = 0;
    castillo = loadImage("fondo.jpg");
  }

  void dibujarFondo() {
    image(castillo, fx, 0);
    mover();
  }

  void mover() {
    fx = fx<0 ? fx : -width;
    fx ++;
  }
}
