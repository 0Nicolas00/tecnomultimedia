// Declaración de variables
GestorDeInteracion g; // Variable para objeto 
GestorDeInteraccion g2; // Variable para objeto 
ArrayList<Caminante> cs; // Variable para un ArrayList de objetos Caminante
PImage[] trazos; // Variable para un arreglo de objetos PImage (imágenes de los trazos)
int cantidad = 13; // Variable entera con valor inicial de 13 (cantidad de trazos)
PImage mascara; // Variable para un objeto PImage (la mascara para los trazos)

void setup() {
  size(670, 700);
  imageMode(CENTER); // Configura el modo de alineación para las imágenes en el centro
  trazos = new PImage[cantidad]; // Crea un arreglo de imágenes llamado "trazos" con el tamaño especificado por la variable "cantidad"
  cs = new ArrayList<Caminante>(); // Crea un ArrayList llamado "cs" para almacenar objetos de la clase "Caminante"
  g = new GestorDeInteracion(); // Crea un nuevo objeto de la clase "GestorDeInteraccion" y lo asigna a la variable "g"
  g2 = new GestorDeInteraccion(); // Crea otro nuevo objeto de la clase "GestorDeInteraccion" y lo asigna a la variable "g2"

  colorMode (HSB, 360, 100, 100); // Configura el modo de color a HSB (Matiz , Saturacion, Brillo)

  for ( int i=0; i<cantidad; i++ ) { // este bucle carga una serie de imágenes de trazos, les aplica un filtro de inversión, crea una imagen base para cada trazo en el arreglo trazos, aplica nuevamente el filtro de inversión a cada imagen y finalmente aplica una máscara a cada imagen utilizando la imagen cargada previamente.
    String nombre = "trazo"+nf(i, 2)+".png";
    mascara = loadImage( nombre );
    mascara.filter( INVERT );
    trazos[i] = createImage( 250, 70, RGB );
    trazos[i].filter( INVERT );
    trazos[i].mask( mascara );
  }
  background(33, 5, 89);
}

void draw() {
  g.actualizar();
  g2.actualizar();
  if (g.movGrande) { // Este if indica que si haces mov grandes con el mouse aparecen las pinceladas grandes
    crearTrazosGrandes();
  } else if (g.movPeque) { // Este if indica que si haces mov grandes con el mouse aparecen las pinceladas grandes
    crearTrazosPeque();  
  }
  if (g2.arriba) { // Este if indica que si haces mov para arriba aparecen los caminantes
    for (int i =0; i<5; i++) {
      cs.add(new Caminante());
    }
  } 
  if (g2.abajo) { // Este if indica que si haces mov para abajo los caminantes se detienen
    for (Caminante c : cs) {
      c.parar();
    }
  }
  for (Caminante c : cs) { // Este for permite que los caminantes aparezcan en pantalla, se muevan y reboten
    c.mover();
    c.dibujar();
    c.rebotes();
  }
}

void crearTrazosGrandes() { // Funcion para que las pinceladas grandes sean azules 
  int cual = int(random(cantidad));
  float x = random(100, width - 100);
  float y = random(30, height - 30);
  if (mouseY<height/2.0) {
    tint(240, 80, random(30, 80));
    image(trazos[cual], x, y);
  }
}

void crearTrazosPeque() { // Funcion para que las pinceladas chicas sean tonos rosas en su 90% y un 10% tonos  amarillos
  int cual = int(random(cantidad));
  float x = random(100, width - 100);
  float y = random(30, height - 30);
  if (mouseY>height/2.0) {
    if (random(100) < 90) {
      tint(330, random(30, 85), random(65, 85));
    } else {
      tint(36, random(70, 85), 95);
    }
    push();
    translate(x, y);
    scale (random(0.2, 0.5));
    image(trazos[cual], 0, 0);
    pop();
  }
}
