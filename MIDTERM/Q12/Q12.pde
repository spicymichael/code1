void setup() {
  background(150);
  size(600, 600);
  noStroke();
}

void draw() {
  for (int i = 0; i < 10; i++) {
    int x = 75;
    rect(x*i+25, 150, 30, 300);
    x += 60;
  }
}
