class GestorDeInteraccion {
  Dir_y_Vel mouse;
  boolean seMoviaEnElFrameAnterior; 
  boolean arriba;
  boolean abajo;
  
  GestorDeInteraccion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);

    //----- que pasa con el mouse en este frame
    boolean seMueveElmouseEnEsteFrame = false; // Variable booleana que indica si el mouse se mueve en este frame
    float sensibilidad = 35; // Valor de sensibilidad para determinar si el mouse se está moviendo
    if (mouse.velocidad()>sensibilidad && mouse.velocidad()<150) { // Verifica si la velocidad del mouse está dentro del rango deseado
      seMueveElmouseEnEsteFrame = true; // Establece "seMueveElmouseEnEsteFrame" como verdadero si el mouse se mueve lo suficiente
    }
    arriba = false;
    abajo = false;

    if (seMueveElmouseEnEsteFrame &&
      !seMoviaEnElFrameAnterior) {
      arriba = mouse.direccionY()<-sensibilidad?true:false; // Establece "arriba" como verdadero si el movimiento vertical del mouse es hacia arriba
      abajo = mouse.direccionY()>sensibilidad?true:false; // Establece "abajo" como verdadero si el movimiento vertical del mouse es hacia abajo
    }
    //---- dejo listo todo para el siguiente frame
    seMoviaEnElFrameAnterior = seMueveElmouseEnEsteFrame;
  }
}
