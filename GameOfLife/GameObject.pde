public class GameObject {

  float x;
  float y;
  float size;

  boolean alive = false;

  public GameObject(float x, float y, float size){
   this.x=x;
   this.y=y;
   this.size=size;
  }


  void draw(){
    
    if(alive){      
      fill(255, 40, 50);
      ellipse(x, y, size, size);
    }
        
  }

}
