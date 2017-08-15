
BSingle b;
BFull bf;
BulletPrototype bp;
ArrayList <Bullet> arrayBullet = new ArrayList <Bullet>();

 void setup() {
   size(200,200);
   b = new BSingle(0,width/2,height,1);
   bf = new BFull(0,width/2,height,1);
   bp = new BulletPrototype (b,bf);

}
void draw () {
  background(255);
  //Bullet bt = (Bullet) bp.prototype("BSingle");
  if(arrayBullet.size()!=0){
    for(int i=0;i<=arrayBullet.size()-1;i++){
      arrayBullet.get(i).display();
      arrayBullet.get(i).shoot();
    }
  }
}
void keyPressed( ) {
  if(key == 'a'){
    Bullet bt = (Bullet) bp.prototype("BSingle");
    arrayBullet.add(bt);
  }
  if(key == 'z'){
    Bullet bt = (Bullet) bp.prototype("BFull");
    arrayBullet.add(bt);
  }

}
