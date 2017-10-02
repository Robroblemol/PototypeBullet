class CompositeColision implements Colisionable{
   ArrayList<Enemy> arrayEnemy = new ArrayList <Enemy>();
   ArrayList<Bullet> arrayBullet = new ArrayList <Bullet>();
  void getColision(float xPos, float yPos){
    float aEnY=0,aEnX;
    float aBuY=0,aBuX;
    if(arrayBullet.size()!=0){
      for (int i=0;i<=arrayEnemy.size()-1;i++){
        aEnX=arrayEnemy.get(i).getAreaX();
        aEnY=arrayEnemy.get(i).getAreaY();
        for (int j = 0;j<=arrayBullet.size()-1; j++){
          aBuY=arrayBullet.get(j).getAreaY();
          aBuX=arrayBullet.get(j).getAreaX();
          if(arrayBullet.get(j).getXPos()+aBuX>=aEnX+arrayEnemy.get(i).getXPos() &&
            arrayBullet.get(j).getYPos()+aBuY<=aEnY+arrayEnemy.get(i).getYPos()){
              arrayBullet.remove(j);
              arrayEnemy.remove(i);
              println("pasó algo");
            }
        }
      }
    }
  }
  Enemy getEnemy(int i) {
    return arrayEnemy.get(i);
  }
  Bullet getBullet(int i) {
    return arrayBullet.get(i);
  }
  void addEntidad (Enemy e){
    arrayEnemy.add(e);
  }
  void addEntidad (Bullet b){
    arrayBullet.add(b);
  }
  void rmEnemy(int i ) {
    arrayEnemy.remove(i);
  }
  public int getSizeBullet(){
    return arrayBullet.size();
  }
  int getSizeEnemy(){
    return arrayEnemy.size();
  }


}
