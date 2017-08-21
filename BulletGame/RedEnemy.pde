class RedEnemy implements Enemy{
  float xPos = 0, yPos = 0, ySpeed=0;
  color c;
RedEnemy(){
  this.xPos=random(200);
  this.yPos=-50;
  this.c = color(57,46,152);
  this.ySpeed=3;
}
  void drawEnemy( ) {
    rectMode(CENTER);
    fill (152,46,46);//color rojo
    noStroke();
    rect(xPos,yPos,10,20);
    yPos=yPos+ySpeed;
    stroke(0);
  }
  color getColor() {
    return c;
  }
  float getXPos(){
    return xPos;
  }
  float getYPos(){
    return yPos;
  }
  float getYSpeed(){
    return ySpeed;
  }
  void setColor(color c){
    this.c=c;
  }
  void setXpos(float xPos){
    this.xPos=xPos;
  }
  void setYpos(float yPos){
    this.yPos=yPos;
  }
  void setYSpeed(float ySpeed ) {
    this.ySpeed=ySpeed;
  }
  void setPos(float xPos,float yPos ) {
    setXpos(xPos);
    setYpos(yPos);
  }

}
