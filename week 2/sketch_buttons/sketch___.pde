
int checkStates (float _bx,float _by,float _w,float _h){
  int result=0;
if (mouseX > _bx && mouseX < _bx+_w &&
    mouseY > _by && mouseY < _by+_h) { 
   // buttonColor = color(255, 0, 0);
       result =1;
    if (mousePressed) {
     // buttonColor = color(random(255), random(255), random(255));
    result =2 ;
  }
    
  } else {
    //buttonColor = color(100);
   result = 0;
  } 
  return result;
}  









color buttonColor = color(100);
float bx , by, w, h;

void setup(){
 size(800,600);
noStroke();
//bx = width/2;
//by = height/2
w = 40;
h = 30;
}
void draw(){
  for (int by = 0; by < height ; by += 2*h){
    for (int bx = 0; bx < width ; bx += 2*w){

int state = checkStates(bx,by,w,h);
switch(state) {
  case 0:
    buttonColor = color(100);
    break;
  case 1:
    buttonColor = color(255, 0, 0);
    break;
  case 2:
        buttonColor = color(random(255),random(255),random(255));
    break;
  }
 fill(buttonColor);
rect(bx,by,w,h);
    }
  }
}