Spaceship bob = new Spaceship();
Star [] dots = new Star[200];
ArrayList<Asteroid>rock = new ArrayList <Asteroid>();
public void setup() 
{
  size (500,500);
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Star();
  }
  for(int i = 0; i < 15; i++){
    rock.add(new Asteroid());
  }
  
}
public void draw()
{
  background(0);
  for(int i = 0; i < dots.length; i++){
    dots [i].show();
  }
  
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
    float d = dist((float)bob.getX(), (float)bob.getY(), (float)rock.get(i).getX(),  (float)rock.get(i).getY());
    if (d <10)  
      rock.remove(i);
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
    bob.hyperspace();
    
  }
}
