class GestorDeInteracion {
  Dir_y_Vel mouse;
  boolean movGrande;
  boolean movPeque;
  float tiempoGrande;
  float tiempoPeque;

  GestorDeInteracion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY); // Actualiza las propiedades del objeto "mouse" con las coordenadas actuales del mouse

    movGrande = false; 
    movPeque = false; 

    tiempoGrande--; // Decrementa el valor de "tiempoGrande" en 1
    tiempoPeque--; // Decrementa el valor de "tiempoPeque" en 1

    tiempoGrande = constrain(tiempoGrande, 0, 90); // Asegura que "tiempoGrande" se encuentre dentro del rango de 0 a 90
    tiempoPeque = constrain(tiempoPeque, 0, 90); // Asegura que "tiempoPeque" se encuentre dentro del rango de 0 a 90

    if (mouse.velocidad() > 10) { // Verifica si la velocidad del objeto "mouse" es mayor a 10
      float umbral = 50; // Establece un umbral de velocidad de 50
      if (mouse.velocidad() > umbral) { // Verifica si la velocidad del objeto "mouse" es mayor al umbral
        tiempoGrande += 10; // Incrementa el valor de "tiempoGrande" en 10
        tiempoPeque -= 10; // Decrementa el valor de "tiempoPeque" en 10
      } else {
        if (tiempoGrande < 10) { // Verifica si "tiempoGrande" es menor a 10
          tiempoPeque += 10;
        }
      }
    }

    if (tiempoGrande > 55) { 
      movGrande = true;
    }

    if (tiempoPeque > 55) { 
      movPeque = true;
    }
  }
}
