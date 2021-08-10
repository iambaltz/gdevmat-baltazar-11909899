Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker walker = new Walker();

void setup(){
  
 background(0);
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
 walker.position = new PVector(0, 300);
 walker.mass = 5;
 walker.scale = walker.mass * 10;
 
 walker.r = 255;
 walker.g = 255;
 walker.b = 255;
 walker.a = 255;
 
}


void draw(){
 
  background(80);
  
  ocean.render();
  walker.render();
  walker.update();
  
  PVector gravity = new PVector(0, -0.25 * walker.mass);
  walker.applyForce(gravity);
  
  float c = 0.1f;
  float normal = 1;
  float frictionMagnitude = c * normal;
  PVector friction = walker.velocity.copy();
  // F = -uNv
  walker.applyForce(friction.mult(-1).normalize().mult(frictionMagnitude));
  
  if (walker.position.y <= Window.bottom){
    
   walker.position.y = Window.bottom;
   walker.velocity.y *= -1;
   
  }
  
  if(ocean.isCollidingWith(walker)){
   PVector dragForce = ocean.calculateDragForce(walker);
   walker.applyForce(dragForce);
  }
  
}
