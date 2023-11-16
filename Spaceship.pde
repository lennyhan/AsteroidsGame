class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-10, 10, 0, 0};
    yCorners = new int[]{0, 0, -3, 3};
    myCenterX = 250;
    myCenterY = 250;
    myColor = color(255, 255, 255);
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void hyperspace(){
    myCenterX = (int) (Math.random()*701);
    myCenterY = (int) (Math.random()*701);
    myXspeed = 0;
  }
}
