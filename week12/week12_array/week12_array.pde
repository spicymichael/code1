
Orb[][] orb = new Orb[12][12];
float b, c;
boolean xx;

void setup(){
  size(1000, 1000);
  colorMode(HSB);
  
  for(int i = 0; i < 12; i++){
    for(int j = 0; j < 12; j++){
      orb[i][j]= new Orb(i*100-50, j*100-50);
    }
  }
}

void draw(){
  frameRate(50);
  if(frameCount % 50 == 0){
    xx = !xx;
  }
  
  if(xx){
    b = 0;
    c = 255;
  }else{
    b = 255;
    c = 0;
  }
  
  background(b);
  fill(c);
  

  for(int i = 0; i < 12; i+= 2){
    for(int j = 0; j < 12; j+= 2){
      strokeWeight(5);
      orb[i][j].place();
      
      if(orb[i][j].pos.x >= 1175){
        orb[i][j].pos.x -= 1200;
      }else if(orb[i][j].pos.y >= 1175){
        orb[i][j].pos.y -= 1200;
      }
      if(orb[i][j].pos.x <= -75){
        orb[i][j].pos.x += 1200;
      }else if(orb[i][j].pos.y <= -75){
        orb[i][j].pos.y += 1200;
      }
      
      if(xx){
        orb[i][j].moveA();
      }else{
        orb[i][j].moveB();
      }
    }
      
      for(int j = 1; j < 12; j+= 2){
      strokeWeight(5);
      orb[i][j].place();
      
      if(orb[i][j].pos.x >= 1175){
        orb[i][j].pos.x -= 1200;
      }else if(orb[i][j].pos.y >= 1175){
        orb[i][j].pos.y -= 1200;
      }
      if(orb[i][j].pos.x <= -75){
        orb[i][j].pos.x += 1200;
      }else if(orb[i][j].pos.y <= -75){
        orb[i][j].pos.y += 1200;
      }
      
      if(xx){
        orb[i][j].moveB();
      }else{
        orb[i][j].moveA();
      }
    }
      
    
  }
  
  for(int i = 1; i < 12; i+= 2){
    for(int j = 0; j < 12; j+= 2){
      strokeWeight(5);
      orb[i][j].place();
      
      if(orb[i][j].pos.x >= 1175){
        orb[i][j].pos.x -= 1200;
      }else if(orb[i][j].pos.y >= 1175){
        orb[i][j].pos.y -= 1200;
      }
      if(orb[i][j].pos.x <= -75){
        orb[i][j].pos.x += 1200;
      }else if(orb[i][j].pos.y <= -75){
        orb[i][j].pos.y += 1200;
      }
      
      if(xx){
        orb[i][j].moveD();
      }else{
        orb[i][j].moveC();
      }
    }
      
      for(int j = 1; j < 12; j+= 2){
      strokeWeight(5);
      orb[i][j].place();
      
      if(orb[i][j].pos.x >= 1175){
        orb[i][j].pos.x -= 1200;
      }else if(orb[i][j].pos.y >= 1175){
        orb[i][j].pos.y -= 1200;
      }
      if(orb[i][j].pos.x <= -75){
        orb[i][j].pos.x += 1200;
      }else if(orb[i][j].pos.y <= -75){
        orb[i][j].pos.y += 1200;
      }
      
      if(xx){
        orb[i][j].moveC();
      }else{
        orb[i][j].moveD();
      }
    }
      
    
  }
  
  
}
