class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 8;
    xCorners = new int[]{-11, 0, 9, 10, 8, 0, -10, -13};
    yCorners = new int[]{-8, -14, -10, 6, 7, 10, 8, 0};
    myColor = (#5a554c);
    myCenterX = (int)(Math.random()*500)+1;
    myCenterY = (int)(Math.random()*500)+1;
    myXspeed = ((int)(Math.random()*3)+1);
    myYspeed = ((int)(Math.random()*3)+1);
    myPointDirection = (int)(Math.random()*180);
    rotSpeed = (int)(Math.random()*5)-3;
  }
  public void move() {
    turn(3);
    super.move();
  }
  public void setXcenter(double x) {
    myCenterX = x;
  }
  public void setYcenter(double y) {
    myCenterY = y;
  }
  public double getXcenter() {
    return myCenterX;
  }
  public double getYcenter() {
    return myCenterY;
  }
}
