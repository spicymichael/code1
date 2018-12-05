class Paddle{
  PVector pos;
  color rgb;
  
  Paddle(PVector _pos){
    pos = _pos;
  }
  
  void move(){
    pos.y = mouseY;
  }
  
  void display(){
    rectMode(CENTER);
    fill(0,0,0);
    rect(pos.x, pos.y, 20, 250);
  }
  
}
