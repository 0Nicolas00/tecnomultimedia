void Limites() {
  noStroke();
  fill(255, 255, 0);
  rect(0, 0, 10, 450);
  rect(0, 0, 425, 10);
  rect(415, 0, 425, 450);
  for (int i=10; i<cant[0]; i+=50) {
    if ((i)%4==0) {
      fill(255);
    } else {
      fill(0);
    }
    rect(0, i, 10, 20);
  }
  for (int i=0; i<cant[0]; i+=50) {
    if ((i)%4==0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(i, 0, 20, 10);
  }
  for (int i=0; i<cant[0]; i+=50) {
    if ((i)%4==0) {
      fill(0);
    } else {
      fill(255);
    }
    rect(415, i, 10, 20);
  }
}
