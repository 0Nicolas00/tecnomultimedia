class Juego {
  Fondo f;
  Personaje per;
  Obstaculo [] madera = new Obstaculo[3];
  Obstaculo [] maderaNivel2 = new Obstaculo[3];
  int estado = 1;
  PImage inicio;
  PFont fuente;
  int puntaje;

  Juego() {
    f = new Fondo();
    per = new Personaje(490, 220, 120);
    inicio = loadImage("inicio.png"); 
    fuente = createFont("playfair.ttf", 30);
    // Obstaculos nivel 1
    madera[0] = new Obstaculo(450, 400, 100, 200);
    madera[1] = new Obstaculo(250, 540, 100, 200);
    madera[2] = new Obstaculo(80, 400, 100, 200);
    // Obstaculos nivel 2
    maderaNivel2[0] = new Obstaculo(450, 380, 100, 150);
    maderaNivel2[1] = new Obstaculo(450, 580, 100, 150);
    maderaNivel2[2] = new Obstaculo(150, 470, 100, 200);
    puntaje = 5;
  }

  void estados() {
    textFont (fuente);
    if (estado==1) {
      instrucciones();
    }
    if (estado==2) {
      jugar();
    }
    if (estado==3) {
      nivel2();
    }
    if (estado==4) {
      ganaste();
    }
    if (estado==5) {
      perdiste();
    }
    if (estado==6) {
      creditos();
    }
  }

  void instrucciones() {
    estado = 1;
    image(inicio, 0, 0);
    textAlign(CENTER);
    noStroke();
    fill(111, 29, 27);
    rect (0, 200, 600, 170);
    rect (150, 520, 300, 50);
    textSize(30);
    fill(255);
    text("Instrucciones", height/2, 235);
    textSize(20);
    text("Tenes que escapar del castillo esquivando los obtaculos, \nsi tocas una de ellos perderas automaticamente", height/2, 270);
    text("El personaje se mueve con las flechitas", height/2, 350);
    textSize(30);
    text("J = Jugar", height/2, 555);
  }

  void jugar() {
    estado = 2;
    f.dibujarFondo();
    per.dibujarPersonaje();
    per.limitar();
    noStroke();
    fill(111, 29, 27);
    rect (0, 0, 600, 80);
    fill(255);
    textSize(20);
    text("NIVEL 1", height/4, 30);
    text("PARA ADELANTE!", height/4, 70);
    dibujarPuntaje();
    Contador ();
    colisionNivel1();
  }

  void nivel2() {
    estado = 3;
    f.dibujarFondo2();
    per.dibujarPersonaje();
    per.limitar();
    noStroke();
    fill(111, 29, 27);
    rect (0, 0, 600, 80);
    fill(255);
    textSize(20);
    text("NIVEL 2", height/4, 30);
    text("OJO TE VIENEN! PARA ATRAS!", height/4, 70);
    dibujarPuntaje();
    Contador ();
    colisionNivel2();
  }

  void ganaste() {
    estado = 4;
    image(inicio, 0, 0);
    textAlign(CENTER);
    noStroke();
    fill(111, 29, 27);
    rect (150, 200, 300, 160);
    textSize(30);
    fill(255);
    text("GANASTE!", height/2, 235);
    textSize(20);
    text("Volver a Instucciones = I", height/2, 300);
    text("Creditos = C", height/2, 340);
  }

  void perdiste() {
    estado = 5;
    image(inicio, 0, 0);
    textAlign(CENTER);
    noStroke();
    fill(111, 29, 27);
    rect (150, 200, 300, 130);
    textSize(30);
    fill(255);
    text("PERDISTE!", height/2, 235);
    textSize(20);
    text("Volver a Instucciones = I", height/2, 300);
  }

  void creditos() {
    estado = 6;
    fill(0);
    rect(0, 0, 600, 600);
    textAlign(CENTER);
    textSize(30);
    fill(255);
    text("CREDITOS", height/2, 50);
    textSize(20);
    text("Programacion: Nicolas Mansilla Torres", height/2, 200);
    text("Diseño: Nicolas Mansilla Torres", height/2, 300);
    text("Musica: Classical Interludes", height/2, 400);
    textSize(10);
    text("© Nicolas Mansilla Torres, 2022", height/2, 500);
    fill(111, 29, 27);
    rect (150, 520, 300, 50);
    textSize(30);
    fill(255);
    text("I = Inicio", height/2, 555);
  }

  void colisionNivel1() {
    for (int i=0; i<madera.length; i++) { 
      madera[i].dibujarObstaculo();
      if (choque(per.px, per.py, per.tam, madera[i].ox, madera[i].oy, madera[i].ancho, madera[i].alto)) {
        if (per.px+per.tam>madera[i].ox && per.px<madera[i].ox+madera[i].ancho-110 && per.py+per.tam*2>madera[i].oy && per.py<madera[i].oy+madera[i].alto-280) {
          puntaje--;
          per.reciclar();
        }
      }
    }
  }

  void colisionNivel2() {
    for (int i=0; i<madera.length; i++) { 
      maderaNivel2[i].dibujarObstaculo(); 
      if (choque(per.px, per.py, per.tam, maderaNivel2[i].ox, maderaNivel2[i].oy, maderaNivel2[i].ancho, maderaNivel2[i].alto)) {
        if (per.px+per.tam>maderaNivel2[i].ox && per.px<maderaNivel2[i].ox+maderaNivel2[i].ancho-110 && per.py+per.tam*2>maderaNivel2[i].oy && per.py<maderaNivel2[i].oy+maderaNivel2[i].alto-280) {
          puntaje--;
          per.reciclar2();
        }
      }
    }
  }

  boolean choque(float x, float y, float tam, float ax, float ay, float ancho, float alto) {
    if (x+tam>ax && x<x+ancho && y+tam*2>y && y<ay+alto) {
      return true;
    } else {
      return false;
    }
  }

  void dibujarPuntaje() {
    push();
    fill(255);
    textSize(30);
    text("Vidas:", 400, 50);
    textSize(35);
    text(puntaje, 460, 50);
    pop();
  }

  void Contador() {
    if (puntaje == 0) {
      estado = 5;
      per.reciclar();
      puntaje = 5;
    }
  }

  void keyPressed() {
    if (estado == 1) {
      if (key == 'j' || key == 'J') {
        estado = 2;
      }
    }
    if (estado == 4) {
      if (key == 'i' || key == 'I') {
        estado = 1;
      }
    }
    if (estado == 5) {
      if (key == 'i' || key == 'I') {
        estado = 1;
      }
    }
    if (estado == 4) {
      if (key == 'c' || key == 'C') {
        estado = 6;
      }
    }
    if (estado == 6) {
      if (key == 'i' || key == 'I') {
        estado = 1;
      }
    }
    if (estado == 3) {
      if (per.px > 520) {
        estado = 4;
        per.reciclar();
        puntaje = 5;
      }
    }
    if (estado == 2) {
      if (per.px < -80) {
        estado = 3;
        per.reciclar2();
      }
    }
  }

  void moverPersonaje(int presionada) {
    per.moverPersonaje(presionada);
  }
}
