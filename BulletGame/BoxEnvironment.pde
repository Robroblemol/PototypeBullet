class BoxEnvironment implements Environment{
float[] arrayPos = new float[30];
BoxEnvironment(){
  for(int i=0;i<30;i++){
    arrayPos[i]=(random(200));
  }
}
  void drawEnvironment( ) {

      for(int i=0;i<10;i++){
        pushMatrix();
        translate(arrayPos[i], arrayPos[i+1], arrayPos[i+2]);
        rotateY(1.25);
        rotateX(-0.4);
        noStroke();
        box(100);
        popMatrix();
      }

  }
}
