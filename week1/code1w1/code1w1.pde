float bgColor;
int treexy;
float treeSize;
void setup (){
  //width,height
  size(1000,1000);
  bgColor = random(0,255);
  background(bgColor);
  treexy = int(width*.5);
  treeSize = width*.25;
  //prints to console
  println(bgColor);
}

void draw (){
  //x,y(inverse),width,height
  //fill affects what it is above
  //fill(255,150,0);
  //ellipse(250,250,50,50);
  //ellipse(750,250,50,50);
  //fill(255,0,0);
  //rect(250,750,500,100);
  rectMode(CENTER);
  fill(150,100,0);
  rect(treexy,treexy+100,treeSize*.1,treeSize);
  fill(100,255,100);
  ellipse(treexy,treexy,treeSize,treeSize);
}
