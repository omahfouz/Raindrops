color c= color(0);
color ce= color(255);
float x= mouseX;
float y= mouseY;
void setup(){
 size (500,500); 
}

void draw(){
  background(c);
  if (frameCount%200==0){
    c= color(random(255),random(255),random(255));
  }
  fill(ce);
  ellipse(x,y,random(50), random(50));
  if( frameCount%100==0){
    ce=color(random(255),random(255),random(255));
  }
}
