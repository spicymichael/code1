int x, y, sum;
String sum1, sum2;
int n1, n2;
void setup (){
  size(1000, 1000);
  n1 = 1;
  n2 = 2;
}

void draw(){
  //println(sum(mouseX, mouseY));
  sum1 = mouseX + " + " + mouseY + " = " + sum(mouseX, mouseY);
  sum2 = n1 + " + " + n2 + " = " + sum(n1, n2);
  background(#FF99FF);
  textAlign (CENTER, CENTER);
  textSize(96);
  fill(#FF0033);
  text(sum1, width/2, height*.33);
  text(sum2, width/2, height*.67);
}

void mousePressed(){
  n1 = int(random(0,1000));
  n2 = int(random(0,1000));
}

int sum (int x, int y){
  return x + y;
}
