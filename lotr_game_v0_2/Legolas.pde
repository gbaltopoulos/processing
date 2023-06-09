class Legolas extends Char {
  Legolas(String name, float x, float y) {
    super(name, x, y);
  }

  void draw () {
    float x = this.x;
    float y = this.y;
    float w = this.w;
    float h = this.h;
    noStroke();
    fill(247, 217, 107);
    rect(x, y, w, h);
    //shirt
    fill(0, 87, 4);
    rect(x, y+w, w, h-w/1.5);
    //eyes
    //left
    fill(0, 161, 126);
    rect(x+h/10, y+h/4, h/12, h/12);
    //right
    rect(x+h/10*4, y+h/4, h/12, h/12);
    //mouth
    fill(166, 0, 0);
    rect(x+h/8, y+h/10*4, h/3, h/14);
    //hair
    fill(234, 255, 43);
    rect(x, y, w, h-h/5*4-0);
    rect(x+0, y, w-26, h-h/5*4+30);
    rect(x+26, y, w-26, h-h/5*4+30);
  }
}
