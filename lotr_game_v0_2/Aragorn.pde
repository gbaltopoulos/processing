 class Aragorn extends Char {
   Aragorn(String name, float x, float y){
   super(name, x, y);
   }
   
   void draw (){
     float x = this.x;
     float y = this.y;
     float w = this.w;
     float h = this.h;
fill(247, 217, 107);
//body
rect(x,y,w,h);
//hair
fill(48, 25, 0);
rect(x,y,w,h-h/5*4);
//shirt
fill(0, 9, 48);
rect(x,y+w,w,h-w/1.5);
//eyes
//left
fill(0, 76, 130);
rect(x+h/10,y+h/4,h/12,h/12);
//right
rect(x+h/10*4,y+h/4,h/12,h/12);
//mouth
fill(166, 0, 0);
rect(x+h/8,y+h/10*4,h/3,h/14);
//beard
fill(48, 25, 0);
rect(x+5,y+20,w-10,10);}
 }
