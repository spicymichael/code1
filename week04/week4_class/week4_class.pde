//FUNCTIONS!!

float x, y, x1, y1;
float d = 100;
float bg;

void setup(){
  size(1000, 1000);
  x = width/2;
  y = height/2;
  x1 = width/4;
  y1 = height/4;
}

void draw(){
  bg = map(calcDist(x,y), 50, width/2, 255, 0);
  background(bg, 150, 255);
  
  if(calcDist(x,y)<d/2){
    background(#CC33FF);
  }else if(calcDist(x1,y1)<d/2){
    background(#99FFFF);
  }
  
   ellipse(x, y, d, d);
   ellipse(x1, y1, d, d);
}

float calcDist(float xPos, float yPos){
  float dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}
