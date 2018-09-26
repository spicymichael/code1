int red;
int blue;
float hue;

void setup (){
  size(1020, 1020);
  background (#FF00FF);
  rectMode(CENTER);

}

void draw (){
  background (#FF00FF);
  pushMatrix();
  translate(width*.5, height*.5);
  fill(mouseX/4,0,mouseY/4);
  rect(width*.25, height*.25, 200, 200);
  popMatrix();
  pushMatrix();
  scale (1.5);
  translate(width*.25, height*.25);
  rotate(radians(-mouseX/2));
  fill(#00FFFF);
  rect(0, 0, 200, 200);
  noStroke();
  if (keyPressed == true) {
    fill(#FFFF00);
  } else {
    fill(#FF0000);
  }
  ellipse(0, 0, 100, 100);
  popMatrix();
}



//void mouseMoved() {
//  red = red + 1;
//  if (red > 255) {
//    red = 0;
//  }
//  blue = blue - 1;
//  if (blue < 0) {
//    blue = 255;
//  }
//}





//float x1,y1,x2,y2,x3,y3;
// void setup() {
//  size(1000,1000);
//  x1 = width*.5;
//  y1 = height-(sqrt(3)*width*.5);
//  x2 = 0;
//  y2 = height;
//  x3 = width;
//  y3 = height;
//  println(y1);
//}

//void draw(){
//  triangle(x1,y1,x2,y2,x3,y3);
//}
  
