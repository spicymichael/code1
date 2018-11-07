//this sketch should have 10 ellipses spaced evenly across the screen 
//each ellipse should change the background color when it's pressed 

//right now the ellipses are all stacked on top of each other and the last ellipse is drawn
int size = 50; 
int xPos[] = new int[10]; 
//removed color array

void setup(){
  size(500, 500); 
  background(color(random(0,255), random(0, 255), random(0, 255))); //random background color (no variable)
  for(int i = 0; i<10; i++){
    xPos[i] = size*i+size/2; //adjusted position
  } 
}

void draw(){
  for(int i = 0; i<10; i++){ //took background out of loop
    ellipse(xPos[i], height/2, size, size); 
  }
}

void mousePressed(){
  for(int i = 0; i<10; i++){
    if(dist(mouseX, mouseY, xPos[i], height/2) < size/2){
     background(color(random(0,255), random(0, 255), random(0, 255))); //random background color (no variable)
    }
  }
}
