
int array1[] = new int[100];

void setup(){
  size(2500, 500);
  
  for (int i = 0; i < 100; i++){
    array1[i] = i;
    textSize(18);
    text(i, 2+i*25, height/2);
  }
  
}
