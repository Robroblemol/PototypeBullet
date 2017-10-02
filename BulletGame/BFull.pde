public class BFull extends Bullet{

  float xArea = 2.5;
  float yArea = 15;

  public BFull(int c,float xPos,float yPos, float ySpeed){
    super (c/2,xPos,yPos,ySpeed+5);
  }

  void display(){
    rectMode(CENTER);
    fill (c);
    rect(xPos,yPos,xArea,yArea);
  }

  void shoot(){
    yPos= yPos-ySpeed;
  }
  float getAreaX(){
    return xArea;
  }
  float getAreaY(){
    return yArea;
  }

}
