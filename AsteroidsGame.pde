Spaceship willy = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
int rocks = 0;
boolean wPressed = false;
boolean dPressed = false;
boolean aPressed = false;

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
}
