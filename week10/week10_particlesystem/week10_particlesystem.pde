
ArrayList<Particle> system;
float grow;

void setup(){
  size (1000, 1000);
  system = new ArrayList<Particle>();
}

void draw(){
  background(255);
  //if(mousePressed){
  //  system.add(new Particle());
  //}
  for (int i = 0; i < system.size(); i ++){
    Particle p = system.get(i);
    grow = p.pos.y/25;
    
    //grow = map(p.pos.y, 0, height-50, 0, 40);
    
    //if (p.pos.y >= height){
    //  grow = 40;
    //}
    
    p.place(grow);
    p.move();
    p.gravity();
    if (p.pos.y >= (height-p.dia/2)){
      p.bounceY();
      p.pos.y = height-p.dia/2;
    }
    if (p.pos.x >= (width-p.dia/2)){
     p.bounceX();
     p.pos.x = (width-p.dia/2);
    }
    if (p.pos.x <= p.dia/2){
     p.bounceX();
     p.pos.x = p.dia/2;
    }
  }
}

void mousePressed(){
  system.add(new Particle());
}
