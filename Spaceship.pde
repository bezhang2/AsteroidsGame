class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(0);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myCenterX = (int) (Math.random()*501);
    myCenterY = (int) (Math.random()*501);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int) (Math.random()*360)+1;
  }
}
