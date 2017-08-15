
BSingle b;
BFull bf;

 void setup() {
   size(200,200);
   b = new BSingle(0,width/2,height,1);
   bf = new BFull(0,width/2,height,1);
}
void draw () {
  background(255);
  bf.display();
  bf.shoot();
  b.display();
  b.shoot();
}
