void Pelota() {
  fill(0);
  noStroke();
  circle(pos[1], posY, 10);
  if (pos[1] >= width-15) {
    vel[1] = -2;
  }
  if (pos[1] <= 15) {
    vel[1] = 2;
  }
  if (posY > height) {
    estado = 3;
  }
  if (posY <= 15) {
    velY = 2;
  }
  
  float d = dist(pos[1], posY, 215, 90);
  int r = 20 / 2;
  if (d < r) {
    estado = 4;
  }
  
  // colision pelota-plataforma
  if (posY>425 && pos[1]>pos[0] && pos[1]<pos[0]+50 && posY<435 ) {
    velY --;
  }
}
