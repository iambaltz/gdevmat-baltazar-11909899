void setup(){
  size(1020,720,P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

Walker modifiedWalker = new Walker();
Walker biasedWalker = new Walker();

void draw(){
  
  modifiedWalker.randomWalk();
  biasedWalker.randomWalkBiased();
  
  biasedWalker.render();
  modifiedWalker.render();
}
