int currentTime=0;
int oldTime=0;
int index=1;
Raindrop[] r= new Raindrop[50];
Catcher c;
Raindrop r1=new Raindrop();
void setup() {
  size(700, 700);
  for (int i=0; i<r.length;i++) {
    r[i]= new Raindrop();
  }
  c= new Catcher();
}
void draw() {
  background(0);
  currentTime=millis();
  if (currentTime-oldTime>2000) {
    index++;
    oldTime=currentTime;
  }
  c.update();
  c.display();
  for (int i=0; i<index; i++) {
    r[i].display();
    r[i].rain();
    c.catchdrop(r[i]); 
  }
  text(c.score, width/2, 200);
}

