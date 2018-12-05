PVector pos, vel, acc; 

void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  vel = new PVector(0, 3);
  acc = new PVector(0, .3);

  smooth(); 
}

void draw(){
  background(0); 
  
  vel.add(acc);
  pos.add(vel);

  ellipse(pos.x, pos.y, 25, 25); 

  if(pos.y >= height){
  pos.y = 25; 
  vel.y = 5;
  }
}
