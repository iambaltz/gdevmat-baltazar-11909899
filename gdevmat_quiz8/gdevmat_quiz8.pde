Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup(){
  
 background(0);
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 createWalkers();
  
}

void createWalkers(){
  
  walkers = new Walker[10];
  
  for(int i = 0; i < walkers.length; i++){
        
   walkers[i] = new Walker();
   walkers[i].position = new PVector(-500, 200);
   
    walkers[i].r = random(1, 255);
    walkers[i].g = random(1, 255);
    walkers[i].b = random(1, 255);
    walkers[i].a = random(150, 255);
    
    walkers[i].mass = 10 - i;
    walkers[i].scale = walkers[i].mass * 15;
    
  }
  
}

void draw(){
  
  background(80);
  noStroke();
  
  for(Walker w : walkers){
   
    w.render();
    w.update();
    w.applyForce(wind);
    w.applyForce(gravity);
    w.checkEdges();
     
 }
 
}
