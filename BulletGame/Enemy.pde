interface Enemy{
  void drawEnemy();
  color getColor();
  float getXPos();
  float getYPos();
  float getYSpeed();
  void setColor(color c);
  void setXpos(float xPos);
  void setYpos(float yPos);
  void setYSpeed(float ySpeed );
  void setPos(float xPos,float yPos );
}
