int buttonColor = 100;
void setup(){
fullScreen();
}
void draw(){
fill(buttonColor);
rect(0,0,80,80);
  if (mouseX > 0 && mouseX < 80 &&
    mouseY > 0 && mouseY < 80) {
    buttonColor = color(255, 0, 0);
  } else {
    buttonColor = color(100);
  }
  if (mouseX > 0 && mouseX < 80 &&
    mouseY > 0 && mouseY < 80) {
    buttonColor = color(255, 0, 0);
    if(mousePressed){
         buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
  
}