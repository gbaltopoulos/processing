class Frodo extends Char {
 Frodo(String name, float x, float y) {
    super(name, x, y);
  }
  void draw(){//body
    float x = this.x;
    float y = this.y;
    float h = this.h;
    float w = this.w;
    noStroke();
    fill(247, 217, 107);
    rect(x,y,w,h);
    //hair
    fill(102, 54, 0);
    rect(x,y,w,h-h/5*4);
    //shirt
    fill(92, 9, 0);
    rect(x,y+w,w,h-w/1.5);
    //eyes
    //left
    fill(42, 163, 250);
    rect(x+h/10,y+h/4,h/12,h/12);
    //right
    rect(x+h/10*4,y+h/4,h/12,h/12);
    //mouth
    fill(166, 0, 0);
    rect(x+h/8,y+h/10*4,h/3,h/14);
    fill(255, 242, 64);
    //ring
    ellipse(x+w,y+w+5,h/12,h/12);
    fill(92, 9, 0);
    ellipse(x+w,y+w+5,h/19,h/17);
  }
  
}
