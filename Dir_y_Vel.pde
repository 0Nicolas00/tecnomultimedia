class Dir_y_Vel {
  float posX, posY, prevPosX, prevPosY, miDireccionX, miDireccionY, vel, miDireccionPolar;

  Dir_y_Vel() {
    posX = 0;
    posY = 0;
    prevPosX = 0;
    prevPosY = 0;
    miDireccionX = 0;
    miDireccionY = 0;
    vel = 0;
    miDireccionPolar = 0;
  }

  void calcularTodo(float mi_X, float mi_Y) {
    prevPosX = posX; // Guarda la posición anterior en X
    prevPosY = posY; // Guarda la posición anterior en Y
    posX = mi_X; // Actualiza la posición en X
    posY = mi_Y; // Actualiza la posición en Y

    miDireccionX = posX - prevPosX;
    miDireccionY = posY - prevPosY;
    miDireccionPolar = degrees(atan2(posY - prevPosY, posX - prevPosX)); // Calcula la dirección polar en grados

    vel = dist(posX, posY, prevPosX, prevPosY); // Calcula la velocidad utilizando la distancia entre la posición actual y la anterior
  }

  float velocidad() {
    return vel;
  }

  float direccionX() {
    return miDireccionX;
  }

  float direccionY() {
    return miDireccionY;
  }

  float direccionPolar() {
    return miDireccionPolar;
  }
}
