class Fur{
  
  float x, y, z;
  color c;
  float angle;
  float ease = 1.05;
 
  Fur(float xx, float yy, float zz, color cc){
    c  = cc;
    x = xx;
    y = yy;
    z = zz;
  }
  
  void still(){
    stroke(c);
    strokeWeight(5);
    pushMatrix();
      translate(x, y);
      rotate(sin(frameCount*.02+z*.1)+(PI*1.25));
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
  
//  void draw(){
    
//    if(mousePressed){
//      ta = atan2(mouseY-y, mouseX-x);
//    }else{
//      ta = sin(frameCount*.02+z*.1)+(PI*1.25);
//    }
//    float da = ta - a;
//    a += da * ease;
    
//    stroke(c);
//    strokeWeight(5);
//    pushMatrix();
//      translate(x, y);
//      rotate(a);
//      line(0, 0, -80, 0);
//    popMatrix();
//  }
  
}
