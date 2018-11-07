//map the radius of the circle to how close your mouse is to the center of the circle
//in other words, your ellipse should get smaller the closer you are to the center

//right now, the size is mapped along the x axis

float size, mPos; 

int xPos, yPos; 

void setup(){
  size(500, 500); 
  xPos = width/2; 
  yPos = height/2; 
}

void draw(){
  background(0); 
  mPos = dist(mouseX, mouseY, width/2, height/2); //variable for distance from center 
  size = map(mPos, 0, sqrt(2)*(width/2), 0, width); //map mouse position
  ellipse(width/2, height/2, size, size); 
}
