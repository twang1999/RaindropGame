int score = 0;    //declare variables
int count = 150;
int gameover;
PVector mouse;   
ArrayList <Raindrop> raindrops = new ArrayList();
//Raindrop [] r = new Raindrop [count];      //declare a new Raindrop called r
Catcher c;
// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {  //initialize varialbes
  size(1000, 800);
  gameover = 1;
  imageMode(CENTER);  //center the image/text
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  imageMode(CENTER);
  c = new Catcher();
  raindrops.add(new Raindrop(random(width), 0));
}

void draw() {
  if (gameover == 1) {    //if game is running
    println(raindrops.size());
    mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
    background(0, 200, 255);  
    textSize(100);    //score displays on screen
    text(score, width/2, height/4);
    raindrops.add(new Raindrop(random(width), 0)); 
    c.update();
    c.display();
    for (int i = raindrops.size()-1; i >= 0; i--) {  //array for raindrops
      Raindrop r = raindrops.get(i);
      r.display();
      r.fall();
      if (r.isInContactWith(mouse)) {  //remove raindrop/ghost when in contact with mouse
        println("kill");
        raindrops.remove(i);
      }
      if (r.loc.y > height + r.diam/2) {
        r.reset();
        score = score + 1;
      }
    }
    if (score == 51) {  //gameover when score is 51
      gameover = 0;
    }
    if (gameover == 0){    //text GAME OVER on screen when game is over
      textSize(200);
      fill(#FF0808);
      textSize(150);
      textAlign(CENTER);
      text("GAME OVER", width/2, height/2);
    }
  }
  if (mousePressed) {      //freeze screen when game is over so ghosts and catcher remain still
    raindrops.clear();
    gameover = 1; 
    fill(255);
    score = 0;
  }
}