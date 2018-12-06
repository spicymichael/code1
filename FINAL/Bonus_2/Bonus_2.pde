PImage img, bw;
float r, threshold;
int pix = 20;
int rows = 50;
float speed[][] = new float[rows][rows];
boolean fall[][] = new boolean[rows][rows];

void setup(){
  
  size(1000, 1000);
  
  r = random(0,1);
  
  if(r < .25){
    img = loadImage("WAVE.jpg");
    threshold = 127;
  }else if(r >= .25 && r < .5){
    img = loadImage("PINK.jpg");
    threshold = 235;
  }else if(r >= .5 && r < .75){
    img = loadImage("MOSS.jpg");
    threshold = 50;
  }else{
    img = loadImage("FIRE.jpg");
    threshold = 210;
  }
  
  img.resize(1000, 1000);
  bw = createImage(1000, 1000, RGB);
  
  noStroke();
  
}


void draw(){
  
  background(0);
  img.loadPixels();
  bw.loadPixels();
  
  image(img, 0, 0);
  
  for(int x = 0; x < img.width; x++){
    for(int y = 0; y < img.height; y++){
      
      int loc = x + y*width;
      
      if(brightness(img.pixels[loc]) > threshold){
        bw.pixels[loc]  = color(255);
      }else{
        bw.pixels[loc]  = color(0);
      }
    }
  }
  
  
  bw.updatePixels();   
  image(bw, 0 ,0);
  

  for(int i = rows-1; i >= 0; i--){
    for(int j = rows-1; j >= 0; j--){
      
      int x = i*pix + pix/2;
      int y = j*pix + pix/2;
      
      int loc = x + y*width;
      color c = img.pixels[loc];
      
      if(fall[i][j] == true){
        speed[i][j] += 10;
        speed[i][j] *= 1.1;
      }else{
        speed[i][j] = 0;
      }
      
      fill(color(c));
      
      pushMatrix();
        translate(x, y);
        noStroke();
        fill(c, 200);
        rectMode(CENTER);
        rect(0, 0+speed[i][j], pix, pix);
      popMatrix();
      
      
    }
  } 
}

void mouseMoved(){
  for(int i = 0; i<rows; i++){
    for(int j = 0; j<rows; j++){
      if(mouseX>pix*i & mouseX<=(i+1)*pix &
      mouseY>pix*j & mouseY<=(j+1)*pix){
        fall[i][j] = true;
      }
    }
  }
}
