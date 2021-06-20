class Walker{
  
   PVector position = new PVector();
   
  
  void render(){
    
    circle(position.x, position.y, 30);
  }
  
  void randomWalk(){
    
   int rng = int(random(8)); // 0, 1, 2 , 3, 4, 5, 6, 7
   
   if(rng == 0){
     position.y+=10;
   }
   
   else if(rng == 1){
     position.y-=10;
   }
   
   else if(rng == 2){
    position.x+=10; 
   }
   
   else if(rng == 3){
    position.x-=10; 
   }
   
   else if(rng == 4){
    position.y+=10;
    position.x+=10;
   }
   
   else if(rng == 5){
    position.y+=10;
    position.x-=10;
   }
   
   else if(rng == 6){
    position.y-=10;
    position.x+=10;
   }
   
   else if(rng == 7){
    position.y-=10;
    position.x-=10;
   }
   
  }
  
  void randomWalkBiased(){
    float rng = random(0,1); //0, 1, 2, 3, 4
    color randomColor = color(int(random(266)),int(random(266)),int(random(266)), int(random(50, 100)));
    
    fill(randomColor);
    noStroke();
    
    if(rng >= 0.6){
      position.y+=2;
    }
   
    else if(rng >= 0.4){
      position.y-=2;
    }
    
    else if(rng >= 0.2){
      position.x+=2;
    }
    
    else if(rng >= 0){
      position.x-=2;
    }
    
    println(rng);
    
  }
  
}
