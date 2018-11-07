//we are going to make a grid of gradient squares
//which display random sentences on top

int n = 10;
int i,j;
int x[] = new int [n];
int y[] = new int [n];

String t;
float r;
PFont f;

String words[] = {"I am alive, and drunk on sunlight.",
"The wheel is come full circle: \n I am here.", 
"Nothing is so painful \n to the human mind as a \n great and sudden change.",
"Euthanasia is an \n excellent and wonderful word! \n I am grateful to whoever invented it.",
"The world seemed to shimmer \n a little at the edges.",
"Things without all remedy \n should be without regard; \n what's done is done",
"Figs do not grow on thistles, \n grapes do not grow on thorns.",
"Dreaming, surely I dream now.",
"The world is all a pointless accident. \n I exist, nothing else.",
};

void setup(){
  size(1000, 1000);
  noStroke();
    r = random(0,.9);
    if(r < .1){
      t = words[0];
    }else if (r >= .1 & r < .2){
      t = words[1];
    }else if (r >= .2 & r < .3){
      t = words[2];
    }else if (r >= .3 & r < .4){
      t = words[3];
    }else if (r >= .4 & r < .5){
      t = words[4];
    }else if (r >= .5 & r < .6){
      t = words[5];
    }else if (r >= .6 & r < .7){
      t = words[6];
    }else if (r >= .7 & r < .8){
      t = words[7];
    }else if (r >= .8 & r <= .9){
      t = words[8];
    } //possibly a better way to do this
    f = createFont("Times New Roman", 50);
}

void draw(){
  
  float c = map(mouseX, 0, 1000, 50, 200);
  float d = map(mouseY, 0, 1000, 0, 255);
  
  for ( x[i] = 0; x[i] <= width; x[i] += width/n) {  
    for ( y[j] = 0; y[j] <= height; y[j] += height/n) {
        color a = color (d,255,212);
        color b = color (75,0,c);
      fill(lerpColor(a,b,.001*(x[i]+y[j])/2));
      //shouldn't i be able to use .1(i+j)/2
      rect(x[i], y[j], width/n, height/n);
    }
  }
  fill(255,150);
  textAlign(CENTER,CENTER);
  textSize(50);
  textFont(f);
  text(t, 500, 495);
}

void mousePressed(){
   r = random(0,.9);
    if(r < .1){
      t = words[0];
    }else if (r >= .1 & r < .2){
      t = words[1];
    }else if (r >= .2 & r < .3){
      t = words[2];
    }else if (r >= .3 & r < .4){
      t = words[3];
    }else if (r >= .4 & r < .5){
      t = words[4];
    }else if (r >= .5 & r < .6){
      t = words[5];
    }else if (r >= .6 & r < .7){
      t = words[6];
    }else if (r >= .7 & r < .8){
      t = words[7];
    }else if (r >= .8 & r <= .9){
      t = words[8];
    } //possibly a better way to do this

fill(255,150);
  textAlign(CENTER,CENTER);
  textSize(50);
  textFont(f);
  text(t, 500, 495);
  
}
