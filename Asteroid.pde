class Asteroid extends Floater  
{ 
  private double rotSpeed;
  public Asteroid(){
    myColor = color(119,136,153);
    corners = 6;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = (int)(Math.random()* 5) -11;
    yCorners[0] = (int)(Math.random()* 5)-8;
    xCorners[1] = (int)(Math.random()* 5) +7;
    yCorners[1] = (int)(Math.random()* 5) -8;
    xCorners[2] = (int)(Math.random()* 5) +13;
    yCorners[2] = 0;
    xCorners[3] = (int)(Math.random()* 5) + 6;
    yCorners[3] = (int)(Math.random()* 5) +10;
    xCorners[4] = (int)(Math.random()* 5)-11;
    yCorners[4] =(int)(Math.random()* 5) +8 ;
    xCorners[5] = (int)(Math.random()) -10;
    yCorners[5] = 0;
    
    //rotSpeed = (double)(Math.Random());
  }
  public void move(){
      turn(rotSpeed);
      super.move();
  }
}
