plant garden[] = new plant[20];

void setup(){
  size (1000, 1000);
  background(175,230,255);
  for(int i = 0; i <garden.length; i++){
  garden[i]= new plant (50*i +25);
  garden[i].display(random(100, 600), int(random(3,20)),
  color(random(100,255),random(0,100),random(100,200)));
  }
}

void draw(){
  //for(int i = 0; i <garden.length; i++){
  //garden[i].display(random(100, 600), int(random(3,10)),
  //color(255,20,147));
  //}
  fill(150, 255, 200);
  rect(0, 950, 1000, 300);
}
