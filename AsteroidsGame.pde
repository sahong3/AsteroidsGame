Spaceship bob = new Spaceship();
Star [] dots = new Star[200];
public void setup() 
{
  size (500,500);
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
  }
  
}
public void draw()
{
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots [i].show();
  }
  if (keyPressed){
    if(key == 'a'){
      bob.turn(-5);
    }
    if(key == 'd'){
      bob.turn(5);
    }
    if(key == 'w'){
      bob.accelerate(0.1);
    }
    if(key == 's'){
      bob.accelerate(-.25);
    }
    
  }
  
  bob.move();
  bob.show();
  
}

public void keyPressed(){
  if (key == 'h'){
    clear();
    bob.hyperspace();
    
  }
}
