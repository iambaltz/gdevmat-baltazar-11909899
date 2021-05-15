
float t = 0.0;
float dt = 0.1;
float amplitude = 50;
float frequency = 0.1;


void setup(){
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw(){
  background(130);
  drawCartesianPlane();
  drawQuadraticFunction(); //#1
  drawLinearFunction(); //#2
  drawSineWave();
 
}

void drawCartesianPlane(){
  
  strokeWeight(2);
  
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line(300, 0, -300, 0);
  line(0, 300, 0, -300);
  
  for (int i = -300; i <=300; i+=10){
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
  
}

void drawQuadraticFunction(){
  
  //f(x) = x^2 - 15x - 3
  
  color yellow = color(255,255,0);
  fill(yellow);
  noStroke();
  
  for(float x = -300; x <= 300; x+=0.1f){
    
    circle(x * 10, ((x * x) - (15 * x) - 3), 5);
    
  }
 
}

void drawLinearFunction(){
  
  //f(x) = -5x + 30
  
  color purple = color(245,0,245);
  fill(purple);
  noStroke();
  
  for(int x = -300; x <= 300; x++){
   
    circle(x, -(x * 5) + 30, 5);
    
  }
  
}

void drawSineWave(){
 
  //f(x) = A sin (B (x + C) ) + D
  
  if(keyPressed && keyCode ==UP){
    frequency+=0.1;
  }
  
  else if (keyPressed && keyCode == DOWN){
    frequency-=0.1;
  }
  if(keyPressed && keyCode ==LEFT){
    amplitude-=10;
  }
  else if (keyPressed && keyCode ==RIGHT){
    amplitude+=10;
  }
 
  color blue = color(0,0,255);
  fill(blue);
  stroke(blue);
  
  for(float x = -300; x <= 300; x+=0.1f){
 
  circle(x, amplitude * sin(frequency * (t + x)) + 0, 5);
  
  }
  t+=dt * 20;
}
