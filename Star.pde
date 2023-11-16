class Star //note that this class does NOT extend Floater
{
 private int myNewColor;
 private int myX, myY;
 public Star(){
   myNewColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   myX = (int) (Math.random()*700);
   myY = (int) (Math.random()*700);
 }
 public void show(){
   noStroke();
   fill(myNewColor);
   ellipse(myX, myY,2, 2);
 } 
}
