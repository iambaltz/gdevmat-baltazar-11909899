//FAWIT

Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];
PVector wind = new PVector(0.1, 0);
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
  
  ocean.render();
  
  for (Walker w : walkers){
      
      PVector gravity = new PVector(0, -0.15f * w.mass);
      w.applyForce(gravity);
      w.applyForce(wind);
      
      float c = 0.1f;
      float normal = 1;
      float frictionMagnitude = c * normal;
      PVector friction = w.velocity.copy();
      // F = -uNv
      w.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
      
      w.render();
      w.update();
      
      if (w.position.y <= Window.bottom){
        
       w.position.y = Window.bottom;
       w.velocity.y *= -1;
       
      }
      
      if(ocean.isCollidingWith(w)){
       PVector dragForce = ocean.calculateDragForce(w);
       w.applyForce(dragForce);
      }
  
  }
}
