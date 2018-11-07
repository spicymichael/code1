//int, boolean, string, void functions
//map color to distance
//use lerp
//custom drawing function

String romeo;
int x, y;
float g1, g2;
boolean green;


void setup(){
  size (1000,  1000);
  //one way to make a custom shape is
  //PShape above, and createShape in setup
}

//String romeo(){
//  if (mousePressed){
//    romeo = "Shakespeare";
//  }else{
//    romeo = "Romeo & Juliet";
//  }
//   return romeo;
//}

void bottle(int x, int y){
  beginShape();
  vertex(175+x, 950+y);
  vertex(100+x, 925+y);
  vertex(75+x, 850+y);
  vertex(100+x, 775+y);
  vertex(80+x, 725+y);
  vertex(100+x, 650+y);
  vertex(140+x, 600+y);
  vertex(130+x, 575+y);
  vertex(130+x, 550+y);
  vertex(160+x, 550+y);
  vertex(160+x, 575+y);
  vertex(215+x, 650+y);
  vertex(225+x, 700+y);
  vertex(200+x, 750+y);
  vertex(250+x, 800+y);
  vertex(275+x, 875+y);
  vertex(250+x, 925+y);
  vertex(175+x, 950+y);
  endShape();
}

//I don't understand how to make a dynamic function
//because if it is not in the draw function it doesn't
//continuosly check
//boolean green(){
//  if (mouseY < 500){
//    return true;
//  }else{
//    return false;
//  }
//}

void draw(){
  //COLOR
      if (mousePressed){
        g1 = 255; g2 = 0;
      }else{
        g1 = 0; g2 = 255;
      }
      //if (green == true){
      //  g1 = 255; g2 = 0;
      //}else{
      //  g1 = 0; g2 = 255;
      //}
    float red = map(mouseX, 0, 1000, 0, 255);
    float blue = map(mouseY, 0, 1000, 0, 255);
    color a = color(red, g1, 0);
    color f = color(0, g2, blue);
    color b = lerpColor(a, f, .2);
    color c = lerpColor(a, f, .4);
    color d = lerpColor(a, f, .6);
    color e = lerpColor(a, f, .8);
  //SHAPE
    fill(a);
    bottle(0,-500);
    fill(b);
    bottle(330,-500);
    fill(c);
    bottle(660,-500);
    fill(d);
    bottle(0,0);
    fill(e);
    bottle(330,0);
    fill(f);
    bottle(660,0);
  //text(romeo, width/2, height/2);
}
