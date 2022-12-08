class Spaceship extends Floater  
{   
    public Spaceship(){
      myColor = color(100,100,100);  
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myCenterX = 250;
      myCenterY = 250;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed= 0;
      myCenterX = (int)(Math.random()*500);
      myCenterY =(int)(Math.random()*500);
      myPointDirection= ((int)(Math.random()*361));
    }
    
    public double getX(){
        return myCenterX;
    }
    
    public double getY(){
        return myCenterY;
    }
    
    public double getPointDirection(){
        return myPointDirection;
    }
    
}
