void setup() {

  Population();
  size (1000, 1000);
}
void draw() {
  Background();
  rectMode(CENTER);
  squares();
  Drawntext();
}
void keyPressed () {
}
void mousePressed () {
  //
  if (mouseX>0 && mouseX<1000 && mouseY>0 && mouseY<1000) {
    squares = true;
    quad = false;
    background = true;
    Drawntext = true;
  }


  if (mouseX>0 && mouseX<QuitX && mouseY>0 && mouseY<QuitY) {
    exit();
  }
}
