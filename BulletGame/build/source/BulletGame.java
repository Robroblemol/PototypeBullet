import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class BulletGame extends PApplet {


Bullet b;

 public void setup() {
   
   b = new Bullet(0,width/2,height/2,1);
}
public void draw () {
  background(255);
  b.display();
  b.shoot();
}
class Bullet{
  int c;
  float xPos;
  float yPos;
  float ySpeed;

Bullet(int c,float xPos,float yPos, float ySpeed){
    this.c = color(c);
    this.xPos = xPos;
    this.yPos = yPos;
    this.ySpeed = ySpeed;
}

public void display(){
  rectMode(CENTER);
  fill (c);
  rect(xPos,yPos,5,10);
}

public void shoot(){
  xPos= xPos+ySpeed;
}


}
  public void settings() {  size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "BulletGame" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
