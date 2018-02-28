class Deco {
  PImage pic;
  PVector pos, target, initPos;
  boolean clicked = false;
  Deco(PImage _pic, PVector _pos, PVector _target) {
    pic = _pic;
    initPos = _pos;
    pos = _pos;
    target = _target;
  }

  void display() {
    image(pic, pos.x, pos.y);
  }

  void update() {
    //PVector direction = PVector.sub(target, pos);
    isClicked();
    if (clicked) pos.lerp(target, 0.2);
  }

  void isClicked() {
    if (mouseX > initPos.x && mouseX < initPos.x + pic.width &&
      mouseY > initPos.y && mouseY < initPos.y + pic.height &&
      mousePressed) {
      clicked = true;
    }
    //
  }
}