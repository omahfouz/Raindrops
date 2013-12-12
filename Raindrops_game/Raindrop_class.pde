class Raindrop {
  PVector loc;
  PVector vel;
  int d;
  PImage img;
  Raindrop() {
    loc=new PVector(random(width), 0);
    vel= new PVector(0, 2);
    d= 100;
    img= loadImage("sherlock-falling.jpg");
  }
  void display() {
    imageMode(CENTER);
    image(img, loc.x, loc.y, d/2, d);
  }
  void rain() {
    loc.add(vel);
  }
}

