Walker bigMatter = new Walker();
Walker smallMatter = new Walker();

void setup(){
  
 background(0);
 size(1280, 720, P3D);
 camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
 bigMatter.position = new PVector();
 bigMatter.mass = 20;
 bigMatter.scale = bigMatter.mass * 10;
 
 smallMatter.position = new PVector(100, 100);
 smallMatter.mass = 10;
 smallMatter.scale = smallMatter.mass * 10;
}


void draw(){
  
  background(80);
  
  bigMatter.update();
  bigMatter.render();
  
  smallMatter.update();
  smallMatter.render();
  
  smallMatter.applyForce(bigMatter.calculateAttraction(smallMatter));
  bigMatter.applyForce(smallMatter.calculateAttraction(bigMatter));
}
