//faces in array, eyes point toward mouse, tongues out when ?

face FS[][] = new face[6][6];
color C[][] = new color[6][6];
color BC = #191970;
face me;

void setup(){
  size(1500,1500);
  for(int j = 0; j<6; j++){
    for(int i = 1; i<6; i+= 2){
      C[i][j] = color(random(150,255),
      random(0,50),random(150,255));
    }
    for(int i = 0; i<5; i+= 2){
       C[i][j] = color(random(150,255),
       random(200,255),random(50,100));
    }
  }
}

void draw(){
  background(BC);
  for(int i = 0; i<6; i++){
    for(int j = 1; j<6; j+= 2){
      FS[i][j] = new face(i*300+150,j*300,C[i][j],BC);
    }
    for(int j = 0; j<5; j+= 2){
      FS[i][j] = new face(i*300,j*300,C[i][j],BC);
    }
  }
  for(int i = 0; i<6; i++){
    for(int j = 0; j<6; j++){
      FS[i][j].look();
      if(mousePressed){
        FS[i][j].tongue();
      }
    }
  }      
  //me = new face(250,250,220,50);
  //me.look();
  //if(mousePressed){
  //me.tongue();
  //}  
}
