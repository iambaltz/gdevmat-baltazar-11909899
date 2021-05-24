class Walker{
  float x;
  float y;
  
  void render(){
    
    circle(x, y, 30);
  }
  
  void randomWalk(){
    
   int rng = int(random(8)); // 0, 1, 2 , 3, 4, 5, 6, 7
   
   if(rng == 0){
     y+=10;
   }
   
   else if(rng == 1){
     y-=10;
   }
   
   else if(rng == 2){
    x+=10; 
   }
   
   else if(rng == 3){
    x-=10; 
   }
   
   else if(rng == 4){
    y+=10;
    x+=10;
   }
   
   else if(rng == 5){
    y+=10;
    x-=10;
   }
   
   else if(rng == 6){
    y-=10;
    x+=10;
   }
   
   else if(rng == 7){
    y-=10;
    x-=10;
   }
   
  }
  
  void randomWalkBiased(){
    int rng = int(random(5)); //0, 1, 2, 3, 4
    color randomColor = color(int(random(266)),int(random(266)),int(random(266)), int(random(50, 100)));
    
    fill(randomColor);
    noStroke();
    
    if(rng == 0){
      y+=2;
    }
    
    else if(rng == 1){
      y+=2;
    }
    
    else if(rng == 2){
      y-=2;
    }
    
    else if(rng == 3){
      x+=2;
    }
    
    else if(rng == 4){
      x-=2;
    }
    
  }
  
}
