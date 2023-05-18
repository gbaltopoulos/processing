class Char {
  String name;
  float x, y, h, w;

  Char(String name, float x, float y) {
    this.name = name;
    this.x = x;
    this.y = y;

    this.h = 50;
    this.w = this.h/5*3;
  }

  void draw () {
  }

  void move_right(int steps) {
    this.x += abs(steps);
  }

  void move_left(int steps) {
    this.x -= abs(steps);
  }
  void move_up(int steps) {
    this.y -= abs(steps);
  }
  void move_down(int steps) {
    this.y += abs(steps);
  }
}
