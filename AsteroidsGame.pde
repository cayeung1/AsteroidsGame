Spaceship ship;
Star [] s;
ArrayList <Asteroid> sues = new ArrayList <Asteroid>();
Asteroid sue;
;
public void setup() {
  size(800, 800);
  ship = new Spaceship();
  s = new Star [200];
  for (int i = 0; i < s.length; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < 20; i++) {
    sue = new Asteroid();
    sues.add(i, sue);
  }
}
public void draw() {
  background(0);

  for (int i = 0; i < sues.size(); i++) {
    sues.get(i).move();
    sues.get(i).show();
    float d = dist((float)ship.getMyCenterX(), (float)ship.getMyCenterY(), (float)sues.get(i).getMyCenterX(), (float)sues.get(i).getMyCenterY());

    if (d < 10) {
      sues.remove(i);
    }
  }


  for (int j = 0; j < s.length; j++) {
    s[j].show();
  }
  if (keyPressed) {
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
