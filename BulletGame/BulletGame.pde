ArrayList <Bullet> arrayBullet = new ArrayList <Bullet>();
ArrayList <Enemy> arrayEnemy= new ArrayList <Enemy>();

BulletPrototype bp;
Player p;
EnemyCreator eneCreator;

CompositeColision c;



 void setup() {
   size(200,200);
   frameRate(24);
//   b = new BSingle(0,width/2,height,1);
//   bf = new BFull(0,width/2,height,1);
   bp = new BulletPrototype ();
   p= new Player(width/2,height);
   eneCreator = new ConcreteEnemy();
   c = new Colisionador();

}
void draw () {
  background(255);
  if(c.getSizeBullet()!=0){
  /*  for(int i=0;i<=arrayBullet.size()-1;i++){
      //arrayBullet.get(i).display();
      //arrayBullet.get(i).shoot();
    }*/
    Bullet b;
    int r = c.getSizeBullet();
    for(int i=0;i<=(r-1);i++){
      b = c.getBullet(i);
      b.display();
      b.shoot();
    }
  }
  //if(arrayEnemy.size()==0||arrayEnemy.size()<5){
  if(c.getSizeEnemy()==0||c.getSizeEnemy()<5){
    Enemy e;
    if(random(0,2)>1){
      //arrayEnemy.add(e=eneCreator.newEnemy("blue"));
      c.addEntidad(e=eneCreator.newEnemy("blue"));
    }else{
      c.addEntidad(e=eneCreator.newEnemy("red"));
      //arrayEnemy.add(e=eneCreator.newEnemy("red"));
    }
  }
  if(c.getSizeEnemy()!=0){
    for(int i=0;i<=c.getSizeEnemy()-1;i++){
      //arrayEnemy.get(i).drawEnemy();
      c.getEnemy(i).drawEnemy();
      //if(arrayEnemy.get(i).getYPos()>250){
      if(c.getEnemy(i).getYPos()>250){
        //arrayEnemy.remove(i);
        c.rmEnemy(i);
      }
    }

  }
  for(int i =0;i <= c.getSizeBullet()-1;i++){
        Bullet b = c.getBullet(i);
    if(c.getSizeBullet()!=0)
      c.getColision(b.getXPos(),b.getYPos());
  }
  p.drawPlayer();
}
void keyPressed( ) {
  Bullet bt;
  if(key == 'a'){
    bt = (Bullet) bp.prototype("BSingle");
    bt.setPos(p.getXpos(),p.getYpos());
    c.addEntidad(bt);
    //arrayBullet.add(bt);
    println ("piu");
  }
  if(key == 'z'){
    bt = (Bullet) bp.prototype("BFull");
    bt.setPos(p.getXpos(),p.getYpos());
    c.addEntidad(bt);
    //arrayBullet.add(bt);
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
