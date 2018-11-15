int totalPts = 300;
float steps = totalPts + 1;
  
void setup() {
  background(0);
  size(1000, 500);
  stroke(255);
  frameRate(.5);
} 

void draw() {
  background(0);
  float rand = 0;
  for  (int i = 1; i < steps; i++) {
    point( (width/steps) * i, (height/2) + random(-rand, rand) );
    rand += random(-4.5, 5);
  }
}
//point i = 0 is between 0,0
//point i = 1 is between a random pos/neg, lets say -5, 5, the point is at 3
//point i = 2 could be between 13 and -3
