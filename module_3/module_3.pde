void setup(){
  
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
}

PVector position = new PVector();
PVector speed = new PVector(5, 8);

void draw(){
  
  background(255);
  
  position.add(speed);
  
  if((position.x > Window.right) || (position.x < Window.left)){
    
    speed.x *= -1;
    
  }
  
  if ((position.y > Window.top) || (position.y < Window.bottom)){
    
   speed.y *= -1;
    
  }
  
  fill(182, 52, 100);
  circle(position.x, position.y, 50);
}
