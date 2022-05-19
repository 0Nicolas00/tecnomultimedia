// VARIABLES UTILIZADAS:

PImage titulo, pantalla1, personajes1, personajes2, musica, ultimaPantalla, cursor;
PFont cruella, timeNew;
float posX, posX1, posX2, posX3;
float velX, velX1, velX2, velX3;
float posY, posY1, posY2;
float velY, velY1, velY2;
int opacidad;
color rojo;
boolean sobreBoton(int px, int py, int ancho, int alto) { /* esta función solo detecta si estoy sobre una zona (en este caso, un botón) */
  boolean estoySobre = mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
  return estoySobre;
}

void setup() {
  size(900, 600);
  // declaracion de imagenes
  titulo = loadImage("pantalla1.jpeg");
  pantalla1 = loadImage("pantalla2.jpg");
  personajes1 = loadImage("personajes1.jpg");
  personajes2 = loadImage("personajes2.jpg");
  musica = loadImage("musica.jpg");
  ultimaPantalla = loadImage("ultimapantalla.jpg");
  cursor = loadImage("cursor.png");
  cruella = createFont("Rough Rough Font by 7NTypes.otf", 80);
  timeNew = loadFont("TimesNewRomanPSMT-48.vlw");
  
  // declaracion de fuentes
  textFont(cruella);
  textFont(timeNew);
  
  // declaracion de variables 
  posX = posX1 = posX2 = posX3 = 0;
  posY = posY1 = posY2 = 0;
  velY = -1;
  velY1 = 1;
  velY2= 0;
  opacidad = 0;
  rojo = color(random(255), random(0), random(0));
}

