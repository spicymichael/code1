//boolean to detect mousePressed
//if boolean true, draw ellipse where mousePosition
//change size of ellipse using arrow keys

int size;
int x, y;

void setup(){
  size(1000,1000);
  size = 50;
  background(#FFFF50);
}

void draw(){
  
  fill(#FFFF50,3);
  rect(0,0,width,height);
  x = mouseX;
  y = mouseY; 
  
  //if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
    if (mousePressed){
      noStroke();
      fill(#FF9900);
      ellipse(x, y, size, size);
    }
  //}
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size ++ ;
      //size ++  size += 1 size = size+1
    }
    if(keyCode == DOWN){
      size -- ;
    }
  }
}
      
  
//void mousePressed(){
//  ellipse(x, y, size, size);
//}
