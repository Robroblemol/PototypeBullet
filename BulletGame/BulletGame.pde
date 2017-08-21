ArrayList <Bullet> arrayBullet = new ArrayList <Bullet>();
ArrayList <Enemy> arrayEnemy= new ArrayList <Enemy>();

BulletPrototype bp;
Player p;
EnemyCreator eneCreator;


 void setup() {
   size(200,200,P3D);
   frameRate(24);
//   b = new BSingle(0,width/2,height,1);
//   bf = new BFull(0,width/2,height,1);
   bp = new BulletPrototype ();
   p= new Player(width/2,height);
   eneCreator = new ConcreteEnemy();

}
void draw () {
  background(255);
  if(arrayBullet.size()!=0){
    for(int i=0;i<=arrayBullet.size()-1;i++){
      arrayBullet.get(i).display();
      arrayBullet.get(i).shoot();
    }
  }
  if(arrayEnemy.size()==0||arrayEnemy.size()<5){
    Enemy e;
    if(random(0,2)>1){
      arrayEnemy.add(e=eneCreator.newEnemy("blue"));
    }else{
      arrayEnemy.add(e=eneCreator.newEnemy("red"));
    }
  }
  if(arrayEnemy.size()!=0){
    for(int i=0;i<=arrayEnemy.size()-1;i++){
      arrayEnemy.get(i).drawEnemy();
      if(arrayEnemy.get(i).getYPos()>250){
        arrayEnemy.remove(i);
      }
    }

  }
  p.drawPlayer();
}
void keyPressed( ) {
  Bullet bt;
  if(key == 'a'){
    bt = (Bullet) bp.prototype("BSingle");
    bt.setPos(p.getXpos(),p.getYpos());
    arrayBullet.add(bt);
    println ("piu");
  }
  if(key == 'z'){
    bt = (Bullet) bp.prototype("BFull");
    bt.setPos(p.getXpos(),p.getYpos());
    arrayBullet.add(bt);
    println ("piiiuu..");
  }
  if(key == CODED){
      if(keyCode == LEFT){
        if(p.getXpos()>=0){
          float i = p.getXpos() - 5;
          p.setXpos(i);
        }
      }
      if(keyCode == RIGHT){
        if(p.getXpos()<=width){
          float i = p.getXpos() + 5;
          p.setXpos(i);
        }
      }
  }
}
