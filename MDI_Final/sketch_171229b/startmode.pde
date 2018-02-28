void startMode(){
  image(pic02,640,400);
  textSize(100);
  text("start", width/2, height/2);
  textSize(50);
  text("clik the mouse to start", width/2, height/2+60);
}
void mousePressed(){
  if (mode == 1){
    mode = 2;
  }
 

  }