//change the color of an ellipse from black to white if the mouse is hovering over it 

int n = 7; //made number of circles variable
int i,j; //declared i&j globally

int x[] = new int [n+1]; //created an array so each ball
int y[] = new int [n+1]; //can change color individually

void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255);
   
  //loop 36 times in x and y
  for ( x[i] = 0; x[i] <= width; x[i] += width/n) {  
    for ( y[j] = 0; y[j] <= height; y[j] += height/n) {
      
      float d = dist(mouseX, mouseY, x[i], y[j]);
      
      if (d < width/(2*n)){ //conditional for if hovering
        fill(255);
      }else{
        fill(0);
      }
      ellipse(x[i], y[j], width/n, height/n); 
    }
  }
}
