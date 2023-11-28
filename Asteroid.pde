public class Asteroid extends Floater {
  private int rotSpeed;
  public Asteroid() {
    rotSpeed = (int)(Math.random()*15)-8;
    corners = 8;
    xCorners = new int[]{-4, 4, 5, 5, 4, -4, -5, -5};
    yCorners = new int[]{5, 5, 4, -4, -5, -5, -4, 4};
    myCenterX = Math.random()*700;
    myCenterY = Math.random()*700;
    myColor = color(192);
    myXspeed = (Math.random()*6)-4;
    myYspeed = (Math.random()*6)-4;
    myPointDirection = Math.random()*360;
  }
  public void move() {
    super.turn(rotSpeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
