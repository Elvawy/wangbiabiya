int button1Color = 100;
int button2Color = 200;
void setup(){
fullScreen();
}
void draw(){
  fill(button1Color);
  rect(0,0,80,80);
 
  float distance1 = dist(0,0,80,80);
  if (mouseX > 0 && mouseX < 80 &&
    mouseY > 0 && mouseY < 80) { 
    button1Color = color(255, 0, 0);
    if (mousePressed) {
      button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }
   fill(button2Color);
  rect(0,80,160,160);
  float distance2 =dist(0,80,160,160);
  if (mouseX > 50 && mouseX < 160 &&
    mouseY > 50 && mouseY < 160) {
    button2Color = color(255, 0, 0);
    if (mousePressed) {
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(200);
  }  
}