int mode = 0;
int a=0;
import processing.sound.*;
SoundFile soundfile;
PImage pic01, pic02, pic03, pic04, pic05, pic06, pic07, pic08, pic09, pic10,pic11;
Deco deco01,deco02,deco03,deco04,deco05,deco06,deco07,deco08,deco09,deco10 ;
int count=200;
float[] x=new float[count];
float[] y=new float[count];
float[] r=new float[count];
float[] s=new float[count];
void setup() {
  fullScreen();
  smooth();
  textAlign(CENTER);
  textSize(100);
  imageMode(CENTER);
  for (int i=0; i<count; i++) {
    x[i]=random(0, width);
    y[i]=random(0, height);
    r[i]=random(3, 7);
    s[i]=random(1, 2);
  }
  pic01=loadImage("01.png");
  pic02=loadImage("02.png");
  pic03=loadImage("03.png");
  pic10=loadImage("10.png");
  
  deco06 = new Deco(pic10, new PVector(100, 100), new PVector(638,300));
  pic04=loadImage("04.png");
  deco07 = new Deco(pic04, new PVector(1200, 100), new PVector(630,434));
 
  pic06=loadImage("06.png");
  deco05 = new Deco(pic06, new PVector(600, 100), new PVector(543,667));
  
  pic07=loadImage("07.png");
  
   deco04 = new Deco(pic07, new PVector(750, 100), new PVector(752,667));
  
  pic08=loadImage("08.png");
  
  deco03 = new Deco(pic08, new PVector(453, 100), new PVector(796,467));
  
  pic09=loadImage("09.png");
 
  deco02 = new Deco(pic09, new PVector(330,100), new PVector(483,452));
  
  
 pic05=loadImage("05.png");
 
  deco01 = new Deco(pic05, new PVector(1000, 150), new PVector(630,460));
  pic11=loadImage("11.png");
  soundfile = new SoundFile(this, "Nick & Simon-It's Beginning To Look A Lot Like Christmas.mp3");
  soundfile.loop();
}
void draw() {
  println(width+" : "+height);
  background(#002505);
  switch(mode) {
  case 0:
    loadMode();
    break;
  case 1:
    startMode();
    break;
  case 2:
    gameMode();
    break;
  case 3:
    endMode();
    break;
  }
 // debug();
}

//void debug() {
// text(mouseX + " : " + mouseY, mouseX, mouseY);
//}