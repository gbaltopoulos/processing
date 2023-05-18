class Gandalf extends Char { //<>//
  Gandalf(String name, float x, float y) {
    super(name, x, y);
  }

  void draw () {
    float x = this.x;
    float y = this.y;
    float w = this.w;
    float h = this.h;
    noStroke();
    //body
    fill(247, 217, 107);
    rect(x, y, w, h);

    //cloak
    fill(4, 120, 133);
    rect(x, y+w, w, h-w/1.5);
    //hat+beard
    fill(108, 137, 140);
    rect(x-5, y, w+10, h-h/5*4);
    triangle(x, y, x+15, y-30, x+30, y);
    rect(x, y+20, w, h-h/5*3);
    //eyes
    //left
    fill(0, 49, 84);
    rect(x+h/10, y+h/4, h/12, h/12);
    //right
    rect(x+h/10*4, y+h/4, h/12, h/12);
    //mouth
    fill(166, 0, 0);
    rect(x+h/8, y+h/10*4, h/3, h/14);
    fill(255, 242, 64);
  }
}
