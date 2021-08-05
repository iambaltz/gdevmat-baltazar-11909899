void setup(){
 
 background(0);
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
 walker.mass = 2;
 walker.scale = walker.mass * 15;

}

Walker walker = new Walker();

PVector wind = new PVector(0.1, 0);
PVector gravity = new PVector(0, -0.1);

void draw(){
  
  background(80);
  
  walker.render();
  walker.update();
  walker.applyForce(wind);
  walker.applyForce(gravity);
  
  if(walker.position.y <= Window.bottom){
    
   walker.velocity.y *= -1; 
    
  }
}
