//collision between balls
//collision in bowl

Box a;
Carton b;
boolean ab;
PVector cen;
ArrayList<PVector> posC;
ArrayList<Cereal> sysC;
ArrayList<PVector> posM;
ArrayList<Milk> sysM;

void setup(){
 size(1500, 1000);
 a = new Box(1100, 600);
 b = new Carton(300, 650);
 ab = true;
 cen = new PVector(700, 750);
 sysC = new ArrayList<Cereal>();
 posC = new ArrayList<PVector>();
 sysM = new ArrayList<Milk>();
 posM = new ArrayList<PVector>();
}

void draw(){
  background(255);
  arc(cen.x, cen.y, 200, 200, 0, PI);
  ellipse(cen.x, cen.y, 200, 50);
  
  if(mousePressed && ab == true){
    b.place();
    posC.add(new PVector(mouseX, mouseY));
    a.pour();
    sysC.add(new Cereal());
  }
  
  else if(mousePressed && ab == false){
    a.place();
    posM.add(new PVector(mouseX, mouseY));
    b.pour();
    sysM.add(new Milk());
  }
  
  else{
    a.place();
    b.place();
  }
  
  
  for (int i = 0; i < sysC.size(); i ++){
    Cereal p = sysC.get(i);
    PVector q = posC.get(i);
    p.pour(q);
    if(p.pos.y >= width+10){
      sysC.remove(p);
      posC.remove(q);
    }
  } 
  
  for (int i = 0; i < sysM.size(); i ++){
    Milk p = sysM.get(i);
    PVector q = posM.get(i);
    p.pour(q);
    if(p.pos.y >= width+10){
      sysM.remove(p);
      posM.remove(q);
    }
  } 
  
  
}

void keyPressed(){
  if(key == 'c'){
    ab = true;
  }else if(key == 'm'){
    ab = false;
  }
}
