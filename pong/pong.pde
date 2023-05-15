float y = random(1,400);
float x = random(1,400);
int speed = 2;
int movesRight = speed;
int movesDown = speed;
int pad1up = 200;
int pad2up = 200;
int pad2x = 350;
int pad1x = 10;
void setup(){
size(400,400);
}
void draw(){
    background(0, 112, 56);
    //ball
    fill(0, 0, 0);
    ellipse(x, y, 15, 15);
    //paddle 1
    rect(pad1x, mouseX, 10, 60);
    //paddle 2    
    fill(255, 0, 0);
    rect(pad2x, pad2up, 10, 60);

    // left right bounces
    if(x >= pad2x && y >= pad2up && y <= pad2up + 60) 
        {movesRight = -speed; 
    }
    if(x <= pad1x + 10 && y >= pad1up && y <= pad1up + 60)
        {movesRight = speed; 
    }
    
    // top-down bounces
    if(y > 400) 
        {movesDown = -speed;
        
    }
    if(y < 1)
        {movesDown = speed;
    }
    
    //paddle controls
    if (keyPressed && keyCode == UP && pad1up > 0) 
        { pad1up -= 5; 
    }
    if (keyPressed && keyCode == DOWN && pad1up < 340 ) 
        { pad1up += 5; 
    }
    if (keyPressed && keyCode == RIGHT && pad2up > 0) 
        { pad2up -= 5; 
    }
    if (keyPressed && keyCode == LEFT && pad2up < 340)
        { pad2up += 5; 
    }
    
    x += movesRight;  
    y += movesDown; 
};




    
    
