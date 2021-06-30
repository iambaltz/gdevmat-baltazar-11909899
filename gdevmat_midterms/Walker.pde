public class Walker{

 public Walker(){}
 
  
 float scale = 0;
 color c;
 float alpha;
 
 PVector position = new PVector();
  
  public void render(){
    fill(c, alpha);
    circle(position.x, position.y, scale);
    
 }
  
}
