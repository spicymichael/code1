//ball bouncing in arc at bottom
//button to turn it on/off
//button moves each time you click it
//ball's color changes at it bounces across screen
//variables - ball color, switch on, buttonposition
//ball position, speed, ball size

float buttonX, buttonY;
float ballR, ballG, ballB;
float ballX, ballY;
boolean bounce;
float buttonD;
float speed;
float ballD;

void setup (){
  size (1000,1000);
  background (0);
  buttonX = 100;
  buttonY = 100;
  ballX = 500;
  ballY = 500;
  ballD = 100;
  speed = 5;
}

void draw(){
  background (0);
  buttonD = (dist(mouseX, mouseY, buttonX, buttonY));
  fill (255);
  ellipse(buttonX,buttonY,50,50);
  
  float ballR = map(ballY, 150, 850, 0, 255);
  float ballG = map(buttonY, 25, 975, 0, 255);
  float ballB = map(mouseY, 25, 975, 0, 255);
  
  //I tried to get the ball to follow an arc pattern but I do not know how
  if (bounce == true){
    ballY = ballY+speed;
  }
  fill(ballR, ballG, ballB);
  ellipse (ballX, ballY, ballD, ballD);
  
  if(ballY>(900-ballD/2) || ballY<(100+ballD/2)){
    speed = -speed;
  }
  println (buttonD);
}

void mousePressed(){
  if (buttonD<25){
  bounce = !bounce;
  buttonX = random(25,975);
  buttonY = random(25,975);
  }
}
  
