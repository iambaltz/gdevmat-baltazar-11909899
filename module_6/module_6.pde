Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.15, 0);
int posX = 0;

void setup(){
  
 background(0);
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 createWalkers();
  
}

void createWalkers(){
  
  walkers = new Walker[10];
  
  for(int i = 0; i < walkers.length; i++){
   
   posX = 2 * (Window.windowWidth / 10) * (i - 5);
   walkers[i] = new Walker();
   walkers[i].position = new PVector(posX, 200);
   
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
   
    // Friction = -1 * u * N * v
    float mew = 0.1f;
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    
    PVector gravity = new PVector(0, -0.15 * w.mass); 
    w.render();
    w.update();
    //w.applyForce(wind);
    //w.applyForce(gravity);
    w.checkEdges();
     
 }
 
}
