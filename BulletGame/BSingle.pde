public class BSingle extends Bullet{

  private float xArea = 5;
  private float yArea = 10;

  public BSingle(int c,float xPos,float yPos, float ySpeed){
    super (c,xPos,yPos,ySpeed);
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
