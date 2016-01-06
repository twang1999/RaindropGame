class Catcher {
  PVector loc;  
  PImage pacman; 
  //int diam;
  Catcher() {
    loc = new PVector();
    //  diam = cdiam;
    pacman = loadImage("pacman.png");
  }

  void display() {  //load pacman image
    //fill(#6F27AA);
    //ellipse(loc.x,loc.y,diam,diam);
    noTint();
    image(pacman, loc.x, loc.y, 80, 80);
  }
  void update() {
    loc.set(mouseX, mouseY);
  }
}