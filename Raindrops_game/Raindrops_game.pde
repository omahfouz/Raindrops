int currentTime=0;
int oldTime=0;
int index=1;
int lives=12;
PImage img;
PImage img2; 
Raindrop[] r= new Raindrop[50];
Catcher c;
Raindrop r1=new Raindrop();
void setup() {
  size(900,700);
  for (int i=0; i<r.length;i++) { //to make processing run through the array
    r[i]= new Raindrop();
  }
  c= new Catcher();
  img= loadImage("feels.jpg");
  img2= loadImage("hospital.JPG");
}
void draw() {
  background(img2);
  currentTime=millis(); // sets current time to time elapsed since start
  if (currentTime-oldTime>2000) { //makes index increase by 1 every 2 seconds
    index++;
    oldTime=currentTime; // updates oldTime to the last time the index was increased
  }
  c.update();
  c.display();
  for (int i=0; i<index; i++) { //makes 1 raindrop every time the index is increased
    r[i].display();
    r[i].rain();
    c.catchdrop(r[i]); 
    if (r[i].loc.y>=height && r[i].loc.y<=height) { //when catcher does not catch rain
      
      lives--;
    }
    if(lives==-1){
      i=r.length+200;
      image(img, width/2,height/2,width,height);
    }
  }
  fill(0,255,0);
  textSize(25);
  textAlign(LEFT, TOP);
  text("Score:"+c.score, 50, 50);
  fill(255,0,0);
  text("Regenerations:"+lives,50,75);
}

