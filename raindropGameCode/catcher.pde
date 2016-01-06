class Catcher {    //declare new catcher
  PVector loc;  
  PImage pacman; 
  //int diam;
  Catcher() {    //initiatize catcher variable
    loc = new PVector();
    //  diam = cdiam;
    pacman = loadImage("pacman.png");
  }

  void display() {  //display catcher field
    noTint();
    image(pacman, loc.x, loc.y, 80, 80);
  }
  void update() {  //mouse is with catcher 
    loc.set(mouseX, mouseY);
  }
}