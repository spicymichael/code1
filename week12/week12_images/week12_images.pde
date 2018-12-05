PImage img;
float smallPoint, largePoint;

void setup(){
  size(640, 425);
  img = loadImage("monkey.jpg");
  smallPoint = 4;
  largePoint = 40;
  noStroke();
}

void draw(){
  //image(img, 0, 0);
  
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
  
}
