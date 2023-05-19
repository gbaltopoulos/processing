Aragorn aragorn = new Aragorn("Aragorn", 110, 250);
Frodo frodo = new Frodo("Frodo", 40, 250);
Gandalf gandalf = new Gandalf("Gandalf", 180, 250);
Char legolas = new Legolas("Legolas", 250, 250);
Gimli gimli = new Gimli("Gimli", 320, 250);
Button button=new Button (aragorn, "click", 110, 200, 40, 15);
Button button1=new Button (frodo,"click", 40, 200, 40, 15);
Button button2=new Button (gandalf,"click", 180, 200, 40, 15);
Button button3=new Button (gimli,"click", 320, 200, 40, 15);
Button button4=new Button (legolas,"click", 250, 200, 40, 15);

Button[] all_buttons = { button, button1, button2, button3, button4 };

void scene2() {
  background(127, 200, 219);
}
void scene1() {
  background(255, 0, 0);
  fill(33, 33, 33);
  rect(0, 310, 400, 20);
  textSize(50);
  text("PICK ONE", 113, 80);
  textSize(20);
  text("Frodo, Aragorn, Gandalf, Legolas, Gimli", 35, 191);

  manageButtons();

  frodo.draw();
  aragorn.draw();
  gandalf.draw();
  legolas.draw();
  gimli.draw();
  button.draw();
  button1.draw();
  button2.draw();
  button3.draw();
  button4.draw();
}

Scene logo = new LogoScene(null, null);
Scene select_char = new CharacterSelection(logo, null);
Level level_1 = new Level("Level", layout1(), select_char, null);
Level level_2 = new Level("Level2", layout2(), level_1, null);
Scene current_scene = logo;


void setup() {
  size(400, 400);
  logo.setNext(select_char);
  select_char.setNext(level_1);
  level_1.setNext(level_2);
}

Char selected_character = null;

void draw() {
  current_scene.draw();
  if (selected_character != null) {
    selected_character.draw();
  }
  if (keyPressed && selected_character != null) {
    switch (keyCode) {
    case RIGHT:
      selected_character.move_right(2);
      break;
    case LEFT:
      selected_character.move_left(2);
      break;
    case UP:
      selected_character.move_up(2);
      break;
    case DOWN:
      selected_character.move_down(2);
      break;
    }
  }
}
int scene = 0;

void mouseClicked() {
  if (current_scene.next != null) {
    current_scene = current_scene.next;
  }
}

void manageButtons() {
  if (mousePressed == true) {
    for(int i=0; i < all_buttons.length; i++) {
      Button btn = all_buttons[i]; 
      if(btn.is_clicked()) {
        selected_character = btn.c;
      }
    }
    //button.on_click();
  }
}
