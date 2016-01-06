int score = 0;
int count = 150;
int gameover;
PVector mouse;   //declare a P
ArrayList <Raindrop> raindrops = new ArrayList();
//Raindrop [] r = new Raindrop [count];      //declare a new Raindrop called r
Catcher c;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1000, 800);
  gameover = 1;
  imageMode(CENTER);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  imageMode(CENTER);
  c = new Catcher();
  raindrops.add(new Raindrop(random(width), 0));
  //for (int i = 0; i < count; i++) {
  //  r[i] = new Raindrop(random(width), random(-height,0));
  //Initialize r. The parameters used are the initial x and y positions
}

void draw() {
  if (gameover == 1) {
    println(raindrops.size());
    mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
    background(0, 200, 255);
    textSize(100);
    text(score, width/2, height/4);
    raindrops.add(new Raindrop(random(width), 0));
    c.update();
    c.display();
    for (int i = raindrops.size()-1; i >= 0; i--) {
      Raindrop r = raindrops.get(i);
      r.display();
      r.fall();
      if (r.isInContactWith(mouse)) {
        println("kill");
        raindrops.remove(i);
      }
      if (r.loc.y > height + r.diam/2) {
        r.reset();
        score = score + 1;
      }
    }
    if (score == 51) {
      gameover = 0;
      textSize(200);
      fill(#FF0808);
      textSize(150);
      textAlign(CENTER);
      text("GAME OVER", width/2, height/2);
    }
  }

  //for (int i = 0; i <count; i++) {
  // r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  // r[i].display();      //display the raindrop
  // if (r[i].isInContactWith(mouse)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
  //   r[i].reset();                         //if it is, reset the raindrop
  // }
  // if (r[i].loc.y > height + r[i].diam/2) {     //check to see if the raindrop goes below the bottom of the screen
  //   r[i].reset();                           //if it does, reset the raindrop
  // }
  //}
  if (mousePressed) {
    raindrops.clear();
    gameover = 1; 
    fill(255);
    score = 0;
  }
}