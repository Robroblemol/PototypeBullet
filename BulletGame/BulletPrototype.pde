import java.util.HashMap;

class BulletPrototype{
  private HashMap<String, Bullet> prototypes = new HashMap<String,Bullet>();

  BulletPrototype(BSingle b,BFull bf){
    prototypes.put("BSingle",b);
    prototypes.put("BFull",bf);
  }
  Object prototype (String type){
    try{
      return prototypes.get(type).clone();
    }catch (CloneNotSupportedException e){
      throw new Error ("Exception in the clone");
    }

  }
}
