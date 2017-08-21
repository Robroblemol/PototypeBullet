class ConcreteEnemy extends EnemyCreator{
  Enemy newEnemy(String type){
    if(type.equals("red")==true)
      return new RedEnemy();
    else if(type.equals("blue")==true)
      return new BlueEnemy();
    else
      return new BlueEnemy();

  }
}
