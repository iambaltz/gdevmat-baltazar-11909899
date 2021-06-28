public class Walker{

 public Walker(){}
 
  
 float scale = 0;
 color c;
 
 PVector position = new PVector();
  
  public void render(){
    fill(c);
    circle(position.x, position.y, scale);
    
 }
  
}
