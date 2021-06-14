public class Walker{

 public float x;
 public float y;
 public float scale;
 public float noiseR, noiseG, noiseB;
 public float tx = 0, ty = 10000, ts = 0, tr = 50, tg = 51, tb = 52;
 
 void render(){
   
   scale = map(noise(ts), 0, 1, 5, 150);
   
   noiseR = map(noise(tr), 0, 1, 0, 255);
   noiseG = map(noise(tg), 0, 1, 0, 255);
   noiseB = map(noise(tb), 0, 1, 0, 255);
   
   fill(noiseR, noiseG, noiseB);
   noStroke();
   
   circle(x, y, scale);
   
   ts += 0.01f;
   tr += 0.10f;
   tg += 0.10f;
   tb += 0.10f;
 }
 
 void perlinWalk(){
   
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
   
 }
  
}


//Scale Perlin Implementation
   //public float scale;
   //public float ts = 0;
   //scale = map(noise(ts), 0, 1, 5, 150);
   
   //Color Perlin Implementation
   //public float perlinColor;
   //public float tc = 0;
   //perlinColor = map(noise(tc), 0, 1, 0, 255);
   //fill(perlinColor, perlinColor, perlinColor);
