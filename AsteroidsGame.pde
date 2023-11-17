Spaceship awe = new Spaceship();
Star[] starsArray = new Star[1000];
boolean[] keys = new boolean[5]; // a, w, d, s, h

public void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i < starsArray.length; i++) {
    starsArray[i] = new Star();
    starsArray[i].show();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < starsArray.length; i++)
    starsArray[i].show();
    
  if (keys[0]) awe.turn(-5);
  if (keys[1]) awe.accelerate(0.1);
  if (keys[2]) awe.turn(5);
  if (keys[3]) awe.myXspeed = awe.myYspeed = 0;
  if (keys[4]) awe.hyperspace();
  
  awe.show();
  awe.move();
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
