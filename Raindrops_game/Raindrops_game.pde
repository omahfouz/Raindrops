boolean button;
int currentTime=0;
int oldTime=0;
int index=1;
int lives=12;
<<<<<<< HEAD
=======
int b;
>>>>>>> origin/Start-and-Stop
PImage img;
PImage img2; 
Raindrop[] r= new Raindrop[50];
Catcher c;
void setup() {
<<<<<<< HEAD
  size(900,700);
  for (int i=0; i<r.length;i++) { //to make processing run through the array
=======
  size(900, 700);
  for (int i=0; i<r.length;i++) { // make processing run through the array of raindrops
>>>>>>> origin/Start-and-Stop
    r[i]= new Raindrop();
  }
  c= new Catcher();
  img= loadImage("feels.jpg");
  img2= loadImage("hospital.JPG");
<<<<<<< HEAD
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
=======
  button=false;
  b=100;
}
void draw() {
  background(img2);
  textAlign(CENTER, TOP);
  textSize(30);
  fill(255, 255, 0);
  text("press r to reset score and regenerations", width/2, 0);
  if (button==false) { 
    fill(0, 140, 200);
    rect(width-b, 0, b, b);
    fill(255);
    textAlign(LEFT, TOP);
    text("start", width-b, 0);
  } //the start screen with directions to reset the same background and a start button

  if (button==true) {
    fill(255, 0, 0);
    rect(width-b, 0, b, b);
    fill(255);
    textAlign(LEFT, TOP);
    text("pause", width-b, 0);
    currentTime=millis(); // sets current time to time elapsed since start

    if (currentTime-oldTime>2000) { //makes index increase by 1 every 2 seconds
      index++;
      oldTime=currentTime; // updates oldTime to the last time the index was increased
>>>>>>> origin/Start-and-Stop
    }

    c.update();
    c.display();
    for (int i=0; i<index; i++) { //makes 1 raindrop every time the index is increased
      r[i].display();
      r[i].rain();
      c.catchdrop(r[i]); 
      if (r[i].loc.y+r[i].d/2==height) {
        lives--;
      }//when catcher does not catch rain decrease lives by one
      
      if (lives==-1) {
        i=r.length+200;
        image(img, width/2, height/2, width, height);
      }
      
      if (keyPressed) {
        if (key=='r' || key=='R') {
          lives=12;
          c.score=0;
        }
      }//if r is pressed the lives and score go to their original values but the game resumes as is
    }
    fill(0, 255, 0);
    textSize(25);
    textAlign(LEFT, TOP);
    text("Score:"+c.score, 50, 50);
    fill(255, 0, 0);
    text("Regenerations:"+lives, 50, 75);
  }
<<<<<<< HEAD
  fill(0,255,0);
  textSize(25);
  textAlign(LEFT, TOP);
  text("Score:"+c.score, 50, 50);
  fill(255,0,0);
  text("Regenerations:"+lives,50,75);
=======
>>>>>>> origin/Start-and-Stop
}
void mousePressed() {
  if (mouseX>=width-b && mouseX<=width && mouseY >=0&& mouseY<=b) {
    button=!button;
  }
}//toggles between the start screen and the game

