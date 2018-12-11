class Fur{
  
  float x, y;
  color c;
  float angle, a;
  
  Fur(float xx, float yy, float aa, color cc){
    c  = cc;
    x = xx;
    y = yy;
    a = aa;
  }
  
  void still(){
    stroke(c);
    strokeWeight(5);
    pushMatrix();
      translate(x, y);
      rotate(sin(frameCount*.02+a*.1)+(PI*1.25));
      line(0, 0, -80, 0);
    popMatrix();
  }
  
  void move(){
    angle = atan2(mouseY-y, mouseX-x);
    stroke(c);
    strokeWeight(5);
    pushMatrix();
      translate(x, y);
      rotate(angle);
      line(0, 0, -80, 0);
    popMatrix();
  }
  
}
