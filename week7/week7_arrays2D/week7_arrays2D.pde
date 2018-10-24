
int n = 10; //number
int s; // size
color grid[][] = new color[n][n];
boolean fall[][] = new boolean[n][n];
int speed[][] = new int[n][n];

void setup(){
  size(1000, 1000);
  s = width/n;
  
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
      grid[i][j] = color (i*20, 50, random(75,255));
      speed[i][j] = 0;
    }
  }    
}

void draw(){
  background(0);
  for(int i = n-1; i>=0; i--){
    for(int j = n-1; j>=0; j--){
      if(fall[i][j] == true){
        speed[i][j] += 1;
        speed[i][j] *= 1.1;
      }
      fill(grid[i][j]);
      rect(i*s, j*s+speed[i][j], s, s);
    }
  }
}

void mousePressed(){
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
      if(mouseX>s*i & mouseX<=(i+1)*s &
      mouseY>s*j & mouseY<=(j+1)*s){
        grid[i][j] = color (i*20, 0, random(50,200));
      }
    }
  }       
}

void keyPressed(){
  for(int i = 0; i<n; i++){
    for(int j = 0; j<n; j++){
      if(key == 'x' & mouseX>s*i & mouseX<=(i+1)*s &
      mouseY>s*j & mouseY<=(j+1)*s){
        fall[i][j] = true;
      }
    }
  }
}
