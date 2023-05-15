class Gimli extends Char {
   Gimli(String name, float x, float y){
     super(name, x, y);
   }
   
   void draw (){
     float x = this.x;
     float y = this.y;
     float w = this.w;
     float h = this.h;
          fill(247, 217, 107);
  rect(x,y,w,h);
  //helmet&beard
  fill(61, 61, 61);
  rect(x,y,w,h-h/5*4);
  rect(x-2,y,w-25,h-h/5*4+20);
  rect(x+27,y,w-25,h-h/5*4+20);
  fill(110, 0, 0);
  rect(x+2,y+20,w-5,h-h/5*4+5);
  //shirt
  fill(59, 5, 0);
  rect(x,y+w,w,h-w/1.5);
  //eyes
  //left
  fill(0, 40, 69);
  rect(x+h/10,y+h/4,h/12,h/12);
  //right
  rect(x+h/10*4,y+h/4,h/12,h/12);
  //mouth
  fill(166, 0, 0);
  rect(x+h/8 ,y+h/10*4,h/3,h/14);  
  }
}
