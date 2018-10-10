//void setup(){
//  // while loop
//  //will execute while the condition is true 
//  //these can crash you processing program if the loop does not 
//  //have an exit condition 
  
//  int index = 10; 
//  while(index>0){
//    println(index); 
//    index--; 
//  }
  
//  //components of a for loop 
//    //1. index (counter) to keep track of number of loops 
//    //2. starting point for the index
//    //3. increments for the index 
//    //4. end condition/ exit point 
   
//   for (int i = 0; i < 10; i++) {
//    println("For Loop: i is " + i);
//  }    
//}

//void setup(){
//  size(600, 600); 
//  //noStroke(); 
//}

//void draw(){
//  background(0); 
//  for (int i = 0; i <= 60; i++) {
      
//      //map a fill color to the loop index
//      fill(map(i,0,60,0,255));
      
//      //draw an ellipse with a position based on the loop index
//      ellipse(i * 10 + 1, 400 + i, 100, 100);
      
//      //try this one to have mouse position also influencing ellipse position
//      ellipse(i * mouseX/10 + 1, 100 + i, 50, 50);
//    }
//}

//void setup(){
//    size(480, 120);
//    background(0);
//}

//void draw(){
//    smooth();
//    fill(255);
//    stroke(102);
//    for (int y = 20; y <= height-20; y += 10) {
//      for (int x = 20; x <= width-20; x += 10) {
//        ellipse(x, y, 4, 4);
//        // Draw a line to the center of the display
//        line(x, y, 240, 60);
//      }
//    }
//}

//void setup() {
//  size(700,700);
//  noStroke();
//}

//void draw() {
//  background(255);
  
//  //loop 36 times in x and y
//  for (int i = 0; i <= width; i += width/35) {
//    for (int j = 0; j <= height; j += height/35) {
      
//      //get the distance from the index to the mouse
//      float d = dist(mouseX, mouseY, i, j);
      
//      //fill a color based on the distance
//      fill(map(d, 0, 500, 255, 0));
      
//      //create a variable for size and map it to a value based on distance
//      float s = map(d, 0, 1000, 10, 50);
      
//      //draw an ellipse at the index positions with size s
//      ellipse(i, j, s, s);
//    }
//  }
//}

void setup(){
  size(600, 600); 
  background(0); 
}

void draw(){
  textSize(12); 
  fill(255);  
  for(int i = 0; i<100; i++){
    for(int j = 0; j<100; j++){
      if(j % 2 == 0){
        text("/", i*10, j*10); 
      }else if(j % 3== 0){
        text(" ", i*10, j*10); 
      }else{
        text("-", i*10, j*10);
      }
    }
  }
}
