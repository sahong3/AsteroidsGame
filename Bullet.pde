class Bullet extends Floater {
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    accelerate(4);
  }
    public void show(){
      fill(255,0,0);
      noStroke();
      ellipse((float)myCenterX,(float)myCenterY, 5,5);
    }
     public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getX(){
        return myCenterX;
    }
    
    public double getY(){
        return myCenterY;
    }
}
