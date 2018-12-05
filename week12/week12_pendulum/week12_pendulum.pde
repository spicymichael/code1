//PVector pos;
//float theta;
//float orbit = 400;

//void setup(){
//  size(1000, 1000);
//  pos = new PVector(width/2, height/2);
//}

//void draw(){
//  background(0);
//  theta = frameCount * .05;
//  pos.x = width/2+cos(theta)*orbit;
//  pos.y = height/2+sin(theta);
//  ellipse(pos.x, pos.y, 50, 50);
//}

float gravity = 0.4f;

class Pendulum {
  PVector pivot;
  float armLength;
  float bobRad;

  float angle;
  float aVel;
  float aAcc;

  Pendulum() {
    reset();
  }

  void update() {    
    aAcc = (-gravity / armLength) * sin(angle);
    aVel += aAcc;
    angle += aVel; //moving speed

    aVel *= 0.999f; // slow down
  }

  void reset() {
    angle = PI/2;
    pivot = new PVector(0, 0);
    aVel = 0.01f;
    armLength = height/2;
    bobRad = 25;
  }

  void draw() {
    float x = cos(angle) * armLength;
    float y = sin(angle) * armLength;

    stroke(0);
    fill(255);
    // Note, flipping x and y so the pendulum doesn't swing along the x-axis.
    //line(pivot.x, pivot.y, y, x);
    ellipse(y, x, bobRad*2, bobRad*2);
    //ellipse(pivot.x, pivot.y, 6, 6);
  }
}

Pendulum p;

void setup() {
  size(300, 200);
  strokeWeight(2);
  p = new Pendulum();
}

void draw() {
  background(100);
  pushMatrix();
  translate(width/2, 0);
  p.update();
  p.draw();
  popMatrix();
}
