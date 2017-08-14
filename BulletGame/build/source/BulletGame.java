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


BSingle b;

 public void setup() {
   
   b = new BSingle(0,width/2,height,1);
}
public void draw () {
  background(255);
  b.display();
  b.shoot();
}
public class BSingle extends Bullet{

  public BSingle(int c,float xPos,float yPos, float ySpeed){
    super (c,xPos,yPos,ySpeed);
  }

  public void display(){
    rectMode(CENTER);
    fill (c);
    rect(xPos,yPos,5,10);
  }

  public void shoot(){
    yPos= yPos-ySpeed;
  }

}
public abstract class Bullet implements Cloneable{
  int c;
  float xPos;
  float yPos;
  float ySpeed;

Bullet (int c,float xPos,float yPos, float ySpeed){
    this.c = color(c);
    this.xPos = xPos;
    this.yPos = yPos;
    this.ySpeed = ySpeed;
}


public int getColor() {
  return c;
}
public float getXPos(){
  return xPos;
}
public float getYPos(){
  return yPos;
}
public float getYSpeed(){
  return ySpeed;
}
public void setColor(int c){
  this.c=c;
}
public void setXpos(float xPos){
  this.xPos=xPos;
}
public void setYpos(float yPos){
  this.yPos=yPos;
}
public void setYSpeed(float ySpeed ) {
  this.ySpeed=ySpeed;
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
