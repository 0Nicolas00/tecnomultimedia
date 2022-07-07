// NOMBRE: MANSILLA TORRES, NICOLAS legajo: 41345/5
// link al video: https://youtu.be/0DMCdJIuosk - Se me hizo imposible bajar de los 2 minutos.


int estado;
int[] cant = new int[2];
int opacidad;
String [] textos = {"BOMBA BOOM", "[Presione 'c' para comenzar]", "INSTRUCCIÓNES \n\n RAPIDO!! Se tapa el drenaje y hay que \n romper la pared, tocá el boton rojo \n y haz el hueco necesario para que \n pase el agua, ojo que tenes un solo \n intento, que no se caiga la pelota!!! \n\n - La plataforma se mueve \n con flechas (derecha e izquierda)", 
  "JUGAR", "¡PERDISTE!", "[Presione 'r' para reiniciar el juego o Presione 'i' para volver a instrucciones]", "¡GANASTE!"};
PImage[] fondo = new PImage[4];
float[] pos = new float[2];
float posY;
float[] vel = new float[2]; 
float [] tam = new float[2];
float velY;

void setup() {
  size(425, 450);
  fondo[0] = loadImage("fondo.jpg");
  fondo[1] = loadImage("inicio.jpg");
  fondo[2] = loadImage("instrucciones.jpg");
  fondo[3] = loadImage("ganaste.png");
  pos[0] = width/2;
  pos[1] = 300;
  posY = 100;
  vel[1] = velY = 1;
  cant[0] = 500; 
  cant[1] = 4; 
  tam[0]= 50;
  tam[1]= 20;
  opacidad = 50;
}

void draw() {
  pos[0] += vel[0];
  pos[1] += vel[1];
  posY += velY;

  if (estado==0) {
    image(fondo[1], 0, 0, 425, 450);
    fill(0);
    rect(0, height/3, 425, 100);
    inicio(textos[0], width/2, 200, 50);
    inicio(textos[1], width/2, 235, 20);
  } else if (estado==1) {
    image(fondo[2], 0, 0, 425, 450);
    noStroke();
    fill(255);
    rect(0, 25, 425, 30);
    rect(0, 90, 425, 160);
    rect(0, 275, 425, 60);
    fill(0);
    instrucciones(textos[2], width/2, 50, 20);
    circle(width/2, 400, 60);
    fill(255, 255, 0);
    instrucciones(textos[3], width/2, 405, 15);
  } else if (estado==2) {
    image(fondo[0], 0, 0, 425, 450);
    cant[1] = 4;
    fill(224, 226, 226, opacidad);
    rect(0, 0, 425, 450);
    Limites();
    Plataforma();
    Bloques();
    Pelota();
  } else if (estado==3) {
    image(fondo[2], 0, 0, 425, 450);
    fill(0);
    rect(0, 150, 425, 100);
    fill(255, 0, 0);
    perdiste(textos[4], width/2, 200, 50);
    fill(255);
    perdiste(textos[5], width/2, 230, 11);
  } else if (estado==4) {
    image(fondo[2], 0, 0, 425, 450);
    image(fondo[3], 0, 0, 425, 450);
    fill(0);
    rect(0, 150, 425, 100);
    fill(255);
    ganaste(textos[5], width/2, 230, 11);
    fill(0, 255, 0);
    ganaste(textos[6], width/2, 200, 50);
  }
}

void keyPressed() {
  if (key == 'c') {
    estado = 1;
  }
  if (key == 'r') {
    estado = 2;
    pos[0] = 225;
    pos[1] = width/2;
    posY = 20;
    velY= 1;
  }
  if (key == 'i') {
    estado = 1;
  }
}

void mousePressed() {
  float d = dist(mouseX, mouseY, width/2, 400);
  int r = 60 / 2;
  if (d < r) {
    estado = 2;
    pos[0] = 225;
    pos[1] = width/2;
    posY = 20;
  }
}

void inicio(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(255);
  text(texto, px, py);
}

void instrucciones(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  text(texto, px, py);
}

void perdiste(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  text(texto, px, py);
}

void ganaste(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  text(texto, px, py);
}
