
float b=430;
float a=400;
float y=400;
float c=-203;
float x=y;
void scene_5() {
   
  textSize(39);
    fill(0, 251, 255);
    stroke(0, 255, 4);
    background(0, 4, 255);
    for(float i=10;i<390;i+=x){
        line(0,i,i,400);
        line(i,0 ,400,i);
    }
    for(float i=380;i>0;i-=x){
        line(0,i,i,400);
        line(i,0,400,i);
    }
    x-=1;
    if(x<=20){
    x+=1;a-=10;c+=10;b-=10;
    }
    if(a<=40){
    a+=10;
    }
    if(c>=100){
    c-=10;
    }
    
    
    if(b<=278){
    b+=10;
    }
    text("George",a,192);
    text("Baltopoulos",c,240);
    text("Studios",222,b);

};
