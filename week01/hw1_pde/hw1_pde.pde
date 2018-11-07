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
float eyeColor;
float lineX;
float lineAY;
float lineBY;

void setup () {
//how do I make a random int
  size (1000,1000);
  background(random(0,255));
  mid = width*.5;
  arcSize = width*.75;
  eyeX = width*.45;
  eyeY = width*.4;
  eyeSize = width*.02;
  eyeColor = 0;
   println(eyeX, eyeY);
  lineX = width*.35;
  lineAY = width*.2;
  lineBY = width*.75;
}

void draw () {
  fill(255);
  arc (mid, mid, arcSize, arcSize, HALF_PI, TWO_PI, PIE);
  
  fill(255,eyeColor,0);
  ellipse(eyeX, eyeY, eyeSize, eyeSize); 
 
  line(lineX, lineAY, lineX, lineBY);
  line(lineX-width*.05, lineAY+width*.05, lineX-width*.05, lineBY+width*.05);
  line(lineX-width*.1, lineAY+width*.1, lineX-width*.1, lineBY+width*.1);
  line(lineX-width*.15, lineAY+width*.15, lineX-width*.15, lineBY+width*.15);
  line(lineX-width*.2, lineAY+width*.2, lineX-width*.2, lineBY+width*.2);

} 

//void mouseClicked() {
//  if (eyeColor == 0) {
//    eyeColor = 255;
//  } 
//  if (eyeColor == 255) {
//    eyeColor = 0;
//  }
//}
