Aragorn aragorn = new Aragorn("Aragorn", 110, 250);
Frodo frodo = new Frodo("Frodo", 40, 250);
Gandalf gandalf = new Gandalf("Gandalf", 180, 250);
Char legolas = new Legolas("Legolas", 250, 250);
Gimli gimli = new Gimli("Gimli", 320, 250);
Button button=new Button ("click", 110, 200, 40, 15);
Button button1=new Button ("click", 40, 200, 40, 15);
Button button2=new Button ("click", 180, 200, 40, 15);
Button button3=new Button ("click", 320, 200, 40, 15);
Button button4=new Button ("click", 250, 200, 40, 15);

void scene2() {
  background(127, 200, 219);
}
void scene1() {
  background(255, 0, 0);
  fill(33, 33, 33);
  rect(0, 310, 400, 20);

  text("PICK ONE", 113, 80);
  text("Frodo, Aragorn, Gandalf, Legolas, Gimli", 19, 191);

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

Level level_1 = new Level("Level", layout1(), null, null);
Scene logo = new LogoScene(null, null);

Scene select_char = new CharacterSelection(logo, null);

Scene current_scene = logo;


void setup() {
  size(400, 400);
  logo.setNext(select_char);
}

Char selected_character = null;

void draw() {
  current_scene.draw();
  if (selected_character != null) {
    selected_character.draw();
  }
  if(keyPressed && selected_character != null) {
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
    button.on_click();
  }
}
