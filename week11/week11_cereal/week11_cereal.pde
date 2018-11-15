Box a;
Carton b;
boolean ab;
ArrayList<Box> system;

void setup(){
 size(1500, 1000);
 a = new Box(1100, 600);
 b = new Carton(300, 650);
 ab = true;
 system = new ArrayList<Box>();
}

void draw(){
  background(255);
  arc(700, 750, 200, 200, 0, PI);
  ellipse(700, 750, 200, 50);
  if(mousePressed && ab == true){
    a.pour();
    
    system.add(new Box(1100, 600));
    for (int i = 0; i < system.size(); i ++){
      Box p = system.get(i);
      p.cereal();
    }
      
    b.place();
  }else if(mousePressed && ab == false){
    b.pour();
    a.place();
  }else{
    a.place();
    b.place();
  }
}

void keyPressed(){
  if(key == 'c'){
    ab = true;
  }else if(key == 'm'){
    ab = false;
  }
}
