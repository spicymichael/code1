float[] pos = new float[100];

void setup() {
  size(600, 600);
  background(240);
}

void draw() {
  for (int i = 0; i < pos.length; i++) {
    pos[i] = i*6+3;
    ellipse(width/2, pos[i], 50, 50);
  }
}
