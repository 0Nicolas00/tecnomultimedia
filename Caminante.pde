class Caminante {
  float x, y;
  float t;
  float vel;
  float dir;

  Caminante() {
    x = width/2.0; // Inicializa la posición X en el centro
    y = height/2.0;  // Inicializa la posición Y en el centro 
    t  = 5; // Tamaño del caminante
    vel = 2; // Velocidad de movimiento
    dir = 30; // Dirección inicial en grados
  }

  void dibujar() {
    noStroke();
    fill(26, 8, 36);
    ellipse(x, y, t, t); // Dibuja el caminante como un círculo en la posición (x, y) con tamaño t (5)
  }

  void mover() {
    if (mousePressed) { 
      dir += 2;
    } else {
      dir += random(-7, 7); // la dirección varía aleatoriamente entre -7 y 7 grados
    }
    x = x+vel*cos(radians(dir)); // Actualiza la posición en X en función de la dirección y la velocidad
    y = y+vel*sin(radians(dir)); // Actualiza la posición en Y en función de la dirección y la velocidad
  }


  void cambiarDireccion() {
    dir =  random(0, 360); // Cambia la dirección de forma aleatoria entre 0 y 360 grados
  }
  
  void parar(){
    vel = 0;
  }

  void rebotes() { // Logica de rebotes en los bordes del cuadro
    if (x>=width) {
      dir = 180;
    }

    if (x<=0) {
      dir = 0;
    }

    if (y>=height) {
      dir = 270;
    }

    if (y<=0) {
      dir = 90;
    }
  }
}
