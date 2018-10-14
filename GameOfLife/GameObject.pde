public class GameObject {

  float x;
  float y;
  float size;

  boolean alive = true;

  public GameObject(float x, float y, float size){
   this.x=x;
   this.y=y;
   this.size=size;
  }


  void drawObject(){

    if(alive){
      println("Va Fan?");
      ellipse(x, y, size, size);
    }
  }

}
