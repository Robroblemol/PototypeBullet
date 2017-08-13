
Bullet b;

 void setup() {
   size(200,200);
   b = new Bullet(0,width/2,height/2,1);
}
void draw () {
  background(255);
  b.display();
  b.shoot();
}
