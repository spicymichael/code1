//create a button that generates the product of two random integers
//the multiplication sentence should be displayed somewhere on the screen 

//the sketch is started for you, but isn't quite right 


int x, y; 
int size; 
float dist; 
boolean buttonClicked; 


float sum; //changed variable for clarity
int num1, num2; 

void setup(){
  size(600, 600); 
  x = width/2; 
  y = height/2; 
  size = 50; 
  background(0); 
}

void draw(){
  
    background(0);  //repeat background in draw function

    sum = multiply(num1, num2); //changed variable for clarity

    textSize(32); 
    
    String result = num1 + " x " + num2 + " = " + int(sum); //specified integer to lose decimal points
    
    textAlign (CENTER);  //align to center
    text(result, width/2, height*.8);  //place in center
    
    if(buttonClicked){    //use mousePressed so color changes back
       fill(0, 255, 0); 
    }else{
       fill(255, 0, 0); 
    }
    
    //num1 = int(random(0,100)); 
    //num2 = int(random(0,100));    //removed constant randomization
   
    ellipse(x, y, size, size);  
}

void mousePressed(){
  dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2){
    buttonClicked = true; 
    num1 = int(random(0,100)); //randomizes when mouse is pressed
    num2 = int(random(0,100));
  }
}

float multiply (int a, int b){
    float product; 
    product = a * b; 
    return product;     //included a return
}
