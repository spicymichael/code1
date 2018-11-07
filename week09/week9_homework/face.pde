class face{
//data
float _x,_y, xa, ya; //position
color _a,_b; //colors\
float angleL, angleR;
//constructor
face(float x, float y, color a, color b){
  _x = x;
  _y = y;
  _a = a;
  _b = b;

  //head
  noStroke();
  fill(a);
  ellipse(x, y, 200, 200);
  beginShape();
    vertex(x, y+15);
    vertex(x+100, y+15);
    vertex(x+50, y+150);
    vertex(x-50, y+150);
    vertex(x-100, y+15);
  endShape();
  
  //nose + mouth
  stroke(b);
  strokeWeight(5);
  line(x, y+25, x, y-100);
  line(x, y+25, x+15, y+75);
  line(x, y+75, x+15, y+75);
  line(x, y+75, x, y+150);
  line(x-25, y+100, x+25, y+100);

  //eye hole
  noStroke();
  fill(b);
  ellipse(x-50,  y+15, 50, 50);
  ellipse(x+50,  y+15, 50, 50);
  
  angleL = atan2(mouseY-y+15, mouseX-x+50);
  angleR = atan2(mouseY-y+15, mouseX-x-50);  
  }
  
void look(){
  fill(_a); 
  pushMatrix();
    translate(_x-50, _y+15);
    rotate(angleL); 
    ellipse(10,  0, 20, 20);
  popMatrix();
  pushMatrix();
    translate(_x+50, _y+15);
    rotate(angleR); 
    ellipse(10,  0, 20, 20);
  popMatrix();  
  }
  
void tongue(){
  if(dist(mouseX, mouseY, _x, _y+100) <= 30){
    fill(_b);
    rectMode(CENTER);
    rect(_x, _y+115, 30, 30);
    ellipse(_x, _y+130, 30, 30);
    stroke(_a);
    strokeWeight(2.5);
    line(_x, _y+105, _x, _y+130);
    noStroke();//if I don't include this all instances
    //after the one clicked get a stroke
    }
  }
}
