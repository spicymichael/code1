class Cereal{
  PVector pos, vel, grav;
  boolean bowl;
  
  Cereal(){
    pos = new PVector(-75, 290);
    //println(pos.x+mouseX+pos.y+mouseY);
    vel = new PVector(random(-5,2.5), random(5,7.5));
    grav = new PVector(0, .1);
    bowl = false;
  }

  void pour(PVector _pos){
    pushMatrix();
      translate(_pos.x, _pos.y); 
      ellipse(pos.x, pos.y, 10, 10);
      ellipse(pos.x, pos.y, 5, 5);
      vel.add(grav);
      pos.add(vel);
      
      //if(_pos.y + pos.y >= 860){
      //  vel.y = 0;
      //}
      //if(pos.x+_pos.x >= 600 &&
      //pos.x+_pos.x <= 800 && 
      //pos.y+_pos.y >= 750){
        
      //if(dist(pos.x+_pos.x, pos.y+_pos.y,700,
      //750) <= 100 && (pos.y+_pos.y) >= 750){
      //  bowl = true;
      //}else{
      //  bowl = false;
      //}
      //if(dist(pos.x+_pos.x, pos.y+_pos.y,
      //700, 750) >= 85 && bowl == true
      //&& (pos.y+_pos.y) >= 750){
      //  vel.x = -.5*vel.x;
      //  vel.y = -.5*vel.y;
      //  grav.y *= .9;
      //}
      
    popMatrix();
  }
  
}
