public class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    this.myCenterX = theShip.getX();
    this.myCenterY = theShip.getY();
    this.myPointDirection = theShip.getPointDirection();
    super.accelerate(6);
  }
  public void show() {
    fill(173, 216, 230);
    ellipse((float) myCenterX, (float) myCenterY, 5, 5);
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
    public void move (){      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
}
