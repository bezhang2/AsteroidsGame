Spaceship willy = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
int rocks = 0;
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;
boolean spacePressed = false;

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 25; i++) {
    asteroids.add(new Asteroid());
    rocks++;
  }
}
public void draw() 
{
  background(255);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  willy.show();
  willy.move();
  if (wPressed == true) {
    willy.accelerate(0.05);
  }
  if (aPressed == true) {
    willy.turn(-2);
  }
  if (dPressed == true) {
    willy.turn(2);
  }
  if (wPressed == true && aPressed == true) {
    willy.accelerate(0.05);
    willy.turn(-3);
  }
  if (wPressed == true && dPressed == true) {
    willy.accelerate(0.05);
    willy.turn(3);
  }
  for (int i = asteroids.size()-1; i >= 0; i--) {
    float distance;
    distance = dist((float)willy.myCenterX, (float)willy.myCenterY, (float)asteroids.get(i).getXcenter(), (float)asteroids.get(i).getYcenter());
    if (distance < 20) {
      asteroids.remove(i);
    } else {
      asteroids.get(i).show();
      asteroids.get(i).move();
    }
  }
  for (int i = 0; i < bullets.size(); i++) {
    bullets.get(i).move();
    bullets.get(i).show();
  }
  for (int i = 0; i < bullets.size(); i++) {
    for (int j = 0; j < asteroids.size(); j++) {
      float dBullet = dist((float)bullets.get(i).getX(), (float)bullets.get(i).getY(), (float)asteroids.get(j).getXcenter(), (float)asteroids.get(j).getYcenter());
      if (dBullet < 20) {
        bullets.remove(i);
        asteroids.remove(j);
        break;
      }
    }
  }
}
public void keyPressed() {
  if (key == 'w') {
    wPressed = true;
  }
  if (key == 'd') {
    dPressed = true;
  }
  if (key == 'a') {
    aPressed = true;
  }
  if (key == 'e') {
    willy.hyperspace();
  }
  if (key == ' ') {
    bullets.add(new Bullet(willy));
  }
}
public void keyReleased() {
  if (key == 'w') {
    wPressed = false;
  }
  if (key == 'd') {
    dPressed = false;
  }
  if (key == 'a') {
    aPressed = false;
  }
  if (key == ' ') {
    spacePressed = false;
  }
}
