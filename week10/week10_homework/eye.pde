class eye{
  PVector pos;
  float orbit, theta, t, r, s;
  
  eye(){
    pos = new PVector(width/2, height/2);
    orbit = random(0,width/2);
    t = random(0, 100);
    r = random(0, 1);
    s = random(.01, .05);
  }
  
  void move(){
    theta = frameCount*s + t;
    if(r > .5){
     theta = -theta;
    }
    pos.x = width/2+cos(theta)*orbit;
    pos.y = height/2+sin(theta)*orbit;
    fill(255);
    ellipse(pos.x, pos.y, 50, 50);
    pushMatrix();
      fill(0);
      translate(pos.x, pos.y);
      rotate(atan2(mouseY-pos.y, mouseX-pos.x)); 
      ellipse(10,  0, 30, 30);
    popMatrix();
  }
  
}
