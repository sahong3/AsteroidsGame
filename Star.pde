class Star //note that this class does NOT extend Floater
{
 private int myX, myY, myColor;
 public Star(){
    myX = (int)(Math.random()*500); 
    myY = (int)(Math.random()*500); 
    myColor = color(255,255,255);
  }
  public void show(){
    stroke (myColor);
    fill(255);
    ellipse(myX, myY, 3,3);
 }
}
