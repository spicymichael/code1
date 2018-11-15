class Carton{
  float x, y;
  
   Carton(float _x, float _y){
    x = _x;
    y = _y;
  }
  
  void place(){
    rectMode(CENTER);
    rect(x, y, 200, 400);//front
    quad(x+100, y-200, x+100, y+200, 
    x+150, y+150, x+150, y-250);//right
    triangle(x+100, y-200, x+150, y-250, 
    x+125, y-300);//triangle
    quad(x+100, y-200, x+125, y-300,
    x-75, y-300, x-100, y-200);//top
    quad(x+125, y-300, x-75, y-300,
    x-75, y-325, x+125, y-325);//top flap
  }
  
  void pour(){
    pushMatrix();
      translate(mouseX, mouseY);
      rotate(PI*.65);
      
      rectMode(CENTER);
      rect(0, 0, 200, 400);//top
      quad(100, -200, 100, 200, 
      150, 150, 150, -250);//right
      quad(100, -200, 200, -300,
      100, -275, 0, -300);//popout
      line(100, -210, 100, -265);//crease
      quad(100, -310, 200, -300,
      100, -270, 0, -300);//hole
      quad(100, -200, 0, -300,
      -75, -300, -100, -200);//top
      quad(0, -300, -75, -300,
      -75, -325, 0, -325);//top flap left
      quad(0, -300, 100, -310,
      100, -335, 0, -325);//top flap midtop
      quad(200, -300, 100, -310,
      100, -335, 200, -325);//top flap righttop
      quad(0, -300, 100, -270,
      100, -295, 0, -325);//top flap midbtm
      quad(200, -300, 100, -270,
      100, -295, 200, -325);//top flap rightbtm
    popMatrix();
  }
  
  
  
  
}
