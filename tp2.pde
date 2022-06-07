// NOMBRE: NICOLAS MANSILLA TORRES 91345/5

int cant= 9;
int tam;
int r;
float posY, velY;
boolean estoyDentroDelBotonA;
color amarillo;

void setup(){
  size(287, 610);
  noStroke();
  tam = 32;
  r = 15;
  amarillo = color(random(255), random(255), 0);
  posY=0; 
}

void draw(){
  background(255);
  estoyDentroDelBotonA = mouseX > 256 && mouseY > 256 && mouseX < 256+32 && mouseY < 256+32;
  posY = posY+velY;
  
  // ESTRELLITAS NEGRAS ENTRE MEDIO DE LOS CUADRADOS---------------- 1 FILA;
  fill(0);
  circle(64, posY+32,  r);
  circle(128, posY+32,  r);
  circle(160, posY+32,  r);
  circle(224, posY+32,  r);
  // ESTRELLITAS NEGRAS---------------- 2 FILA
  circle(32, posY+64,  r);
  circle(96, posY+64,  r);
  circle(192, posY+64,  r);
  circle(256, posY+64,  r);
  // ESTRELLITAS NEGRAS---------------- 3 FILA
  circle(64, posY+96,  r);
  circle(128, posY+96, r);
  circle(160, posY+96,  r);
  circle(224, posY+96,  r);
  // ESTRELLITAS NEGRAS---------------- 4 FILA
  circle(32, posY+128,  r);
  circle(96, posY+128,  r);
  circle(192, posY+128,  r);
  circle(256, posY+128,  r);
  // ESTRELLITAS NEGRAS---------------- 5 FILA
  circle(32, posY+160,  r);
  circle(96, posY+160,  r);
  circle(192, posY+160,  r);
  circle(256, posY+160,  r);
  // ESTRELLITAS NEGRAS---------------- 6 FILA
  circle(64, posY+192,  r);
  circle(128, posY+192,  r);
  circle(160, posY+192,  r);
  circle(224, posY+192, r);
  // ESTRELLITAS NEGRAS---------------- 7 FILA
  circle(32, posY+224,  r);
  circle(96, posY+224,  r);
  circle(192, posY+224,  r);
  circle(256, posY+224,  r);
  // ESTRELLITAS NEGRAS---------------- 8 FILA
  circle(64, posY+256, r);
  circle(128, posY+256,  r);
  circle(160, posY+256,  r);
  circle(224, posY+256,  r);
  // ESTRELLITAS NEGRAS--------------- 9 FILA
  circle(32, posY+332,  r);
  circle(96, posY+332,  r);
  circle(192, posY+332,  r);
  circle(256, posY+332,  r);
  // ESTRELLITAS NEGRAS---------------- 10 FILA
  circle(64, posY+362,  r);
  circle(128, posY+362,  r);
  circle(160, posY+362,  r);
  circle(224, posY+362,  r);
  // ESTRELLITAS NEGRAS---------------- 11 FILA
  circle(32, posY+397,  r);
  circle(96, posY+397,  r);
  circle(192, posY+397,  r);
  circle(256, posY+397,  r);
  // ESTRELLITAS NEGRAS---------------- 12 FILA
  circle(64, posY+427,  r);
  circle(128, posY+427,  r);
  circle(160, posY+427,  r);
  circle(224, posY+427,  r);
  // ESTRELLITAS NEGRAS---------------- 13 FILA
  circle(64, posY+460,  r);
  circle(128, posY+460,  r);
  circle(160, posY+460,  r);
  circle(224, posY+460,  r);
  // ESTRELLITAS NEGRAS---------------- 14 FILA
  circle(32, posY+492, r);
  circle(96, posY+492,  r);
  circle(192, posY+492,  r);
  circle(256, posY+492,  r);
  // ESTRELLITAS NEGRAS---------------- 15 FILA
  circle(64, posY+522,  r);
  circle(128, posY+522,  r);
  circle(160, posY+522,  r);
  circle(224, posY+522,  r);
  // ESTRELLITAS NEGRAS---------------- 16 FILA
  circle(32, posY+557,  r);
  circle(96, posY+557,  r);
  circle(192, posY+557,  r);
  circle(256, posY+557,  r);
  
  
  // PARA HACER TODOS LOS CUADRADOS 
  for(int x=0; x<cant; x++){
    for(int y=0; y<cant; y++){
      if((x+y)%2==0){
      fill(128);
      }else{
      fill(192);
      }
      noStroke();
      rect(x*tam, y*tam+posY, tam, tam, 10);
   }
  }
  for(int x=0; x<cant; x++){
    for(int y=0; y<cant; y++){
      if((x+y)%2==0){
      fill(128);
      }else{
      fill(192);
      }
      noStroke();
      rect(x*tam, y*tam+300+posY, tam, tam, 10);
   }
  }
 
 // BOTON
 stroke(5);
 stroke(amarillo);
 line(271, posY+260, 271, posY+280);
 line(265, posY+270, 271, posY+280);
 line(277, posY+270, 271, posY+280);
 
 // cuando pasa el largo de la pantalla vuelve a empezar
 if(posY > height){
     posY= -600;
   }
}


void mousePressed(){
  if(estoyDentroDelBotonA){
     velY= 10;
  }
}
  
void keyPressed(){
  if(key == 'r'){
    posY= 0;
    velY= 0;
    }
}
