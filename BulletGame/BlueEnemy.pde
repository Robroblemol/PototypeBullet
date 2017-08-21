class BlueEnemy implements Enemy{
float[] arrayPos = new float[30];
BlueEnemy(){
  for(int i=0;i<30;i++){
    arrayPos[i]=(random(200));
  }
}
  void drawEnemy( ) {

      for(int i=0;i<10;i++){
        pushMatrix();
        translate(arrayPos[i], arrayPos[i+1],10);
        fill(147,104,154,100);
        rotateY(1.25);
        rotateX(-0.4);
        stroke(0);
        box(25);
        popMatrix();
      }
      stroke(0);
  }
}
