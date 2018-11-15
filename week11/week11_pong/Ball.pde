class Ball{
  float posX, posY;
  float velX, velY;
  
  Ball(float _x, float _y){
    posX = _x;
    posY = _y;
    velX = random(2.5, 5);
    velY = random(-5, 5);
  }
  
  void display(){
    ellipse(posX, posY, 10, 10);
  }
  
  void move(){
    posX += velX;
    posY += velY;
  }
  
  void bounceP(){
    velX *= -1.1;
    velY *= random(.75, 1.5);
  }
    
  void bounce(){
    velY = -velY;
  }
  
  void reset(){
    posX = width/2;
    posY = height/2;
    velX = random(2.5, 5);
    velY = random(-5, 5);
  }
  
}
