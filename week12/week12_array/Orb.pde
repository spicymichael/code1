class Orb{
  
  PVector pos, vel;
  float theta;
  color c;
  
  Orb(float _x, float _y){
    pos = new PVector(_x, _y);
    vel = new PVector(5, 5);
    c = color(random(0, 255),255,200);
    strokeWeight(5);
  }
  
  void place(){
    stroke(c);
    ellipse(pos.x, pos.y, 50, 50);
  }
  
  void move(){
    pos.add(vel);
  }
  
  void moveA(){
    theta = PI * frameCount * .05;
    pos.x += 5;
    pos.y = pos.y+sin(theta)* 10;
  }
  void moveB(){
    theta = PI * frameCount * .05;
    pos.y += 5;
    pos.x = pos.x+sin(theta)* 10;
  }
  
  void moveC(){
    theta = PI * frameCount * .05;
    pos.x -= 5;
    pos.y = pos.y-sin(theta)* 10;
  }
  void moveD(){
    theta = PI * frameCount * .05;
    pos.y -= 5;
    pos.x = pos.x-sin(theta)* 10;
  }
}
