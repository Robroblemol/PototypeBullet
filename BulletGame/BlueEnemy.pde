class BlueEnemy implements Enemy{
  float xPos = 0, yPos = 0, ySpeed=0;
  color c;
BlueEnemy(){
  this.xPos=random(200);
  this.yPos=0;
  this.c = color(57,46,152);
  this.ySpeed=3;
}
  void drawEnemy( ) {

    rectMode(CENTER);
    fill (147,104,154);//color azul
    noStroke();
    rect(10,10,xPos,yPos);
    yPos=yPos+ySpeed;
    stroke(0);
  }
}
