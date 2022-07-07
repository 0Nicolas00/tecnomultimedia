void Plataforma() {
  fill(0, 0, 255);
  rect(pos[0], 430, 50, 10);
  if (keyCode == LEFT) {
    vel[0] = -2;
  }
  if (keyCode == RIGHT) {
    vel[0] = 2;
  }
  if (pos[0] >= width-60) {
    vel[0] = -2;
  }
  if (pos[0] <= 10) {
    vel[0] = 2;
  }
}
