PImage img;
int pix = 4;
int cols, rows;

void setup(){
  size(564, 1003, P3D);
  img = loadImage("beta.jpg");
  
  cols = width/pix;
  rows = height/pix;
}

void draw(){
  //image(img, 0, 0);
  background(0);
  loadPixels();
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      int x = i*pix + pix/2;
      int y = j*pix + pix/2;
      
      int loc = x + y*width;
      color c = img.pixels[loc];
      
      float z = 5 *(mouseY/float(height)) 
      * saturation(img.pixels[loc]);
      float r = .05 * (mouseX/float(width)) 
      * brightness(img.pixels[loc]); 
      
      fill(color(c));
      
      pushMatrix();
        translate(x, y, z);
        rotate(r);
        noStroke();
        fill(c);
        rectMode(CENTER);
        rect(0, 0, pix, pix);
      popMatrix();
    }
  }
  
}
