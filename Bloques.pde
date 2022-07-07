void Bloques() {
  for (int i=0; i<cant[1]; i+=1) { 
    for (int y=0; y<cant[1]; y+=1) {
      stroke(1);
      fill(150);
      rect(i*tam[0]+115, y*tam[1]+50, tam[0], tam[1]);
      fill(255, 0, 0);
      circle(215, 90, 20);
    }
  }
}
