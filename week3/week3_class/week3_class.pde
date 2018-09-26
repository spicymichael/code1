//ellipse w/ color variable
//background color variable
//boolean in draw function
//boolean based on dist (within circle)
//mousepressed and dist<circleradius
//println boolean on screen

color dotC, bgC;
float dotX, dotY;
float dotD;
int mouseD;
boolean dotClicked;

void setup(){
  size (1000,1000);
  dotC = color(255,229,204);
  bgC = color(204,255,255);
  background(bgC);
  
  dotX = width/2;
  dotY = height/2;
  dotD = width/5;
}

void draw(){
  mouseD = int(dist(mouseX, mouseY, dotX, dotY));
  
  if (mouseD<dotD/2){
    dotC = color(255,255,0);
  }else{
    dotC = color(255,229,204);
  }
  
  noStroke();
  fill (dotC);
  ellipse(dotX, dotY, dotD, dotD);
 
}

void mousePressed(){
  if (mouseD<dotD/2){
    dotClicked = !dotClicked;
    //variable - switches from true/false
  } 
  if (dotClicked){
    bgC = color(255,51,153);
  }else{
    bgC = color(204,255,255);
  }
  background(bgC);
  println(dotClicked);
}
