Spaceship ship;
Star [] s;
public void setup() {
  size(800, 800);
  ship = new Spaceship();
  s = new Star [200];
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
}
public void draw() {
  background(0);

  for (int j = 0; j < s.length; j++) {
    s[j].show();
  }
  if(keyPressed){
  if (key == '5') {
    ship.hyperspace();
    ship.move();
  }
  if (key == '4') {
    ship.turn(-10);
  }
  if (key == '6') {
    ship.turn(10);
  }
  if (key == 'w' || key == 'W') {
    ship.accelerate(.6);
  }
  }
  ship.move();
  ship.show();
}
