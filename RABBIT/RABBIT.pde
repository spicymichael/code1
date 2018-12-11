//animated rabbit hopping

//3 rabbits to choose from
  //cyan, magenta, yellow
  //type
  //click to choose

//fur to pet
  //gradient grid background
  //tangent lines as fur to pet
  //transparent circle "hand"
  //bug coming from far away?
  
//bug
  //moving diagonally
  //click to smoosh & finish

//rect array
int nn = 10;
int s;
color a, b, c;
  
//gif
int n = 12;
int f = 0;
PImage[] gif = new PImage[n];

//modes
boolean enter = false;
boolean start = false;
int mode;

PImage mag, cyan, yellow;
int m = 2;
PFont eaves;

Fur pet[][] = new Fur[nn+1][nn+1];
ArrayList<Bug> fleas;
  
void setup(){
  size(800, 800);
  frameRate(12);
  
  eaves = createFont("mrseavesot-roman", 72);
  textFont(eaves);
  textAlign(CENTER);
  
  s = width/nn;
  fleas = new ArrayList<Bug>();
  
  for(int i = 0; i < n; i++){
    String img = "rabbit" + nf(i+22, 2) + ".png";
    gif[i] = loadImage(img);
  }
  
  mag = loadImage("mag.png");
  cyan = loadImage("cyan.png");
  yellow = loadImage("yellow.png");
  
  
}

void draw(){
  background(255);
  
  if(mode == 0){
    a = color(0, 255, 255);
    b = color(0, 255, 0);
  }else if(mode == 1){
    a = color(255, 0, 255);
    b = color(0, 0, 255);
  }else if(mode == 2){
    a = color(255, 255, 0);
    b = color(255, 0, 0);
  }
  
  if(enter == true){
    if(start == true){
      for (int i = 0; i < nn; i ++){  
        for (int j = 0; j < nn; j ++){
          c = lerpColor(a,b,.1*(i+j)/2);
          fill(c, 100);
          noStroke();
          rect(i*s, j*s, width/nn, height/nn); 
        }
      }for (int i = 0; i < nn+1; i ++){  
        for (int j = 0; j < nn+1; j ++){
          c = lerpColor(a,b,.1*(i+j)/2);
          pet[i][j] = new Fur(i*s, j*s, (i+j/2), c);
          if(mousePressed){
            noStroke();
            fill(255, 2);
            ellipse(mouseX, mouseY, 200, 200);
            pet[i][j].move();
          }else{
            pet[i][j].still();
            if(fleas.size() == 0){
              textSize(72);
              fill(255, 10);
              text("click to pet", width/2,  height/2);
              textSize(18);
              text("press x for a surprise", width/2,  height-150);
              text("press r to restart", width/2,  height-100);
            }else{
              textSize(72);
              text("Oh no! Fleas!", width/2, height/2);
              textSize(24);
              text("click to kill them", width/2,  height-150);
            }
          }
        }
      }
      
      for (int i = 0; i < fleas.size(); i ++){
        Bug p = fleas.get(i);
        p.place();
        p.move();
        float d = dist(mouseX, mouseY, p.x, p.y);
        
        if(mousePressed && d < 50 || p.x > 825 ||
        p.x < -25 || p.y > 825 || p.y < -25){
          fleas.remove(p);
        }
      }
    }else{
      image(cyan, 25, 300);
      image(mag, 300, 450);
      image(yellow, 525, 300);
      
      textSize(72);
      fill(255, 0, 255);
      text("choose a rabbit", width/2,  height/4); 
    }
  }else{  
    f = (f+1) % n;
    int o = 0;
      for (int i = 0; i < n; i++){ 
        image(gif[(f+o) % n], 40, 100);
        o += 1;
      }  
    textSize(72);
    fill(255, 0, 255);
    text("RABBIT", width/2,  height/3); 
    textSize(24);
    text("click to begin", width/2, height/3 + 36);
  }
}

void mouseClicked(){
  if(start == true){
    
  }else if(enter == false){
    enter = true;
    
  }else{
    if(mouseX > 25 && mouseX < 275
    && mouseY > 300 && mouseY < 550){
      start = true;
      mode = 0;
    }else if(mouseX > 300 && mouseX < 550
    && mouseY > 450 && mouseY < 700){
      start = true;
      mode = 1; 
    }else if(mouseX > 525 && mouseX < 775
    && mouseY > 300 && mouseY < 550){
      start = true;
      mode = 2;
    }
  }
}

void keyPressed(){
  if(key == 'x'){
    for(int i = 0; i < 5; i++){
    fleas.add(new Bug(width/2, height/2));
    }
  }
  if(key == 'r'){
    enter = false;
    start = false;
  }
}
