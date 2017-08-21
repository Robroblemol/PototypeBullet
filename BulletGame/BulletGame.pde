//BSingle b;
//BFull bf;

ArrayList <Bullet> arrayBullet = new ArrayList <Bullet>();

BulletPrototype bp;
Player p;
EnvironmentCreator envCreator = new ConcreteEnvironment();
Environment entorno = envCreator.newEnvironment();

 void setup() {
   size(200,200,P3D);
   frameRate(24);
//   b = new BSingle(0,width/2,height,1);
//   bf = new BFull(0,width/2,height,1);
   bp = new BulletPrototype ();
   p= new Player(width/2,height);
}
void draw () {
  background(255);
  if(arrayBullet.size()!=0){
    for(int i=0;i<=arrayBullet.size()-1;i++){
      arrayBullet.get(i).display();
      arrayBullet.get(i).shoot();
    }
  }
  entorno.drawEnvironment();
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
