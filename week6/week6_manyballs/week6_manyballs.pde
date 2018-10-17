
int ammt = 99;
int xP[] = new int [ammt];
int yP[] = new int [ammt];

int xS[] = new int [ammt];
int yS[] = new int [ammt];

int d[] = new int [ammt];

color rgb[] = new color [ammt];
float alpha[] = new float [ammt];

float line;
float size = 100;

void setup(){
 size (1000, 1000);
 for (int i = 0; i < ammt; i++){
     d[i] = int (random(20,50));
    xP[i] = int (random(0+d[i]/2,width-d[i]/2));
    yP[i] = int (random(0+d[i]/2,height-d[i]/2));
    xS[i] = int (random(3,10));
    yS[i] = int (random(3,10));
    rgb[i] = color (random(0,255), random(100,150), random(200,255));
    alpha[i] = 255;
 }
 for (int i = 0; i < ammt/2; i++){
   xS[i] = -xS[i];
   yS[i] = -yS[i];
 }
}

void draw(){
  background (255, 250, 150);
  for (int i = 0; i < ammt; i++){
    xP[i] = xP[i] + xS[i];
    yP[i] = yP[i] + yS[i];
    line = dist(mouseX, mouseY, xP[i], yP[i]);
    
    if (line-(size/2) < d[i]/2){
      alpha[i] = 0;
    }
    
    noStroke();
    fill(rgb[i], alpha[i]);
    ellipse(xP[i], yP[i], d[i],  d[i]); 
    
    if (xP[i] < d[i]/2 || xP[i] > width-d[i]/2){
      xS[i] = -xS[i];
    }
    if (yP[i] < d[i]/2 || yP[i] > height-d[i]/2){
      yS[i] = -yS[i];
    }
  } 
  fill(255);
  ellipse(mouseX, mouseY, size, size);
}

void mousePressed(){
  for (int i = 0; i < ammt; i++){
    alpha[i] = 255;
    }
}
