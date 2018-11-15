
ArrayList<eye> system;
PVector vel;

void setup(){
  size(1000,1000);
  system = new ArrayList<eye>();
}

void draw(){
  background(0);
  for (int i = 0; i < system.size(); i ++){
    eye p = system.get(i);
    p.move();
  }
}

void mousePressed(){
  system.add(new eye());
}
