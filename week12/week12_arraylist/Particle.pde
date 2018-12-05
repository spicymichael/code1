class Particle{
  //data
  PVector pos, vel, grav;
  color rgb;
  float dia;
  
  //constructor
  Particle(){
    pos = new PVector(mouseX, mouseY);
    vel = new PVector(random(-7,7), random(1,5));
    grav = new PVector(0, .1);
  }
  
  //methods
  void move(){
    pos.add(vel);
  }
  void gravity(){
    vel.add(grav);
    vel.x = vel.x*.9999;
  }
  void bounceY(){
    vel.y = -vel.y*.8;
  }
  void bounceX(){
    vel.x = -vel.x;
  }
  void place(float _dia){
    noStroke();
    dia = _dia;
    fill(0);
    ellipse(pos.x, pos.y, dia, dia);
    //pushMatrix();
    //  translate(pos.x, pos.y);
    //  rotate(atan2(mouseY-pos.y, mouseX-pos.x));
    //  fill(255);
    //  ellipse(10,  0, dia*.65, dia*.65);
    //popMatrix();
  }

}
