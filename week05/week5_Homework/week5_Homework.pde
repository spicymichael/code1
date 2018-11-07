
String maze;
float line;

void setup(){
  size(1000, 1000);
  background(0);
  noLoop(); //for maze
}

void draw(){
      background(0);
  for (int y = 100; y <= height-100; y += 50){
    for (int x = 100; x <= width-100; x += 50){
          line = random(0,1);
          if(line > .5){
            maze = "|";
          }else{
            maze = "--";
          }
      textAlign(CENTER,CENTER);
      textSize(50);
      text(maze, x, y);
      //fill(map(mouseX, 0, width, 0, 255),
      //map(mouseY, 0, width, 0, 255), random(255));
      //ellipse(x,y,x/10,x/10);
    }
  }
}
