class Raindrop {
  PVector loc;
  PVector vel;
  int d;
  Raindrop() {
    loc=new PVector(random(width), 0);
    vel= new PVector(0, 2);
    d= 50;
  }
  void display() {
    
    fill(0,0,255);
    ellipse(loc.x, loc.y, d/2, d/2);
  }
  void rain() {
   
    loc.add(vel);
  }
}

