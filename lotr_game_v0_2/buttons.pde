class Button{
  String label;
  float x,y,w,h;
  
  Button(String label, float x, float y, float w, float h){
    this.label=label;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  void draw(){
       fill(50,100,240);
       rect(this.x,this.y,this.w,this.h);
       fill(255);
       text(this.label,this.x+5,this.y+10);
  }
  void on_click(){
    Boolean is_clicked_xdim = mouseX > this.x && mouseX < (this.x +this.w);
    Boolean is_clicked_ydim = mouseY > this.y && mouseY < (this.y + this.h);
    Boolean is_clicked = is_clicked_xdim && is_clicked_ydim;
    if(is_clicked) {
      scene2();
    }
  }
}
