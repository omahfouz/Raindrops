boolean button;
int currentTime=0;
int oldTime=0;
int index=1;
int lives=12;
int b;
PImage img;
PImage img2; 
ArrayList<Raindrop> r= new ArrayList<Raindrop>();
Catcher c;
//PImage[] dr= new PImage[12];
//int l=0;
void setup() {
  size(900, 500);
  r.add(new Raindrop());
  //for (int i=0; i<r.length;i++) { // make processing run through the array of raindrops
    //r[i]= new Raindrop();
 // }
  
 // for (l< dr.length){
   // dr[l]= loadImage(l+".jpg");
  //}
    
  c= new Catcher();
  img= loadImage("feels.jpg");
  img2= loadImage("hospital.JPG");
  img2.resize(width,height);
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
    }

    c.update();
    c.display();
    r.add(new Raindrop());
    for(int i=0;i<index;i++){
      Raindrop rain =r.get(i);
      rain.display();
      rain.rain();
      c.catchdrop(rain);
    //for(l<dr.length){
      //dr[i]=image(i+".jpg",c.loc.x,c.loc.y);
    //}
    
      if (rain.loc.y+rain.d/2==height) {
        lives--;
        r.remove(i);
  //      l++;
     
        
      }//when catcher does not catch rain decrease lives by one
      
      if (lives==-1) {
        r.remove(i);
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
}
void mousePressed() {
  if (mouseX>=width-b && mouseX<=width && mouseY >=0&& mouseY<=b) {
    button=!button;
  }
}//toggles between the start screen and the game

