Raindrop[] r= new Raindrop[50];
Catcher c;

void setup(){
  size(700,700);
  for(int i=0; i<r.length;i++){
    r[i]= new Raindrop();
  }
  c= new Catcher();
}
void draw(){
  background(255);
  for(int i=0; i<r.length;i++){
    r[i].display();
    r[i].rain();
    c.update();
  c.display();
  c.catchdrop(r[i]);
}
}


  
    
