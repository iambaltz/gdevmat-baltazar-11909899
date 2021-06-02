int frameCounter = 0;

void setup(){
 
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
}

void draw(){
  
  frameCounter++;
  
  float gaussian = randomGaussian();
  
  float standardDeviation = 150;
  float mean = 0;
  
  float x = standardDeviation * gaussian + mean;
  float y = random(-360, 360);
  
  noStroke();
  color randomColor = color(random(256),random(256),random(256));
  fill(randomColor, random(10,100));
  
  circle(x, y, (randomGaussian() * 50 + 5));
  
  if(frameCounter >= 300){
    background(255);
    frameCounter = 0;
  }
  
}
