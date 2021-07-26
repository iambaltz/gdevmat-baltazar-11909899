Walker[] walkers = new Walker[100];

void setup(){
 
 background(0);
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 createWalkers();
}

PVector mousePos(){
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight/2);
  
  return new PVector(x, y);
  
}

PVector mouseDirection = new PVector();

void createWalkers(){
  
  walkers = new Walker[100];
  for(int i = 0; i < walkers.length; i++){
    
   walkers[i] = new Walker(); 
   
   float gaussian = randomGaussian();
   float standardDeviation = 150;
   
   float mean = 0;
   walkers[i].position.x = standardDeviation * gaussian + mean;
   walkers[i].position.y = random(-360, 360);
   walkers[i].scale = random(1, 15);
  }
  
}

void draw(){
  
  background(80);
  PVector mouse = mousePos();
  
  for(Walker w : walkers){
  
  w.render();
  
  mouseDirection = PVector.sub(mouse, w.position);
  mouseDirection.normalize();
  w.acceleration = mouseDirection;
  w.acceleration.mult(0.2);
  
  w.update();
  w.checkEdges();
  
  }
 
}
