class Paddle{
  PVector pos;
  color rgb;
  
  Paddle(PVector _pos){
    pos = _pos;
  }
  
  void moveU(){
    pos.y -= 10;
  }
  
  void moveD(){
    pos.y += 10;
  }
  
  void display(){
    rectMode(CENTER);
    fill(0,0,0);
    rect(pos.x, pos.y, 20, 250);
  }
  
}
