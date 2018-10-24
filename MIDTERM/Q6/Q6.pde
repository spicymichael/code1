void setup() {
  size(600,600);
}

void draw() {
  for (int i = 0; i < 100; i++){
    line(i * 6, 0, i * 6, height);
  }
}
