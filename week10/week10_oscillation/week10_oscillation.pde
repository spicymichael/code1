PVector pos;
float theta;
float orbit = 400;

void setup(){
  size(1000,1000);
  pos = new PVector(width/2, height/2);
}

void draw(){
  background(0);
  theta = frameCount;
  pos.x = width/2+cos(theta*.075)*orbit;
  pos.y = height/2+sin(theta*.015)*orbit;
  ellipse(pos.x, pos.y, 50, 50);
}
