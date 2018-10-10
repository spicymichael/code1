
int arrayI[] = {1,2,3,4,5};
String arrayS[] = {"Goodbye", "America,", "Hello", "New York!"};
int arrayN[] = new int[4];

void setup(){
 size(1000,1000); 

 println(arrayI[1]);
 
 for (int i = 0; i<4; i++){
   textAlign(CENTER,CENTER);
   textSize(100);
   text(arrayS[i], width/2, 200+i*200);
 }
 
 arrayN[0] = 3;
 arrayN[3] = 5;
 for (int i = 0; i<4; i++){
   println(arrayN[i]);
 }
 
}
