public abstract class Bullet implements Cloneable{
  color c;
  float xPos;
  float yPos;
  float ySpeed;

Bullet (int c,float xPos,float yPos, float ySpeed){
    this.c = color(c);
    this.xPos = xPos;
    this.yPos = yPos;
    this.ySpeed = ySpeed;
}

@Override
protected Object clone () throws CloneNotSupportedException{
  return super.clone();
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

void display(){};
void shoot(){};
float getAreaX(){};
float getAreaY(){};

}
