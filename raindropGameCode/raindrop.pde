class Raindrop { //declaring all fileds contained within Raindrop Class
  PVector loc, vel, acc;
  int diam;
  Raindrop(float x, float y) {
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    acc = new PVector(0, .5);
  }
  void display() {
    fill(random(255), random(255), random(255));
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.add(vel);
    vel.add(acc);
  }
  void reset() {
    loc.y=0;
    vel.set(0, 15);
  }
  boolean isInContactWith(PVector mouse) {  
    float d = dist(loc.x, loc.y, mouse.x, mouse.y);
      boolean a;
    if (d < diam/2) {
      a = true;
    } else {
      a = false;
    }
    return a;
  }
}