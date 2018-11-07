//your rectangle should rotate and move across the screen from left to right
//currently it only rotates in place 
//change the sketch so that it draws from left to right, then down; 
//change either the translate function or the conditional to do this.




float x = -30; 
float y = 50;
float spin, pos;

void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
}

void draw() {
  pos += 1; //added speed
  pushMatrix();
  translate(pos+x, y);  //changed from frameCount to variable
  rotate(radians(frameCount + y)/3);
  stroke(0, 30);
  line(-50, 0, 50, 0);
  if(pos > width+90){ // able to reset variableunlike frameCount
     pos = 0;
     y += 50;
  } 
  if(y > 600){
    pos = 0;
     y = 0;
  }
  popMatrix();

}
