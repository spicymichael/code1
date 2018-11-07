//witch face: head,eye,hair
// head - arc, 3/4 of cirle, bottom right missing
// eye - small ellipse
// hair - parrallel vertical lines to the left of eye
float mid;
float eyeX;
float eyeY;
float eyeSize;
float arcSize;
float bgSize;
float eyeR;
float eyeG;
float eyeB;
float lineX;
float lineAY;
float lineBY;
float bgR;
float bgG;
float bgB;

void setup () {
//how do I make a random int
  size (1000,1000);
  mid = width*.5;
  arcSize = width*.75;
  eyeX = width*.45;
  eyeY = width*.4;
  eyeSize = width*.02;
  eyeR = 0;
  eyeG = 0;
  eyeB = 0;
   println(eyeX, eyeY);
  lineX = width*.35;
  lineAY = width*.2;
  lineBY = width*.75;
  bgB = random(0,255);
}

void draw () {
  
  float bgR = map(mouseX, 0, width, 0, 255);
  float bgG = map(mouseY, 0, width, 0, 255);
  background(bgR, bgG, bgB);
  
  pushMatrix();
    translate(mid,mid);
    rotate(radians(-mouseX));
    fill(255);
    arc (0, 0, arcSize, arcSize, HALF_PI, TWO_PI, PIE);
  popMatrix();
  
  pushMatrix();
    translate(eyeX,eyeY);
    fill(eyeR,eyeG,eyeB);
    ellipse(0, 0, eyeSize, eyeSize); 
  popMatrix();
  
  pushMatrix();
    shearY(mouseX*.01);
    line(lineX, lineAY, lineX, lineBY);
    line(lineX-width*.05, lineAY+width*.05, lineX-width*.05, lineBY+width*.05);
    line(lineX-width*.1, lineAY+width*.1, lineX-width*.1, lineBY+width*.1);
    line(lineX-width*.15, lineAY+width*.15, lineX-width*.15, lineBY+width*.15);
    line(lineX-width*.2, lineAY+width*.2, lineX-width*.2, lineBY+width*.2);
  popMatrix();
}

void mousePressed() {
   eyeR = random(0,255);
   eyeG = random(0,255);
   eyeB = random(0,255);
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      eyeSize += 10;
      //size ++  size += 1 size = size+1
    }
    if(keyCode == DOWN){
      eyeSize -= 10 ;
    }
  }
}
