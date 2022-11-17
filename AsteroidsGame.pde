Spaceship bob = new Spaceship ();
Star [] dots = new Star[200];
public void setup() 
{
  size (500,500);
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
    dots [i].show();
  }
}
public void draw() 
{
  bob.show();
}

public void keyPressed(){
  if (key == 'h'){
    bob.hyperspace();
  }
}
