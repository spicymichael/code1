
Ball a, b, c;

void setup(){
  size(1000, 1000);
  a = new Ball(250, 250);
  b = new Ball(250, 500);
  c = new Ball(250, 750);
}

void draw(){
  background(0);
  a.place();
  b.place();
  c.place();
  b.move();
  c.move();
  c.accel();
  b.bounce();
  c.bounce();
  
}
