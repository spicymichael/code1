class Ball{

  PVector pos, vel, acc;
  
  Ball(float _x, float _y){
    pos = new PVector(_x, _y);
    vel = new PVector(5, 0); 
    acc = new PVector(.05, 0); 
  }
  
  void place(){
    ellipse(pos.x, pos.y, 100, 100); 
  }
  
  void move(){
    pos.add(vel);
  }
  
  void accel(){
    vel.add(acc);
  }
  
  void bounce(){
    if(pos.x >= width-50 || pos.x <= 50){
      vel.x = -vel.x;
      acc.x = -acc.x;
    }
  }
}
