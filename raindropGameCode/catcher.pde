class Catcher{
  PVector loc;
  int diam;
  Catcher(int cdiam){
    loc = new PVector();
    diam = cdiam;
  }
  void display(){
    fill(#6F27AA);
    ellipse(loc.x,loc.y,diam,diam);
  }
  void update(){
    loc.set(mouseX,mouseY);
  }
}