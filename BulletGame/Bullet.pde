class Bullet{
  color c;
  float xPos;
  float yPos;
  float ySpeed;

Bullet(int c,float xPos,float yPos, float ySpeed){
    this.c = color(c);
    this.xPos = xPos;
    this.yPos = yPos;
    this.ySpeed = ySpeed;
}

void display(){
  rectMode(CENTER);
  fill (c);
  rect(xPos,yPos,5,10);
}

void shoot(){
  xPos= xPos+ySpeed;
}


}
