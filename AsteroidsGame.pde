Spaceship bob = new Spaceship();
Star [] dots = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList < Bullet>();
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
  
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  
  for (int i = 0 ; i < shots.size(); i++){
    for (int j = 0; j < rock.size(); j ++){
      float d = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rock.get(j).getX(),  (float)rock.get(j).getY());
      if (d < 15) {
      rock.remove(j);
      shots.remove(i);
      break;
      }
    }
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
  else if(key == ' ')
    shots.add(new Bullet(bob));
}
