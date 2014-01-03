class Catcher {
  int d;
  PVector loc;
  int score=0;
  PImage img;
  Catcher() {
    d= 200;
    loc = new PVector(mouseX, height-d);
    img= loadImage("tardis.jpg");
  }
  void display() {
    imageMode(CENTER);
    image(img, loc.x, loc.y, d, d+d/2);
  }
  void update() { // update position of catcher otherwise it would not move
    loc.set(mouseX, height-d);
  }
  void catchdrop(Raindrop drop) { //parameter of a specific raindrop){ 
    if ( loc.dist(drop.loc)<d/2+drop.d/2) {
      drop.loc.y=-height*3; //when caught, a raindrop moves up from the screen
      score++;
    }
  }
}

