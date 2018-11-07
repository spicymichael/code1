//change this sketch so it rotates around the original position of the shape 

void setup() {
  size(600, 600); 
  rectMode(CENTER);
  background(0);
}

void draw(){
  
  fill(255);
  rect(width/2, height/2, 100, 100); 
  
  translate(width/2, height/2); //translate to the center
  pushMatrix(); 
  rotate(radians(mouseX)); 
  fill(50, 50, random(100,200)); 
  rect(100, 100, 100, 100); //make x&y in relation to the center
  popMatrix(); 
}