void draw() {
  background(0);
  println(frameCount);
  fill(rojo);
  posX = posX+velX;
  posX1 = posX1+velX1; 
  posX2 = posX2+velX2;
  posX3 = posX3+velX3;
  posY = posY+velY;
  posY1 = posY1+velY1;
  posY2 = posY2+velY2;

  //TITULO - primera pantalla
 
  if (frameCount <= 350) {
    imageMode(CENTER);
    image(titulo, 450, 300, width, height);
  } 
  
    if (275<= frameCount && frameCount <=350) {
    imageMode(CENTER);
    image(titulo, 450, 300, width, height);
    width ++;
    height ++;
  }
  
  if (0<= frameCount && frameCount <=350) {
    fill(rojo);
    textFont(cruella);
    text("Cruella", 335, posY+600);
  } 
  
  if (frameCount < 0) {
    velY= -1;
  } 
  
  
  if (frameCount > 270) {
    velY= 0;
  }

  // DIRECCION - segunda pantalla


  if (350 <=frameCount && frameCount <=440) {
    imageMode(CENTER);
    image(pantalla1, 450, 300, width+20, height+20);
  }
  
  if (350<= frameCount && frameCount <=440) {
    imageMode(CENTER);
    image(pantalla1, 450, 300, width+20, height+20);
    width --;
    height --;
  }
  
  if (350<= frameCount && frameCount <=440) {
    fill(255, 0, 0);
    textFont(cruella);
    textSize(20);
    text("Dirigida por", 225, posY+500);
    fill(212, 175, 55);
    textFont(timeNew);
    textSize(50);
    text("CRAIG GILLESPIE", 300, posY+550);
  }
  

  
  // PRODUCCION Y GUION E HISTORIA - tercera pantalla


  if (440 <=frameCount && frameCount <=950) {
    imageMode(CENTER);
    image(pantalla1, 450, 300, width+5, height+5);
  } 
  
  if (440<= frameCount && frameCount <=650){
    imageMode(CENTER);
    image(pantalla1, 450, 300, width+5, height+5);
    width ++;
    height ++;
  }

  if (440<= frameCount && frameCount <=800) {
    fill(255, 0, 0);
    textFont(cruella);
    textSize(35);
    text("Produccion", 50, posY1+200);
    text("Guion e Historia", 650, posY1+100);
    fill(255);
    textFont(timeNew);
    textSize(30);
    
    // Produccion
    text("Emma Stone", 50, posY1+250);
    text("Kristin Burr", 50, posY1+300);
    text("Andrew Gunn", 50, posY1+350);
    text("Marc Platt", 50, posY1+400);
    text("Glenn Close", 50, posY1+450);
    
    // Guion e Historia
    text("Dana Fox", 650, posY1+150);
    text("Tony McNamara", 650, posY1+200);
    text("Aline Brosh", 650, posY1+250);
    text("Kelly Marcel", 650, posY1+300);
    text("Steve Zissis", 650, posY1+350);
  } else if (frameCount < 440) {
    posY1 = -350;
    velY1 = 2;
  } 

  if (frameCount > 600) {
    velY1 = 0;
  }
  
  // PERSONAJES PRINCIPALES - primera tanda - cuarta pantalla


  if (800<=frameCount && frameCount <=1300) {
    imageMode(CENTER);
    image(personajes1, 450, 300, width+20, height+20); 
  } 
  
  if (850<=frameCount && frameCount <=1000){
    imageMode(CENTER);
    image(personajes1, 450, 300, width+20, height+20); 
    width --;
    height --;
  }
  
  if (800<= frameCount && frameCount <=1300) {
    fill(255, 0, 0);
    textFont(cruella);
    textSize(25);
    text ("Personajes Principales", 350, 50);
    textFont(timeNew);
    textSize(30);
    fill(255);
    text ("Emma Stone \n(Cruella de Vil)", posX, 150);
    text ("Emma Thompson \n(Baronesa von Hellman)", posX, 250 );
    text ("Paul Walter Hauser \n(Horacio)", posX, 350);
    text ("Kirby Howell-Baptiste \n(Anita Darling)", posX, 450);
  } else if (frameCount < 800) {
    posX = -100;
    velX = 2;
  } 

  if (frameCount > 1020) {
    velX = 0;
  }
  
  // PERSONAJES PRINCIPALES - segunda tanda - quinta pantalla
  
  if (1300<=frameCount && frameCount <=1700) {
    imageMode(CENTER);
    image(personajes1, 450, 300, width-20, height-20); 
  } 
  
  if (1300<=frameCount && frameCount <=1600){
    imageMode(CENTER);
    image(personajes1, 450, 300, width-20, height-20); 
    width ++;
    height ++;
  }
  
  if (1300<= frameCount && frameCount <=1700) {
    fill(255, 0, 0);
    textFont(cruella);
    textSize(25);
    text ("Personajes Principales", 350, 50);
    textFont(timeNew);
    textSize(30);
    fill(255);
    text ("Tipper Seifert-Cleveland \n(Cruella de Vil joven)", posX1, 150);
    text ("Joel Fry \n(Jasper)", posX1, 250);
    text ("Emily BeechamS \n(Catherine de Vil)", posX1, 350);
    text ("Mark Strong \n(John)", posX1, 450);
  } else  if (frameCount < 1300) {
    posX1 = +900;
    velX1 = -2;
  } 

  if (frameCount > 1580) {
    velX1 = 0;
  }

  // PERSONAJES SECUNDARIOS - sexta pamtalla


  if (1700<=frameCount && frameCount <=2500) {
    imageMode(CENTER);
    image(personajes2, posX3, 300, width, height); 
  } else  if (frameCount < 1700) {
    posX3= -150;
    velX3 = 1;
  }
  
  if (frameCount > 2300) {
    velX3 = 0;
  }
  
  if (1700<= frameCount && frameCount <=2500) {
    fill(255, 0, 0);
    textFont(cruella);
    textSize(25);
    text ("Personajes Secundarios", 350, 50);
    textFont(timeNew);
    textSize(30);
    fill(255);
    text ("Kayvan Novak (Roger)", posX2, 100);
    text ("Andrew Leung (Jeffrey)", posX2, 160);
    text ("Jamie Demetriou (Gerald)", posX2, 220);
    text ("Abraham Popoola (George)", posX2, 280);
    text ("Tom Turner (El Barón)", posX2, 340);
    text ("Sid Sagar (Mark)", posX2, 400);
    text ("Tim Steed (Frederick)", posX2, 460);
    text ("John McCrea (Artie)", posX2, 520);
  } else  if (frameCount < 1700) {
    posX2 = +900;
    velX2 = -2;
  } 

  if (frameCount > 1990) {
    velX2 = 0;
  }
  
  // MUSICA - septima pantalla
  
  
  if (2500<=frameCount && frameCount <=3400) {
    imageMode(CENTER);
    image(musica, posX3, 300, width, height); 
  } 
  
  if (2500<= frameCount && frameCount <=3400) {
    fill(212, 175, 55);
    textFont(cruella);
    textSize(25);
    text ("Musica", 50, posY2+50);
  }
  
    
    if (2500<= frameCount && frameCount <=3400) {
    fill(255);
    textFont(timeNew);
    textSize(30);
    text ("'Feeling Good' de Nina Simone", 50, posY2+100);
    text ("'Bloody Well Right' de Supertramp", 50, posY2+160);
    text ("'Stone Cold Crazy' de Queen", 50, posY2+220);
    text ("'One Way or Another' de Blondie", 50, posY2+280);
    text ("'Five to One' de The Doors", 50, posY2+340);
    text ("'Livin Thing' de Electric", 50, posY2+400);
    text ("'Should I Stay or Should I Go' \nde The Clash", 50, posY2+460);
  
  } else if (frameCount < 2500) {
    posY2 = +600;
    velY2 = -1;
  } 

  if (frameCount > 3100) {
    velY2 = 0;
  }
  
  // PANTALLA FINAL - octava pantalla
  
  
   if (3400<= frameCount && frameCount <=3600) {
    imageMode(CENTER);
    image(ultimaPantalla, 450, 300, width, height);
  } 
  
  if (3400<= frameCount && frameCount <=3600) {
    fill(rojo);
    textFont(cruella);
    text("Cruella", 50, 350);
  } 
  
  //rectangulo de opacidad
  if (3500<= frameCount && frameCount <=3600) {
    fill(0, 0, 0, opacidad);
    opacidad= opacidad+5;
    noStroke();
    rect(0, 0, 900, 600);
    
  }
  boton(824, 524, 50, 50); 
}

  // Dibujo- parte del boton de reincio
     
  void boton(int pxb, int pyb, int ancho, int alto) { /* dibuja un botón e incluye la opción de detectar el "Over" tomando otra función */
  if (sobreBoton(pxb, pyb, ancho, alto)==true) { // si estoy sobre el botón utiliza un color
    fill(random(255), random(255), random(255));
  } else { 
    fill(rojo);
  }
  stroke(0);                           
  strokeWeight(2);                                        
  circle(850, 550, 50);
  fill(255);                           
  textFont(timeNew);                   
  textSize(10);                        
  text("REINICIO", 829, 555);
  image(cursor, mouseX, mouseY, 25, 25);
}

// EVENTO DEL MOUSE - BOTON DE REINCIO

void mousePressed(){
  float d = dist(mouseX, mouseY, 850, 550);
  int r = 50 / 2;
  if(d < r){
    frameCount= 0;
    width= 900;
    height= 600;
  posX = posX1 = posX2 = posX3 = 0;
  posY = posY1 = posY2 = 0;
  velY = -1;
  velY1 = 1;
  velY2= 0;
  opacidad = 0;
  rojo = color(random(255), random(0), random(0));
  }
  }
  
