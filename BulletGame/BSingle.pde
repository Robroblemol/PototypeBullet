public class BSingle extends Bullet{

  public BSingle(int c,float xPos,float yPos, float ySpeed){
    super (c,xPos,yPos,ySpeed);
  }

  void display(){
    rectMode(CENTER);
    fill (c);
    rect(xPos,yPos,5,10);
  }

  void shoot(){
    yPos= yPos-ySpeed;
  }

}
