void setup (){
  size(400,400);
}

void draw() {
  switch(scene) {
    case 1: 
      scene1();
      break;
    case 2: 
      scene2();
      break;
    case 3:
    scene3();
      break;
    case 4:
    scene4();
      break;
  }
}
int scene = 0;
void mouseClicked(){
  scene += 1;
}
