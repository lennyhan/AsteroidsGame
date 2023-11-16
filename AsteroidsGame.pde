Spaceship awe = new Spaceship();
Star[] starsArray = new Star[1000];

public void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i < starsArray.length; i++){
  starsArray[i] = new Star();
  starsArray[i].show();
  }
}
public void draw()
{
  //if (left == true) awe.turn(-5);
  //else if (right == true) awe.turn(5);
  //else if (up == true) awe.accelerate(0.01)
  background(0);
  for (int i = 0; i < starsArray.length; i++)
  starsArray[i].show();
  awe.show();
  awe.move();
}

public void keyPressed() {
  if (key == 'a') awe.turn(-10);
  else if (key == 'd') awe.turn(10);
  else if (key == 'w') awe.accelerate(0.1);
  else if (key == 's') awe.myXspeed = awe.myYspeed = 0;
  else if (key == 'h') awe.hyperspace();
}
