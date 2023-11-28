Spaceship ship = new Spaceship();
Star[] starsArray = new Star[1000];
ArrayList <Asteroid> asteroidArray = new ArrayList <Asteroid>();
boolean[] keys = new boolean[5]; // a, w, d, s, h

public void setup()
{
  size(500, 500);
  background(0);
  startup();
}

public void startup() {
  for (int i = 0; i < starsArray.length; i++) {
    starsArray[i] = new Star();
    starsArray[i].show();
  }
  for (int i = 0; i < 8; i++) {
    asteroidArray.add(new Asteroid());
    asteroidArray.get(i).show();
  }
}

public void draw()
{
  background(0);
  initiateAll();
  
  
  if (keys[0]) ship.turn(-5);
  if (keys[1]) ship.accelerate(0.1);
  if (keys[2]) ship.turn(5);
  if (keys[3]) ship.myXspeed = ship.myYspeed = 0;
  if (keys[4]) ship.hyperspace();

  ship.show();
  ship.move();
}

public void initiateAll(){
    for (int i = 0; i < starsArray.length; i++)
    starsArray[i].show();
    for (int i = 0; i < asteroidArray.size(); i++) {
      asteroidArray.get(i).show();
      asteroidArray.get(i).move();
      
      float d = dist((float)ship.getX(), (float)ship.getY(), (float)asteroidArray.get(i).getX(), (float)asteroidArray.get(i).getY());
      if (d<15)
      asteroidArray.remove(i);
    }
}

public void keyPressed() {
  if (key == 'a' || keyCode == LEFT) keys[0] = true;
  if (key == 'w' || keyCode == UP) keys[1] = true;
  if (key == 'd' || keyCode == RIGHT) keys[2] = true;
  if (key == 's') keys[3] = true;
  if (key == 'h') keys[4] = true;
}

public void keyReleased() {
  if (key == 'a' || keyCode == LEFT) keys[0] = false;
  if (key == 'w' || keyCode == UP) keys[1] = false;
  if (key == 'd' || keyCode == RIGHT) keys[2] = false;
  if (key == 's') keys[3] = false;
  if (key == 'h') keys[4] = false;
}
