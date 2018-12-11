class Bug{
  float x, y;
  
  Bug(float xx, float yy){
    x = xx;
    y = yy;
  }
  
  void place(){
    fill(0);
    ellipse(x, y, 15, 15);
    line(x+15, y, x-15, y);
    line(x, y+15, x, y-15);
    line(x+10, y+10, x-10, y-10);
    line(x+10, y-10, x-10, y+10);
  }
  
  void move(){
    float r = random(0,1);
    if(r < .25){
      x += 15;
      y += 15;
    }else if(r >= .25 && r < .5){
      x += 15;
      y -= 15;
    }else if(r > .75){
      x -= 15;
      y += 15;
    }else{
      x -= 15;
      y -= 15;
    }
  }
}
