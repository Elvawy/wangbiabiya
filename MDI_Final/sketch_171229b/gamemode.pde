void gameMode() {
  background(#002505);
  fill(255);
  text("press the keyboard", width/2+400, height/2+350);
textSize(45);
 image (pic03, 640,500 );
  //image (pic04, 100, 100);
  //image (pic05, 300, 100);
  //image (pic06, 500, 100);
  //image (pic07, 700, 100);
  //image (pic08, 900, 100);
  //image (pic09, 1100, 100);
  //image (pic10, 1300, 100, 50, 50);
  deco01.update();
  deco01.display();
  deco02.update();
  deco02.display();
   deco03.update();
  deco03.display();
   deco04.update();
  deco04.display();
   deco05.update();
  deco05.display();
  deco06.update();
  deco06.display();
  deco07.update();
  deco07.display();
  for (int i=0; i<count; i++) {
    if (y[i]>height) {
      y[i]=-5;
    }
    if (dist(mouseX, mouseY, x[i], y[i])<200) {
      y[i]=-5;
      x[i]=random(0, width);
    }
    y[i]+=s[i];
    ellipse(x[i], y[i], r[i], r[i]);
  }
}


void keyPressed(){
if (mode == 2){
  mode = 3;
}
}