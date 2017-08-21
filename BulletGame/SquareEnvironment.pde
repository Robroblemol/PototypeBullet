class SquareEnvironment implements Environment{
float[] arrayPos = new float[20];
SquareEnvironment(){
  for(int i=0;i<20;i++){
    arrayPos[i]=(random(200));
  }
}
  void drawEnvironment( ) {

      for(int i=0;i<=10;i++){
        rectMode(CENTER);
        fill (147,104,154,100);
        noStroke();
        rect(arrayPos[i],arrayPos[i+1],10,20);
        stroke(0);
      }

  }
}
