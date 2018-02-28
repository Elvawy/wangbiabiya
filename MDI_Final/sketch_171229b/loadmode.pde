void loadMode() {
  image(pic01, 640,400);
  text("snowing", width/2, height/2);
  if (a<60) {
    a++;
  }
  if (a==60)mode=1;
}