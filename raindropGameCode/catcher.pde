class Catcher {
  PVector loc;  
  PImage pacman; 
  //int diam;
  Catcher(){
  loc = new PVector();
  //  diam = cdiam;
  }

  void display() {  //load pacman image
    //fill(#6F27AA);
    //ellipse(loc.x,loc.y,diam,diam);
    pacman = loadImage("pacman.png");
    image(pacman, loc.x, loc.y, 80, 80);  
  }
  void update() {
    loc.set(mouseX, mouseY);
  }
}