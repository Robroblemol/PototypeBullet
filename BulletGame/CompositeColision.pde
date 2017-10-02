class CompositeColision implements Colisionable{
  private ArrayList<Enemy> arrayEnemy = new ArrayList <Enemy>();
  private ArrayList<Bullet> arrayBullet = new ArrayList <Bullet>();

  void getColision(float xPos, float yPos){
    float aEnY=0,aEnX;
    float aBuY=0,aBuX;
    for (int i=0;i<=arrayEnemy.size()-1;i++){
      aEnX=arrayEnemy.get(i).getAreaX();
      aEnY=arrayEnemy.get(i).getAreaY();
      for (int j = 0;i<=arrayBullet.size()-1; j++){
        if(arrayBullet.get(j).getXPos()>=aEnX+xPos &&
          arrayBullet.get(j).getYPos()<=aEnY+yPos){
            arrayBullet.remove(j);
            arrayEnemy.remove(i);
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
}
