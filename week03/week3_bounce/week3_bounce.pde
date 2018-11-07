float x, y;
int d = 150;
float xSpeed, ySpeed;

void setup(){
  size (1000, 1000);
  background (255);
  x = random(75,925);
  y = random(75,925);
  xSpeed = (random(2,5));
  ySpeed = (random(2,5));  
}

void draw(){
  
   if (xSpeed == ySpeed){
    xSpeed = (random(1,5));
  ySpeed = (random(1,5));
  }
  
  fill(255,255,255,5);
  rect(0,0,width,height);
  
  fill(0);
  ellipse(x, y, d, d);
  if(x>(width-d/2) || x<(0+d/2)){
    xSpeed = -xSpeed;
  }
  if(y>(height-d/2) || y<(0+d/2)){
    ySpeed = -ySpeed;
  }
    
  x = x+xSpeed;
  y = y+ySpeed;
}
