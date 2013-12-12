int currentTime=0;
int oldTime=0;
int index=1;
PImage img;
Raindrop[] r= new Raindrop[50];
Catcher c;
Raindrop r1=new Raindrop();
void setup() {
  size(900, 700);
  for (int i=0; i<r.length;i++) { //to make processing run through the array
    r[i]= new Raindrop();
  }
  c= new Catcher();
  img= loadImage("feels.jpg");
}
void draw() {
  background(0);
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
    if (r[i].loc.y>=height && r[i].loc.y<=height*2) { //when catcher does not catch rain
      image(img, width/2, height/2, width, height);// show this image on the entire screen
      i=r.length+5;// stop for loop from going through array for 5 runs
    }
  }
  textSize(30);
  textAlign(RIGHT, TOP);
  text(c.score, 100, 50);
}

