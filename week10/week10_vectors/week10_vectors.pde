//float x, y;
//float xSpeed, ySpeed;
PVector pos,vel;

float d = 150;

void setup(){
  size (1000, 1000);
  background (0);
  //x = random(75,925);
  //y = random(75,925);
  //xSpeed = (random(2,5));
  //ySpeed = (random(2,5));  
  pos = new PVector(width/2, height/2);
  vel = new PVector(5,6);
}

void draw(){  
  fill(255,255,255,5);
  rect(0,0,width,height);
  
  fill(0);
  ellipse(pos.x, pos.y, d, d);
  if(pos.x>(width-d/2) || pos.x<(0+d/2)){
    vel.x = -vel.x;
  }
  if(pos.y>(height-d/2) || pos.y<(0+d/2)){
    vel.y = -vel.y;
  }
    
  //x = x+xSpeed;
  //y = y+ySpeed;
  pos.add(vel);
}
