class Raindrop { //declaring all fields contained within Raindrop Class
  PImage redghost; 
  PImage blueghost; 
  PImage pinkghost;
  PVector loc, vel, grav;
  int diam;
  int score = 0;
  color c;
  Raindrop(float x, float y) {  //initiatize constructor
    diam = 25;
    loc = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    grav = new PVector(0, .001);
    redghost = loadImage("ghost.png");  
    c = color(random(255),random(255),random(255));
  }
  void display() {  //display ghosts with tint colors
    tint(c);
    image(redghost, loc.x, loc.y, diam, diam);

  }
  void fall() {  //add velocity to ghosts
    loc.y=loc.y + vel.y;
    vel.add(grav);
  }
  void reset() {    //reset ghosts when disappears off of screen back to top
    loc.y=0;
    vel.set(0, 10);
  }
  boolean isInContactWith(PVector mouse) {  //ghosts disappear when catcher is in contact with mouse
    float d = dist(loc.x, loc.y, mouse.x, mouse.y);
    boolean a;
    if (d < diam/2 + 35) {
      a = true;
    } else {
      a = false;
    }
    return a;
  }
}