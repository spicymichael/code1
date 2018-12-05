Ship myShip[] = new Ship[40];

void setup(){
  size(800, 600); 
  noStroke();  
  colorMode(HSB);
  for(int i = 0; i < myShip.length; i++){
  myShip[i] = new Ship(color(random(0,255), 150, 150, 40));
  }
}

void draw(){
  background(255); 
  for(int i = 0; i < myShip.length; i++){
  myShip[i].move();
  myShip[i].display(); 
  myShip[i].reset(); 
  }
}

class Ship{
  PVector pos; 
  PVector vel; 
  
  color c; 
  
  Ship(color _c){
    pos = new PVector(random(0, width),random(0, height)); 
    c = _c; 
    vel = new PVector(random(1, 3), 0); 
    
  }
  
  void move(){
  pos.add(vel);
  }
  
  void display(){
    fill(c); 
    ellipse(pos.x, pos.y, 20, 20); 
    ellipse(pos.x, pos.y + 20, 40, 20);  
  }
  
  void reset(){
    if(pos.x >= width + 10){
      pos.x = 0; 
    }
  }
}
