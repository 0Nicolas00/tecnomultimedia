class Fondo {
  PImage castillo, castillo2;
  int miFondo; 
  int fx;

  Fondo() {
    fx = 0;
    castillo = loadImage("fondo.jpg");  
    castillo2 = loadImage("fondo2.jpg");
  }

  void dibujarFondo() {
    image(castillo, fx, 0);
    mover();
  }

  void dibujarFondo2() {
    image(castillo2, fx, 0);
    mover();
  }

  void mover() {
    fx = fx<0 ? fx: -width;
    fx ++;
  }
}
