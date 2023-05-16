class Scene {
  String name;
  Scene previous;
  Scene next;
  
  Scene(String name, Scene previous, Scene next) {
    this.name = name; //<>// //<>//
    this.previous = previous;
    this.next = next;
  }
  
  void draw() {
    println("Welcome to the" + this.name + " scene!");
  }
  
  void setPrevious(Scene previous) {
    this.previous = previous;
  }
  
  void setNext(Scene next) {
    this.next = next;
  }
}

class LogoScene extends Scene {
  
  LogoScene(Scene previous, Scene next) {
    super("Logo scene", previous, next); //<>// //<>//
  }
  
  void draw() {
    scene_5();
  }  
}

class CharacterSelection extends Scene {
  CharacterSelection(Scene previous, Scene next) {
    super("Character selection", previous, next); //<>// //<>//
  }
  
  void draw() {
    scene1();
  }
}
