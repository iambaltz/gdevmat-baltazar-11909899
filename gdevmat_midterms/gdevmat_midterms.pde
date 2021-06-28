Walker[] walkers = new Walker[100];
Walker target = new Walker();
int frame = 0;

void setup(){
 
 background(0);
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 resetEverything();
 
}

void resetEverything(){
  
 walkers = new Walker[100];
 
 for(int i = 0; i < walkers.length; i++){
   
   walkers[i] = new Walker();
   
   float gaussian = randomGaussian();
   float standardDeviation = 150;
   
   float mean = 0;
   walkers[i].position.x = standardDeviation * gaussian + mean;
   walkers[i].position.y = random(-360, 360);
   
   walkers[i].scale = random(1, 25);
   walkers[i].c = color(random(255), random(255), random(255));
   
 }
   
   target.position.x = random(-540, 540);
   
   target.position.y = random(-360, 360);
   target.scale = 50;
   target.c = color(255);
   
}

PVector mousePos(){
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight/2);
  
  return new PVector(x, y);
  
}

PVector mouseDirection = new PVector();
PVector direction = new PVector();

void draw(){
  
  PVector mouse = mousePos();
  
  background(0);
  noStroke();
  
  for(Walker w : walkers){
    w.render();
    
    direction = PVector.sub(target.position, w.position);
    direction.normalize().mult(10);
    w.position.add(direction);
    
  }
  
  
  target.render();
  mouseDirection = PVector.sub(mouse, target.position);
  target.position.add(mouseDirection);
  
  frame++;
  
  if(frame >= 150){
    
    frame = 0;
    resetEverything();
    
  }
 
   
}
