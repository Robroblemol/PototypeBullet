class Player{
  float xPos = 0, yPos = 0;
  float xArea = 25, yArea = 25;
  Player(float xPos,float yPos){
    this.xPos=xPos;
    this.yPos=yPos;
  }
  void setXpos(float xPos){
    this.xPos=xPos;
  }
  void setYpos(float xPos){
    this.yPos=yPos;
  }
  float getXpos(){
    return xPos;
  }
  float getYpos(){
    return yPos;
  }
  void setPos(float xPos,float yPos){
    setXpos(xPos);
    setYpos(yPos);
  }
  void drawPlayer(){
    rectMode(CENTER);
    fill (100);
    rect (xPos,yPos,25,25);
  }
  float getAreaX(){
    return xArea;
  }
  float getAreaY(){
    return yArea;
  }
}
