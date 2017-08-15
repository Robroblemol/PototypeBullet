public class BFull extends Bullet{

  public BFull(int c,float xPos,float yPos, float ySpeed){
    super (c/2,xPos,yPos,ySpeed+5);
  }

  void display(){
    rectMode(CENTER);
    fill (c);
    rect(xPos,yPos,2.5,15);
  }

  void shoot(){
    yPos= yPos-ySpeed;
  }

}
