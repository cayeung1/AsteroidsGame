class Asteroid extends Floater {
  private double spinDirection =(Math.random()*10)+1;
  Asteroid() {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners = new int []{(int)(Math.random()*-5)-8, (int)(Math.random()*5)+5, (int)(Math.random()*6)+10, (int)(Math.random()*6)+3, (int)(Math.random()*-5)-8, (int)(Math.random()*-15)-3};
    yCorners = new int[]{(int)(Math.random()*-6)-5, (int)(Math.random()*-6)-5, (int)(Math.random()*4)-1, (int)(Math.random()*6)+6, (int)(Math.random()*6)+5, (int)(Math.random()*4)-1};  
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myColor = (255);
    myXspeed = Math.random()*2;
    myYspeed = Math.random()*2;
    myPointDirection = 0;
    spinDirection = (Math.random()*10)+1;
  }

  public void move() {
    if (spinDirection > 5) {
      turn((Math.random()*5));
    } else {
      turn((Math.random()*-5));
    }
    super.move();
  }

  public void show() {
    noFill(); 
    stroke(myColor);    
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    rotate(dRadians);
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }

  public double getMySpinDirection() {
    return spinDirection;
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

  public void setSpinDirection(double n) {
    spinDirection = n;
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
