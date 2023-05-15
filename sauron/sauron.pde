void setup() {
  size(400, 400);
}

void draw(){
  background(0,200,100);
fill(40, 40, 40);
beginShape();
vertex(200,200);
vertex(200,150);
vertex(215,200);
vertex(220,170);
vertex(230,200);
vertex(245,150);
vertex(245,200);
vertex(245,270);
vertex(200,270);
endShape();
line(200,220,223,240);
line(245,220,222,240);
fill(0, 0, 0);
pushMatrix();
translate(200,-100);
rotate(45);
ellipse(230,210,10,5);
popMatrix();
pushMatrix();
translate(-80,225);
rotate(315);
ellipse(230,210,10,5);
popMatrix();
}
