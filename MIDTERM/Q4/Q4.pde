
void setup() {
  size(600, 600);
}

void draw() {
  
  float d = dist(mouseX, mouseY, width/2, height/2);
  float s = 200; //size
  
  background(150);
  if (mousePressed && d < s/2) {
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(width/2, height/2, s, s);
}
