class Box{
  float x, y;
  PVector pos, grav;
  
  Box(float _x, float _y){
    x = _x;
    y = _y;
    pos = new PVector(-75, 290);
    grav = new PVector(random(-1.5,.5), random(1,5));
  }
  
  void place(){
    rectMode(CENTER);
    rect(x, y, 350, 500);//front
    quad(x-175, y-250, x-150, y-275, 
    x+200, y-275, x+175, y-250);//top
    quad(x+175, y-250, x+200, y-275,
    x+200, y+225, x+175, y+250);//right
  }
  
  void pour(){
    pushMatrix();
      translate(mouseX, mouseY);
      rotate(PI * 1.25);
      
      rectMode(CENTER);
      rect(0, 0, 350, 500);//front
      quad(-175, -250, -150, -275, 
      200, -275, 175, -250);//top
      quad(175, -250, 200, -275,
      200, 225, 175, 250);//right
      quad(-175, -250, -160, -225, 
      190, -225, 175, -250);//flap
      triangle(200, -275, 215, -250, 
      200, -250);//backflap
    popMatrix();
  }
  
  void cereal(){
    pushMatrix();
      translate(mouseX, mouseY); 
      ellipse(pos.x, pos.y, 10, 10);
      pos.add(grav);
    popMatrix();
  }
}
