class Raindrop{
  PVector loc;
  PVector vel;
  int d;
   Raindrop(){
    loc=new PVector(random(width),random(100));
    vel= new PVector(0,0.1);
    d= 1; 
  }
  void display(){
    fill(255,0,0);
    ellipse(loc.x,loc.y,d/2,d/2);
  }
  void rain(){
    loc.add(vel);
    if(loc.y>height){
      loc.y=0;
    }
  }
     
}
  
