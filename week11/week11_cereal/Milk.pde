class Milk{
  PVector pos, vel;
  
  Milk(){
    pos = new PVector(215, 275);
    vel = new PVector(random(-2.5,5), random(5,7.5));
  }

  void pour(PVector _pos){
    pushMatrix();
      translate(_pos.x, _pos.y); 
      noStroke();
      fill(200);
      ellipse(pos.x, pos.y, 15, 15);
      pos.add(vel);
      fill(255);
      stroke(1);
    popMatrix();
  }
  
}
