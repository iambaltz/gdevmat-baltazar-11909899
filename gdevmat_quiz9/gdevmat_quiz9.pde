Walker[] walkers = new Walker[8];
PVector wind = new PVector(0.15, 0);
int posY = 0;

void setup(){
  
 background(0);
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 createWalkers();
  
}

void createWalkers(){
  
  walkers = new Walker[8];
  
  for(int i = 0; i < 8; i++){
   
   posY = 2 * (Window.windowHeight / walkers.length) * (i - (walkers.length / 2));
   
   walkers[i] = new Walker();
   walkers[i].position = new PVector(-550, posY);
   
    walkers[i].r = random(1, 255);
    walkers[i].g = random(1, 255);
    walkers[i].b = random(1, 255);
    walkers[i].a = random(150, 255);
    
    walkers[i].mass = 8 - i;
    walkers[i].scale = walkers[i].mass * 15;
    
  }
  
}

void drawLine(){
 
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(0, 360 , 0, -360);
 
}

void draw(){
  
  background(80);
  drawLine();
  noStroke();
 
  for(Walker w : walkers){
   
    // Friction = -1 * u * N * v
    float mew;
    
    if(w.position.x < 0){
     
     mew = 0.1f;
      
    }
    else{
      
     mew = 0.4f; 
     
    }
    
    float normal = 1;
    float frictionMagnitude = mew * normal;
    PVector friction = w.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionMagnitude);
    w.applyForce(friction);
    
    //PVector gravity = new PVector(0, -0.15 * w.mass); 
    PVector accelerateRight = new PVector(0.2, 0);
    //PVector accelerateRight = new PVector(0.2 * w.mass, 0); THIS IS BONUS
    w.render();
    w.update();
    w.applyForce(accelerateRight);
    w.checkEdges();
    
    if(mousePressed == true){
      
      createWalkers();
      
    }
     
 }
}
