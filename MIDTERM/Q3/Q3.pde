float xPos;
float yPos;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  frameRate(10);
}

void draw() {
  background(50);
  ellipse(xPos, yPos, 30, 30);

  float r = random(1);

  if (r < .25) {
    xPos += 10;
  } else if(r >= .25 & r < .5){
    xPos -= 10;
  }else if(r >= .5 & r < .75){
    yPos += 10;
  }else{
    yPos -= 10;
  }
} 
