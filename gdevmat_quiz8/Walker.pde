public class Walker{
  
 public PVector position = new PVector();
 public PVector velocity = new PVector();
 public PVector acceleration = new PVector();
 
 public float velocityLimit = 10;
 public float scale = 15;
 public float mass = 1;
 
 public float r;
 public float g;
 public float b;
 
 public float a;
  
  public Walker(){
  
  }
  
  public void applyForce(PVector force){
    
  PVector f = PVector.div(force, this.mass);
    
  this.acceleration.add(f); // Force accumulation
   
    
  }
  
  public void update(){
   
   this.velocity.add(this.acceleration); // Velocity accumulation
   this.velocity.limit(velocityLimit);
   this.position.add(this.velocity);
   this.acceleration.mult(0);
    
  }
  
  public void render(){
   
   fill(r, g, b, a);
   circle(position.x, position.y, scale);
   
 }
 
 public void checkEdges(){
  
   if(this.position.x >= Window.right){
    
     this.velocity.x *= -1;
     
   }
   
   else if(this.position.x <= Window.left){
    
     this.velocity.x *= -1;
     
   }
   
   if(this.position.y >= Window.top){
    
     this.velocity.y *= -1;
     
   }
   
   else if(this.position.y <= Window.bottom){
    
     this.velocity.y *= -1;
     
   }
   
 }
  
  
}
