class Personaje {
  int px, py;
  PImage [] hombrecito;
  int mover;
  boolean seMueve;

  Personaje(int px, int py) {
    hombrecito = new PImage[10];
    for (int i= 0; i < 10; i++) {
      hombrecito[i] = loadImage("Hombre" + i + ".png");
    }
    this.px = px;
    this.py = py;
    seMueve = true;
  }

  void dibujarPersonaje() {
    if (seMueve) {
      if (frameCount%5==0) {
        mover ++;
        mover = mover%10;
      }
    }
    image(hombrecito [mover], px, py);
  }

  void moverPersonaje(int tecla) {
    if (tecla == RIGHT) {
      px += 10;
    }
    if (tecla == LEFT) {
      px -= 10;
    }
    if (tecla == DOWN) {
      py += 10;
    }
    if (tecla == UP) {
      py -= 10;
    }
  }

  void colision() {

    if (px<350 && px>260 && py>65) {
      px = 425;
      py = 135;
    } else if (px<240 && px>160 && py<145) {
      px = 425;
      py = 135;
    } else if (px<140 && px>60 && py>65) {
      px = 425;
      py = 135;
    } else if (px<45 && px>-40 && py<145) {
      px = 425;
      py = 135;
    } else if (px < -100) {
      px = 425;
      py = 135;
    } else if (px > 500) {
      px = 425;
      py = 135;
    } else if (py < -100) {
      px = 425;
      py = 135;
    } else if (py > 280) {
      px = 425;
      py = 135;
    }
  }
}
