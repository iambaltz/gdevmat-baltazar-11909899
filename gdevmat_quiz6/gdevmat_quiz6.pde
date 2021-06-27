void setup(){
  
 size(1080, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
}

PVector mousePos(){
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight/2);
  
  return new PVector(x, y);
  
}

void draw(){
  
   background(130);
   
   strokeWeight(25);
   stroke(255, 0, 0);
   
   
   PVector mouse = mousePos();
   
   mouse.normalize().mult(400); 
   
   // RED GLOW
   line(0, 0, mouse.x, mouse.y);
   line(0, 0, -mouse.x, -mouse.y);
   
   strokeWeight(5);
   stroke(255);
   
   // WHITE GLOW
   line(0, 0, mouse.x, mouse.y);
   line(0, 0, -mouse.x, -mouse.y);
   
   println(mouse.mag()); //PRINTS THE MAGNITUDE OF 1 SIDE
   
   mouse.normalize().mult(100);
   strokeWeight(15);
   stroke(0);
   
   // HANDLE
   line(0, 0, mouse.x, mouse.y);
   line(0, 0, -mouse.x, -mouse.y);
   
   
   
   
  
   
   
    
  
}
