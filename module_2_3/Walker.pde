public class Walker{

 public float x;
 public float y;
 public float tx = 0, ty = 10000;
 
 void render(){
  
   circle(x, y, 5);
   
   //Scale Perlin Implementation
   //public float scale;
   //public float ts = 0;
   //scale = map(noise(ts), 0, 1, 5, 150);
   
   //Color Perlin Implementation
   //public float perlinColor;
   //public float tc = 0;
   //perlinColor = map(noise(tc), 0, 1, 0, 255);
   //fill(perlinColor, perlinColor, perlinColor);
   
 }
 
 void perlinWalk(){
   
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
   
 }
  
}
