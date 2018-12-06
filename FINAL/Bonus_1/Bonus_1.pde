Paddle p1;
ArrayList <Ball> balls = new ArrayList <Ball>();
int score;
String GO;

void setup(){
  size(1000, 750);
  p1 = new Paddle(new PVector(width-50, height/2));
  balls.add(new Ball(width/2, height/2));
}

void draw(){
  background(255);
  
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text(score, width/2, 50);
  
  p1.display();
  
  if(score < 0){
    GO = "GAME OVER";
    textAlign(CENTER);
    textSize(75);
    fill(0);
    text(GO, width/2, height/2);
  }else{
    p1.move();
  }
  
  
  if(frameCount % 600 == 0){
    balls.add(new Ball(width/2, height/2));
  }
  
  for(int i = 0; i < balls.size(); i++){
    Ball b = balls.get(i);  
    b.display();
    b.move();
    
    if(b.posX >= width){
      b.reset();
      score -= 5;
    }
    
    if(b.posY >= height-5 || b.posY <= 5){
      b.bounce();
    }
       
    if(b.posX >= p1.pos.x -10 && b.posY >= p1.pos.y -125
    && b.posY <= p1.pos.y + 125){
      b.posX = p1.pos.x -10;
      b.bounceP();
      score++;
    }
    
    if(b.posX <= 0){
      b.bounceP();
    }
  
  }
}
