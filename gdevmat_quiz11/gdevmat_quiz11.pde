Walker[] walkers = new Walker[10];

void setup(){
  
 background(0);
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
 createWalkers();
 
}

void createWalkers(){
  
  walkers = new Walker[10];
  
  for(int i = 0; i < walkers.length; i++){
   
   
   walkers[i] = new Walker();
   
   float gaussian = randomGaussian();
   float standardDeviation = 150;
   
   float mean = 0;
   
   walkers[i].position = new PVector(standardDeviation * gaussian + mean, random(-360, 360));
   
    walkers[i].r = random(1, 255);
    walkers[i].g = random(1, 255);
    walkers[i].b = random(1, 255);
    walkers[i].a = random(150, 255);
    
    walkers[i].mass = random(1, 15);;
    walkers[i].scale = walkers[i].mass * 15;
    
  }
  
  }

void draw(){
  
  background(80);
  
  for(Walker i : walkers){
    
    i.render();
    i.update();
      
    for(Walker j : walkers){
       
      if(i != j){
          
          i.applyForce(j.calculateAttraction(i));
         
        }
     
    }
    
  }
}
