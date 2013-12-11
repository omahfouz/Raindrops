class Catcher{
  int d;
  PVector loc;
  int score=0;
  Catcher(){
    d= 50;
    loc = new PVector(mouseX, height-d);
  }
  void display(){
    fill(255,130,0);
    ellipse(loc.x,loc.y,d,d);
  }
  void update(){
    loc.set(mouseX,height-d);
  }
   void catchdrop(Raindrop drop){
     if( loc.dist(drop.loc)<d/2+drop.d/2){
       drop.loc.y=height*3;
       score++;
     }
   }
}
