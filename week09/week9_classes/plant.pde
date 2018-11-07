class plant{
  
//data, variables, parameters
  float pH; //plant height
  int nL; //leaf number
  color F; 
  float x;
  
//constructor - unchanging values
  plant(float _x){
    x = _x;
  }
    //methods (functions) - values that may change
  void display(float _pH, int _nL, color _F){
    
    pH = _pH;
    nL = _nL;
   
    fill(_F);
    noStroke();
    
    rect(x, pH, 10, 1000);
    for (int i= 0; i<nL; i++){
      ellipse(x+5, pH + 30*i, 50 + i*5, 20);
    }
    //if these are all static they could be declared in the constructor
  }
 
  
//instances (specific objects)
  
}
