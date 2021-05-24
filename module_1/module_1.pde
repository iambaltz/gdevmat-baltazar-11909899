int value = 0;
float x, y;
float prevX = 0.0, prevY = 0.0;
int frequency = 2;
float angle = 0;
float amplitude = 1;

void setup(){
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw(){
  background(130);
  
  //circle(0,0,value);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
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

void drawLinearFunction(){
  
  //f(x)= x + 2;
  
  color white = color(255,0,0);
  fill(white);
  noStroke();
  
  for(int x = -200; x <= 200; x++){
    
    circle(x, x + 2, 5);
    
  }
  
}

void drawQuadraticFunction(){
  //f(x) = x^2 + 2x - 5
  
  color white = color(0,255,0);
  fill(white);
  noStroke();
  
  for(float x = -300; x<=300; x+=0.1f){
    
    circle(x, ((x * x) + (x * 2) - 5), 5);
  }
}

void drawCircle(){
  
  color white = color(0,0,255);
  fill(white);
  stroke(white);
  float radius = 50;
  
  for(int x = 0; x <= 360; x++){
    
  circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);

  }
  
}

void drawSineWave(){
  
  if(keyPressed && keyCode ==UP){
    frequency++;
  }
  else if (keyPressed && keyCode ==DOWN){
    frequency--;
  }
  
  if(keyPressed && keyCode ==LEFT){
    amplitude--;
  }
  else if (keyPressed && keyCode ==RIGHT){
    amplitude++;
  }

  color white = color(0,255,255);
  fill(white);
  stroke(white);
  
  for(int count = -360; count <= 360; count++){
  
   x = count;
   
   angle = radians(count);
   y  = amplitude * (float)Math.sin(angle*(frequency/2.0));
   y = map(y, -1,1, -height/2,height/2);
   
   line(prevX , prevY, x, y);
   
   prevX = x;
   prevY = y;
 
   }
   
   prevX = prevY = 0.0;
  
}
