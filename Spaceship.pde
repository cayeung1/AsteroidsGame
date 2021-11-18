class Spaceship extends Floater  
{   
  Spaceship() {
    corners = 3;
    xCorners = new int[] {-8, 16, -8};
    yCorners = new int[]{-8, 0, 8};
    myCenterX = 400;
    myCenterY = 400;
    myColor = color(255);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = 0;
    myYspeed = 0;
    rotate((int)(Math.random()*360));
  }

  public double getMyCenterX() {
    return myCenterX;
  }

  public double getMyCenterY() {
    return myCenterY;
  }

  public double getMySpeedX() {
    return myXspeed;
  }
  public double getMySpeedY() {
    return myYspeed;
  }
  public double getMyPointDirection() {
    return myPointDirection;
  }

  public void setCenterX(double n) {
    myCenterX = n;
  }

  public void setCenterY(double n) {
    myCenterY = n;
  }
  public void setXspeed(double n) {
    myXspeed = n;
  }
  public void setYspeed(double n) {
    myYspeed = n;
  }
  public void setDirection(double n) {
    myPointDirection = n;
  }
}
