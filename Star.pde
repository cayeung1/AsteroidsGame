class Star {
  private int myX, myY; 
  public Star() {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  public void show() {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }

  public int getX() {
    return myX;
  }

  public int getY() {
    return myY;
  }

  public void setX(int n) {
    myX = n;
  }

  public void setY(int n) {
    myY = n;
  }
}
