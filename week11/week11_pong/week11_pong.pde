//ball
//player
//collision
//score
//lives
//timer

Paddle p1, p2;
Ball b;
int p1s, p2s;
String score;

void setup(){
  size(1000, 750);
  p1 = new Paddle(new PVector(width-50, height/2));
  p2 = new Paddle(new PVector(50, height/2));
  b = new Ball(width/2,  height/2);
}

void draw(){
  background(255);
  p1.display();
  p2.display();
  
  b.display();
  b.move();
  
  score = p2s + " to " + p1s;
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text(score, width/2, 50);
  
  if(b.posY >= height-5 || b.posY <= 5){
    b.bounce();
  }
  if(b.posX > width){
    b.reset();
    p2s ++;
  }
  if(b.posX < 0){
    b.reset();
    p1s ++;
  }
  if(b.posX >= p1.pos.x -10 && b.posY >= p1.pos.y -125
  && b.posY <= p1.pos.y + 125){
    b.bounceP();
    
  }if(b.posX <= p2.pos.x +10 && b.posY >= p2.pos.y -125
  && b.posY <= p2.pos.y + 125){
    b.bounceP();
  }
  
  if(keyPressed){
    if(key == 'w'){
      p2.moveU();
    }
    if(key == 's'){
      p2.moveD();
    }
    if(key == 'k'){
      p1.moveU();
    }
    if(key == 'm'){
      p1.moveD();
    }
    
  }
  
  
  
  
}
