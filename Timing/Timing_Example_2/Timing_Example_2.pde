int currentTime= 0;
int oldTime=0;
color c= color(0);
void setup(){
 size(500,500); 
}

void draw(){
  background(c);
  currentTime=millis();
  if(currentTime-oldTime>=2000){
    c= color(random(255),random(255), random(255));
    oldTime=currentTime;
  }
  text(millis(),height/2,width/2);
  textAlign(CENTER);
  textSize(50);
}
