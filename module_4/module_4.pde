Walker w = new Walker();

void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  //w.acceleration = new PVector(-0.01, 0.1);
  
}

void draw(){
  
  background(80);
  w.update();
  w.render();
  w.checkEdges();
}
