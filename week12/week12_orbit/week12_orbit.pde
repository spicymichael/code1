
float theta;

void setup(){
  size(1000, 1000);
}

void draw(){
  background(0);
  ellipse(width/2, height/2, width/2, height/2);
  theta = frameCount * .01;
  pushMatrix();
  translate(width/2, height/2);
  rotate(theta*2);
  ellipse(350 + cos(theta*24)* 50, 0, 50, 50);  
  
  popMatrix();
}
